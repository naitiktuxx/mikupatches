# MikuPatches Technical Documentation

This document describes the technical architecture, toolchain dependencies, build pipeline mechanics, command line interface (CLI), patch module file mappings, and steps for adding custom patches.

---

## 1. System Architecture & Workflow

MikuPatches uses a dynamic injection model. Rather than maintaining a full decompiled codebase in version control, patches are stored as isolated Smali bytecode and `AndroidManifest.xml` diffs in `patches/base/`. During execution, the build engine decompiles the original `base.apk`, overlays modified files, recompiles, aligns, and signs the resulting APKs.

```
                          ┌───────────────────────────────────────┐
                          │ Input File (.apkm / .apks / .apk)     │
                          └───────────────────┬───────────────────┘
                                              │
                                              ▼
                             [1. Extract Bundle to Staging]
                                              │
                                              ▼
                             [2. Decompile base.apk via Apktool]
                                              │
                                              ▼
                             [3. Verify Version (6.22.0 / 255)]
                                              │
                                              ▼
                             [4. Inject patches/base/ Files]
                                              │
                                              ▼
                             [5. Recompile base.apk via Apktool]
                                              │
                                              ▼
                             [6. Zipalign & Sign with apksigner]
                                              │
                                              ▼
                             [7. Package Bundles into dist/]
```

### Build Pipeline Execution Order:

1. Preflight Checks: Verifies that `apktool`, `java`, `zipalign`, and `apksigner` are available on the system.
2. Input Resolution: Searches `input/` for `.apkm`, `.apks`, `.zip`, or `.apk` files (or uses a path provided via CLI). If no input exists, prompts to open APKMirror in a web browser and waits for file placement.
3. Bundle Extraction: Extracts split bundles into `build_staging/bundle/`. If missing `info.json` or `icon.png` (e.g., when passing a standalone `.apk`), copies fallback files from `patches/bundle_fallback/`.
4. Decompilation: Invokes `apktool d -p framework` to decompile `base.apk` into `build_staging/base/` using framework files from `framework/`.
5. Version Verification: Parses `versionName` and `versionCode` in `build_staging/base/apktool.yml`. Errors out if the version is not `6.22.0` (code `255`), unless `-f` / `--force` is specified.
6. Patch Application: Copies enabled patch files from `patches/base/` into `build_staging/base/`.
7. Recompilation: Invokes `apktool b -p framework` to build an unaligned APK (`build_staging/raw_base.apk`).
8. Alignment & Signing:
   - Removes old signature metadata (`META-INF/*`) using `zip -d`.
   - Aligns uncompressed data on 4-byte boundaries with `zipalign -p -f -v 4`.
   - Signs using `apksigner` (v1, v2, and v3 schemes) with `debug.keystore` (generated automatically if missing via `keytool`).
   - Verifies final APK integrity with `zipalign -c` and `apksigner verify`.
9. Bundle Generation:
   - Aligns and signs all architecture split APKs (`split_config.*.apk`).
   - Creates `dist/base.apk`.
   - Creates universal bundles `dist/universal.apkm` and `dist/universal.apks`.
   - Generates architecture-specific bundles under `dist/arm64-v8a/`, `dist/armeabi-v7a/`, `dist/x86/`, and `dist/x86_64/`.
10. Cleanup & Installation: Cleans `build_staging/`. If requested (`-i` / `--install`), attempts installation via `adb install -r dist/base.apk`.

---

## 2. Toolchain & Dependencies

The build script auto-detects required binaries using `PATH`, `$ANDROID_HOME`, `$ANDROID_SDK_ROOT`, or default Homebrew installation paths.

### OS Compatibility Matrix

