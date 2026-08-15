"""
Dynamic ADB device management, APK installation, uninstallation, and app launch.
Supports standalone APKs and multi-split APKM/APKS bundle installations.
"""

import os
import sys
import shutil
import tempfile
import zipfile
from typing import List, Optional, Tuple, Union

from mikupatches.toolchain import Toolchain
from mikupatches.ui.console import Console
from mikupatches.constants import Colors, ARCH_SPLIT_MAP


class AdbManager:
    """Handles ADB operations including device detection, APK install, and app launch."""

    ADB_DOCKER_WARNING = (
        f"{Colors.YELLOW}[!] Warning: ADB is disabled in Docker environment. "
        f"ADB device installation is only supported in native environments (macOS / Linux / Windows).{Colors.RESET}"
    )

    @classmethod
    def list_devices(cls) -> List[Tuple[str, str]]:
        """Returns list of (serial, model_or_type) for all connected devices/emulators."""
        if Toolchain.is_docker_env():
            return []

        adb_bin = Toolchain.get_adb()
        if not adb_bin:
            return []

        try:
            res = Toolchain.run_cmd(f'"{adb_bin}" devices -l', check=True)
            lines = res.stdout.strip().splitlines()
            devices = []
            # Locate device table start to avoid daemon startup logs
            start_idx = 0
            for idx, line in enumerate(lines):
                if "List of devices attached" in line:
                    start_idx = idx + 1
                    break

            for line in lines[start_idx:]:
                parts = line.strip().split()
                if len(parts) >= 2 and parts[1] == "device":
                    serial = parts[0]
                    # Try to extract model:xxx
                    model_str = "Android Device"
                    for p in parts[2:]:
                        if p.startswith("model:"):
                            model_str = p.split(":", 1)[1]
                        elif p.startswith("device:"):
                            model_str += f" ({p.split(':', 1)[1]})"
                    devices.append((serial, model_str))
            return devices
        except Exception:
            return []

    @classmethod
    def get_device_abi(cls, device_serial: Optional[str] = None) -> Optional[str]:
        """Queries the primary CPU ABI of the connected Android device."""
        if Toolchain.is_docker_env():
            return None
        adb_bin = Toolchain.get_adb()
        if not adb_bin:
            return None
        target_device = device_serial or cls.select_device_interactively()
        if not target_device:
            return None
        try:
            res = Toolchain.run_cmd(f'"{adb_bin}" -s "{target_device}" shell getprop ro.product.cpu.abi', check=False)
            if res.returncode == 0 and res.stdout.strip():
                return res.stdout.strip()
        except Exception:
            pass
        return None

    @classmethod
    def select_device_interactively(cls) -> Optional[str]:
        if Toolchain.is_docker_env():
            Console.warn("ADB is disabled in Docker environment. ADB is only for native environments.")
            return None

        devices = cls.list_devices()
        if not devices:
            Console.warn("No active ADB devices or emulators found.")
            return None

        if len(devices) == 1:
            return devices[0][0]

        if not sys.stdin.isatty():
            return devices[0][0]

        print("\n" + "=" * 76)
        print(f"{Colors.CYAN}{Colors.BOLD} [#] MULTIPLE ADB DEVICES CONNECTED{Colors.RESET}")
        print("------------------------------------------------------------------------")
        for idx, (serial, model) in enumerate(devices, 1):
            print(f"  [{idx}] {Colors.BOLD}{serial}{Colors.RESET} - {model}")
        print("=" * 76)

        try:
            ans = input(f"{Colors.CYAN}Select device [1-{len(devices)}] (default 1): {Colors.RESET}").strip()
            if ans.isdigit():
                idx_val = int(ans)
                if 1 <= idx_val <= len(devices):
                    return devices[idx_val - 1][0]
        except (EOFError, KeyboardInterrupt):
            pass
        return devices[0][0]

    @classmethod
    def install(
        cls,
        target_path: Union[str, List[str]],
        device_serial: Optional[str] = None,
        reinstall: bool = True,
        verbose: bool = False,
    ) -> bool:
        """Installs standalone APK or multi-split APKM/APKS bundle onto ADB device."""
        if Toolchain.is_docker_env():
            Console.warn("ADB is disabled in Docker environment. ADB is only for native environments.")
            return False

        adb_bin = Toolchain.get_adb()
        if not adb_bin:
            Console.warn("ADB tool not found in PATH. Skipping device install.")
            return False

        devices = cls.list_devices()
        if not devices:
            Console.warn("No active ADB device/emulator connected. Skipping auto-install.")
            return False

        target_device = device_serial or cls.select_device_interactively()
        if not target_device:
            return False

        flags = "-r" if reinstall else ""

        # Case 1: Multiple APK paths passed
        if isinstance(target_path, list):
            valid_apks = [p for p in target_path if os.path.isfile(p)]
            if not valid_apks:
                Console.error("No valid APK files found to install.")
                return False
            apk_args = " ".join(f'"{p}"' for p in valid_apks)
            Console.step(f"Installing {len(valid_apks)} split APKs onto device [{target_device}]...")
            cmd = f'"{adb_bin}" -s "{target_device}" install-multiple {flags} {apk_args}'
            res = Toolchain.run_cmd(cmd, check=False, verbose=verbose)
            out = (res.stdout + " " + res.stderr).strip()
            if res.returncode != 0 or "Failure [" in out or "INSTALL_FAILED_" in out:
                Console.error(f"ADB multi-split installation failed: {out or f'Exit code {res.returncode}'}")
                return False
            Console.success(f"Successfully installed split package on [{target_device}]!")
            return True

        # Case 2: Target is an APKM / APKS / ZIP archive
        if target_path.endswith((".apkm", ".apks", ".zip")) and os.path.isfile(target_path):
            Console.step(f"Extracting bundle '{os.path.basename(target_path)}' for multi-split install...")
            temp_dir = tempfile.mkdtemp(prefix="mikupatches_adb_")
            try:
                with zipfile.ZipFile(target_path, "r") as zf:
                    zf.extractall(temp_dir)
                all_extracted_apks = [
                    os.path.join(temp_dir, f)
                    for f in sorted(os.listdir(temp_dir))
                    if f.endswith(".apk")
                ]
                if not all_extracted_apks:
                    Console.error(f"No .apk files found inside {os.path.basename(target_path)}.")
                    return False

                # Query device ABI to filter conflicting architecture splits if multiple exist
                device_abi = cls.get_device_abi(target_device)
                selected_apks = []
                for apk_p in all_extracted_apks:
                    fname = os.path.basename(apk_p)
                    is_arch_split = False
                    for arch, split_fname in ARCH_SPLIT_MAP.items():
                        if fname == split_fname:
                            is_arch_split = True
                            if device_abi:
                                if arch.replace("-", "_") in device_abi.replace("-", "_"):
                                    selected_apks.append(apk_p)
                            else:
                                if "arm64" in fname:
                                    selected_apks.append(apk_p)
                            break
                    if not is_arch_split:
                        selected_apks.append(apk_p)

                # Ensure base.apk is first in installation order
                selected_apks.sort(key=lambda p: (0 if os.path.basename(p) == "base.apk" else 1, p))

                apk_args = " ".join(f'"{p}"' for p in selected_apks)
                Console.step(f"Installing {len(selected_apks)} split APKs from bundle onto device [{target_device}]...")
                cmd = f'"{adb_bin}" -s "{target_device}" install-multiple {flags} {apk_args}'
                res = Toolchain.run_cmd(cmd, check=False, verbose=verbose)
                out = (res.stdout + " " + res.stderr).strip()
                if res.returncode != 0 or "Failure [" in out or "INSTALL_FAILED_" in out:
                    Console.error(f"ADB bundle installation failed: {out or f'Exit code {res.returncode}'}")
                    return False
                Console.success(f"Successfully installed multi-split package on [{target_device}]!")
                return True
            except Exception as e:
                Console.error(f"ADB bundle extraction error: {e}")
                return False
            finally:
                shutil.rmtree(temp_dir, ignore_errors=True)

        # Case 3: Single Standalone APK
        Console.step(f"Installing '{os.path.basename(target_path)}' onto device [{target_device}]...")
        cmd = f'"{adb_bin}" -s "{target_device}" install {flags} "{target_path}"'

        res = Toolchain.run_cmd(cmd, check=False, verbose=verbose)
        out = (res.stdout + " " + res.stderr).strip()
        if res.returncode != 0 or "Failure [" in out or "INSTALL_FAILED_" in out:
            if "INSTALL_FAILED_MISSING_SPLIT" in out:
                Console.error(f"Missing Split APK Error: This app was compiled expecting split APKs.")
                # Check if bundle exists in same directory
                dir_name = os.path.dirname(target_path)
                bundle_candidates = [
                    os.path.join(dir_name, f)
                    for f in os.listdir(dir_name)
                    if f.endswith((".apkm", ".apks"))
                ]
                if bundle_candidates:
                    Console.step(f"Attempting fallback bundle install using '{os.path.basename(bundle_candidates[0])}'...")
                    return cls.install(bundle_candidates[0], device_serial=target_device, reinstall=reinstall, verbose=verbose)
            Console.error(f"ADB installation failed: {out or f'Exit code {res.returncode}'}")
            return False

        Console.success(f"Successfully installed on device [{target_device}]!")
        return True

    @classmethod
    def uninstall(cls, package_name: str, device_serial: Optional[str] = None, verbose: bool = False) -> bool:
        if Toolchain.is_docker_env():
            Console.warn("ADB is disabled in Docker environment. ADB is only for native environments.")
            return False

        adb_bin = Toolchain.get_adb()
        if not adb_bin:
            return False

        devices = cls.list_devices()
        if not devices:
            return False

        target_device = device_serial or devices[0][0]
        Console.step(f"Uninstalling {package_name} from device [{target_device}]...")
        cmd = f'"{adb_bin}" -s "{target_device}" uninstall "{package_name}"'

        try:
            Toolchain.run_cmd(cmd, check=False, verbose=verbose)
            return True
        except Exception:
            return False

    @classmethod
    def launch_app(
        cls,
        package_name: str,
        main_activity: Optional[str] = None,
        device_serial: Optional[str] = None,
        verbose: bool = False,
    ) -> bool:
        if Toolchain.is_docker_env():
            Console.warn("ADB is disabled in Docker environment. ADB is only for native environments.")
            return False

        adb_bin = Toolchain.get_adb()
        if not adb_bin:
            return False

        devices = cls.list_devices()
        if not devices:
            return False

        target_device = device_serial or devices[0][0]
        Console.step(f"Launching {package_name} on device [{target_device}]...")

        # 1. Primary: Launch exact package using Android monkey launcher intent
        cmd_monkey = f'"{adb_bin}" -s "{target_device}" shell monkey -p "{package_name}" -c android.intent.category.LAUNCHER 1'
        try:
            res = Toolchain.run_cmd(cmd_monkey, check=False, verbose=verbose)
            if res.returncode == 0 and "Events injected: 1" in res.stdout:
                Console.success(f"Launched {package_name} on device.")
                return True
        except Exception:
            pass

        # 2. Secondary: Fallback to am start with explicit component
        if main_activity:
            if "/" in main_activity:
                full_act = main_activity
            else:
                full_act = f"{package_name}/{main_activity}"
            cmd_am = f'"{adb_bin}" -s "{target_device}" shell am start -n "{full_act}"'
        else:
            cmd_am = f'"{adb_bin}" -s "{target_device}" shell monkey -p "{package_name}" 1'

        try:
            Toolchain.run_cmd(cmd_am, check=False, verbose=verbose)
            Console.success(f"Launched {package_name} on device.")
            return True
        except Exception as e:
            Console.warn(f"Failed to launch app: {e}")
            return False
