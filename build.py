#!/usr/bin/env python3
import os
import sys
import shutil
import subprocess
import json
import zipfile
import webbrowser
import time
import argparse
import re

WORKSPACE = os.path.dirname(os.path.abspath(__file__))
DIST_DIR = os.path.join(WORKSPACE, "dist")
BUILD_STAGING = os.path.join(WORKSPACE, "build_staging")
INPUT_DIR = os.path.join(WORKSPACE, "input")
PATCHES_DIR = os.path.join(WORKSPACE, "patches")
FRAMEWORK_DIR = os.path.join(WORKSPACE, "framework")
KEYSTORE = os.path.join(WORKSPACE, "debug.keystore")

TARGET_VERSION_NAME = "6.22.0"
TARGET_VERSION_CODE = "255"

APKMIRROR_URL = "https://www.apkmirror.com/apk/appground-io/bluetooth-keyboard-mouse-2/bluetooth-keyboard-mouse-6-22-0-release/bluetooth-keyboard-mouse-6-22-0-2-android-apk-download/download/?key=1c64014febe7a4b159644f6439cf66cb1e9f2897"

class Colors:
    CYAN = "\033[96m"
    GREEN = "\033[92m"
    YELLOW = "\033[93m"
    RED = "\033[91m"
    BOLD = "\033[1m"
    RESET = "\033[0m"

def log_step(msg):
    print(f"{Colors.CYAN}{Colors.BOLD}[Step] {msg}{Colors.RESET}")

def log_success(msg):
    print(f"{Colors.GREEN}{Colors.BOLD}[Success] {msg}{Colors.RESET}")

def log_warn(msg):
    print(f"{Colors.YELLOW}[Warning] {msg}{Colors.RESET}")

def log_error(msg):
    print(f"{Colors.RED}{Colors.BOLD}[Error] {msg}{Colors.RESET}")

def run_cmd(cmd):
    res = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    if res.returncode != 0:
        raise RuntimeError(f"Command failed: {cmd}\nStdout: {res.stdout}\nStderr: {res.stderr}")
    return res.stdout

def find_tool(tool_name, default_homebrew_path=""):
    path = shutil.which(tool_name)
    if path:
        return path
    if default_homebrew_path and os.path.exists(default_homebrew_path):
        return default_homebrew_path
    
    sdk_root = os.environ.get("ANDROID_HOME") or os.environ.get("ANDROID_SDK_ROOT")
    if sdk_root and os.path.exists(os.path.join(sdk_root, "build-tools")):
        bt_dir = os.path.join(sdk_root, "build-tools")
        if os.path.exists(bt_dir):
            versions = sorted(os.listdir(bt_dir), reverse=True)
            for ver in versions:
                tool_path = os.path.join(bt_dir, ver, tool_name)
                if os.path.exists(tool_path):
                    return tool_path
    return None

ZIPALIGN = find_tool("zipalign", "/opt/homebrew/share/android-commandlinetools/build-tools/34.0.0/zipalign")
APKSIGNER = find_tool("apksigner", "/opt/homebrew/share/android-commandlinetools/build-tools/34.0.0/apksigner")

def preflight_check():
    missing = []
    if not shutil.which("apktool"):
        missing.append("apktool (install with: brew install apktool)")
    if not shutil.which("java"):
        missing.append("java / JDK (install with: brew install openjdk)")
    if not ZIPALIGN:
        missing.append("zipalign (Android SDK build-tools)")
    if not APKSIGNER:
        missing.append("apksigner (Android SDK build-tools)")
    
    if missing:
        log_error("Missing required system tools:")
        for tool in missing:
            print(f"  - {tool}")
        sys.exit(1)

def clean_redundant():
    log_step("Cleaning up temporary and old build files...")
    redundants = [
        os.path.join(WORKSPACE, "patched_base.apk"),
        os.path.join(WORKSPACE, "aligned_base.apk"),
        os.path.join(WORKSPACE, "aligned_base.apk.idsig"),
        BUILD_STAGING,
        DIST_DIR
    ]
    for path in redundants:
        if os.path.isfile(path) or os.path.islink(path):
            os.remove(path)
        elif os.path.isdir(path):
            shutil.rmtree(path)

