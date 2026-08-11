# MikuPatches - Technical Documentation

This document covers the technical architecture, patch pipeline mechanics, command line interface reference, and instructions for contributing custom patches.

---

## 1. System Architecture & Workflow

The MikuPatches build engine operates on a dynamic patch injection model. Instead of tracking decompiled application source code in version control, patches are stored as standalone Bytecode (`.smali`) and Manifest (`AndroidManifest.xml`) diffs in `patches/base/`.

```
                  ┌─────────────────────────────────────┐
                  │ Original v6.22.0 APKM (input/)      │
                  └──────────────────┬──────────────────┘
                                     │
                                     ▼
                   [Decompile base.apk via apktool]
                                     │
                                     ▼
                     [Apply patches/base/ smali]
                                     │
                                     ▼
                    [Recompile, zipalign & apksigner]
                                     │
                                     ▼
                  ┌─────────────────────────────────────┐
                  │ Output Bundles & APKs (dist/)       │
                  └─────────────────────────────────────┘
```

### Pipeline Execution Steps:

1. **Extraction**: Unpacks the input `.apkm` / `.apks` bundle into `build_staging/bundle/`.
2. **Decompilation**: Uses `apktool d` to decompile `base.apk` into Smali bytecode and resources in `build_staging/base/`.
3. **Version Check**: Inspects `versionName` and `versionCode` in `apktool.yml` to verify compatibility with target version `6.22.0` (code `255`).
4. **Patch Injection**: Copies selected patch files from `patches/base/` over the decompiled directory structure.
5. **Recompilation**: Runs `apktool b` to produce an unaligned APK (`raw_base.apk`).
6. **Alignment & Signing**: Aligns resources with `zipalign -p -f -v 4` and signs using `apksigner` with `debug.keystore`.
7. **Bundle Packaging**: Re-assembles architecture split APKs and generates Universal `.apkm` and `.apks` bundles in `dist/`.

---

## 2. Toolchain & Prerequisites

The build script auto-detects required binaries from system `PATH`, `$ANDROID_HOME`, `$ANDROID_SDK_ROOT`, or Homebrew installation paths.

| Tool | Min Version | Function |
|---|---|---|
| **Python** | 3.8+ | Executes `build.py` orchestration script |
| **Java JDK** | 17+ | Required by `apktool` and `apksigner` |
| **Apktool** | 2.9.0+ | Handles APK decompilation and rebuilding |
| **zipalign** | 34.0.0+ | Aligns uncompressed APK data on 4-byte boundaries |
| **apksigner** | 34.0.0+ | Signs APKs with v1, v2, and v3 signature schemes |

---

## 3. CLI Options Reference

```
usage: build.py [-h] [-i] [-c] [-y] [-f] [-p]
                [--skip-patches SKIP_PATCHES]
                [--only-patches ONLY_PATCHES]
                [input_file]
```

| Flag | Argument | Description |
|---|---|---|
| `input_file` | `[path]` | Direct file path to input `.apkm`, `.apks`, or `.apk` |
| `-i` | `--install` | Auto-install generated `base.apk` onto connected ADB device |
| `-c` | `--clean` | Delete `dist/` and `build_staging/` build directories |
| `-y` | `--yes` | Non-interactive mode (auto-confirm prompts) |
| `-f` | `--force` | Bypass version verification check |
| `-p` | `--select-patches` | Open interactive patch selection menu |
| `--skip-patches` | `<ids>` | Comma-separated patch module IDs to skip |
| `--only-patches` | `<ids>` | Comma-separated patch module IDs to apply |

---

## 4. Patch Module Groupings

Patches are organized into 5 logical modules in `build.py`:

### `pairip` (Play Store Redirection & PairIP License Bypass)
- `AndroidManifest.xml`: Changes application entry class to `io.appground.blek.MainApp`.
- `smali/com/pairip/licensecheck/LicenseClient.smali`: Bypasses local installer package checks.
- `smali/com/pairip/licensecheck/LicenseContentProvider.smali`: Neutralizes license initialization.
- `smali/com/pairip/application/Application.smali`: NOPs PairIP runtime checks.
- `smali/eu5.smali`: Bypasses `MainActivity` store redirection dialog.

### `pro_unlock` (Pro & Premium Features Unlock)
- `smali/fj3.smali`: Forces `PremiumStatus` constructor (`isPremium=true`, `isSubscribed=true`).
- `smali/ez.smali`: Forces `e()Z` premium check to return `true`.
- `smali/uy.smali`: Forces `h(String)Z` billing SKU check to return `true`.

### `password_mode` (Password Mode & Eye Toggle Unlock)
- `smali/uv.smali`: Unlocks password mode and eye icon toggle in keyboard view.

### `clean_menu` (Clean UI & Menu Items Removal)
- `smali/jh0.smali`: Removes Compose menu items and fixes slot table layout crash.
- `smali/m2.smali`: Removes Pro upgrade and subscription menu actions.
- `smali/ug5.smali`: Removes subscription management and feedback menu actions.

### `theme_default` (Default Theme: BlueGrey & System Default)
- `smali/b64.smali`: Configures default theme preference options in Settings screen.
- `smali/c64.smali`: Sets default preference values for theme selections.
- `smali/wv3.smali`: Sets SharedPreferences defaults to `blue_grey` and `system`.
- `smali/io/appground/blek/MainActivity.smali`: Configures `onCreate()` theme initialization defaults.

---

## 5. Adding Custom Patches

To add a new patch to the pipeline:

1. Decompile `base.apk` into a scratch folder:
   ```bash
   apktool d base.apk -o scratch/base
   ```
2. Make your edits in `scratch/base/smali/...` or `AndroidManifest.xml`.
3. Copy only the modified files into `patches/base/`, maintaining their relative folder structure.
4. Register the new file mappings in `PATCH_GROUPS` inside `build.py`.
5. Test the build using `python3 build.py`.
