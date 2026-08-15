"""
Dynamic interactive TTY terminal menus and navigation system with simplified, clean UI.
"""

import sys
import os
import time
import webbrowser
from typing import List, Tuple, Optional, Dict, Any

from mikupatches.constants import Colors, SUPPORTED_ARCHITECTURES
from mikupatches.models import AppProfile, PatchGroup
from mikupatches.ui.console import Console
from mikupatches.extractor import Extractor
from mikupatches.toolchain import Toolchain


def get_single_keypress() -> Optional[str]:
    if not sys.stdin.isatty():
        return None
    try:
        import tty, termios
        fd = sys.stdin.fileno()
        old_settings = termios.tcgetattr(fd)
        try:
            tty.setraw(fd)
            ch = sys.stdin.read(1)
            if ch == '\x1b':
                ch2 = sys.stdin.read(1)
                if ch2 == '[':
                    ch3 = sys.stdin.read(1)
                    if ch3 == 'A':
                        return 'UP'
                    elif ch3 == 'B':
                        return 'DOWN'
                    elif ch3 == 'C':
                        return 'RIGHT'
                    elif ch3 == 'D':
                        return 'LEFT'
            elif ch in ('\r', '\n'):
                return 'ENTER'
            elif ch == ' ':
                return 'SPACE'
            elif ch in ('b', 'B'):
                return 'BACK'
            elif ch == '\x03':
                raise KeyboardInterrupt
            elif ch in ('q', 'Q'):
                return 'QUIT'
            elif ch.isdigit():
                return ch
        finally:
            termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
    except KeyboardInterrupt:
        raise KeyboardInterrupt
    except Exception:
        return None
    return None


def show_navigatable_menu(
    title: str,
    items: List[Tuple[str, str, str]],
    default_idx: int = 0,
    status_lines: Optional[List[str]] = None,
) -> int:
    if not sys.stdin.isatty():
        return 0

    selected_idx = default_idx
    num_items = len(items)

    try:
        sys.stdout.write("\033[?25l")
        sys.stdout.flush()

        while True:
            sys.stdout.write("\033[H\033[J")

            print("=" * 76)
            print(f"{Colors.CYAN}{Colors.BOLD} [#] {title}{Colors.RESET}")
            print("------------------------------------------------------------------------")
            print(" Use Arrow keys or Numbers to select, Enter to confirm, 'b' to back, 'q' to exit:")
            print()

            for idx, (num_key, label, desc) in enumerate(items):
                if idx == selected_idx:
                    pointer = f"{Colors.CYAN}{Colors.BOLD}->{Colors.RESET}"
                    prefix = f"{Colors.CYAN}{Colors.BOLD}[{num_key}]{Colors.RESET}"
                    line_str = f" {pointer} {prefix} {Colors.BOLD}{label}{Colors.RESET}"
                else:
                    pointer = "  "
                    prefix = f"[{num_key}]"
                    line_str = f" {pointer} {prefix} {label}"

                if desc:
                    line_str += f" - {Colors.DIM}{desc}{Colors.RESET}"
                print(line_str)

            print("=" * 76)

            if status_lines:
                for sline in status_lines:
                    print(sline)

            sys.stdout.flush()

            key = get_single_keypress()
            if key == 'UP':
                selected_idx = (selected_idx - 1) % num_items
            elif key == 'DOWN':
                selected_idx = (selected_idx + 1) % num_items
            elif key == 'ENTER':
                return selected_idx
            elif key == 'BACK' or (key and str(key).lower() in ('b', 'back')):
                for idx, (num_key, label, desc) in enumerate(items):
                    if str(num_key).lower() in ('b', 'back', 'cancel') or 'cancel' in label.lower() or 'back' in label.lower():
                        return idx
                # If no explicit 'b' item but last item is a back/exit option
                if items and (items[-1][0] == '0' or 'exit' in items[-1][1].lower()):
                    return len(items) - 1
                return selected_idx
            elif key == 'QUIT':
                print(f"\n{Colors.RED}[!] Terminated by user.{Colors.RESET}")
                sys.exit(0)
            elif key:
                key_str = str(key).lower()
                for idx, (num_key, label, desc) in enumerate(items):
                    if str(num_key).lower() == key_str:
                        return idx
            elif key is None:
                try:
                    ans = input(f"\n{Colors.CYAN}Waiting for input: {Colors.RESET}").strip().lower()
                    if ans in ('b', 'back', 'cancel'):
                        for idx, (num_key, label, desc) in enumerate(items):
                            if str(num_key).lower() in ('b', 'back', 'cancel') or 'cancel' in label.lower() or 'back' in label.lower():
                                return idx
                        return len(items) - 1
                    elif ans in ('q', 'quit', 'exit'):
                        sys.exit(0)
                    elif ans.isdigit():
                        for idx, (num_key, label, desc) in enumerate(items):
                            if str(num_key) == ans:
                                return idx
                    return selected_idx
                except KeyboardInterrupt:
                    raise KeyboardInterrupt
    finally:
        sys.stdout.write("\033[?25h")
        sys.stdout.flush()


