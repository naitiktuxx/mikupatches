"""
Input file resolution, format detection, bundle extraction, and dynamic metadata generator.
"""

import os
import sys
import shutil
import zipfile
import json
import time
import struct
import io
import re
from datetime import datetime
from typing import Optional, List, Tuple, Dict, Any

from mikupatches.constants import (
    DEFAULT_INPUT_DIR,
    DEFAULT_PATCHES_DIR,
    SUPPORTED_INPUT_EXTENSIONS,
    SUPPORTED_ARCHITECTURES,
)
from mikupatches.ui.console import Console


def parse_axml_package_from_bytes(data: bytes) -> Optional[str]:
    """Parses package name attribute from raw Android binary XML (AXML) bytes."""
    try:
        if len(data) < 8:
            return None
        offset = 8
        while offset + 8 <= len(data):
            chunk_type, header_size, chunk_size = struct.unpack('<HHI', data[offset:offset + 8])
            if chunk_size == 0 or offset + chunk_size > len(data):
                break
            if chunk_type == 0x0001:  # String pool chunk
                string_count = struct.unpack('<I', data[offset + 8:offset + 12])[0]
                flags = struct.unpack('<I', data[offset + 16:offset + 20])[0]
                strings_start = offset + struct.unpack('<I', data[offset + 20:offset + 24])[0]
                is_utf8 = bool(flags & (1 << 8))

                offsets = []
                for i in range(string_count):
                    off = struct.unpack('<I', data[offset + 28 + i * 4:offset + 32 + i * 4])[0]
                    offsets.append(strings_start + off)

                strings = []
                for off in offsets:
                    if off >= len(data):
                        strings.append('')
                        continue
                    if is_utf8:
                        o = off
                        if o < len(data) and (data[o] & 0x80):
                            o += 1
                        o += 1
                        if o < len(data) and (data[o] & 0x80):
                            o += 1
                        s_len = data[o] if o < len(data) else 0
                        o += 1
                        s = data[o:o + s_len].decode('utf-8', 'ignore') if o + s_len <= len(data) else ''
                    else:
                        s_len = struct.unpack('<H', data[off:off + 2])[0] if off + 2 <= len(data) else 0
                        s = data[off + 2:off + 2 + s_len * 2].decode('utf-16le', 'ignore') if off + 2 + s_len * 2 <= len(data) else ''
                    strings.append(s)

                tag_offset = offset + chunk_size
                while tag_offset + 8 <= len(data):
                    tag_chunk, tag_hsize, tag_csize = struct.unpack('<HHI', data[tag_offset:tag_offset + 8])
                    if tag_csize == 0 or tag_offset + tag_csize > len(data):
                        break
                    if tag_chunk == 0x0102:  # START_TAG
                        tag_name_idx = struct.unpack('<I', data[tag_offset + 20:tag_offset + 24])[0]
                        if tag_name_idx < len(strings) and strings[tag_name_idx] == 'manifest':
                            attr_count = struct.unpack('<H', data[tag_offset + 28:tag_offset + 30])[0]
                            for a in range(attr_count):
                                attr_off = tag_offset + 36 + a * 20
                                if attr_off + 12 <= len(data):
                                    name_idx = struct.unpack('<I', data[attr_off + 4:attr_off + 8])[0]
                                    val_idx = struct.unpack('<I', data[attr_off + 8:attr_off + 12])[0]
                                    if name_idx < len(strings) and val_idx < len(strings):
                                        if strings[name_idx] == 'package' and val_idx != 0xFFFFFFFF:
                                            return strings[val_idx]
                            break
                    tag_offset += tag_csize
                break
            offset += chunk_size
    except Exception:
        pass
    return None


