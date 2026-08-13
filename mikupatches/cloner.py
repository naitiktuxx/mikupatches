"""
Universal App Cloner and Dual Installation Patcher.
Enables parallel installation alongside original applications by renaming package names,
qualifying relative manifest components, and resolving conflicting provider authorities.
"""

import os
import re
import xml.etree.ElementTree as ET
from typing import Dict, Any, Optional, List, Tuple

from mikupatches.constants import Colors
from mikupatches.ui.console import Console


class AppCloner:
    """Universal patcher to clone any Android APK for dual/parallel installation."""

    CLONE_PATCH_ID = "clone_dual_install"
    CLONE_DEFAULT_SUFFIX = ".tux"
    CLONE_PATCH_NAME = "App Clone (Dual Install)"
    CLONE_PATCH_DESC = "Allows installing alongside the original app (adds .tux to package name)"

    @classmethod
    def get_universal_patch_group_dict(cls) -> Dict[str, Any]:
        return {
            "id": cls.CLONE_PATCH_ID,
            "name": cls.CLONE_PATCH_NAME,
            "desc": cls.CLONE_PATCH_DESC,
            "default": False,
            "files": {},
            "regex_rules": [],
            "hooks": [],
        }

    @classmethod
    def apply_clone(
        cls,
        decompiled_dir: str,
        orig_pkg: str,
        suffix: str = CLONE_DEFAULT_SUFFIX,
        custom_pkg: Optional[str] = None,
        dry_run: bool = False,
        verbose: bool = False,
    ) -> Dict[str, Any]:
        """Performs complete manifest, provider authority, and bytecode transformations for cloning."""
        new_pkg = custom_pkg or f"{orig_pkg}{suffix}"
        action_word = "Simulating clone" if dry_run else "Applying clone"
        Console.step(f"{action_word}: Renaming package {Colors.CYAN}{orig_pkg}{Colors.RESET} -> {Colors.GREEN}{new_pkg}{Colors.RESET}...")

        manifest_path = os.path.join(decompiled_dir, "AndroidManifest.xml")
        if not os.path.exists(manifest_path):
            raise FileNotFoundError(f"AndroidManifest.xml not found in {decompiled_dir}")

        with open(manifest_path, "r", encoding="utf-8", errors="ignore") as f:
            content = f.read()

        # 1. Expand relative component names to fully qualified original package names
        # e.g., android:name=".MainActivity" -> android:name="orig_pkg.MainActivity"
        def expand_relative_name(match):
            prefix = match.group(1)
            rel_name = match.group(2)
            if rel_name.startswith("."):
                full_name = f"{orig_pkg}{rel_name}"
            elif "." not in rel_name:
                full_name = f"{orig_pkg}.{rel_name}"
            else:
                full_name = rel_name
            return f'{prefix}="{full_name}"'

        content = re.sub(
            r'(android:name)\s*=\s*["\'](\.[a-zA-Z0-9_$.]+|[a-zA-Z0-9_$]+)["\']',
            expand_relative_name,
            content,
        )

        # 2. Update root package attribute in <manifest ... package="...">
        pkg_pattern = r'(<manifest\b[^>]*?\bpackage\s*=\s*["\'])' + re.escape(orig_pkg) + r'(["\'])'
        content = re.sub(pkg_pattern, r'\g<1>' + new_pkg + r'\g<2>', content)

        # 3. Update custom permissions defined by the app: <permission android:name="orig_pkg...">, <uses-permission...>, and <permission-group...>
        def update_permission_name(match):
            tag = match.group(1)
            attr = match.group(2)
            perm_name = match.group(3)
            new_perm = perm_name.replace(orig_pkg, new_pkg)
            return f'<{tag} {attr}="{new_perm}"'

        content = re.sub(
            r'<(permission|uses-permission|permission-group)\s+([^>]*?\bandroid:name)\s*=\s*["\'](' + re.escape(orig_pkg) + r'\.[^"\']+)["\']',
            update_permission_name,
            content,
        )

        # 4. Update ContentProvider Authorities: android:authorities="orig_pkg..."
        # Providers must have globally unique authorities across all installed apps on Android.
        def update_authorities(match):
            attr = match.group(1)
            auth_val = match.group(2)
            authorities = [a.strip() for a in auth_val.split(";")]
            new_authorities = []
            for auth in authorities:
                if orig_pkg in auth:
                    new_auth = auth.replace(orig_pkg, new_pkg)
                else:
                    new_auth = f"{auth}{suffix}"
                new_authorities.append(new_auth)
            return f'{attr}="{";".join(new_authorities)}"'

        content = re.sub(
            r'(android:authorities)\s*=\s*["\']([^"\']+)["\']',
            update_authorities,
            content,
        )

        # 5. Remove split APK requirements and Google Play split meta-data
        # This prevents INSTALL_FAILED_MISSING_SPLIT when installing standalone APKs
        content = re.sub(r'\s*android:requiredSplitTypes\s*=\s*["\'][^"\']*["\']', '', content)
        content = re.sub(r'\s*android:splitTypes\s*=\s*["\'][^"\']*["\']', '', content)
        content = re.sub(r'\s*android:isSplitRequired\s*=\s*["\']true["\']', ' android:isSplitRequired="false"', content)
        content = re.sub(r'<meta-data\s+[^>]*?\bandroid:name\s*=\s*["\']com\.android\.vending\.splits[^"\']*["\'][^>]*?>(\s*</meta-data>)?\s*', '', content)
        content = re.sub(r'<meta-data\s+[^>]*?\bandroid:name\s*=\s*["\']com\.android\.stamp\.[^"\']*["\'][^>]*?>(\s*</meta-data>)?\s*', '', content)
        content = re.sub(r'<meta-data\s+[^>]*?\bandroid:name\s*=\s*["\']com\.android\.vending\.derived\.apk\.id["\'][^>]*?>(\s*</meta-data>)?\s*', '', content)

        if not dry_run:
            with open(manifest_path, "w", encoding="utf-8") as f:
                f.write(content)

        # 6. Update Provider Authorities & Package string references in Smali files
        smali_updated_count = 0
        if not dry_run:
            for root, _, files in os.walk(decompiled_dir):
                rel_root = os.path.relpath(root, decompiled_dir)
                if rel_root != "." and not rel_root.split(os.sep)[0].startswith("smali"):
                    continue
                for fname in files:
                    if fname.endswith(".smali"):
                        sfile = os.path.join(root, fname)
                        try:
                            with open(sfile, "r", encoding="utf-8", errors="ignore") as sf:
                                scontent = sf.read()

                            # Replace hardcoded authority strings (e.g. "io.appground.blek.fileprovider")
                            modified_scontent = scontent
                            # Replace occurrences of old authority or permission strings
                            old_auth_needle = f'"{orig_pkg}.'
                            new_auth_needle = f'"{new_pkg}.'
                            if old_auth_needle in modified_scontent:
                                modified_scontent = modified_scontent.replace(old_auth_needle, new_auth_needle)
                                with open(sfile, "w", encoding="utf-8") as sf:
                                    sf.write(modified_scontent)
                                smali_updated_count += 1
                        except Exception as e:
                            Console.debug(f"Smali clone check skipped for {fname}: {e}", verbose=verbose)

        Console.success(f"App Clone configured successfully! Package renamed to: {Colors.CYAN}{new_pkg}{Colors.RESET}")
        if smali_updated_count > 0:
            Console.debug(f"Updated authority references across {smali_updated_count} Smali bytecode file(s).", verbose=True)

        return {
            "original_package": orig_pkg,
            "cloned_package": new_pkg,
            "suffix": suffix,
            "manifest_updated": True,
            "smali_files_updated": smali_updated_count,
        }