| Operating System | Support Level | Recommended Setup |
|---|---|---|
| Windows via WSL / WSL2 | 100% Native (Recommended) | Install Ubuntu WSL (`wsl --install`) and use `apt` setup |
| Windows Native (Git Bash / CMD) | Supported | Install Python 3, JDK 17+, Android SDK build-tools, and Apktool |
| macOS (Apple Silicon & Intel) | 100% Native | `brew install apktool openjdk android-commandlinetools` |
| Linux (Ubuntu, Debian, Mint) | 100% Native | `sudo apt install python3 apktool default-jdk zipalign apksigner` |
| Linux (Fedora, RHEL, CentOS) | 100% Native | `sudo dnf install python3 apktool java-17-openjdk-devel zipalign android-tools` |
| Linux (Arch, Manjaro) | 100% Native | `sudo pacman -S python android-tools java-environment-openjdk apktool` |
| Linux (openSUSE Leap / Tumbleweed) | 100% Native | `sudo zypper install python3 apktool java-17-openjdk-devel android-tools` |
| Linux (Alpine Linux) | 100% Native | `sudo apk add python3 apktool openjdk17 android-tools` |

### System Prerequisites

| Tool | Min Version | Function | Detection Logic |
|---|---|---|---|
| Python | 3.8+ | Orchestrates build pipeline (`build.py`) | `python3` / `python` binary in `PATH` |
| Java JDK | 17+ | Runtime for Apktool and apksigner | `java` binary in `PATH` |
| Apktool | 2.9.0+ | Decompiles and recompiles Android APKs | `apktool` binary in `PATH` |
| zipalign | 34.0.0+ | Aligns APK data on 4-byte boundaries | `PATH`, `$ANDROID_HOME/build-tools`, or Homebrew path |
| apksigner | 34.0.0+ | Signs APKs with v1, v2, and v3 signature schemes | `PATH`, `$ANDROID_HOME/build-tools`, or Homebrew path |
| ADB | (Optional) | Installs built APKs to connected devices | `adb` binary in `PATH` |

---

## 3. Command Line Interface (CLI) Reference

```text
usage: build.py [-h] [-m] [-i] [-c] [-y] [-f] [-p]
                [--skip-patches SKIP_PATCHES]
                [--only-patches ONLY_PATCHES]
                [input_file]
```

### Positional Arguments
- `input_file`: Optional direct path to an input `.apkm`, `.apks`, `.apk`, or `.zip` file. If omitted, the script checks `input/`.

### Flags & Options
- `-h`, `--help`: Show command-line help message and exit.
- `-m`, `--menu`: Open the interactive terminal main menu.
- `-i`, `--install`: Automatically install the built `base.apk` onto a connected Android device via ADB upon successful build.
- `-c`, `--clean`: Remove `dist/` and `build_staging/` build directories and exit.
- `-y`, `--yes`: Non-interactive mode (automatically confirm prompts, such as clearing previous outputs in `dist/`).
- `-f`, `--force`: Bypass application version verification and proceed with patching even if `versionName` or `versionCode` do not match `6.22.0` / `255`.
- `-p`, `--select-patches`: Open interactive patch selection menu before building.
- `--skip-patches <IDs>`: Comma-separated list of patch module IDs to skip (e.g. `--skip-patches clean_menu,theme_default`).
- `--only-patches <IDs>`: Comma-separated list of patch module IDs to apply, disabling all others (e.g. `--only-patches pairip,pro_unlock`).

### Force Building with -f / --force

By default, the build engine parses `versionName` and `versionCode` from `apktool.yml` during decompilation. If the detected version differs from target version `6.22.0` (versionCode `255`), the script aborts with a version mismatch error to prevent building incompatible packages.

Passing `-f` (or `--force`) bypasses this safety check:

- Purpose: Force patching on experimental, older, or newer APK releases.
- Basic Command: `python3 build.py -f`
- With Custom File & Auto-Install: `python3 build.py input/app_v6.23.0.apkm -f -y -i`
- Caveat: Smali patches in `patches/base/` target specific obfuscated class names in `v6.22.0`. If class names or methods differ in other versions, Apktool recompilation may fail or the app may crash on startup.

### Examples

#### Non-interactive default build with custom input file
```bash
python3 build.py input/app.apkm -y
```

#### Apply specific patches only and auto-install via ADB
```bash
python3 build.py -i --only-patches pairip,pro_unlock
```