class Extractor:
    """Handles discovery, validation, unpacking, and dynamic metadata generation."""

    @classmethod
    def detect_package_name(cls, file_path: str) -> Optional[str]:
        """Inspects package archive metadata or binary AndroidManifest to determine its package name."""
        if not os.path.isfile(file_path):
            return None
        try:
            with zipfile.ZipFile(file_path, "r") as zf:
                namelist = set(zf.namelist())
                # 1. info.json (APKM / custom bundles)
                for n in ("info.json", "bundle/info.json"):
                    if n in namelist:
                        try:
                            info = json.loads(zf.read(n).decode("utf-8", "ignore"))
                            pname = info.get("pname") or info.get("package_name")
                            if pname:
                                return pname
                        except Exception:
                            pass

                # 2. manifest.json (XAPK)
                if "manifest.json" in namelist:
                    try:
                        info = json.loads(zf.read("manifest.json").decode("utf-8", "ignore"))
                        pname = info.get("package_name")
                        if pname:
                            return pname
                    except Exception:
                        pass

                # 3. AndroidManifest.xml in root (standard APK)
                if "AndroidManifest.xml" in namelist:
                    pkg = parse_axml_package_from_bytes(zf.read("AndroidManifest.xml"))
                    if pkg:
                        return pkg

                # 4. base.apk inside split bundle
                for base_name in ("base.apk", "bundle/base.apk"):
                    if base_name in namelist:
                        try:
                            with zipfile.ZipFile(io.BytesIO(zf.read(base_name))) as bzf:
                                if "AndroidManifest.xml" in bzf.namelist():
                                    pkg = parse_axml_package_from_bytes(bzf.read("AndroidManifest.xml"))
                                    if pkg:
                                        return pkg
                        except Exception:
                            pass
        except Exception:
            pass
        return None

    @classmethod
    def find_input_file(
        cls,
        custom_path: Optional[str] = None,
        input_dir: str = DEFAULT_INPUT_DIR,
        target_pkg: Optional[str] = None,
    ) -> Optional[str]:
        from mikupatches.patcher import AppManager

        if custom_path:
            if os.path.exists(custom_path):
                if os.path.isfile(custom_path):
                    resolved_path = os.path.abspath(custom_path)
                    if target_pkg:
                        detected = cls.detect_package_name(resolved_path)
                        target_profile = AppManager.find_app_profile(target_pkg)
                        expected_pkg = target_profile.package_name if target_profile else target_pkg
                        if detected and detected.lower() != expected_pkg.lower():
                            raise ValueError(
                                f"APPLICATION MISMATCH: Input file '{os.path.basename(custom_path)}' "
                                f"contains package '{detected}', but target app is '{expected_pkg}'."
                            )
                    return resolved_path
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

        ext_priority = {".apkm": 0, ".apks": 1, ".xapk": 2, ".zip": 3, ".apk": 4}

        # If a specific package was requested, strictly match that package
        if target_pkg:
            target_profile = AppManager.find_app_profile(target_pkg)
            canonical_pkg = target_profile.package_name.lower() if target_profile else target_pkg.lower()

            # Collect other supported apps to prevent cross-matching
            other_apps = [
                a for a in AppManager.list_supported_apps()
                if a.package_name.lower() != canonical_pkg
            ]
            other_pkgs = {a.package_name.lower() for a in other_apps}

            # Build positive match keywords for target
            target_keywords = set()
            target_keywords.add(canonical_pkg)
            target_keywords.add(canonical_pkg.replace(".", "_"))
            target_keywords.add(canonical_pkg.replace(".", "-"))
            for seg in canonical_pkg.split("."):
                if len(seg) >= 4 and seg not in ("com", "org", "net", "app"):
                    target_keywords.add(seg)

            if target_profile:
                # Add app title keywords
                title_clean = re.sub(r"[^a-zA-Z0-9]+", " ", target_profile.app_title).lower()
                for w in title_clean.split():
                    if len(w) >= 3 and w not in ("app", "the", "for", "and"):
                        target_keywords.add(w)

            # Build negative keywords for other apps
            other_keywords = set()
            for o in other_apps:
                other_keywords.add(o.package_name.lower())
                for seg in o.package_name.lower().split("."):
                    if len(seg) >= 4 and seg not in ("com", "org", "net", "app") and seg not in target_keywords:
                        other_keywords.add(seg)
                o_title = re.sub(r"[^a-zA-Z0-9]+", " ", o.app_title).lower()
                for w in o_title.split():
                    if len(w) >= 3 and w not in ("app", "the", "for", "and") and w not in target_keywords:
                        other_keywords.add(w)

            scored_candidates = []
            for c in candidates:
                c_path = os.path.join(input_dir, c)
                detected = cls.detect_package_name(c_path)

                if detected:
                    if detected.lower() == canonical_pkg:
                        scored_candidates.append((100, ext_priority.get(os.path.splitext(c)[1].lower(), 99), c))
                        continue
                    elif detected.lower() in other_pkgs:
                        # Definitely belongs to another supported app
                        continue

                # Heuristic filename fallback if package couldn't be detected inside binary
                c_lower = c.lower()
                # Check negative keywords first
                if any(okw in c_lower for okw in other_keywords):
                    continue

                if canonical_pkg in c_lower or canonical_pkg.replace(".", "_") in c_lower:
                    scored_candidates.append((80, ext_priority.get(os.path.splitext(c)[1].lower(), 99), c))
                elif any(kw in c_lower for kw in target_keywords):
                    scored_candidates.append((50, ext_priority.get(os.path.splitext(c)[1].lower(), 99), c))

            if scored_candidates:
                # Sort by score desc, ext_priority asc, filename asc
                scored_candidates.sort(key=lambda x: (-x[0], x[1], x[2]))
                return os.path.join(input_dir, scored_candidates[0][2])

            # CRITICAL: If target_pkg was requested and no candidate matches it, return None!
            # Never return an unrelated package when a specific package was requested.
            return None

        # When no specific package was requested, sort by extension priority and filename
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

        return base_apk
