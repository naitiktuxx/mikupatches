#!/usr/bin/env python3
"""
MikuPatches - Dynamic Multi-App Android Patch Engine
CLI Entrypoint and Interactive Menu Launcher.
"""

import sys
import os
import json
import dataclasses
from typing import List, Dict, Any, Optional

# Ensure package is resolvable when running as a script
WORKSPACE = os.path.dirname(os.path.abspath(__file__))
if WORKSPACE not in sys.path:
    sys.path.insert(0, WORKSPACE)

from mikupatches.constants import Colors, DEFAULT_DIST_DIR, DEFAULT_STAGING_DIR
from mikupatches.models import BuildOptions
from mikupatches.cli import parse_cli_options
from mikupatches.engine import BuildEngine
from mikupatches.toolchain import Toolchain
from mikupatches.patcher import AppManager
from mikupatches.extractor import Extractor
from mikupatches.adb import AdbManager
from mikupatches.bundler import Bundler
from mikupatches.ui.console import Console
from mikupatches.ui.menu import (
    show_main_menu,
    show_app_selection_menu,
    show_patch_selection_menu,
    show_arch_selection_menu,
    prompt_back_to_menu,
    show_navigatable_menu,
)


def list_apps_cli():
    apps = AppManager.list_supported_apps()
    Console.banner("SUPPORTED APPLICATIONS")
    if not apps:
        Console.warn("No application profiles found in 'patches/' folder.")
        return
    for idx, app in enumerate(apps, 1):
        print(f"  {Colors.CYAN}[{idx}]{Colors.RESET} {Colors.BOLD}{app.app_title}{Colors.RESET}")
        print(f"      Package : {app.package_name}")
        print(f"      Version : v{app.target_version_name} (code: {app.target_version_code})")
        print(f"      Patches : {len(app.patch_groups)} modules available")
        print(f"      URL     : {app.apkmirror_url}")
        print()


def list_patches_cli(target_app: str = None):
    apps = AppManager.list_supported_apps()
    if target_app:
        matched = [a for a in apps if a.package_name.lower() == target_app.lower() or target_app.lower() in a.app_title.lower()]
        if not matched:
            Console.error(f"Application '{target_app}' not found.")
            return
        apps = matched

    Console.banner("AVAILABLE PATCHES")
    for app in apps:
        print(f"\n{Colors.BOLD}=== {app.app_title} ({app.package_name}) [Target: v{app.target_version_name}] ==={Colors.RESET}\n")
        for idx, group in enumerate(app.patch_groups, 1):
            status = f"{Colors.GREEN}[ON]{Colors.RESET}" if group.default else f"{Colors.YELLOW}[OFF]{Colors.RESET}"
            print(f"  {idx}. {Colors.CYAN}{group.id:<20}{Colors.RESET} {status} - {Colors.BOLD}{group.name}{Colors.RESET}")
            print(f"     {group.desc}")
            print()


def show_help_guide():
    apps = AppManager.list_supported_apps()
    app_list_str = "\n".join(f"   - {a.app_title} ({a.package_name} v{a.target_version_name})" for a in apps)

    Console.banner("HELP & CLI REFERENCE")
    print(f"""
{Colors.BOLD}1. Supported Applications:{Colors.RESET}
{app_list_str}

{Colors.BOLD}2. How to Build:{Colors.RESET}
   1. Download the app package from APKMirror and put it in the 'input/' folder.
   2. Run 'python3 build.py' and choose your app.
   3. Patched outputs will be saved in 'dist/'.

{Colors.BOLD}3. CLI Flags:{Colors.RESET}
   python3 build.py [input_file] [options]

   -m, --menu            Open interactive main menu
   -a, --app <pkg>       Target specific package (e.g. io.appground.blek or com.truecaller)
   -i, --input <path>    Explicit input file or directory
   -o, --output-dir <p>  Custom output directory (default: 'dist/')
   -p, --select-patches  Open interactive patch checklist
   --clone               Enable App Clone mode to install alongside original app
   --arch <arches>       Filter architecture (arm64-v8a, armeabi-v7a, x86, x86_64)
   -f, --force           Bypass version check
   --dry-run             Simulate patch injection without building
   -I, --install         Auto-install built APK via ADB
   -d, --device <ser>    Target specific ADB device serial
   --launch              Auto-launch app after ADB install
   -c, --clean           Clean output and staging files
   -y, --yes             Auto-confirm non-interactive mode
   --list-apps           List supported applications
   --list-patches        List available patches
""")


