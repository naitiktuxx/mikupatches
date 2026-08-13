"""
Input file resolution, format detection, bundle extraction, and dynamic metadata generator.
"""

import os
import sys
import shutil
import zipfile
import json
import time
from datetime import datetime
from typing import Optional, List, Tuple, Dict, Any

from mikupatches.constants import (
    DEFAULT_INPUT_DIR,
    DEFAULT_PATCHES_DIR,
    SUPPORTED_INPUT_EXTENSIONS,
    SUPPORTED_ARCHITECTURES,
)
from mikupatches.ui.console import Console


class Extractor:
    """Handles discovery, validation, unpacking, and dynamic metadata generation."""

    @classmethod
    def find_input_file(
        cls,
        custom_path: Optional[str] = None,
        input_dir: str = DEFAULT_INPUT_DIR,
        target_pkg: Optional[str] = None,
    ) -> Optional[str]:
        if custom_path:
            if os.path.exists(custom_path):
                if os.path.isfile(custom_path):
                    return os.path.abspath(custom_path)
                elif os.path.isdir(custom_path):
                    input_dir = custom_path
            else:
                raise FileNotFoundError(f"Specified input path '{custom_path}' does not exist.")

        if not os.path.exists(input_dir):
            os.makedirs(input_dir, exist_ok=True)

        candidates = [
            f for f in os.listdir(input_dir)
            if f.lower().endswith(SUPPORTED_INPUT_EXTENSIONS)
            and not f.startswith(".")
            and os.path.isfile(os.path.join(input_dir, f))
        ]

        if not candidates:
            return None

        # If a specific package was requested, prioritize matching files
        if target_pkg:
            pkg_matches = [
                c for c in candidates
                if target_pkg.lower() in c.lower() or target_pkg.replace(".", "_").lower() in c.lower()
            ]
            if pkg_matches:
                pkg_matches.sort(key=lambda x: (not x.endswith(".apkm"), not x.endswith(".apks"), not x.endswith(".xapk"), x))
                return os.path.join(input_dir, pkg_matches[0])

        # Sort preference: .apkm -> .apks -> .xapk -> .zip -> .apk
        ext_priority = {".apkm": 0, ".apks": 1, ".xapk": 2, ".zip": 3, ".apk": 4}
        candidates.sort(key=lambda x: (ext_priority.get(os.path.splitext(x)[1].lower(), 99), x))
        return os.path.join(input_dir, candidates[0])

    @classmethod
    def list_available_inputs(cls, input_dir: str = DEFAULT_INPUT_DIR) -> List[str]:
        if not os.path.exists(input_dir):
            return []
        candidates = [
            os.path.join(input_dir, f)
            for f in sorted(os.listdir(input_dir))
            if f.lower().endswith(SUPPORTED_INPUT_EXTENSIONS)
            and not f.startswith(".")
            and os.path.isfile(os.path.join(input_dir, f))
        ]
        return candidates

    @classmethod
    def generate_dynamic_info_json(
        cls,
        pkg_name: str,
        app_title: str,
        ver_name: str,
        ver_code: str,
        arches: Optional[List[str]] = None,
        arch_variant: Optional[str] = None,
    ) -> Dict[str, Any]:
        """Generates dynamic info.json metadata tailored specifically for the target app."""
        target_arches = arches or list(SUPPORTED_ARCHITECTURES)
        variant_str = f"({arch_variant}) (120-640dpi)" if arch_variant else "(universal) (120-640dpi)"
        rel_title = f"{app_title} {ver_name} {variant_str}"

        return {
            "apkm_version": 5,
            "apk_title": rel_title,
            "app_name": app_title,
            "release_version": str(ver_name),
            "variant": variant_str,
            "release_title": rel_title,
            "versioncode": str(ver_code),
            "pname": pkg_name,
            "post_date": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
            "capabilities": [],
            "languages": ["en"],
            "arches": target_arches,
            "dpis": ["120", "160", "213", "240", "320", "480", "640"],
            "min_api": "24",
            "accent_color": "046490",
            "apk_id": int(time.time()),
            "release_id": int(time.time()) + 1,
        }

    @classmethod
    def prepare_bundle(
        cls,
        input_file: str,
        bundle_staging: str,
        patches_dir: str = DEFAULT_PATCHES_DIR,
        target_pkg: Optional[str] = None,
        verbose: bool = False,
    ) -> str:
        if os.path.exists(bundle_staging):
            shutil.rmtree(bundle_staging)
        os.makedirs(bundle_staging, exist_ok=True)

        ext = os.path.splitext(input_file)[1].lower()
        Console.step(f"Extracting package '{os.path.basename(input_file)}' into staging...")

        try:
            if ext in (".apkm", ".apks", ".xapk", ".zip"):
                with zipfile.ZipFile(input_file, "r") as zf:
                    zf.extractall(bundle_staging)
            elif ext == ".apk":
                shutil.copyfile(input_file, os.path.join(bundle_staging, "base.apk"))
            else:
                # Try zip extraction fallback
                try:
                    with zipfile.ZipFile(input_file, "r") as zf:
                        zf.extractall(bundle_staging)
                except zipfile.BadZipFile:
                    shutil.copyfile(input_file, os.path.join(bundle_staging, "base.apk"))
        except zipfile.BadZipFile:
            raise ValueError(
                f"CORRUPTED INPUT FILE: '{os.path.basename(input_file)}' is not a valid zip archive.\n"
                f"Please remove it from '{os.path.dirname(input_file)}' and download a fresh copy."
            )

        # Locate base.apk
        base_apk = os.path.join(bundle_staging, "base.apk")
        if not os.path.exists(base_apk):
            # Check for alternative naming in XAPK or multi-apk archives (e.g. <package_name>.apk)
            apk_files = [
                f for f in os.listdir(bundle_staging)
                if f.endswith(".apk") and not f.startswith("split_") and not f.startswith("config.")
            ]
            if apk_files:
                apk_files.sort(key=lambda f: os.path.getsize(os.path.join(bundle_staging, f)), reverse=True)
                main_cand = os.path.join(bundle_staging, apk_files[0])
                shutil.move(main_cand, base_apk)
            else:
                all_apks = [f for f in os.listdir(bundle_staging) if f.endswith(".apk")]
                if all_apks:
                    all_apks.sort(key=lambda f: os.path.getsize(os.path.join(bundle_staging, f)), reverse=True)
                    main_cand = os.path.join(bundle_staging, all_apks[0])
                    shutil.move(main_cand, base_apk)
                else:
                    raise FileNotFoundError(
                        f"INVALID BUNDLE STRUCTURE: 'base.apk' was not found inside '{os.path.basename(input_file)}'."
                    )

        # Dynamic fallback metadata and icons resolution
        info_json = os.path.join(bundle_staging, "info.json")
        icon_png = os.path.join(bundle_staging, "icon.png")

        # 1. Check if target app folder has custom info.json / icon.png
        if target_pkg:
            app_patch_dir = os.path.join(patches_dir, target_pkg)
            app_icon = os.path.join(app_patch_dir, "icon.png")
            app_info = os.path.join(app_patch_dir, "info.json")
            if not os.path.exists(icon_png) and os.path.exists(app_icon):
                shutil.copyfile(app_icon, icon_png)
            if not os.path.exists(info_json) and os.path.exists(app_info):
                shutil.copyfile(app_info, info_json)

        # 2. General fallback directory
        fallback_dir = os.path.join(patches_dir, "bundle_fallback")
        if not os.path.exists(icon_png) and os.path.exists(os.path.join(fallback_dir, "icon.png")):
            shutil.copyfile(os.path.join(fallback_dir, "icon.png"), icon_png)

        return base_apk
