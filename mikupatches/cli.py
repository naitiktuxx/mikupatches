"""
Command line argument parsing and CLI definitions for MikuPatches.
"""

import argparse
import sys
from typing import List, Optional, Tuple

from mikupatches.constants import (
    DEFAULT_DIST_DIR,
    DEFAULT_STAGING_DIR,
    DEFAULT_FRAMEWORK_DIR,
    DEFAULT_KEYSTORE_PATH,
    DEFAULT_KS_ALIAS,
    DEFAULT_KS_PASS,
    DEFAULT_KEY_PASS,
    SUPPORTED_ARCHITECTURES,
    SUPPORTED_OUTPUT_FORMATS,
)
from mikupatches.models import BuildOptions


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        prog="build.py",
        description="MikuPatches - Modular Multi-App Android Patch Build Engine",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # Standard interactive menu:
  python3 build.py

  # Build Truecaller with auto-detected input in input/ folder:
  python3 build.py -a com.truecaller -y

  # Build Bluetooth Keyboard with only ARM64 bundle and auto-install via ADB:
  python3 build.py input/blek.apkm --arch arm64-v8a -I --launch

  # Apply specific patches only:
  python3 build.py --only-patches pairip,pro_unlock

  # Simulate build and verify patch targets without rebuilding (dry-run):
  python3 build.py --dry-run

  # List all supported apps in repository:
  python3 build.py --list-apps