def scan_dist_variants(dist_dir: str) -> List[Dict[str, Any]]:
    """Scans dist_dir for distinct built variants, choosing the best package per variant."""
    variants = []
    if not os.path.exists(dist_dir):
        return variants

    for app_name in sorted(os.listdir(dist_dir)):
        app_dir = os.path.join(dist_dir, app_name)
        if not os.path.isdir(app_dir) or app_name.startswith("."):
            continue

        subdirs = [
            d for d in sorted(os.listdir(app_dir))
            if os.path.isdir(os.path.join(app_dir, d)) and not d.startswith(".")
        ]

        variant_dirs = []
        is_direct_variant = any(
            os.path.exists(os.path.join(app_dir, fname)) for fname in ("universal.apkm", "base.apk", "info.json")
        )
        if is_direct_variant and not subdirs:
            variant_dirs.append(app_dir)
        else:
            for sub in subdirs:
                sub_path = os.path.join(app_dir, sub)
                if sub not in ("arm64-v8a", "armeabi-v7a", "x86", "x86_64"):
                    variant_dirs.append(sub_path)
                elif is_direct_variant and app_dir not in variant_dirs:
                    variant_dirs.append(app_dir)

        if not variant_dirs:
            variant_dirs = [app_dir]

        for v_dir in variant_dirs:
            primary_pkg = None
            univ_apkm = os.path.join(v_dir, "universal.apkm")
            if os.path.exists(univ_apkm):
                primary_pkg = univ_apkm
            else:
                for root, _, files in os.walk(v_dir):
                    for f in sorted(files):
                        if f.endswith(".apkm") and not f.startswith("."):
                            primary_pkg = os.path.join(root, f)
                            break
                    if primary_pkg:
                        break

            if not primary_pkg:
                base_apk = os.path.join(v_dir, "base.apk")
                if os.path.exists(base_apk):
                    primary_pkg = base_apk
                else:
                    for root, _, files in os.walk(v_dir):
                        for f in sorted(files):
                            if f.endswith(".apk") and not f.startswith("."):
                                primary_pkg = os.path.join(root, f)
                                break
                        if primary_pkg:
                            break

            if not primary_pkg or not os.path.exists(primary_pkg):
                continue

            rel_path = os.path.relpath(v_dir, dist_dir)
            parts = rel_path.split(os.sep)
            app_title = parts[0].replace("_", " ")

            # Resolve official app title from info.json or registered AppProfiles
            info_path = os.path.join(v_dir, "info.json")
            if os.path.exists(info_path):
                try:
                    with open(info_path, "r", encoding="utf-8") as f:
                        info_data = json.load(f)
                        if info_data.get("app_name"):
                            app_title = info_data.get("app_name")
                except Exception:
                    pass
            else:
                for prof in AppManager.list_supported_apps():
                    if Bundler.get_clean_app_dirname(prof) == parts[0]:
                        app_title = prof.app_title
                        break

            variant_tag = parts[1] if len(parts) > 1 else "Default"

            display_variant = variant_tag.replace("+", " + ")
            if display_variant == "Full":
                desc = "All Patches Included"
            elif "Clone" in display_variant:
                desc = "Dual-Install Clone (.tux)"
            elif display_variant == "Vanilla":
                desc = "Original Unpatched Base"
            else:
                desc = f"Custom: {display_variant}"

            patches_txt = os.path.join(v_dir, "PATCHES.txt")
            if os.path.exists(patches_txt):
                try:
                    with open(patches_txt, "r", encoding="utf-8") as f:
                        for line in f:
                            if line.strip().startswith("Variant :"):
                                raw_v = line.split(":", 1)[1].strip()
                                if raw_v == "Full":
                                    desc = "All Patches Included"
                                elif "Clone" in raw_v:
                                    desc = f"Dual-Install Clone (.tux) - {raw_v}"
                                else:
                                    desc = f"Custom: {raw_v}"
                                break
                except Exception:
                    pass

            sz_mb = os.path.getsize(primary_pkg) / (1024 * 1024)
            variants.append({
                "app_title": app_title,
                "variant_tag": variant_tag,
                "display_title": f"{app_title} [{variant_tag}]",
                "desc": f"{sz_mb:.2f} MB - {desc}",
                "package_path": primary_pkg,
                "dir": v_dir,
            })

    return variants


