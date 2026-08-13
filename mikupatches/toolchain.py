"""
Toolchain detection, binary path resolution, and preflight checks.
"""

import os
import sys
import shutil
import subprocess
from typing import Dict, Optional, Tuple, List

from mikupatches.constants import Colors
from mikupatches.ui.console import Console


class Toolchain:
    """Manages discovery and execution of external Android SDK and reverse engineering tools."""

    @staticmethod
    def run_cmd(cmd: str, check: bool = True, verbose: bool = False) -> subprocess.CompletedProcess:
        if verbose:
            Console.debug(f"Executing: {cmd}", verbose=True)
        res = subprocess.run(
            cmd,
            shell=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            encoding="utf-8",
            errors="replace",
        )
        if check and res.returncode != 0:
            raise RuntimeError(
                f"Command execution failed (exit code {res.returncode}): {cmd}\n"
                f"STDOUT:\n{res.stdout}\n"
                f"STDERR:\n{res.stderr}"
            )
        return res

    @classmethod
    def find_binary(cls, binary_name: str, fallback_hints: Optional[List[str]] = None) -> Optional[str]:
        # 1. Check in system PATH
        path = shutil.which(binary_name)
        if path:
            return path

        # 2. Check in Android SDK directories
        sdk_candidates = [
            os.environ.get("ANDROID_HOME"),
            os.environ.get("ANDROID_SDK_ROOT"),
            os.environ.get("ANDROID_SDK_HOME"),
            os.path.expanduser("~/Library/Android/sdk"),
            os.path.expanduser("~/Android/Sdk"),
            "/opt/homebrew/share/android-commandlinetools",
            "/opt/homebrew/Caskroom/android-commandlinetools",
            "/usr/local/share/android-sdk",
            "/opt/android-sdk",
            "/usr/lib/android-sdk",
            "/Library/Android/sdk",
        ]

        names_to_try = [binary_name]
        if sys.platform == "win32":
            names_to_try.extend([f"{binary_name}.exe", f"{binary_name}.bat", f"{binary_name}.cmd"])

        for sdk in sdk_candidates:
            if not sdk or not os.path.exists(sdk):
                continue
            bt_dir = os.path.join(sdk, "build-tools")
            if os.path.exists(bt_dir):
                for ver in sorted(os.listdir(bt_dir), reverse=True):
                    for bname in names_to_try:
                        cand = os.path.join(bt_dir, ver, bname)
                        if os.path.isfile(cand) and (os.access(cand, os.X_OK) or sys.platform == "win32"):
                            return cand
            # Direct platform-tools check
            for bname in names_to_try:
                pt_cand = os.path.join(sdk, "platform-tools", bname)
                if os.path.isfile(pt_cand) and (os.access(pt_cand, os.X_OK) or sys.platform == "win32"):
                    return pt_cand

        # 3. Check specific fallback hints
        if fallback_hints:
            for hint in fallback_hints:
                if os.path.isfile(hint) and os.access(hint, os.X_OK):
                    return hint

        return None

    @classmethod
    def get_zipalign(cls) -> Optional[str]:
        hints = [
            "/opt/homebrew/share/android-commandlinetools/build-tools/34.0.0/zipalign",
            "/opt/homebrew/bin/zipalign",
            "/usr/bin/zipalign",
            "/usr/local/bin/zipalign",
        ]
        return cls.find_binary("zipalign", hints)

    @classmethod
    def get_apksigner(cls) -> Optional[str]:
        hints = [
            "/opt/homebrew/share/android-commandlinetools/build-tools/34.0.0/apksigner",
            "/opt/homebrew/bin/apksigner",
            "/usr/bin/apksigner",
            "/usr/local/bin/apksigner",
        ]
        return cls.find_binary("apksigner", hints)

    @classmethod
    def get_apktool(cls) -> Optional[str]:
        return cls.find_binary("apktool")

    @classmethod
    def get_java(cls) -> Optional[str]:
        return cls.find_binary("java")

    @classmethod
    def get_keytool(cls) -> Optional[str]:
        return cls.find_binary("keytool")

    @classmethod
    def get_adb(cls) -> Optional[str]:
        return cls.find_binary("adb")

    @classmethod
    def check_preflight(cls, require_signing: bool = True) -> Tuple[bool, List[str]]:
        missing = []
        if not cls.get_apktool():
            missing.append("Apktool (CLI tool for decompiling/rebuilding APKs)")
        if not cls.get_java():
            missing.append("Java JDK 17+ (Required by Apktool and apksigner)")
        if require_signing:
            if not cls.get_zipalign():
                missing.append("zipalign (Android SDK build-tools for APK alignment)")
            if not cls.get_apksigner():
                missing.append("apksigner (Android SDK build-tools for APK signing)")

        return len(missing) == 0, missing

    @classmethod
    def print_diagnostics(cls):
        Console.banner("TOOLCHAIN STATUS & SYSTEM PREREQUISITES")

        tools = [
            ("Python 3", sys.executable, True),
            ("Java JDK", cls.get_java(), True),
            ("Apktool", cls.get_apktool(), True),
            ("zipalign", cls.get_zipalign(), True),
            ("apksigner", cls.get_apksigner(), True),
            ("keytool", cls.get_keytool(), True),
            ("ADB", cls.get_adb(), False),
            ("Git", shutil.which("git"), False),
        ]

        all_ok = True
        for name, path, required in tools:
            if path:
                status = f"{Colors.GREEN}FOUND{Colors.RESET}"
                details = f"{Colors.CYAN}{path}{Colors.RESET}"
            else:
                if required:
                    status = f"{Colors.RED}MISSING (Required){Colors.RESET}"
                    all_ok = False
                else:
                    status = f"{Colors.YELLOW}OPTIONAL (Not found){Colors.RESET}"
                details = "-"
            print(f"  [{status}] {Colors.BOLD}{name:<14}{Colors.RESET} : {details}")

        print()
        if all_ok:
            Console.success("All required build dependencies are present and ready!")
        else:
            Console.warn("Some required dependencies are missing. Review installation guides below:")
            cls.print_install_guide()

    @classmethod
    def print_install_guide(cls):
        print(f"\n{Colors.BOLD}[*] How to Install on macOS (Homebrew):{Colors.RESET}")
        print(f"  {Colors.CYAN}brew install apktool openjdk android-commandlinetools{Colors.RESET}")
        print(f"\n{Colors.BOLD}[*] How to Install on Linux (Ubuntu / Debian / Mint):{Colors.RESET}")
        print(f"  {Colors.CYAN}sudo apt update && sudo apt install python3 apktool default-jdk zipalign apksigner{Colors.RESET}")
        print(f"\n{Colors.BOLD}[*] How to Install on Linux (Fedora / RHEL):{Colors.RESET}")
        print(f"  {Colors.CYAN}sudo dnf install python3 apktool java-17-openjdk-devel zipalign android-tools{Colors.RESET}")
        print(f"\n{Colors.BOLD}[*] How to Install on Linux (Arch / Manjaro):{Colors.RESET}")
        print(f"  {Colors.CYAN}sudo pacman -S python android-tools java-environment-openjdk apktool{Colors.RESET}\n")