def show_app_selection_menu(
    supported_apps: List[AppProfile],
    title: str = "SELECT APPLICATION",
) -> Optional[AppProfile]:
    """Displays simplified dynamic menu to pick target app."""
    if not supported_apps:
        Console.error("No supported applications found in 'patches/' folder.")
        return None

    if len(supported_apps) == 1:
        return supported_apps[0]

    items = []
    for idx, app in enumerate(supported_apps, 1):
        num_key = str(idx)
        label = f"{app.app_title}"
        desc = f"v{app.target_version_name}"
        items.append((num_key, label, desc))

    items.append(("b", "Back to Main Menu", ""))

    idx = show_navigatable_menu(
        title=title,
        items=items,
        default_idx=0
    )

    if idx == len(items) - 1:
        return None

    return supported_apps[idx]


def show_patch_selection_menu(
    app_profile: AppProfile,
    active_status: Dict[str, bool],
    title: Optional[str] = None,
) -> Optional[Dict[str, bool]]:
    """Displays dynamic interactive checkbox menu to toggle patches."""
    patch_groups = app_profile.patch_groups
    if not patch_groups:
        return active_status

    if not sys.stdin.isatty():
        return active_status

    selected_idx = 0
    num_items = len(patch_groups)
    status_map = dict(active_status)

    try:
        sys.stdout.write("\033[?25l")
        sys.stdout.flush()

        while True:
            sys.stdout.write("\033[H\033[J")

            print("=" * 76)
            print(f"{Colors.CYAN}{Colors.BOLD} [#] {title or 'PATCH SELECTION'}: {app_profile.app_title}{Colors.RESET}")
            print(f"     Version: v{app_profile.target_version_name}")
            print("------------------------------------------------------------------------")
            print(" Use Arrow keys to navigate, Space or Numbers to toggle, Enter to build, 'b' to back:\n")

            for idx, group in enumerate(patch_groups):
                gid = group.id
                status_str = (
                    f"{Colors.GREEN}[✓] ON {Colors.RESET}"
                    if status_map.get(gid, True)
                    else f"{Colors.RED}[ ] OFF{Colors.RESET}"
                )

                if idx == selected_idx:
                    pointer = f"{Colors.CYAN}{Colors.BOLD}->{Colors.RESET}"
                    prefix = f"{Colors.CYAN}{Colors.BOLD}[{idx + 1}]{Colors.RESET}"
                    line_str = f" {pointer} {prefix} {status_str} {Colors.BOLD}{group.name}{Colors.RESET}"
                else:
                    pointer = "  "
                    prefix = f"[{idx + 1}]"
                    line_str = f" {pointer} {prefix} {status_str} {group.name}"

                print(line_str)
                print(f"       {Colors.DIM}{group.desc}{Colors.RESET}")
                print()

            print("=" * 76)
            print(f"  - Press 'b': Back to Main Menu")
            print(f"  - Press 'q': Exit")
            print("=" * 76)
            sys.stdout.flush()

            key = get_single_keypress()
            if key == 'UP':
                selected_idx = (selected_idx - 1) % num_items
            elif key == 'DOWN':
                selected_idx = (selected_idx + 1) % num_items
            elif key == 'SPACE':
                gid = patch_groups[selected_idx].id
                status_map[gid] = not status_map.get(gid, True)
            elif key == 'ENTER':
                print()
                return status_map
            elif key == 'BACK':
                return None
            elif key == 'QUIT':
                print(f"\n{Colors.RED}[!] Cancelled by user.{Colors.RESET}")
                sys.exit(0)
            elif key and key.isdigit():
                idx_val = int(key)
                if 1 <= idx_val <= num_items:
                    gid = patch_groups[idx_val - 1].id
                    status_map[gid] = not status_map.get(gid, True)
            elif key is None:
                return status_map
    finally:
        sys.stdout.write("\033[?25h")
        sys.stdout.flush()


def show_arch_selection_menu() -> Optional[List[str]]:
    items = [
        ("1", "Universal", "All architectures (Recommended)"),
        ("2", "ARM64", "Modern 64-bit phones"),
        ("3", "ARM32", "Older 32-bit phones"),
        ("4", "x86_64", "64-bit PC Emulators"),
        ("5", "x86", "32-bit PC Emulators"),
        ("b", "Back to Main Menu", ""),
    ]

    idx = show_navigatable_menu("SELECT TARGET ARCHITECTURE", items, default_idx=0)
    if idx == 0:
        return list(SUPPORTED_ARCHITECTURES)
    elif idx == 1:
        return ["arm64-v8a"]
    elif idx == 2:
        return ["armeabi-v7a"]
    elif idx == 3:
        return ["x86_64"]
    elif idx == 4:
        return ["x86"]
    elif idx == 5:
        return None
    return list(SUPPORTED_ARCHITECTURES)


