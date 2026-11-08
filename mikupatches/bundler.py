"""
Dynamic bundle packaging for Universal and Architecture-specific APKM, APKS, and APK files.
Organizes builds into app-specific directories with automatic version/id incrementing.
"""

import os
import shutil
import zipfile
import json
import re
import subprocess
from typing import List, Dict, Any, Optional

from mikupatches.constants import (
    ARCH_SPLIT_MAP,
    SUPPORTED_ARCHITECTURES,
    DEFAULT_PATCHES_DIR,
)
from mikupatches.models import AppProfile, BuildOptions
from mikupatches.extractor import Extractor
from mikupatches.ui.console import Console


class Bundler:
    """Creates distribution packages (.apkm, .apks, .apk) with dynamic metadata generation."""

    @staticmethod
    def create_zip(source_files: List[tuple], target_zip_path: str):
        os.makedirs(os.path.dirname(target_zip_path), exist_ok=True)
        with zipfile.ZipFile(target_zip_path, "w", zipfile.ZIP_DEFLATED) as zf:
            for file_path, arcname in source_files:
                if os.path.exists(file_path):
                    zf.write(file_path, arcname)

    @classmethod
    def get_patch_tag(cls, group: Any) -> str:
        """Dynamically generates a clean, concise CamelCase tag from any patch group or its optional tag/short_name field."""
        if hasattr(group, "tag") and group.tag:
            return group.tag
        if hasattr(group, "short_name") and group.short_name:
            return group.short_name

        gid = getattr(group, "id", str(group))
        # Convert snake_case or kebab-case into clean CamelCase (e.g. remove_ads -> RemoveAds)
        words = re.split(r'[^a-zA-Z0-9]+', gid.strip('_'))
        tag = "".join(w.capitalize() for w in words if w)
        return tag or "Patch"

    @classmethod
    def get_variant_slug(cls, app_profile: AppProfile, active_status: Optional[Dict[str, bool]] = None) -> str:
        if active_status is None:
            active_status = {g.id: g.default for g in app_profile.patch_groups}

        is_clone = active_status.get("clone_dual_install", False) or "(Clone)" in app_profile.app_title
        non_clone_groups = [g for g in app_profile.patch_groups if g.id != "clone_dual_install"]
        active_non_clone = [g for g in non_clone_groups if active_status.get(g.id, False)]

        if len(active_non_clone) == len(non_clone_groups) and len(non_clone_groups) > 0:
            base_slug = "Full"
        elif len(active_non_clone) == 0:
            base_slug = "Vanilla"
        else:
            tags = [cls.get_patch_tag(g) for g in active_non_clone]
            base_slug = "+".join(tags)
            if len(base_slug) > 60:
                base_slug = "Custom"

        if is_clone:
            return f"{base_slug}_Clone"
        return base_slug

    @classmethod
    def get_clean_app_dirname(cls, app_profile: AppProfile) -> str:
        raw_title = app_profile.app_title.replace("(Clone)", "").strip()
        clean = re.sub(r'[^a-zA-Z0-9._-]', '_', raw_title).strip('_')
        clean = re.sub(r'_+', '_', clean)
        return clean or app_profile.package_name

    @classmethod
    def resolve_app_output_dir(
        cls,
        base_output_dir: str,
        app_profile: AppProfile,
        variant_slug: str = "Full",
        overwrite: bool = True,
    ) -> str:
        app_dirname = cls.get_clean_app_dirname(app_profile)
        primary_dir = os.path.join(base_output_dir, app_dirname, variant_slug)

        if overwrite or not os.path.exists(primary_dir) or len(os.listdir(primary_dir)) == 0:
            return primary_dir

        # If overwrite is False, find next available ID: Variant-1, Variant-2, ...
        counter = 1
        while True:
            candidate = os.path.join(base_output_dir, app_dirname, f"{variant_slug}-{counter}")
            if not os.path.exists(candidate) or len(os.listdir(candidate)) == 0:
                return candidate
            counter += 1

    @classmethod
    def generate_patches_summary(
        cls,
        app_profile: AppProfile,
        active_status: Optional[Dict[str, bool]],
        ver_name: str,
        ver_code: str,
        variant_slug: str,
    ) -> str:
        from datetime import datetime
        if active_status is None:
            active_status = {g.id: g.default for g in app_profile.patch_groups}

        lines = [
            "=" * 68,
            f" {app_profile.app_title} v{ver_name} - Patched Release",
            "=" * 68,
            f" Package : {app_profile.package_name}",
            f" Version : v{ver_name} (Build {ver_code})",
            f" Variant : {variant_slug}",
            f" Date    : {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}",
            "",
            " Included Features & Patches:",
        ]

        for g in app_profile.patch_groups:
            is_on = active_status.get(g.id, False)
            status_box = "[✓]" if is_on else "[ ]"
            lines.append(f"   {status_box} {g.name}")
            lines.append(f"       {g.desc}")

        lines.extend([
            "",
            " Quick Install Instructions:",
            "   - Standard Phone Install: Open 'universal.apkm' using APKMirror Installer or SAI.",
            "   - Standalone APK Install: Transfer and install 'base.apk' directly on your phone.",
            "   - ADB (PC to Phone): adb install -r base.apk",
            "=" * 68,
        ])
        return "\n".join(lines) + "\n"

    @classmethod
    def is_valid_png(cls, file_path: str) -> bool:
        """Verifies if the file has valid PNG magic bytes."""
        try:
            with open(file_path, "rb") as f:
                header = f.read(8)
                return header == b"\x89PNG\r\n\x1a\n"
        except Exception:
            return False

    @classmethod
    def convert_image_to_png(cls, src_path: str, dst_path: str) -> bool:
        """Converts an image (WebP, PNG, etc.) to a standard PNG format."""
        if not os.path.isfile(src_path):
            return False

        if cls.is_valid_png(src_path):
            if os.path.abspath(src_path) != os.path.abspath(dst_path):
                os.makedirs(os.path.dirname(dst_path), exist_ok=True)
                shutil.copyfile(src_path, dst_path)
            return True

        os.makedirs(os.path.dirname(dst_path), exist_ok=True)

        # 1. PIL (Pillow)
        try:
            from PIL import Image
            with Image.open(src_path) as img:
                img.save(dst_path, "PNG")
            if cls.is_valid_png(dst_path):
                return True
        except Exception:
            pass

        # 2. macOS native sips
        if shutil.which("sips"):
            try:
                res = subprocess.run(
                    ["sips", "-s", "format", "png", src_path, "--out", dst_path],
                    stdout=subprocess.DEVNULL,
                    stderr=subprocess.DEVNULL,
                    check=False,
                )
                if res.returncode == 0 and os.path.exists(dst_path) and cls.is_valid_png(dst_path):
                    return True
            except Exception:
                pass

        # 3. Google dwebp (libwebp)
        if shutil.which("dwebp"):
            try:
                res = subprocess.run(
                    ["dwebp", src_path, "-o", dst_path],
                    stdout=subprocess.DEVNULL,
                    stderr=subprocess.DEVNULL,
                    check=False,
                )
                if res.returncode == 0 and os.path.exists(dst_path) and cls.is_valid_png(dst_path):
                    return True
            except Exception:
                pass

        # 4. ffmpeg
        if shutil.which("ffmpeg"):
            try:
                res = subprocess.run(
                    ["ffmpeg", "-y", "-i", src_path, dst_path],
                    stdout=subprocess.DEVNULL,
                    stderr=subprocess.DEVNULL,
                    check=False,
                )
                if res.returncode == 0 and os.path.exists(dst_path) and cls.is_valid_png(dst_path):
                    return True
            except Exception:
                pass

        # 5. ImageMagick convert
        if shutil.which("convert"):
            try:
                res = subprocess.run(
                    ["convert", src_path, dst_path],
                    stdout=subprocess.DEVNULL,
                    stderr=subprocess.DEVNULL,
                    check=False,
                )
                if res.returncode == 0 and os.path.exists(dst_path) and cls.is_valid_png(dst_path):
                    return True
            except Exception:
                pass

        # 6. Fallback: direct copy (Android BitmapFactory handles WebP directly even if named .png)
        try:
            shutil.copyfile(src_path, dst_path)
            return True
        except Exception:
            return False

    @classmethod
    def score_icon_candidate(cls, path: str, target_names: Optional[List[str]] = None) -> int:
        """Scores a drawable/mipmap candidate for launcher icon suitability."""
        basename = os.path.basename(path)
        stem, ext = os.path.splitext(basename)
        ext = ext.lower()
        if ext not in (".png", ".webp"):
            return -1

        stem_lower = stem.lower()
        score = 0

        # Exact / stem match against target names parsed from AndroidManifest.xml
        matched_target = False
        if target_names:
            for idx, tname in enumerate(target_names):
                tname_lower = tname.lower()
                if stem_lower == tname_lower:
                    score += 1000 - (idx * 50)
                    matched_target = True
                    break

        if not matched_target:
            if stem_lower == "ic_launcher":
                score += 800
            elif stem_lower == "ic_launcher_round":
                score += 700
            elif stem_lower in ("app_icon", "icon", "launcher_icon"):
                score += 600
            elif target_names and any(t.lower() in stem_lower for t in target_names):
                score += 400
            elif "ic_launcher" in stem_lower:
                score += 200
            elif "icon" in stem_lower:
                score += 100
            else:
                return -1

        # Resolution / density weighting
        lower_path = path.lower()
        if "xxxhdpi" in lower_path:
            score += 50
        elif "xxhdpi" in lower_path:
            score += 40
        elif "xhdpi" in lower_path:
            score += 30
        elif "hdpi" in lower_path:
            score += 20
        elif "mdpi" in lower_path:
            score += 10

        # Penalize localized buckets (e.g. mipmap-fr-xxxhdpi or mipmap-ar-xxxhdpi)
        parent_dir = os.path.basename(os.path.dirname(path))
        dash_parts = parent_dir.split("-")
        if len(dash_parts) > 2:
            score -= 5

        # Slight preference for PNG to avoid transcode if scores are otherwise equal
        if ext == ".png":
            score += 1

        return score

    @classmethod
    def resolve_app_icon(
        cls,
        bundle_staging: str,
        build_staging: str,
        staged_base_apk: str,
        app_profile: AppProfile,
        decompiled_dir: Optional[str] = None,
        active_status: Optional[Dict[str, bool]] = None,
        patches_dir: str = DEFAULT_PATCHES_DIR,
    ) -> Optional[str]:
        """
        Dynamically discovers, extracts, and converts the correct application launcher icon
        for packaging into APKM bundles (.apkm).
        """
        if decompiled_dir is None:
            decompiled_dir = os.path.join(build_staging, "base")

        icon_dest = os.path.join(bundle_staging, "icon.png")

        # 1. Determine if any active patch modifies the app launcher icon
        has_icon_patch = False
        if active_status is not None:
            for group in app_profile.patch_groups:
                if active_status.get(group.id, group.default):
                    for patched_file in getattr(group, "files", {}).keys():
                        p_norm = patched_file.replace("\\", "/").lower()
                        if ("mipmap" in p_norm or "drawable" in p_norm) and ("ic_launcher" in p_norm or "icon" in p_norm):
                            has_icon_patch = True
                            break
                    if has_icon_patch:
                        break

        # 2. Extract target icon names from AndroidManifest.xml
        target_names = []
        manifest_path = os.path.join(decompiled_dir, "AndroidManifest.xml")
        if os.path.isfile(manifest_path):
            try:
                with open(manifest_path, "r", encoding="utf-8", errors="ignore") as f:
                    manifest_xml = f.read()
                # Application icon
                m_app = re.search(r'<application[^>]+android:icon=["\']@(?:mipmap|drawable)/([^"\']+)["\']', manifest_xml)
                if m_app:
                    target_names.append(m_app.group(1).strip())
                # Activity or alias icon
                m_act = re.search(r'<activity(?:-alias)?[^>]+android:icon=["\']@(?:mipmap|drawable)/([^"\']+)["\']', manifest_xml)
                if m_act and m_act.group(1).strip() not in target_names:
                    target_names.append(m_act.group(1).strip())
                # Round icon
                m_round = re.search(r'<application[^>]+android:roundIcon=["\']@(?:mipmap|drawable)/([^"\']+)["\']', manifest_xml)
                if m_round and m_round.group(1).strip() not in target_names:
                    target_names.append(m_round.group(1).strip())
            except Exception:
                pass

        # Standard fallbacks
        for fallback in ("ic_launcher", "ic_launcher_round", "app_icon", "icon"):
            if fallback not in target_names:
                target_names.append(fallback)

        # 3. If an icon patch is active, or if decompiled resources exist:
        # Search decompiled_dir for the best matching launcher icon image
        res_dir = os.path.join(decompiled_dir, "res")
        if os.path.isdir(res_dir):
            best_candidate = None
            best_score = -1
            for root, _, files in os.walk(res_dir):
                for f in files:
                    if f.lower().endswith((".png", ".webp")):
                        full_p = os.path.join(root, f)
                        rel_p = os.path.relpath(full_p, decompiled_dir)
                        score = cls.score_icon_candidate(rel_p, target_names)
                        if score > best_score:
                            best_score = score
                            best_candidate = full_p

            if best_candidate and best_score > 0:
                if has_icon_patch or best_score >= 800:
                    if cls.convert_image_to_png(best_candidate, icon_dest):
                        return icon_dest

        # 4. Check if a custom icon exists in the app's patch directory
        patch_dir_candidates = []
        if app_profile.profile_dir and os.path.isdir(app_profile.profile_dir):
            patch_dir_candidates.append(os.path.join(app_profile.profile_dir, "icon.png"))
        orig_pkg_patch_dir = os.path.join(patches_dir, app_profile.package_name.replace(".tux", ""))
        if os.path.isdir(orig_pkg_patch_dir):
            patch_dir_candidates.append(os.path.join(orig_pkg_patch_dir, "icon.png"))

        for cand in patch_dir_candidates:
            if os.path.isfile(cand):
                cls.convert_image_to_png(cand, icon_dest)
                return icon_dest

        # 5. Search staged_base_apk directly (zip archive) - handles no_res apps or when decompiled_dir had no res
        if staged_base_apk and os.path.isfile(staged_base_apk):
            try:
                with zipfile.ZipFile(staged_base_apk, "r") as zf:
                    apk_files = zf.namelist()
                    best_apk_entry = None
                    best_apk_score = -1
                    for entry in apk_files:
                        if entry.lower().startswith("res/") and entry.lower().endswith((".png", ".webp")):
                            score = cls.score_icon_candidate(entry, target_names)
                            if score > best_apk_score:
                                best_apk_score = score
                                best_apk_entry = entry

                    if best_apk_entry and best_apk_score > 0:
                        tmp_extract = os.path.join(build_staging, "extracted_app_icon" + os.path.splitext(best_apk_entry)[1])
                        with open(tmp_extract, "wb") as f_out:
                            f_out.write(zf.read(best_apk_entry))
                        if cls.convert_image_to_png(tmp_extract, icon_dest):
                            return icon_dest
            except Exception:
                pass

        # 6. Check if original input bundle had a valid icon.png that wasn't the fallback
        if os.path.isfile(icon_dest):
            fallback_png = os.path.join(patches_dir, "bundle_fallback", "icon.png")
            if not os.path.exists(fallback_png) or os.path.getsize(icon_dest) != os.path.getsize(fallback_png):
                return icon_dest

        # 7. Ultimate fallback: copy generic bundle_fallback/icon.png
        fallback_png = os.path.join(patches_dir, "bundle_fallback", "icon.png")
        if os.path.isfile(fallback_png):
            shutil.copyfile(fallback_png, icon_dest)
            return icon_dest

        return icon_dest if os.path.exists(icon_dest) else None

    @classmethod
    def assemble_bundles(
        cls,
        staged_base_apk: str,
        bundle_staging: str,
        build_staging: str,
        staged_splits: Dict[str, str],
        app_profile: AppProfile,
        options: BuildOptions,
        detected_version_name: Optional[str] = None,
        detected_version_code: Optional[str] = None,
        custom_output_dir: Optional[str] = None,
        active_status: Optional[Dict[str, bool]] = None,
        overwrite: bool = True,
    ) -> List[Dict[str, Any]]:
        ver_name = detected_version_name or app_profile.target_version_name
        ver_code = detected_version_code or app_profile.target_version_code
        variant_slug = cls.get_variant_slug(app_profile, active_status)

        # Determine separate output directory per app variant (e.g. dist/Bluetooth_Keyboard_Mouse/Full/)
        if custom_output_dir:
            app_output_dir = custom_output_dir
        else:
            app_output_dir = cls.resolve_app_output_dir(
                options.output_dir,
                app_profile,
                variant_slug=variant_slug,
                overwrite=overwrite,
            )

        os.makedirs(app_output_dir, exist_ok=True)
        app_dirname = cls.get_clean_app_dirname(app_profile)

        generated_files = []
        formats = [f.lower() for f in options.output_formats]
        build_all = "all" in formats

        # 1. Output Standalone Base APK and Named Release APK
        if build_all or "apk" in formats:
            base_out_name = f"{options.output_name}.apk" if options.output_name else "base.apk"
            final_base = os.path.join(app_output_dir, base_out_name)
            shutil.copyfile(staged_base_apk, final_base)
            generated_files.append({
                "path": final_base,
                "rel_path": os.path.relpath(final_base, options.output_dir),
                "size": os.path.getsize(final_base),
                "type": "Standalone APK",
            })

            # Also create named APK for easy file manager navigation
            if not options.output_name:
                named_apk = os.path.join(app_output_dir, f"{app_dirname}-v{ver_name}-[{variant_slug}].apk")
                shutil.copyfile(staged_base_apk, named_apk)
                generated_files.append({
                    "path": named_apk,
                    "rel_path": os.path.relpath(named_apk, options.output_dir),
                    "size": os.path.getsize(named_apk),
                    "type": "Named Release APK",
                })

        # Generate simple PATCHES.txt summary in output folder
        patches_txt_path = os.path.join(app_output_dir, "PATCHES.txt")
        patches_txt_content = cls.generate_patches_summary(
            app_profile=app_profile,
            active_status=active_status,
            ver_name=ver_name,
            ver_code=ver_code,
            variant_slug=variant_slug,
        )
        with open(patches_txt_path, "w", encoding="utf-8") as f:
            f.write(patches_txt_content)

        generated_files.append({
            "path": patches_txt_path,
            "rel_path": os.path.relpath(patches_txt_path, options.output_dir),
            "size": os.path.getsize(patches_txt_path),
            "type": "Patches Summary Info",
        })

        # Dynamic info.json resolution & generation
        info_json_path = os.path.join(bundle_staging, "info.json")

        # Dynamic app launcher icon resolution & conversion for APKM bundles
        icon_path = cls.resolve_app_icon(
            bundle_staging=bundle_staging,
            build_staging=build_staging,
            staged_base_apk=staged_base_apk,
            app_profile=app_profile,
            active_status=active_status,
        )

        if os.path.exists(info_json_path):
            try:
                with open(info_json_path, "r", encoding="utf-8") as f:
                    base_info = json.load(f)
                base_info["pname"] = app_profile.package_name
                base_info["app_name"] = app_profile.app_title
                if "release_title" in base_info and "(Clone)" in app_profile.app_title and "(Clone)" not in base_info["release_title"]:
                    base_info["release_title"] = f"{base_info['release_title']} (Clone)"
            except Exception:
                base_info = Extractor.generate_dynamic_info_json(
                    pkg_name=app_profile.package_name,
                    app_title=app_profile.app_title,
                    ver_name=ver_name,
                    ver_code=ver_code,
                )
        else:
            base_info = Extractor.generate_dynamic_info_json(
                pkg_name=app_profile.package_name,
                app_title=app_profile.app_title,
                ver_name=ver_name,
                ver_code=ver_code,
            )

        # Write dynamic info.json into staging
        with open(info_json_path, "w", encoding="utf-8") as f:
            json.dump(base_info, f, indent=4)

        # Save info.json in app output directory
        app_info_path = os.path.join(app_output_dir, "info.json")
        with open(app_info_path, "w", encoding="utf-8") as f:
            json.dump(base_info, f, indent=4)

        # Save resolved app icon.png in app output directory
        if icon_path and os.path.exists(icon_path):
            app_icon_path = os.path.join(app_output_dir, "icon.png")
            if os.path.abspath(icon_path) != os.path.abspath(app_icon_path):
                shutil.copyfile(icon_path, app_icon_path)
            generated_files.append({
                "path": app_icon_path,
                "rel_path": os.path.relpath(app_icon_path, options.output_dir),
                "size": os.path.getsize(app_icon_path),
                "type": "Application Icon",
            })

        # 2. Output Universal APKM & APKS
        if build_all or "apkm" in formats:
            univ_apkm_name = f"{options.output_name}.apkm" if options.output_name else "universal.apkm"
            univ_apkm_path = os.path.join(app_output_dir, univ_apkm_name)
            univ_apkm_files = [(staged_base_apk, "base.apk")]
            if os.path.exists(info_json_path):
                univ_apkm_files.append((info_json_path, "info.json"))
            if icon_path and os.path.exists(icon_path):
                univ_apkm_files.append((icon_path, "icon.png"))
            univ_apkm_files.extend([(path, fname) for fname, path in staged_splits.items()])

            cls.create_zip(univ_apkm_files, univ_apkm_path)
            generated_files.append({
                "path": univ_apkm_path,
                "rel_path": os.path.relpath(univ_apkm_path, options.output_dir),
                "size": os.path.getsize(univ_apkm_path),
                "type": "Universal APKM Bundle",
            })

            # Also create named APKM for easy distribution
            if not options.output_name:
                named_apkm = os.path.join(app_output_dir, f"{app_dirname}-v{ver_name}-[{variant_slug}].apkm")
                shutil.copyfile(univ_apkm_path, named_apkm)
                generated_files.append({
                    "path": named_apkm,
                    "rel_path": os.path.relpath(named_apkm, options.output_dir),
                    "size": os.path.getsize(named_apkm),
                    "type": "Named Release APKM",
                })

        if build_all or "apks" in formats:
            univ_apks_name = f"{options.output_name}.apks" if options.output_name else "universal.apks"
            univ_apks_path = os.path.join(app_output_dir, univ_apks_name)
            univ_apks_files = [(staged_base_apk, "base.apk")] + [
                (path, fname) for fname, path in staged_splits.items()
            ]
            cls.create_zip(univ_apks_files, univ_apks_path)
            generated_files.append({
                "path": univ_apks_path,
                "rel_path": os.path.relpath(univ_apks_path, options.output_dir),
                "size": os.path.getsize(univ_apks_path),
                "type": "Universal APKS Bundle",
            })

        # 3. Dynamic Architecture Split Bundles
        target_arches = options.arches or SUPPORTED_ARCHITECTURES
        non_arch_splits = {
            fname: path for fname, path in staged_splits.items()
            if fname not in ARCH_SPLIT_MAP.values()
        }

        available_arches_in_bundle = [
            arch for arch, split_name in ARCH_SPLIT_MAP.items()
            if split_name in staged_splits
        ]

        selected_arches = [
            arch for arch in target_arches
            if arch in available_arches_in_bundle
        ]

        for arch in selected_arches:
            arch_split_fname = ARCH_SPLIT_MAP.get(arch)
            if not arch_split_fname or arch_split_fname not in staged_splits:
                continue

            arch_dir = os.path.join(app_output_dir, arch)
            os.makedirs(arch_dir, exist_ok=True)

            arch_info = Extractor.generate_dynamic_info_json(
                pkg_name=app_profile.package_name,
                app_title=app_profile.app_title,
                ver_name=ver_name,
                ver_code=ver_code,
                arches=[arch],
                arch_variant=arch,
            )

            arch_info_path = os.path.join(build_staging, f"info_{arch}.json")
            with open(arch_info_path, "w", encoding="utf-8") as f:
                json.dump(arch_info, f, indent=4)

            arch_specific_splits = dict(non_arch_splits)
            arch_specific_splits[arch_split_fname] = staged_splits[arch_split_fname]

            if build_all or "apkm" in formats:
                arch_apkm_path = os.path.join(arch_dir, f"{arch}.apkm")
                arch_apkm_files = [(staged_base_apk, "base.apk")]
                if os.path.exists(arch_info_path):
                    arch_apkm_files.append((arch_info_path, "info.json"))
                if icon_path and os.path.exists(icon_path):
                    arch_apkm_files.append((icon_path, "icon.png"))
                arch_apkm_files.extend([(path, fname) for fname, path in arch_specific_splits.items()])

                cls.create_zip(arch_apkm_files, arch_apkm_path)
                generated_files.append({
                    "path": arch_apkm_path,
                    "rel_path": os.path.relpath(arch_apkm_path, options.output_dir),
                    "size": os.path.getsize(arch_apkm_path),
                    "type": f"{arch} APKM Bundle",
                })

            if build_all or "apks" in formats:
                arch_apks_path = os.path.join(arch_dir, f"{arch}.apks")
                arch_apks_files = [(staged_base_apk, "base.apk")] + [
                    (path, fname) for fname, path in arch_specific_splits.items()
                ]
                cls.create_zip(arch_apks_files, arch_apks_path)
                generated_files.append({
                    "path": arch_apks_path,
                    "rel_path": os.path.relpath(arch_apks_path, options.output_dir),
                    "size": os.path.getsize(arch_apks_path),
                    "type": f"{arch} APKS Bundle",
                })

            if build_all or "apk" in formats:
                arch_base_path = os.path.join(arch_dir, "base.apk")
                shutil.copyfile(staged_base_apk, arch_base_path)
                generated_files.append({
                    "path": arch_base_path,
                    "rel_path": os.path.relpath(arch_base_path, options.output_dir),
                    "size": os.path.getsize(arch_base_path),
                    "type": f"{arch} Standalone APK",
                })

        return generated_files