def check_clean_prompt(noconfirm=False):
    if os.path.exists(DIST_DIR) and any(os.scandir(DIST_DIR)):
        if noconfirm or not sys.stdin.isatty():
            clean_redundant()
        else:
            try:
                ans = input(f"{Colors.YELLOW}[Clean] Previous build outputs found in 'dist/'. Clear old outputs before starting? [Y/n]: {Colors.RESET}").strip().lower()
                if ans in ('', 'y', 'yes'):
                    clean_redundant()
                else:
                    log_step("Keeping existing 'dist/' directory.")
            except (KeyboardInterrupt, EOFError):
                clean_redundant()
    else:
        clean_redundant()

def ensure_keystore():
    if not os.path.exists(KEYSTORE):
        log_step("Generating debug keystore...")
        cmd = (
            f"keytool -genkey -v -keystore {KEYSTORE} -storepass android "
            f"-alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 "
            f'-validity 10000 -dname "CN=Android Debug,O=Android,C=US"'
        )
        run_cmd(cmd)

def find_input_file(custom_path=None):
    if custom_path:
        if os.path.exists(custom_path):
            return custom_path
        else:
            log_error(f"Specified input file '{custom_path}' does not exist.")
            sys.exit(1)

    if not os.path.exists(INPUT_DIR):
        os.makedirs(INPUT_DIR, exist_ok=True)
    
    valid_exts = (".apkm", ".apks", ".zip", ".apk")
    candidates = [
        f for f in os.listdir(INPUT_DIR)
        if f.endswith(valid_exts) and not f.startswith(".")
    ]
    if candidates:
        candidates.sort(key=lambda x: (not x.endswith(".apkm"), not x.endswith(".apks"), x))
        return os.path.join(INPUT_DIR, candidates[0])
    return None

def prompt_download():
    print("\n" + "=" * 76)
    print(f"{Colors.RED}{Colors.BOLD} [Input Required] Target APKM File Not Found!{Colors.RESET}")
    print("------------------------------------------------------------------------")
    print(f"  Target App         : Bluetooth Keyboard & Mouse")
    print(f"  Required Version   : {Colors.CYAN}v{TARGET_VERSION_NAME}{Colors.RESET} (versionCode: {TARGET_VERSION_CODE})")
    print(f"  Target Package     : {Colors.CYAN}Universal (120-640dpi) (Android 12L+){Colors.RESET}")
    print(f"  Status             : No .apkm / .apks / .apk file found in 'input/' folder")
    print("=" * 76 + "\n")

    if sys.stdin.isatty():
        print(f"{Colors.BOLD}Select an option:{Colors.RESET}")
        print("  [1] Open APKMirror in browser to download v6.22.0 Universal APKM")
        print("  [2] Go back / Exit build\n")
        try:
            choice = input(f"{Colors.CYAN}Select option [1-2] (default 1): {Colors.RESET}").strip()
            if choice == "2":
                log_step("Exiting build process.")
                sys.exit(0)
        except (KeyboardInterrupt, EOFError):
            print()
            log_step("Exiting build process.")
            sys.exit(0)

    print(f"\nOpening APKMirror download page in your browser:")
    print(f" {Colors.CYAN}{APKMIRROR_URL}{Colors.RESET}\n")

    try:
        webbrowser.open(APKMIRROR_URL)
    except Exception as e:
        log_warn(f"Failed to open browser automatically: {e}")

    print(f"Please save the downloaded {Colors.CYAN}v6.22.0 Universal APKM{Colors.RESET} into the 'input/' folder.")
    print("Waiting for file to be placed in 'input/' directory...")
    while True:
        infile = find_input_file()
        if infile:
            log_success(f"Found input file: {os.path.basename(infile)}")
            return infile
        time.sleep(2)