""",
    )

    parser.add_argument("input_file", nargs="?", help="Direct path to input .apkm, .apks, .xapk, .zip, or .apk file")

    # Workflow & General
    general_group = parser.add_argument_group("General & Workflow Options")
    general_group.add_argument("-m", "--menu", action="store_true", help="Open interactive main menu")
    general_group.add_argument("-y", "--yes", action="store_true", help="Non-interactive mode (auto-confirm all prompts)")
    general_group.add_argument("-v", "--verbose", action="store_true", help="Enable verbose debug logging")
    general_group.add_argument("-q", "--quiet", action="store_true", help="Minimal console output")
    general_group.add_argument("--no-color", action="store_true", help="Disable ANSI terminal colors")
    general_group.add_argument("--dry-run", action="store_true", help="Simulate build and patch injection without compiling/signing")
    general_group.add_argument("--list-apps", action="store_true", help="List all supported applications and target versions")
    general_group.add_argument("--list-patches", action="store_true", help="List all available patch modules for target app")

    # Input & Application
    input_group = parser.add_argument_group("Input & Application Target Options")
    input_group.add_argument("-i", "--input", dest="custom_input", help="Explicit path to input package or directory")
    input_group.add_argument("-a", "--app", "--package", dest="target_app", help="Explicitly specify target package name (e.g. 'com.truecaller', 'io.appground.blek')")
    input_group.add_argument("-f", "--force", action="store_true", help="Bypass application version check and force patching")
    input_group.add_argument("--target-version", help="Override expected target version name")

    # Patch Selection & Cloner
    patch_group = parser.add_argument_group("Patch Selection & App Cloning Options")
    patch_group.add_argument("-p", "--select-patches", action="store_true", help="Open interactive patch selection menu before building")
    patch_group.add_argument("--only-patches", help="Comma-separated list of patch module IDs to apply (disabling all others)")
    patch_group.add_argument("--skip-patches", help="Comma-separated list of patch module IDs to skip")
    patch_group.add_argument("--clone", action="store_true", help="Enable App Clone mode (appends .tux to package name for dual parallel installation)")
    patch_group.add_argument("--clone-suffix", default=".tux", help="Custom suffix for App Clone (default: '.tux')")
    patch_group.add_argument("--clone-pkg", help="Custom explicit package name for cloned app")

    # Build & Recompilation
    build_group = parser.add_argument_group("Apktool & Rebuild Options")
    build_group.add_argument("--use-aapt2", action="store_true", help="Use AAPT2 backend for Apktool recompilation")
    build_group.add_argument("--no-src", action="store_true", help="Do not decompile sources (for resource-only patches)")
    build_group.add_argument("--no-res", action="store_true", help="Do not decompile resources")
    build_group.add_argument("--apktool-args", help="Pass arbitrary custom arguments directly to Apktool")
    build_group.add_argument("--framework-dir", default=DEFAULT_FRAMEWORK_DIR, help=f"Custom framework directory (default: '{DEFAULT_FRAMEWORK_DIR}')")
    build_group.add_argument("--staging-dir", default=DEFAULT_STAGING_DIR, help=f"Custom build staging directory (default: '{DEFAULT_STAGING_DIR}')")
    build_group.add_argument("--keep-staging", "--debug", action="store_true", help="Preserve staging directory on completion/failure")

    # Output & Packaging
    output_group = parser.add_argument_group("Output & Packaging Options")
    output_group.add_argument("-o", "--output-dir", default=DEFAULT_DIST_DIR, help=f"Directory to save generated outputs (default: '{DEFAULT_DIST_DIR}')")
    output_group.add_argument(
        "-O", "--output-format",
        default="all",
        help=f"Comma-separated list of output formats ({', '.join(SUPPORTED_OUTPUT_FORMATS)}, default: 'all')"
    )
    output_group.add_argument(
        "--arch", "--arches",
        dest="arches",
        default=",".join(SUPPORTED_ARCHITECTURES),
        help=f"Comma-separated target architectures to bundle ({', '.join(SUPPORTED_ARCHITECTURES)})"
    )
    output_group.add_argument("--output-name", help="Custom prefix name for generated output files")
    output_group.add_argument("-c", "--clean", action="store_true", help="Remove dist/ and build_staging/ directories and exit")

    # Signing & Keystore
    sign_group = parser.add_argument_group("Signing & Keystore Options")
    sign_group.add_argument("--keystore", default=DEFAULT_KEYSTORE_PATH, help=f"Path to signing keystore (default: '{DEFAULT_KEYSTORE_PATH}')")
    sign_group.add_argument("--ks-pass", default=DEFAULT_KS_PASS, help=f"Keystore password (default: '{DEFAULT_KS_PASS}')")
    sign_group.add_argument("--ks-alias", default=DEFAULT_KS_ALIAS, help=f"Key alias (default: '{DEFAULT_KS_ALIAS}')")
    sign_group.add_argument("--key-pass", default=DEFAULT_KEY_PASS, help=f"Key password (default: '{DEFAULT_KEY_PASS}')")
    sign_group.add_argument("--v1-only", action="store_true", help="Sign using only JAR/v1 signature scheme")
    sign_group.add_argument("--v2-only", action="store_true", help="Sign using only APK Signature Scheme v2")
    sign_group.add_argument("--v3-only", action="store_true", help="Sign using only APK Signature Scheme v3")
    sign_group.add_argument("--no-v3", action="store_true", help="Disable APK Signature Scheme v3")

    # ADB & Device
    adb_group = parser.add_argument_group("ADB Device & Installation Options")
    adb_group.add_argument("-I", "--install", action="store_true", help="Auto-install built base APK onto connected ADB device")
    adb_group.add_argument("-d", "--device", help="Specific ADB device serial to target")
    adb_group.add_argument("--launch", action="store_true", help="Automatically launch patched app after ADB installation")
    adb_group.add_argument("--uninstall", action="store_true", help="Uninstall existing package before installing")

    return parser


def parse_cli_options(args: Optional[List[str]] = None) -> Tuple[argparse.Namespace, BuildOptions]:
    parser = build_parser()
    parsed = parser.parse_args(args)

    input_file = parsed.input_file or parsed.custom_input

    # Parse comma-separated lists
    only_patches = [s.strip() for s in parsed.only_patches.split(",")] if parsed.only_patches else None
    skip_patches = [s.strip() for s in parsed.skip_patches.split(",")] if parsed.skip_patches else None

    output_formats = [s.strip().lower() for s in parsed.output_format.split(",")] if parsed.output_format else ["all"]
    arches = [s.strip().lower() for s in parsed.arches.split(",")] if parsed.arches else list(SUPPORTED_ARCHITECTURES)

    options = BuildOptions(
        input_file=input_file,
        target_app=parsed.target_app,
        target_version=parsed.target_version,
        output_dir=parsed.output_dir,
        staging_dir=parsed.staging_dir,
        framework_dir=parsed.framework_dir,
        output_formats=output_formats,
        arches=arches,
        output_name=parsed.output_name,
        force=parsed.force,
        dry_run=parsed.dry_run,
        yes=parsed.yes,
        verbose=parsed.verbose,
        quiet=parsed.quiet,
        no_color=parsed.no_color,
        select_patches=parsed.select_patches,
        only_patches=only_patches,
        skip_patches=skip_patches,
        clone=parsed.clone,
        clone_suffix=parsed.clone_suffix,
        clone_pkg=parsed.clone_pkg,
        keystore_path=parsed.keystore,
        ks_pass=parsed.ks_pass,
        ks_alias=parsed.ks_alias,
        key_pass=parsed.key_pass,
        v1_only=parsed.v1_only,
        v2_only=parsed.v2_only,
        v3_only=parsed.v3_only,
        no_v3=parsed.no_v3,
        use_aapt2=parsed.use_aapt2,
        no_src=parsed.no_src,
        no_res=parsed.no_res,
        apktool_args=parsed.apktool_args,
        keep_staging=parsed.keep_staging,
        install=parsed.install,
        device=parsed.device,
        launch=parsed.launch,
        uninstall=parsed.uninstall,
    )

    return parsed, options