def show_main_menu(default_idx: int = 0, status_lines: Optional[List[str]] = None) -> Tuple[int, str]:
    in_docker = Toolchain.is_docker_env()
    adb_desc = "Transfer & install via ADB" if not in_docker else "Native host only (Disabled in Docker)"

    items = [
        ("1", "Build App (All Patches)", "Quick recommended build"),
        ("2", "Custom Patch Selection", "Choose specific patches to apply"),
        ("3", "Build for Specific Arch", "Target ARM64, ARM32, or x86"),
        ("4", "Install App to Phone", adb_desc),
        ("5", "Clean Output Files", "Clear dist/ folder"),
        ("6", "System Toolchain Status", "Check Java, Apktool, and zipalign"),
        ("7", "Help & Usage Guide", ""),
        ("0", "Exit", ""),
    ]
    idx = show_navigatable_menu("MIKUPATCHES - MAIN MENU", items, default_idx=default_idx, status_lines=status_lines)
    return idx, items[idx][0]


def prompt_download(app_profile: AppProfile, input_dir: str) -> Optional[str]:
    """Prompts user to download missing target package from APKMirror with auto-detection."""
    print("\n" + "=" * 76)
    print(f"{Colors.RED}{Colors.BOLD} [Notice] Target Package File Missing{Colors.RESET}")
    print("------------------------------------------------------------------------")
    print(f"  App Name : {Colors.BOLD}{app_profile.app_title}{Colors.RESET}")
    print(f"  Version  : {Colors.CYAN}v{app_profile.target_version_name}{Colors.RESET}")
    print(f"  Folder   : Place file inside '{os.path.basename(input_dir)}/' directory")
    print("=" * 76 + "\n")

    apkmirror_url = app_profile.apkmirror_url or ""
    in_docker = Toolchain.is_docker_env()
    if Console.is_color_enabled() and apkmirror_url:
        osc8_link = f"\033]8;;{apkmirror_url}\033\\{Colors.CYAN}{apkmirror_url}{Colors.RESET}\033]8;;\033\\"
    else:
        osc8_link = apkmirror_url

    if not sys.stdin.isatty():
        infile = Extractor.find_input_file(input_dir=input_dir, target_pkg=app_profile.package_name)
        if infile:
            return infile
        if osc8_link:
            print(f"  Download Link: {osc8_link}")
        return None

    print(f"{Colors.BOLD}Options:{Colors.RESET}")
    if in_docker:
        print(f"  [1] Show download link (save to host '{os.path.basename(input_dir)}/' folder)")
    else:
        print(f"  [1] Open APKMirror in browser to download")
    print("  [2] Back to Main Menu\n")
    try:
        choice = input(f"{Colors.CYAN}Select option [1-2] (default 1): {Colors.RESET}").strip().lower()
        if choice in ("2", "b", "back", "cancel", "q", "exit"):
            Console.step("Returning to Main Menu.")
            return None
    except (EOFError, KeyboardInterrupt):
        Console.step("Returning to Main Menu.")
        return None

    print("-" * 76)
    if in_docker:
        print(f"{Colors.YELLOW}[Docker Environment]{Colors.RESET} {Colors.BOLD}Download package on your host machine:{Colors.RESET}")
        print(f"  Link : {osc8_link} {Colors.DIM}(Cmd/Ctrl + Click to open){Colors.RESET}")
        print(f"  Path : Save into {Colors.BOLD}'{os.path.basename(input_dir)}/'{Colors.RESET} directory on host")
    else:
        print(f"{Colors.GREEN}[+] Opening download link in browser...{Colors.RESET}")
        print(f"  Link: {osc8_link}")
        try:
            webbrowser.open(apkmirror_url)
        except Exception as e:
            Console.warn(f"Failed to open browser automatically: {e}")
    print("-" * 76)
    print(f"\n{Colors.YELLOW}[*] Waiting for downloaded file in '{os.path.basename(input_dir)}/' folder... (Press Ctrl+C to cancel){Colors.RESET}\n")

    try:
        while True:
            infile = Extractor.find_input_file(input_dir=input_dir, target_pkg=app_profile.package_name)
            if infile:
                Console.success(f"Found input package: {os.path.basename(infile)}")
                return infile
            time.sleep(2)
    except KeyboardInterrupt:
        Console.step("\nWaiting cancelled. Returning to Main Menu.")
        return None


def prompt_back_to_menu():
    print("-" * 76)
    print(f" Press {Colors.CYAN}'b'{Colors.RESET} or Enter to return to Main Menu, or {Colors.CYAN}'q'{Colors.RESET} to Exit.")
    print("-" * 76)
    sys.stdout.flush()

    if not sys.stdin.isatty():
        return

    while True:
        key = get_single_keypress()
        if key in ('ENTER', 'BACK'):
            return
        elif key == 'QUIT':
            print(f"\n{Colors.RED}[!] Terminated by user.{Colors.RESET}")
            sys.exit(0)