def handle_adb_install_menu(dist_dir: str):
    """Dynamic ADB install menu supporting multiple devices, unauthorized state detection, and multiple generated APKs."""
    if Toolchain.is_docker_env():
        Console.warn("ADB is disabled in Docker environment. ADB is only supported in native environments (macOS / Linux / Windows).")
        return False

    if not Toolchain.get_adb():
        Console.warn("ADB is not installed or not found in system PATH.")
        Toolchain.print_install_guide()
        if sys.stdin.isatty():
            prompt_back_to_menu()
        return False

    if not os.path.exists(dist_dir):
        Console.warn(f"Output folder '{os.path.basename(dist_dir)}/' does not exist. Build an app first.")
        if sys.stdin.isatty():
            prompt_back_to_menu()
        return False

    # Scan distinct variants in dist/
    variants = scan_dist_variants(dist_dir)
    if not variants:
        Console.warn(f"No built packages found in '{os.path.basename(dist_dir)}/'. Build an app first.")
        if sys.stdin.isatty():
            prompt_back_to_menu()
        return False

    # Device detection with interactive troubleshooting & retry loop
    while True:
        diag = AdbManager.get_device_diagnostics()
        devices = diag["ready"]

        if devices:
            break

        if not sys.stdin.isatty():
            if diag["unauthorized"]:
                Console.warn(f"ADB device detected ({', '.join(diag['unauthorized'])}) but UNAUTHORIZED. Allow USB debugging on device.")
            else:
                Console.warn("No active Android phone or emulator connected.")
            return False

        # Interactive Troubleshooting Screen
        print("\n" + "=" * 76)
        print(f"{Colors.YELLOW}{Colors.BOLD} [Notice] No Connected Android Devices Ready{Colors.RESET}")
        print("------------------------------------------------------------------------")

        if diag["unauthorized"]:
            print(f"  {Colors.RED}{Colors.BOLD}[!] Device detected but UNAUTHORIZED:{Colors.RESET}")
            for ser in diag["unauthorized"]:
                print(f"      - Serial : {Colors.CYAN}{ser}{Colors.RESET} ({Colors.YELLOW}Unauthorized / Lockscreen{Colors.RESET})")
            print(f"\n  {Colors.BOLD}Action Required:{Colors.RESET}")
            print(f"  1. Unlock your phone screen.")
            print(f"  2. Check for the {Colors.CYAN}'Allow USB debugging?'{Colors.RESET} prompt on your phone.")
            print(f"  3. Check {Colors.BOLD}'Always allow from this computer'{Colors.RESET} and tap {Colors.GREEN}OK{Colors.RESET}.")
        elif diag["offline"]:
            print(f"  {Colors.YELLOW}[!] Device detected but OFFLINE ({', '.join(diag['offline'])}). Reconnect USB cable.{Colors.RESET}")
        else:
            print("  No active Android phones or emulators were detected by ADB.\n")
            print(f"  {Colors.BOLD}Troubleshooting Checklist:{Colors.RESET}")
            print(f"  1. Plug in your Android device via USB cable.")
            print(f"  2. Open Android {Colors.BOLD}Settings -> Developer Options{Colors.RESET} and enable {Colors.CYAN}USB Debugging{Colors.RESET}.")
            print(f"  3. Unlock phone and accept the {Colors.CYAN}'Allow USB debugging?'{Colors.RESET} prompt.")
            print(f"  4. If using an emulator (Android Studio / Genymotion), make sure it is running.")

        print("=" * 76 + "\n")
        print(f"{Colors.BOLD}Options:{Colors.RESET}")
        print(f"  [1] Refresh / Scan again")
        print(f"  [2] Back to Main Menu\n")

        try:
            choice = input(f"{Colors.CYAN}Select option [1-2] (default 1): {Colors.RESET}").strip().lower()
            if choice in ("2", "b", "back", "cancel", "q", "exit"):
                return False
            Console.step("Scanning for connected ADB devices...")
        except (EOFError, KeyboardInterrupt):
            return False

    # Device selection if multiple connected
    chosen_device = None
    if len(devices) > 1 and sys.stdin.isatty():
        dev_items = []
        for idx, (serial, model) in enumerate(devices, 1):
            dev_items.append((str(idx), model, f"Serial: {serial}"))
        dev_items.append(("b", "Cancel", ""))

        dev_idx = show_navigatable_menu("SELECT TARGET DEVICE", dev_items, default_idx=0)
        if dev_idx == len(dev_items) - 1:
            return False
        chosen_device = devices[dev_idx][0]
    else:
        chosen_device = devices[0][0]

    # Variant package selection if multiple found
    selected_variant = variants[0]
    if len(variants) > 1 and sys.stdin.isatty():
        items = []
        for idx, v in enumerate(variants, 1):
            items.append((str(idx), v["display_title"], v["desc"]))
        items.append(("b", "Cancel", ""))

        choice_idx = show_navigatable_menu("SELECT PACKAGE TO INSTALL", items, default_idx=0)
        if choice_idx == len(items) - 1:
            return False
        selected_variant = variants[choice_idx]
    else:
        if sys.stdin.isatty():
            print(f"\n{Colors.BOLD}Found Build:{Colors.RESET} {Colors.CYAN}{selected_variant['display_title']}{Colors.RESET} ({selected_variant['desc']})")
            try:
                confirm = input(f"{Colors.CYAN}Install on device [{chosen_device}]? [Y/n]: {Colors.RESET}").strip().lower()
                if confirm in ("n", "no"):
                    return False
            except (EOFError, KeyboardInterrupt):
                return False

    selected_target = selected_variant["package_path"]
    installed_ok = AdbManager.install(selected_target, device_serial=chosen_device)
    if installed_ok and sys.stdin.isatty():
        # Determine package name from info.json in APK's folder or app profile
        pkg_to_launch = None

        # 1. Search for info.json in the selected variant folder and parent folders
        curr_dir = selected_variant["dir"]
        while curr_dir and os.path.abspath(curr_dir) != os.path.abspath(os.path.dirname(dist_dir)):
            info_candidate = os.path.join(curr_dir, "info.json")
            if os.path.isfile(info_candidate):
                try:
                    with open(info_candidate, "r", encoding="utf-8") as f:
                        data = json.load(f)
                        if data.get("pname"):
                            pkg_to_launch = data.get("pname")
                            break
                except Exception:
                    pass
            if os.path.abspath(curr_dir) == os.path.abspath(dist_dir):
                break
            curr_dir = os.path.dirname(curr_dir)

        # 2. Fallback matching against app folder name and clone status
        rel_path = os.path.relpath(selected_target, dist_dir)
        app_folder = rel_path.split(os.sep)[0]
        is_clone = "clone" in selected_variant.get("variant_tag", "").lower() or "clone" in rel_path.lower()

        if not pkg_to_launch:
            for app in AppManager.list_supported_apps():
                clean_name = Bundler.get_clean_app_dirname(app)
                if clean_name.lower() in app_folder.lower() or app.package_name.lower() in app_folder.lower():
                    pkg_to_launch = f"{app.package_name}.tux" if is_clone else app.package_name
                    break

        if is_clone and pkg_to_launch and not pkg_to_launch.endswith(".tux"):
            pkg_to_launch = f"{pkg_to_launch}.tux"

        if pkg_to_launch:
            try:
                launch_ans = input(f"\n{Colors.CYAN}[?] Launch {pkg_to_launch} on device now? [Y/n]: {Colors.RESET}").strip().lower()
                if launch_ans in ("", "y", "yes"):
                    AdbManager.launch_app(package_name=pkg_to_launch, device_serial=chosen_device)
            except (EOFError, KeyboardInterrupt):
                pass
    return True