def prepare_bundle(input_file, bundle_staging):
    os.makedirs(bundle_staging, exist_ok=True)
    ext = os.path.splitext(input_file)[1].lower()

    if ext in (".apkm", ".apks", ".zip"):
        log_step(f"Extracting '{os.path.basename(input_file)}' into bundle staging...")
        with zipfile.ZipFile(input_file, 'r') as zf:
            zf.extractall(bundle_staging)
    elif ext == ".apk":
        log_step(f"Copying single APK '{os.path.basename(input_file)}' to bundle staging...")
        shutil.copyfile(input_file, os.path.join(bundle_staging, "base.apk"))

    base_apk = os.path.join(bundle_staging, "base.apk")
    if not os.path.exists(base_apk):
        raise FileNotFoundError(f"'base.apk' not found in extracted bundle at {bundle_staging}")

    fallback_dir = os.path.join(PATCHES_DIR, "bundle_fallback")
    info_json = os.path.join(bundle_staging, "info.json")
    icon_png = os.path.join(bundle_staging, "icon.png")
    if not os.path.exists(info_json) and os.path.exists(os.path.join(fallback_dir, "info.json")):
        shutil.copyfile(os.path.join(fallback_dir, "info.json"), info_json)
    if not os.path.exists(icon_png) and os.path.exists(os.path.join(fallback_dir, "icon.png")):
        shutil.copyfile(os.path.join(fallback_dir, "icon.png"), icon_png)

def verify_app_version(base_dir, force=False):
    apktool_yml = os.path.join(base_dir, "apktool.yml")
    ver_name = None
    ver_code = None

    if os.path.exists(apktool_yml):
        with open(apktool_yml, "r", encoding="utf-8") as f:
            content = f.read()
            match_name = re.search(r"versionName:\s*['\"]?([^'\"\n]+)['\"]?", content)
            match_code = re.search(r"versionCode:\s*['\"]?([^'\"\n]+)['\"]?", content)
            if match_name:
                ver_name = match_name.group(1).strip()
            if match_code:
                ver_code = match_code.group(1).strip()

    log_step(f"Verifying input app version (Detected: v{ver_name or 'Unknown'} / code {ver_code or 'Unknown'})...")

    if ver_name and ver_name != TARGET_VERSION_NAME:
        log_error("VERSION MISMATCH DETECTED!")
        log_error(f"  - Expected Version : v{TARGET_VERSION_NAME} (code {TARGET_VERSION_CODE})")
        log_error(f"  - Input App Version : v{ver_name} (code {ver_code})")
        log_error("These patches are strictly crafted for Bluetooth Keyboard & Mouse v6.22.0.")
        if not force:
            log_error("Aborting build. To force build anyway, re-run with '-f' or '--force'.")
            sys.exit(1)
        else:
            log_warn("Forcing build despite version mismatch (--force enabled)...")
    else:
        log_success(f"App version verified: v{ver_name or TARGET_VERSION_NAME} (code {ver_code or TARGET_VERSION_CODE})")

def apply_patches(base_dir):
    patches_base = os.path.join(PATCHES_DIR, "base")
    if not os.path.exists(patches_base):
        raise FileNotFoundError(f"Patches directory not found at '{patches_base}'")

    log_step("Applying smali & manifest patches...")
    patched_count = 0
    for root, dirs, files in os.walk(patches_base):
        rel_root = os.path.relpath(root, patches_base)
        target_root = base_dir if rel_root == "." else os.path.join(base_dir, rel_root)
        
        for f in files:
            src_file = os.path.join(root, f)
            dst_file = os.path.join(target_root, f)
            os.makedirs(os.path.dirname(dst_file), exist_ok=True)
            shutil.copyfile(src_file, dst_file)
            patched_count += 1
            print(f"  -> Applied patch: {os.path.relpath(dst_file, base_dir)}")

    log_success(f"Applied {patched_count} patch file(s) successfully.")

