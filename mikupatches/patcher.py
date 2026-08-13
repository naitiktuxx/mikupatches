"""
Patch engine supporting file overlays, regex/text replacements, universal app cloner, and dynamic hooks.
"""

import os
import sys
import shutil
import re
import importlib.util
from typing import Dict, List, Any, Optional, Tuple

from mikupatches.constants import DEFAULT_PATCHES_DIR, Colors
from mikupatches.models import AppProfile, PatchGroup
from mikupatches.cloner import AppCloner
from mikupatches.ui.console import Console


class AppManager:
    """Manages application profiles and version verification."""

    @classmethod
    def list_supported_apps(cls, patches_dir: str = DEFAULT_PATCHES_DIR) -> List[AppProfile]:
        profiles = []
        if not os.path.exists(patches_dir):
            return profiles

        for entry in sorted(os.listdir(patches_dir)):
            app_dir = os.path.join(patches_dir, entry)
            if os.path.isdir(app_dir) and entry != "bundle_fallback":
                cfg_path = os.path.join(app_dir, "config.json")
                if os.path.isfile(cfg_path):
                    try:
                        profiles.append(AppProfile.from_directory(app_dir))
                    except Exception as e:
                        Console.debug(f"Failed to load profile for {entry}: {e}", verbose=True)
        return profiles

    @classmethod
    def find_app_profile(
        cls,
        package_or_title: str,
        patches_dir: str = DEFAULT_PATCHES_DIR,
    ) -> Optional[AppProfile]:
        for p in cls.list_supported_apps(patches_dir):
            if (
                p.package_name.lower() == package_or_title.lower()
                or p.app_title.lower() == package_or_title.lower()
                or os.path.basename(p.profile_dir or "").lower() == package_or_title.lower()
            ):
                return p
        return None

    @classmethod
    def verify_version(
        cls,
        profile: AppProfile,
        detected_name: Optional[str],
        detected_code: Optional[str],
        force: bool = False,
        target_version: Optional[str] = None,
    ) -> bool:
        target_name = target_version or profile.target_version_name
        target_code = profile.target_version_code
        app_title = profile.app_title

        Console.step(f"Verifying {app_title} version (Detected: v{detected_name or 'Unknown'} / code {detected_code or 'Unknown'})...")

        is_mismatch = (
            (detected_name and target_name and detected_name != target_name)
            or (detected_code and target_code and detected_code != target_code and not target_version)
        )

        if is_mismatch:
            print("\n" + "=" * 76)
            Console.error("APPLICATION VERSION MISMATCH DETECTED!")
            print("------------------------------------------------------------------------")
            print(f"  - Application Name        : {app_title} ({profile.package_name})")
            print(f"  - Target Version Required : {Colors.GREEN}v{target_name}{Colors.RESET} (versionCode: {target_code})")
            print(f"  - Detected Input Version  : {Colors.RED}v{detected_name or 'Unknown'}{Colors.RESET} (versionCode: {detected_code or 'Unknown'})")
            print("\n  [!] Why this matters:")
            print("      These patches are designed for bytecode structures in the target release.")
            print("      Applying them to another version may fail or cause app crashes.")
            if not force:
                print(f"\n  {Colors.BOLD}Options:{Colors.RESET}")
                print(f"   1. Download {Colors.CYAN}{app_title} v{target_name}{Colors.RESET} from APKMirror.")
                print(f"   2. Bypass this check by passing {Colors.YELLOW}'-f'{Colors.RESET} or {Colors.YELLOW}'--force'{Colors.RESET} flag.")
                print("=" * 76 + "\n")
                return False
            else:
                Console.warn("Bypassing version verification check (--force enabled)...")
                print("=" * 76 + "\n")
                return True
        else:
            Console.success(f"App version verified: {app_title} v{detected_name or target_name} (code {detected_code or target_code})")
            return True


