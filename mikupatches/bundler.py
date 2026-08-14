"""
Dynamic bundle packaging for Universal and Architecture-specific APKM, APKS, and APK files.
Organizes builds into app-specific directories with automatic version/id incrementing.
"""

import os
import shutil
import zipfile
import json
import re
from typing import List, Dict, Any, Optional

from mikupatches.constants import (
    ARCH_SPLIT_MAP,
    SUPPORTED_ARCHITECTURES,
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
        icon_path = os.path.join(bundle_staging, "icon.png")

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

        # 2. Output Universal APKM & APKS
        if build_all or "apkm" in formats:
            univ_apkm_name = f"{options.output_name}.apkm" if options.output_name else "universal.apkm"
            univ_apkm_path = os.path.join(app_output_dir, univ_apkm_name)
            univ_apkm_files = [(staged_base_apk, "base.apk")]
            if os.path.exists(info_json_path):
                univ_apkm_files.append((info_json_path, "info.json"))
            if os.path.exists(icon_path):
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
                if os.path.exists(icon_path):
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