def align_and_sign(input_apk, output_apk):
    unaligned_tmp = output_apk + ".unaligned"
    shutil.copyfile(input_apk, unaligned_tmp)
    run_cmd(f"zip -d {unaligned_tmp} 'META-INF/*' || true")
    run_cmd(f'"{ZIPALIGN}" -p -f -v 4 {unaligned_tmp} {output_apk}')
    if os.path.exists(unaligned_tmp):
        os.remove(unaligned_tmp)
    run_cmd(
        f'"{APKSIGNER}" sign --v1-signing-enabled true --v2-signing-enabled true '
        f'--v3-signing-enabled true --ks {KEYSTORE} --ks-pass pass:android '
        f'--key-pass pass:android --ks-key-alias androiddebugkey {output_apk}'
    )
    run_cmd(f'"{ZIPALIGN}" -c -v 4 {output_apk}')
    run_cmd(f'"{APKSIGNER}" verify --verbose {output_apk}')

def create_zip(source_files, target_zip_path):
    os.makedirs(os.path.dirname(target_zip_path), exist_ok=True)
    with zipfile.ZipFile(target_zip_path, 'w', zipfile.ZIP_DEFLATED) as zf:
        for file_path, arcname in source_files:
            zf.write(file_path, arcname)

def install_via_adb():
    adb_path = shutil.which("adb")
    if not adb_path:
        log_warn("ADB tool not found in PATH. Cannot auto-install.")
        return

    log_step("Checking connected ADB devices...")
    res = run_cmd("adb devices").strip().splitlines()
    devices = [line for line in res[1:] if line.strip() and "device" in line and not "offline" in line]

    if not devices:
        log_warn("No active ADB device/emulator connected. Skipping auto-install.")
        return

    staged_base = os.path.join(DIST_DIR, "base.apk")
    if os.path.exists(staged_base):
        log_step("Installing patched base.apk onto connected Android device...")
        try:
            run_cmd(f"adb install -r {staged_base}")
            log_success("App installed successfully on device!")
        except Exception as e:
            log_warn(f"ADB installation failed: {e}")

