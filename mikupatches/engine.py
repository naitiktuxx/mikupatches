"""
Core orchestration engine for MikuPatches build pipeline.
"""

import os
import sys
import shutil
import json
from typing import Optional, Dict, Any, List

from mikupatches.constants import (
    DEFAULT_PATCHES_DIR,
    DEFAULT_INPUT_DIR,
    Colors,
)
from mikupatches.models import BuildOptions, BuildResult, AppProfile
from mikupatches.ui.console import Console
from mikupatches.ui.menu import (
    show_patch_selection_menu,
    show_app_selection_menu,
    prompt_download,
)
from mikupatches.toolchain import Toolchain
from mikupatches.keystore import KeystoreManager
from mikupatches.extractor import Extractor
from mikupatches.apktool import ApktoolRunner
from mikupatches.patcher import AppManager, PatchEngine
from mikupatches.cloner import AppCloner
from mikupatches.signer import ApkSigner
from mikupatches.bundler import Bundler
from mikupatches.adb import AdbManager


class BuildEngine:
    """Orchestrates end-to-end decompilation, patching, rebuilding, signing, and packaging."""

    @classmethod
    def clean_redundant(cls, output_dir: str, staging_dir: str) -> bool:
        redundants = [
            staging_dir,
            output_dir,
            os.path.join(os.path.dirname(staging_dir), "patched_base.apk"),
            os.path.join(os.path.dirname(staging_dir), "aligned_base.apk"),
            os.path.join(os.path.dirname(staging_dir), "aligned_base.apk.idsig"),
        ]
        existing = [p for p in redundants if os.path.exists(p)]
        if not existing:
            return False

        Console.step("Cleaning up temporary and old build files...")
        for path in existing:
            if os.path.isfile(path) or os.path.islink(path):
                try:
                    os.remove(path)
                except OSError:
                    pass
            elif os.path.isdir(path):
                shutil.rmtree(path, ignore_errors=True)
        return True

    @classmethod
    def prompt_clean(cls, options: BuildOptions):
        if os.path.exists(options.output_dir) and any(os.scandir(options.output_dir)):
            if options.yes or not sys.stdin.isatty():
                cls.clean_redundant(options.output_dir, options.staging_dir)
            else:
                try:
                    ans = input(
                        f"{Colors.YELLOW}[Clean] Previous build outputs found in '{os.path.basename(options.output_dir)}/'. "
                        f"Clear old outputs before starting? [y/N]: {Colors.RESET}"
                    ).strip().lower()
                    if ans in ("y", "yes"):
                        cls.clean_redundant(options.output_dir, options.staging_dir)
                    else:
                        Console.step(f"Keeping existing '{os.path.basename(options.output_dir)}/' directory.")
                except (EOFError, KeyboardInterrupt):
                    Console.step(f"Keeping existing '{os.path.basename(options.output_dir)}/' directory.")
        else:
            cls.clean_redundant(options.output_dir, options.staging_dir)

    @classmethod
    def run_pipeline(cls, options: BuildOptions) -> BuildResult:
        if options.no_color:
            Console.set_color_enabled(False)

        Console.banner("MIKUPATCHES BUILD PIPELINE", "Modular Multi-App Android Patch Engine")

        # 1. Preflight toolchain check
        if not options.dry_run:
            ok, missing = Toolchain.check_preflight(require_signing=True)
            if not ok:
                Toolchain.print_diagnostics()
                return BuildResult(success=False, error_message=f"Missing tools: {', '.join(missing)}")
        else:
            Console.step("[Dry-Run] Simulating build pipeline without recompiling or signing...")

        # 2. Prepare staging
        shutil.rmtree(options.staging_dir, ignore_errors=True)
        os.makedirs(options.staging_dir, exist_ok=True)

        # 3. Keystore preparation
        if not options.dry_run:
            try:
                KeystoreManager.ensure_keystore(
                    keystore_path=options.keystore_path,
                    ks_alias=options.ks_alias,
                    ks_pass=options.ks_pass,
                    key_pass=options.key_pass,
                    verbose=options.verbose,
                )
            except Exception as e:
                Console.error(f"Keystore initialization failed: {e}")
                return BuildResult(success=False, error_message=str(e))

        # 4. Input file resolution
        input_file = Extractor.find_input_file(
            custom_path=options.input_file,
            input_dir=DEFAULT_INPUT_DIR,
            target_pkg=options.target_app,
        )

        if not input_file:
            # Need to download or select app
            supported_apps = AppManager.list_supported_apps()
            target_profile = None

            if options.target_app:
                target_profile = AppManager.find_app_profile(options.target_app)

            if not target_profile:
                if sys.stdin.isatty() and len(supported_apps) > 1:
                    target_profile = show_app_selection_menu(supported_apps)
                    if not target_profile:
                        Console.step("Build cancelled by user.")
                        return BuildResult(success=False, error_message="Cancelled by user")
                elif supported_apps:
                    target_profile = supported_apps[0]

            if not target_profile:
                Console.error("No supported applications configured in patches directory.")
                return BuildResult(success=False, error_message="No supported apps found")

            input_file = prompt_download(target_profile, DEFAULT_INPUT_DIR)

        # 5. Extract bundle to staging
        bundle_staging = os.path.join(options.staging_dir, "bundle")
        try:
            base_apk_path = Extractor.prepare_bundle(
                input_file=input_file,
                bundle_staging=bundle_staging,
                patches_dir=DEFAULT_PATCHES_DIR,
                verbose=options.verbose,
            )
        except Exception as e:
            Console.error(f"Bundle extraction error: {e}")
            return BuildResult(success=False, error_message=str(e))

        # 6. Decompile base.apk
        decompiled_dir = os.path.join(options.staging_dir, "base")
        effective_no_res = options.no_res
        if not effective_no_res and not options.clone:
            prof = None
            if options.target_app:
                prof = AppManager.find_app_profile(options.target_app)
            elif os.path.exists(os.path.join(bundle_staging, "info.json")):
                try:
                    with open(os.path.join(bundle_staging, "info.json"), "r", encoding="utf-8") as f_info:
                        pname = json.load(f_info).get("pname")
                        if pname:
                            prof = AppManager.find_app_profile(pname)
                except Exception:
                    pass
            if prof and getattr(prof, "no_res", False):
                effective_no_res = True

        try:
            ApktoolRunner.decompile(
                apk_path=base_apk_path,
                output_dir=decompiled_dir,
                framework_dir=options.framework_dir,
                no_src=options.no_src,
                no_res=effective_no_res,
                extra_args=options.apktool_args,
                verbose=options.verbose,
            )
        except Exception as e:
            Console.error(f"Decompilation error: {e}")
            return BuildResult(success=False, error_message=str(e))

        # 7. Identify package & version
        pkg_name, ver_name, ver_code = ApktoolRunner.parse_package_and_version(decompiled_dir)
        if not pkg_name and options.target_app:
            pkg_name = options.target_app

        app_profile = AppManager.find_app_profile(pkg_name or "")
        if not app_profile:
            supported = [a.package_name for a in AppManager.list_supported_apps()]
            Console.error(f"UNSUPPORTED PACKAGE DETECTED: '{pkg_name}'")
            Console.warn(f"Supported applications: {', '.join(supported)}")
            return BuildResult(success=False, error_message=f"Unsupported package: {pkg_name}")

        # 8. Verify target version
        ver_ok = AppManager.verify_version(
            profile=app_profile,
            detected_name=ver_name,
            detected_code=ver_code,
            force=options.force,
            target_version=options.target_version,
        )
        if not ver_ok:
            return BuildResult(
                success=False,
                app_profile=app_profile,
                detected_version_name=ver_name,
                detected_version_code=ver_code,
                error_message="Version mismatch",
            )

        # 9. Configure active patches
        active_status = {group.id: group.default for group in app_profile.patch_groups}

        # If --clone flag was explicitly set, enable clone patch
        if options.clone:
            active_status[AppCloner.CLONE_PATCH_ID] = True

        if options.skip_patches:
            for gid in options.skip_patches:
                if gid in active_status:
                    active_status[gid] = False

        if options.only_patches:
            for gid in active_status:
                active_status[gid] = (gid in options.only_patches)

        if options.select_patches:
            selected_map = show_patch_selection_menu(app_profile, active_status)
            if selected_map is None:
                Console.step("Returning to Main Menu.")
                return BuildResult(success=False, app_profile=app_profile, error_message="Cancelled by user")
            active_status = selected_map

        # Check if clone is active
        is_clone_active = active_status.get(AppCloner.CLONE_PATCH_ID, False)

        # 10. Apply patches
        applied_results = PatchEngine.apply_patches(
            decompiled_dir=decompiled_dir,
            app_profile=app_profile,
            active_status=active_status,
            clone_suffix=options.clone_suffix,
            clone_pkg=options.clone_pkg,
            dry_run=options.dry_run,
            verbose=options.verbose,
        )

        if options.dry_run:
            Console.banner("DRY-RUN SIMULATION COMPLETED", "All patch mappings and rules verified successfully.")
            return BuildResult(
                success=True,
                app_profile=app_profile,
                detected_version_name=ver_name,
                detected_version_code=ver_code,
                applied_patches=applied_results,
            )

        # 11. Recompile base APK
        raw_base_apk = os.path.join(options.staging_dir, "raw_base.apk")
        try:
            ApktoolRunner.build(
                decompiled_dir=decompiled_dir,
                output_apk=raw_base_apk,
                framework_dir=options.framework_dir,
                use_aapt2=options.use_aapt2,
                extra_args=options.apktool_args,
                verbose=options.verbose,
            )
        except Exception as e:
            Console.error(f"Recompilation error: {e}")
            return BuildResult(success=False, app_profile=app_profile, error_message=str(e))

        # 12. Align & Sign base APK
        staged_base_apk = os.path.join(options.staging_dir, "staged_base.apk")
        Console.step("Aligning & signing base.apk...")
        try:
            ApkSigner.align_and_sign(
                input_apk=raw_base_apk,
                output_apk=staged_base_apk,
                keystore_path=options.keystore_path,
                ks_pass=options.ks_pass,
                ks_alias=options.ks_alias,
                key_pass=options.key_pass,
                v1=not options.v2_only and not options.v3_only,
                v2=not options.v1_only and not options.v3_only,
                v3=not options.v1_only and not options.v2_only and not options.no_v3,
                verbose=options.verbose,
            )
        except Exception as e:
            Console.error(f"Signing error: {e}")
            return BuildResult(success=False, app_profile=app_profile, error_message=str(e))

        # 13. Align & Sign split APKs
        Console.step("Processing split APKs...")
        staged_splits = ApkSigner.sign_all_splits(
            bundle_staging=bundle_staging,
            build_staging=options.staging_dir,
            keystore_path=options.keystore_path,
            ks_pass=options.ks_pass,
            ks_alias=options.ks_alias,
            key_pass=options.key_pass,
            verbose=options.verbose,
        )

        # Determine effective profile (with cloned package name if clone was applied)
        if is_clone_active:
            cloned_pkg = options.clone_pkg or f"{app_profile.package_name}{options.clone_suffix}"
            effective_profile = AppProfile(
                package_name=cloned_pkg,
                app_title=f"{app_profile.app_title} (Clone)",
                target_version_name=app_profile.target_version_name,
                target_version_code=app_profile.target_version_code,
                apkmirror_url=app_profile.apkmirror_url,
                main_activity=app_profile.main_activity,
                supported_arches=app_profile.supported_arches,
                patch_groups=app_profile.patch_groups,
                profile_dir=app_profile.profile_dir,
            )
        else:
            effective_profile = app_profile

        # Determine variant slug and output directory
        variant_slug = Bundler.get_variant_slug(effective_profile, active_status)
        app_dirname = Bundler.get_clean_app_dirname(effective_profile)
        primary_out_dir = os.path.join(options.output_dir, app_dirname, variant_slug)
        overwrite = True

        if not options.dry_run and os.path.exists(primary_out_dir) and len(os.listdir(primary_out_dir)) > 0:
            if not options.yes and sys.stdin.isatty():
                try:
                    ans = input(
                        f"\n{Colors.YELLOW}[Clean] Previous '{variant_slug}' build for '{effective_profile.app_title}' found in '{os.path.basename(options.output_dir)}/'. "
                        f"Overwrite previous build? [y/N]: {Colors.RESET}"
                    ).strip().lower()
                    overwrite = ans in ("y", "yes")
                except (EOFError, KeyboardInterrupt):
                    overwrite = False
            else:
                overwrite = True

        if overwrite:
            if not options.dry_run and os.path.exists(primary_out_dir):
                shutil.rmtree(primary_out_dir, ignore_errors=True)
            target_app_dir = primary_out_dir
        else:
            target_app_dir = Bundler.resolve_app_output_dir(
                options.output_dir,
                effective_profile,
                variant_slug=variant_slug,
                overwrite=False,
            )
            Console.step(f"Preserving old build. Saving to '{os.path.relpath(target_app_dir, options.output_dir)}/'.")

        # 14. Assemble bundles into output directory
        Console.step(f"Assembling package outputs in '{os.path.relpath(target_app_dir, options.output_dir)}/'...")
        generated_files = Bundler.assemble_bundles(
            staged_base_apk=staged_base_apk,
            bundle_staging=bundle_staging,
            build_staging=options.staging_dir,
            staged_splits=staged_splits,
            app_profile=effective_profile,
            options=options,
            detected_version_name=ver_name,
            detected_version_code=ver_code,
            custom_output_dir=target_app_dir,
            active_status=active_status,
        )

        # 15. Staging cleanup
        if not options.keep_staging:
            shutil.rmtree(options.staging_dir, ignore_errors=True)

        # 16. Optional ADB Install & Launch
        if options.uninstall or options.install or options.launch:
            if Toolchain.is_docker_env():
                Console.warn("ADB is disabled in Docker environment. ADB operations are only supported in native environments (macOS / Linux / Windows).")
            else:
                if options.uninstall:
                    AdbManager.uninstall(effective_profile.package_name, device_serial=options.device, verbose=options.verbose)

                if options.install:
                    # 1. Prefer universal.apkm or arch-specific bundle over standalone base.apk for split apps
                    univ_apkm = os.path.join(target_app_dir, "universal.apkm")
                    target_to_install = None

                    if os.path.exists(univ_apkm):
                        target_to_install = univ_apkm
                    else:
                        for root, _, files in os.walk(target_app_dir):
                            for f in sorted(files):
                                if f.endswith(".apkm"):
                                    target_to_install = os.path.join(root, f)
                                    break
                            if target_to_install:
                                break

                    # Fallback to standalone base.apk if no bundle exists
                    if not target_to_install:
                        base_out = os.path.join(target_app_dir, "base.apk")
                        if os.path.exists(base_out):
                            target_to_install = base_out

                    if target_to_install:
                        AdbManager.install(target_to_install, device_serial=options.device, verbose=options.verbose)
                        if options.launch:
                            AdbManager.launch_app(
                                package_name=effective_profile.package_name,
                                main_activity=effective_profile.main_activity,
                                device_serial=options.device,
                                verbose=options.verbose,
                            )

        # 17. Final Build Report
        cls.print_build_summary(effective_profile, applied_results, generated_files, target_app_dir)

        return BuildResult(
            success=True,
            app_profile=effective_profile,
            detected_version_name=ver_name,
            detected_version_code=ver_code,
            applied_patches=applied_results,
            output_files=generated_files,
        )

    @classmethod
    def print_build_summary(
        cls,
        app_profile: AppProfile,
        applied_patches: List[Dict[str, Any]],
        output_files: List[Dict[str, Any]],
        output_dir: str,
    ):
        print("\n" + "=" * 76)
        Console.success("BUILD COMPLETE & SUCCESSFUL")
        print("------------------------------------------------------------------------")
        print(f"{Colors.BOLD} [*] Target Application : {Colors.CYAN}{app_profile.app_title}{Colors.RESET} ({app_profile.package_name})")
        print(f"{Colors.BOLD} [*] Applied Patches Status:{Colors.RESET}\n")

        for idx, g in enumerate(applied_patches, 1):
            if g["applied"]:
                status_badge = f"{Colors.GREEN}[+] APPLIED {Colors.RESET}"
                print(f"  {idx}. {status_badge} {Colors.BOLD}{g['name']}{Colors.RESET}")
                for rel_path, desc, ok in g.get("files", []):
                    f_status = f"{Colors.GREEN}✓{Colors.RESET}" if ok else f"{Colors.RED}✗{Colors.RESET}"
                    print(f"     {f_status} {Colors.CYAN}{rel_path}{Colors.RESET} ({desc})")
                for rel_path, desc, ok, cnt in g.get("regex_results", []):
                    f_status = f"{Colors.GREEN}✓{Colors.RESET}" if ok else f"{Colors.RED}✗{Colors.RESET}"
                    print(f"     {f_status} [Regex {cnt}] {Colors.CYAN}{rel_path}{Colors.RESET} ({desc})")
            else:
                status_badge = f"{Colors.YELLOW}[-] SKIPPED {Colors.RESET}"
                print(f"  {idx}. {status_badge} {g['name']} (Disabled by user)")

        abs_dist = os.path.abspath(output_dir)
        print(f"\n{Colors.BOLD} [*] Output Directory:{Colors.RESET}")
        print(f"    Absolute Path: {Colors.CYAN}{abs_dist}{Colors.RESET}\n")

        print(f"{Colors.BOLD} [*] Generated Package Artifacts:{Colors.RESET}")
        for item in output_files:
            sz_mb = item["size"] / (1024 * 1024)
            print(f"   - {Colors.CYAN}{item['rel_path']:<28}{Colors.RESET} ({sz_mb:.2f} MB) - {item['type']}")
        print("=" * 76 + "\n")