#### Skip UI cleanup and force build on an unverified APK version
```bash
python3 build.py -f --skip-patches clean_menu
```

#### Clean build outputs
```bash
python3 build.py -c
```

---

## 4. Patch Module Reference

Patches are grouped into five logical modules defined in `PATCH_GROUPS` inside `build.py`. All five are enabled by default.

### 1. `pairip`
- Name: Play Store Redirection & PairIP License Bypass
- Description: Removes the Play Store installer check and PairIP license verification dialogs.
- Files Mapped:
  - `AndroidManifest.xml`: Sets application entry point to `io.appground.blek.MainApp`.
  - `smali/com/pairip/licensecheck/LicenseClient.smali`: Neutralizes package installer checks.
  - `smali/com/pairip/licensecheck/LicenseContentProvider.smali`: Neutralizes license content provider initialization.
  - `smali/com/pairip/application/Application.smali`: Neutralizes PairIP runtime checks.
  - `smali/eu5.smali`: Neutralizes installer store redirection dialog in `MainActivity`.

### 2. `pro_unlock`
- Name: Pro & Premium Features Unlock
- Description: Grants full access to Pro features, subscription status, and billing SKU checks.
- Files Mapped:
  - `smali/fj3.smali`: Sets `PremiumStatus` constructor defaults (`isPremium=true`, `isSubscribed=true`).
  - `smali/ez.smali`: Forces global premium access check (`e()Z`) to return `true`.
  - `smali/uy.smali`: Forces in-app billing SKU check (`h(String)Z`) to return `true`.

### 3. `password_mode`
- Name: Password Mode & EndIcon Toggle Unlock
- Description: Unlocks password input mode and the end icon eye visibility toggle in keyboard views.
- Files Mapped:
  - `smali/uv.smali`: Unlocks password mode and eye toggle logic.

### 4. `clean_menu`
- Name: Clean UI & Menu Items Removal
- Description: Removes upgrade promotion prompts, subscription management options, and feedback menu actions.
- Files Mapped:
  - `smali/jh0.smali`: Removes Compose upgrade menu items and prevents slot table layout crashes.
  - `smali/m2.smali`: Eliminates Pro upgrade and subscription menu actions.
  - `smali/ug5.smali`: Eliminates subscription management and feedback menu actions.

### 5. `theme_default`
- Name: Default Theme: BlueGrey & System Default
- Description: Configures initial preferences to use the BlueGrey accent color and System Default theme mode.
- Files Mapped:
  - `smali/b64.smali`: Configures Settings screen default theme options.
  - `smali/c64.smali`: Sets theme option preference defaults.
  - `smali/wv3.smali`: Sets SharedPreferences defaults to `blue_grey` and `system`.
  - `smali/io/appground/blek/MainActivity.smali`: Configures `onCreate()` theme initialization defaults.

---

## 5. Adding Custom Patches

To contribute or test new patches:

1. Decompile the Base APK:
   ```bash
   apktool d -p framework base.apk -o scratch/base
   ```

2. Modify Files:
   Edit the necessary Smali files in `scratch/base/smali/` or `AndroidManifest.xml`.

3. Stage Patch Files:
   Copy only the modified files into `patches/base/`, preserving the directory hierarchy (e.g. `patches/base/smali/com/example/Target.smali`).

4. Register Module in `build.py`:
   Add a new entry to `PATCH_GROUPS` in `build.py` with a unique `id`, `name`, `desc`, default boolean state, and file mapping dictionary.

5. Test Build:
   Run `python3 build.py` to verify decompilation, patch injection, recompilation, alignment, signing, and execution.

---

## 6. Automated GitHub Releases & CI/CD

MikuPatches includes an automated GitHub Actions workflow in `.github/workflows/release.yml`. On every push to the `main` branch or tag creation (`v*`), the workflow automatically creates a GitHub Release containing ready-to-use source archives:

- `.tar.gz` archive: Standard Linux/Unix gzipped tarball preserving POSIX file permissions.
- `.zip` archive: Cross-platform ZIP archive for Windows/macOS.

Both archives contain the complete source code, patches, framework files, and build scripts.