def main():
    parser = argparse.ArgumentParser(description="MikuPatches - Bluetooth Keyboard & Mouse Patch Pipeline")
    parser.add_argument("input_file", nargs="?", help="Path to input .apkm / .apks / .apk file")
    parser.add_argument("-i", "--install", action="store_true", help="Auto-install built APK onto connected ADB device")
    parser.add_argument("-c", "--clean", action="store_true", help="Clean dist and build_staging directories")
    parser.add_argument("-y", "--yes", action="store_true", help="Auto-confirm all prompts (e.g. clear old outputs)")
    parser.add_argument("-f", "--force", action="store_true", help="Force build despite version mismatch")
    args = parser.parse_args()

    if args.clean:
        clean_redundant()
        log_success("Cleaned build artifacts.")
        sys.exit(0)

    print(f"\n{Colors.BOLD}=== MIKUPATCHES BUILD PIPELINE ==={Colors.RESET}\n")
    preflight_check()
    check_clean_prompt(args.yes)
    ensure_keystore()

    input_file = find_input_file(args.input_file)
    if not input_file:
        input_file = prompt_download()

    os.makedirs(DIST_DIR, exist_ok=True)
    os.makedirs(BUILD_STAGING, exist_ok=True)

    bundle_staging = os.path.join(BUILD_STAGING, "bundle")
    prepare_bundle(input_file, bundle_staging)

    base_apk_path = os.path.join(bundle_staging, "base.apk")
    decompiled_base_dir = os.path.join(BUILD_STAGING, "base")

    log_step("Decompiling base.apk with apktool...")
    run_cmd(f"apktool d -p {FRAMEWORK_DIR} {base_apk_path} -o {decompiled_base_dir} -f")

    verify_app_version(decompiled_base_dir, force=args.force)

    apply_patches(decompiled_base_dir)

    log_step("Recompiling patched base.apk with apktool...")
    raw_base = os.path.join(BUILD_STAGING, "raw_base.apk")
    run_cmd(f"apktool b -p {FRAMEWORK_DIR} {decompiled_base_dir} -o {raw_base}")

    staged_base = os.path.join(BUILD_STAGING, "staged_base.apk")
    log_step("Aligning & signing base.apk...")
    align_and_sign(raw_base, staged_base)

    shutil.copyfile(staged_base, os.path.join(DIST_DIR, "base.apk"))

    log_step("Processing split APKs...")
    arch_splits = {
        "arm64-v8a": "split_config.arm64_v8a.apk",
        "armeabi-v7a": "split_config.armeabi_v7a.apk",
        "x86": "split_config.x86.apk",
        "x86_64": "split_config.x86_64.apk"
    }

    staged_splits = {}
    for fname in os.listdir(bundle_staging):
        fpath = os.path.join(bundle_staging, fname)
        if fname.endswith(".apk") and fname != "base.apk":
            out_staged = os.path.join(BUILD_STAGING, fname)
            align_and_sign(fpath, out_staged)
            staged_splits[fname] = out_staged

    info_json_path = os.path.join(bundle_staging, "info.json")
    if os.path.exists(info_json_path):
        with open(info_json_path, "r") as f:
            base_info = json.load(f)
    else:
        base_info = {}

    icon_path = os.path.join(bundle_staging, "icon.png")

    log_step("Creating Universal APKM & APKS in dist/...")
    univ_apkm_files = [(staged_base, "base.apk")]
    if os.path.exists(info_json_path):
        univ_apkm_files.append((info_json_path, "info.json"))
    if os.path.exists(icon_path):
        univ_apkm_files.append((icon_path, "icon.png"))
    univ_apkm_files.extend([(path, fname) for fname, path in staged_splits.items()])

    univ_apks_files = [(staged_base, "base.apk")] + [(path, fname) for fname, path in staged_splits.items()]

    create_zip(univ_apkm_files, os.path.join(DIST_DIR, "universal.apkm"))
    create_zip(univ_apks_files, os.path.join(DIST_DIR, "universal.apks"))

    non_arch_splits = {
        fname: path for fname, path in staged_splits.items()
        if fname not in arch_splits.values()
    }

    for arch, arch_split_fname in arch_splits.items():
        log_step(f"Creating arch bundle for {arch}...")
        arch_dir = os.path.join(DIST_DIR, arch)

        arch_info = dict(base_info)
        arch_info["arches"] = [arch]
        arch_info["variant"] = f"({arch}) (120-640dpi) (Android 12L+)"
        arch_info["release_title"] = f"Bluetooth Keyboard & Mouse 6.22.0 ({arch})"

        arch_info_path = os.path.join(BUILD_STAGING, f"info_{arch}.json")
        with open(arch_info_path, "w") as f:
            json.dump(arch_info, f, indent=4)

        arch_specific_splits = dict(non_arch_splits)
        if arch_split_fname in staged_splits:
            arch_specific_splits[arch_split_fname] = staged_splits[arch_split_fname]

        arch_apkm_files = [(staged_base, "base.apk")]
        if os.path.exists(arch_info_path):
            arch_apkm_files.append((arch_info_path, "info.json"))
        if os.path.exists(icon_path):
            arch_apkm_files.append((icon_path, "icon.png"))
        arch_apkm_files.extend([(path, fname) for fname, path in arch_specific_splits.items()])

        arch_apks_files = [(staged_base, "base.apk")] + [(path, fname) for fname, path in arch_specific_splits.items()]

        create_zip(arch_apkm_files, os.path.join(arch_dir, f"{arch}.apkm"))
        create_zip(arch_apks_files, os.path.join(arch_dir, f"{arch}.apks"))

    shutil.rmtree(BUILD_STAGING)

    if args.install:
        install_via_adb()

    log_success("BUILD COMPLETE!")
    print("\nClean dist/ structure:")
    for root, dirs, files in os.walk(DIST_DIR):
        for f in sorted(files):
            full_path = os.path.join(root, f)
            rel_path = os.path.relpath(full_path, DIST_DIR)
            sz_mb = os.path.getsize(full_path) / (1024 * 1024)
            print(f"  dist/{rel_path} ({sz_mb:.2f} MB)")

if __name__ == "__main__":
    main()