class PatchEngine:
    """Executes file overlays, regex transformations, universal app cloner, and dynamic hooks."""

    @classmethod
    def apply_patches(
        cls,
        decompiled_dir: str,
        app_profile: AppProfile,
        active_status: Dict[str, bool],
        clone_suffix: str = ".tux",
        clone_pkg: Optional[str] = None,
        dry_run: bool = False,
        verbose: bool = False,
    ) -> List[Dict[str, Any]]:
        patches_base = os.path.join(app_profile.profile_dir, "base") if app_profile.profile_dir else ""
        results = []

        action_word = "Simulating" if dry_run else "Applying"
        Console.step(f"{action_word} patches for {app_profile.app_title} ({app_profile.package_name})...")

        for group in app_profile.patch_groups:
            gid = group.id
            gname = group.name
            is_active = active_status.get(gid, False)

            if not is_active:
                results.append({
                    "id": gid,
                    "name": gname,
                    "applied": False,
                    "files": [],
                    "regex_results": [],
                    "hook_results": [],
                })
                continue

            file_records = []
            regex_records = []
            hook_records = []

            # 1. Universal App Cloner Hook
            if gid == AppCloner.CLONE_PATCH_ID:
                try:
                    clone_res = AppCloner.apply_clone(
                        decompiled_dir=decompiled_dir,
                        orig_pkg=app_profile.package_name,
                        suffix=clone_suffix,
                        custom_pkg=clone_pkg,
                        dry_run=dry_run,
                        verbose=verbose,
                    )
                    file_records.append(("AndroidManifest.xml", f"Clone package: {clone_res['cloned_package']}", True))
                except Exception as e:
                    Console.error(f"App clone transformation failed: {e}")
                    file_records.append(("AndroidManifest.xml", f"Clone failed: {e}", False))

            # 2. File Overlays
            if group.files and patches_base:
                for rel_path, desc in group.files.items():
                    src_file = os.path.join(patches_base, rel_path)
                    dst_file = os.path.join(decompiled_dir, rel_path)

                    if os.path.exists(src_file):
                        if not dry_run:
                            os.makedirs(os.path.dirname(dst_file), exist_ok=True)
                            shutil.copyfile(src_file, dst_file)
                            applied_ok = os.path.exists(dst_file)
                        else:
                            applied_ok = True

                        file_records.append((rel_path, desc, applied_ok))
                        status_char = "✓" if applied_ok else "✗"
                        prefix = "[Dry-Run] " if dry_run else ""
                        print(f"  -> {prefix}Overlay ({status_char}): {Colors.CYAN}{rel_path}{Colors.RESET} ({desc})")
                    else:
                        Console.warn(f"Patch overlay source not found: {rel_path}")
                        file_records.append((rel_path, desc, False))

            # 3. Regex / Text Transformations
            if group.regex_rules:
                for rule in group.regex_rules:
                    target_rel = rule.get("target_file", "")
                    target_abs = os.path.join(decompiled_dir, target_rel)
                    pattern = rule.get("pattern", "")
                    replacement = rule.get("replacement", "")
                    rule_desc = rule.get("desc", target_rel)

                    if os.path.exists(target_abs) and pattern:
                        if not dry_run:
                            try:
                                with open(target_abs, "r", encoding="utf-8", errors="ignore") as f:
                                    content = f.read()
                                modified_content, count = re.subn(pattern, replacement, content)
                                if count > 0:
                                    with open(target_abs, "w", encoding="utf-8") as f:
                                        f.write(modified_content)
                                    regex_records.append((target_rel, rule_desc, True, count))
                                    print(f"  -> Regex match ({count} replaced): {Colors.CYAN}{target_rel}{Colors.RESET} ({rule_desc})")
                                else:
                                    regex_records.append((target_rel, rule_desc, False, 0))
                                    Console.warn(f"Regex pattern not matched in {target_rel}")
                            except Exception as e:
                                regex_records.append((target_rel, rule_desc, False, 0))
                                Console.error(f"Failed to apply regex on {target_rel}: {e}")
                        else:
                            regex_records.append((target_rel, rule_desc, True, 1))
                            print(f"  -> [Dry-Run] Regex rule: {Colors.CYAN}{target_rel}{Colors.RESET} ({rule_desc})")
                    else:
                        regex_records.append((target_rel, rule_desc, False, 0))

            # 4. Dynamic Python Hook Scripts
            if group.hooks and app_profile.profile_dir:
                for hook_name in group.hooks:
                    hook_path = os.path.join(app_profile.profile_dir, "hooks", hook_name)
                    if os.path.exists(hook_path) and not dry_run:
                        try:
                            spec = importlib.util.spec_from_file_location("dynamic_hook", hook_path)
                            if spec and spec.loader:
                                mod = importlib.util.module_from_spec(spec)
                                spec.loader.exec_module(mod)
                                if hasattr(mod, "apply_hook"):
                                    mod.apply_hook(decompiled_dir, app_profile, verbose=verbose)
                                    hook_records.append((hook_name, True))
                                    print(f"  -> Executed hook: {Colors.CYAN}{hook_name}{Colors.RESET}")
                        except Exception as e:
                            hook_records.append((hook_name, False))
                            Console.error(f"Hook script failed ({hook_name}): {e}")

            results.append({
                "id": gid,
                "name": gname,
                "applied": True,
                "files": file_records,
                "regex_results": regex_records,
                "hook_results": hook_records,
            })

        applied_count = sum(1 for g in results if g["applied"])
        Console.success(f"Successfully {action_word.lower()} {applied_count}/{len(app_profile.patch_groups)} patch module(s).")
        return results