def main():
    parsed, options = parse_cli_options()

    if parsed.no_color:
        Console.set_color_enabled(False)

    # Handle quick informational queries
    if parsed.list_apps:
        list_apps_cli()
        sys.exit(0)

    if parsed.list_patches:
        list_patches_cli(options.target_app)
        sys.exit(0)

    if parsed.clean:
        cleaned = BuildEngine.clean_redundant(options.output_dir, options.staging_dir)
        if cleaned:
            Console.success("Cleaned build artifacts.")
        else:
            Console.step("No temporary build files found to clean.")
        sys.exit(0)

    # Determine whether to launch interactive menu or direct pipeline
    has_explicit_actions = (
        parsed.input_file
        or parsed.custom_input
        or parsed.target_app
        or parsed.only_patches
        or parsed.skip_patches
        or parsed.dry_run
        or parsed.yes
        or parsed.install
        or parsed.clean
        or parsed.select_patches
    )

    is_interactive_menu = parsed.menu or (not has_explicit_actions and sys.stdin.isatty())

    if not is_interactive_menu:
        res = BuildEngine.run_pipeline(options)
        sys.exit(0 if res.success else 1)

    # Interactive Main Menu Loop
    current_idx = 0
    status_lines = None

    while True:
        choice_idx, choice = show_main_menu(default_idx=current_idx, status_lines=status_lines)
        status_lines = None
        current_idx = choice_idx

        if choice in ('0', 'q', 'exit', 'quit'):
            Console.step("Exiting.")
            sys.exit(0)

        elif choice == '1':
            # Option 1: Build App (All Patches)
            apps = AppManager.list_supported_apps()
            chosen_app = show_app_selection_menu(apps, title="SELECT APPLICATION TO BUILD")
            if not chosen_app:
                continue

            target_pkg = chosen_app.package_name

            enable_clone = False
            if sys.stdin.isatty():
                try:
                    clone_ans = input(
                        f"\n{Colors.CYAN}[?] Enable App Clone to install alongside original app? [y/N]: {Colors.RESET}"
                    ).strip().lower()
                    if clone_ans in ("y", "yes"):
                        enable_clone = True
                except (EOFError, KeyboardInterrupt):
                    pass

            opts = dataclasses.replace(
                options,
                target_app=target_pkg,
                clone=enable_clone,
                select_patches=False,
                only_patches=None,
                skip_patches=None,
            )
            res = BuildEngine.run_pipeline(opts)
            if res.success:
                prompt_back_to_menu()

        elif choice == '2':
            # Option 2: Custom Patch Selection
            apps = AppManager.list_supported_apps()
            chosen_app = show_app_selection_menu(apps, title="SELECT APPLICATION TO CONFIGURE")
            if not chosen_app:
                continue

            opts = dataclasses.replace(
                options,
                target_app=chosen_app.package_name,
                select_patches=True,
                only_patches=None,
                skip_patches=None,
            )
            res = BuildEngine.run_pipeline(opts)
            if res.success:
                prompt_back_to_menu()

        elif choice == '3':
            # Option 3: Build for Specific Arch
            chosen_arches = show_arch_selection_menu()
            if chosen_arches is None:
                continue

            apps = AppManager.list_supported_apps()
            chosen_app = show_app_selection_menu(apps, title="SELECT APPLICATION")
            if not chosen_app:
                continue

            enable_clone = False
            if sys.stdin.isatty():
                try:
                    clone_ans = input(
                        f"\n{Colors.CYAN}[?] Enable App Clone to install alongside original app? [y/N]: {Colors.RESET}"
                    ).strip().lower()
                    if clone_ans in ("y", "yes"):
                        enable_clone = True
                except (EOFError, KeyboardInterrupt):
                    pass

            opts = dataclasses.replace(
                options,
                target_app=chosen_app.package_name,
                arches=chosen_arches,
                clone=enable_clone,
                select_patches=False,
                only_patches=None,
                skip_patches=None,
            )
            res = BuildEngine.run_pipeline(opts)
            if res.success:
                prompt_back_to_menu()

        elif choice == '4':
            # Option 4: Install App to Phone via ADB
            if Toolchain.is_docker_env():
                status_lines = [
                    f" {Colors.YELLOW}[!] Warning: ADB is disabled in Docker environment. ADB is only for native environments (macOS/Linux/Windows).{Colors.RESET}"
                ]
                continue
            did_install = handle_adb_install_menu(options.output_dir)
            if did_install:
                prompt_back_to_menu()

        elif choice == '5':
            # Option 5: Clean Output Files
            cleaned = BuildEngine.clean_redundant(options.output_dir, options.staging_dir)
            if cleaned:
                status_lines = [
                    f" {Colors.GREEN}[Success] Cleaned dist/ and temporary build files.{Colors.RESET}"
                ]
            else:
                status_lines = [
                    f" {Colors.GREEN}[Success] Output folder already clean.{Colors.RESET}"
                ]

        elif choice == '6':
            # Option 6: System Toolchain Status
            Toolchain.print_diagnostics()
            prompt_back_to_menu()

        elif choice == '7':
            # Option 7: Help & Usage Guide
            show_help_guide()
            prompt_back_to_menu()


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print(f"\n{Colors.RED}[!] Terminated (Ctrl+C).{Colors.RESET}")
        sys.exit(130)
