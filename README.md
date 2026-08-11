# MikuPatches

An automated decompilation, patching, and build pipeline for the **Bluetooth Keyboard & Mouse** Android application (version `6.22.0`).

---

## Overview

MikuPatches provides a reproducible framework for modifying the Bluetooth Keyboard & Mouse Android app without storing or redistributing proprietary APK binaries or raw decompiled source code in version control.

The build engine accepts the original unmodified APKM bundle, decompiles `base.apk` using `apktool`, applies targeted bytecode (Smali) and `AndroidManifest.xml` patches, rebuilds the application, aligns resources via `zipalign`, and signs the output using Android debug keys.

---

## Features & Patch Modules

MikuPatches includes modular patches that can be applied selectively or all together:

- **PairIP & Store Verification Bypass** (`pairip`)
  Neutralizes PairIP license checks, local installer package verification, and Google Play Store redirection dialogs.

- **Pro & Premium Unlock** (`pro_unlock`)
  Unlocks Pro feature flags, subscription statuses (`isPremium=true`, `isSubscribed=true`), and billing SKU verification checks.

- **Password Mode & Eye Toggle** (`password_mode`)
  Enables password input mode and the end-icon visibility toggle in the main keyboard interface.

- **Clean Interface** (`clean_menu`)
  Removes promotional menu items, subscription upgrade prompts, and feedback actions from application navigation.

- **Default Theme Customization** (`theme_default`)
  Configures default application preferences to use the `BlueGrey` primary palette and `System default` night mode out of the box.

---

## Prerequisites

The build script requires the following tools available in your system path or Android SDK environment:

| Dependency | Purpose | Recommended Installation |
|---|---|---|
| **Python 3.8+** | Runs the build script (`build.py`) | Pre-installed / `brew install python3` |
| **Java JDK 17+** | Required by `apktool` and `apksigner` | `brew install openjdk` |
| **Apktool** | Decompiles and rebuilds Android APKs | `brew install apktool` |
| **Android Build-Tools** | Resource alignment (`zipalign`) and signing (`apksigner`) | Included in Android SDK / Command Line Tools |

The script automatically detects `zipalign` and `apksigner` from system `PATH`, `$ANDROID_HOME`, `$ANDROID_SDK_ROOT`, or Homebrew installation paths.

---

## Usage

### Standard Build

Run the main build script:

```bash
python3 build.py
```

If the original v6.22.0 `.apkm` file is not present in the `input/` folder, the script prompts to open the download page on APKMirror, displays required package details, and waits for the file to be placed into `input/`.

### Interactive Patch Selection

To open the interactive menu and choose specific patches:

```bash
python3 build.py -p
```

---

## Command Line Interface

```
usage: build.py [-h] [-i] [-c] [-y] [-f] [-p]
                [--skip-patches SKIP_PATCHES]
                [--only-patches ONLY_PATCHES]
                [input_file]
```

### Options

| Flag | Description |
|---|---|
| `input_file` | Direct path to input `.apkm`, `.apks`, or `.apk` file |
| `-i`, `--install` | Auto-install the generated base APK onto a connected ADB device |
| `-c`, `--clean` | Wipe `dist/` and temporary `build_staging/` directories |
| `-y`, `--yes` | Auto-confirm prompts (e.g., clearing old build artifacts) |
| `-f`, `--force` | Bypass version verification check |
| `-p`, `--select-patches` | Launch interactive patch selection menu |
| `--skip-patches <list>` | Comma-separated patch module IDs to skip (e.g., `clean_menu,theme_default`) |
| `--only-patches <list>` | Comma-separated patch module IDs to apply (e.g., `pairip,pro_unlock`) |

---

## Output Directory

Upon successful completion, generated packages are stored in `dist/`:

```
dist/
├── base.apk                         # Main patched standalone APK
├── universal.apkm                   # Universal APKM bundle (Split APKs Installer)
├── universal.apks                   # Universal APKS bundle
├── arm64-v8a/
│   ├── arm64-v8a.apkm
│   └── arm64-v8a.apks
├── armeabi-v7a/
│   ├── armeabi-v7a.apkm
│   └── armeabi-v7a.apks
├── x86/
│   ├── x86.apkm
│   └── x86.apks
└── x86_64/
    ├── x86_64.apkm
    └── x86_64.apks
```

---

## Disclaimer

This repository is maintained for educational and research purposes only. All trademarks, registered trademarks, and application assets belong to their respective owners.
