# MikuPatches Technical Documentation

This document covers the modular architecture, Python engine lifecycle, toolchain discovery, build pipeline mechanics, command line interface (CLI) reference, and a developer guide for adding custom application patches.

---

## 1. System Architecture & Modular Structure

MikuPatches uses a decoupled, modular Python engine (`mikupatches/` package) with dynamic app discovery, multi format archive extraction, universal app cloning, and multi mode patching (file overlays, in place regex/text transformations, and dynamic hooks).

### Directory Breakdown

```text
mikupatches/
├── __init__.py          # Package entry point & version metadata
├── constants.py         # Workspace paths, default credentials, ABIs, styling
├── models.py            # Strongly typed Dataclasses (AppProfile, PatchGroup, BuildOptions, BuildResult)
├── toolchain.py         # Binary path resolution & preflight checks (apktool, zipalign, apksigner, adb, java)
├── keystore.py          # Keystore manager (auto generation, custom keystores, credentials)
├── extractor.py         # Multi format archive extractor (.apkm, .apks, .xapk, .zip, .apk)
├── apktool.py           # Apktool decompilation & recompilation wrapper with AAPT2 support
├── cloner.py            # Universal App Cloner & dual installation authority patcher
├── patcher.py           # Multi mode patch engine (file overlays, regex rules, dynamic hooks)
├── signer.py            # 4 byte zipalign alignment & apksigner (v1/v2/v3/v4 schemes)
├── bundler.py           # Universal and arch specific split bundle packager (.apkm, .apks, .xapk)
├── adb.py               # ADB device detection, APK install, uninstall, and auto launch
├── engine.py            # BuildEngine pipeline lifecycle orchestrator
├── cli.py               # Argument parser with categorized option groups
└── ui/
    ├── console.py       # Terminal console logging, status badges, banners, tables
    └── menu.py          # Interactive TTY menus with arrow key navigation & checkboxes
```

```text
patches/
├── com.truecaller/
│   ├── config.json         # Package metadata, version target (v26.31.5), and no_res flag
│   ├── patch_groups.json   # Patch module definitions & file mappings
│   └── base/               # Smali overrides for Truecaller
├── io.appground.blek/
│   ├── config.json         # Package metadata & version target (v6.22.0)
│   ├── patch_groups.json   # Patch module definitions & file mappings
│   └── base/               # Smali & AndroidManifest.xml overrides for Blek
└── bundle_fallback/        # Default metadata (info.json, icon.png) for standalone APKs
```

---

## 2. Pipeline Execution Flow

```text
                          ┌───────────────────────────────────────┐
                          │ Input File (.apkm / .apks / .xapk)    │
                          └───────────────────┬───────────────────┘
                                              │
                                              ▼
                             [1. Extract Archive to Staging]
                                              │
                                              ▼
                             [2. Decompile base.apk via Apktool]
                                              │
                                              ▼
                             [3. Match App Profile & Check Version]
                                              │
                                              ▼
                             [4. Apply Overlays / Regex / Hooks]
                                              │
                                              ▼
                             [5. Universal App Clone (If Enabled)]
                                              │
                                              ▼
                             [6. Recompile base.apk via Apktool]
                                              │
                                              ▼
                             [7. Zipalign & Sign with apksigner]
                                              │
                                              ▼
                             [8. Package Universal & Arch Splits]
                                              │
                                              ▼
                             [9. Optional ADB Deploy & Auto Launch]
```

### Execution Lifecycle

1. **Archive Extraction (`extractor.py`)**: Unpacks `.apkm`, `.apks`, `.xapk`, `.zip`, or standalone `.apk` files into `build_staging/extracted/`.
2. **Decompilation (`apktool.py`)**: Runs `apktool d` to unpack `base.apk` into Smali bytecode and resources.
3. **App Discovery & Version Check (`patcher.py`)**: Inspects `AndroidManifest.xml` to match known app profiles in `patches/`. Verifies `versionName` against `config.json` (bypassed with `--force`).
4. **Patch Injection (`patcher.py`)**: Injects file overlays, executes regex replacement rules, and runs dynamic hooks defined in `patch_groups.json`.
5. **App Cloning (`cloner.py`)**: *(Optional via `--clone`)* Expands relative manifest components, renames root package to `<pkg>.tux`, updates custom permissions, isolates ContentProvider authorities, and rebinds Smali references.
6. **Recompilation (`apktool.py`)**: Rebuilds the modified staging tree into an unaligned APK using Apktool (with optional AAPT2 backend).
7. **Zipalign & Signing (`signer.py`, `keystore.py`)**: Aligns APK on 4 byte boundaries using `zipalign`, then signs with `apksigner` using `debug.keystore` (or custom keystore) across v1, v2, v3, and v4 schemes.
8. **Bundle Packaging (`bundler.py`)**: Generates universal `.apkm` and `.apks` bundles containing all splits, as well as architecture specific bundles for `arm64-v8a`, `armeabi-v7a`, `x86`, and `x86_64`.
9. **ADB Deployment (`adb.py`)**: *(Optional via `-I`)* Detects connected Android devices, pushes patched `base.apk`, and launches the main activity.

---

## 3. Command Line Interface (CLI) Reference

```text
usage: build.py [-h] [-m] [-y] [-v] [-q] [--no-color] [--dry-run] [--list-apps]
                [--list-patches] [-i CUSTOM_INPUT] [-a TARGET_APP] [-f]
                [--target-version TARGET_VERSION] [-p]
                [--only-patches ONLY_PATCHES] [--skip-patches SKIP_PATCHES]
                [--clone] [--clone-suffix CLONE_SUFFIX] [--clone-pkg CLONE_PKG]
                [--use-aapt2] [--no-src] [--no-res] [--apktool-args APKTOOL_ARGS]
                [--framework-dir FRAMEWORK_DIR] [--staging-dir STAGING_DIR]
                [--keep-staging] [-o OUTPUT_DIR] [-O OUTPUT_FORMAT]
                [--arch ARCHES] [--output-name OUTPUT_NAME] [-c]
                [--keystore KEYSTORE] [--ks-pass KS_PASS] [--ks-alias KS_ALIAS]
                [--key-pass KEY_PASS] [--v1-only] [--v2-only] [--v3-only]
                [--no-v3] [-I] [-d DEVICE] [--launch] [--uninstall]
                [input_file]
```

### Option Groups

#### 1. General & Workflow Options
| Flag | Description |
|---|---|
| `-m`, `--menu` | Open interactive main TUI menu |
| `-y`, `--yes` | Non interactive mode (automatically confirm all prompts) |
| `-v`, `--verbose` | Enable verbose debug output |
| `-q`, `--quiet` | Minimal console output |
| `--no-color` | Disable ANSI terminal colors (for CI/logs) |
| `--dry-run` | Simulate extraction and patch application without compiling or signing |
| `--list-apps` | List all supported applications, target versions, and APKMirror download URLs |
| `--list-patches` | List all available patch modules for the target application |

#### 2. Input & Target Options
| Flag | Description |
|---|---|
| `input_file` | Positional path to input `.apkm`, `.apks`, `.xapk`, `.zip`, or `.apk` file |
| `-i`, `--input <path>` | Explicit path to input package or directory |
| `-a`, `--app <pkg>` | Specify target package name (e.g. `io.appground.blek` or `com.truecaller`) |
| `-f`, `--force` | Bypass version mismatch verification and force patch execution |
| `--target-version <ver>` | Override expected target version name string |

#### 3. Patch Selection & App Cloning
| Flag | Description |
|---|---|
| `-p`, `--select-patches` | Open interactive patch checklist before building |
| `--only-patches <IDs>` | Comma-separated list of patch module IDs to apply (disables all others) |
| `--skip-patches <IDs>` | Comma-separated list of patch module IDs to skip |
| `--clone` | Enable App Clone mode for parallel dual installation |
| `--clone-suffix <suffix>` | Custom suffix for cloned package (default: `.tux`) |
| `--clone-pkg <pkg>` | Explicit custom package name for the cloned app |

#### 4. Apktool & Build Options
| Flag | Description |
|---|---|
| `--use-aapt2` | Use AAPT2 backend for Apktool recompilation |
| `--no-src` | Do not decompile Smali sources (for resource only patches) |
| `--no-res` | Do not decompile resources (keeps resources.arsc intact) |
| `--apktool-args <args>` | Pass custom arguments directly to Apktool |
| `--framework-dir <path>` | Custom framework directory (default: `framework/`) |
| `--staging-dir <path>` | Custom build staging directory (default: `build_staging/`) |
| `--keep-staging`, `--debug` | Preserve staging directory upon completion or failure for debugging |

#### 5. Output & Architecture Options
| Flag | Description |
|---|---|
| `-o`, `--output-dir <path>` | Directory to save generated outputs (default: `dist/`) |
| `-O`, `--output-format <fmt>` | Output formats (`all`, `apk`, `apkm`, `apks`, `xapk`, `splits`) |
| `--arch <ABIs>` | Target architectures (`arm64-v8a`, `armeabi-v7a`, `x86`, `x86_64`) |
| `--output-name <name>` | Custom prefix name for generated output files |
| `-c`, `--clean` | Remove `dist/` and `build_staging/` directories and exit |

#### 6. Signing & Keystore Options
| Flag | Description |
|---|---|
| `--keystore <path>` | Path to signing keystore (default: `debug.keystore`) |
| `--ks-pass <pass>` | Keystore password (default: `android`) |
| `--ks-alias <alias>` | Key alias (default: `androiddebugkey`) |
| `--key-pass <pass>` | Key password (default: `android`) |
| `--v1-only` | Sign using only JAR/v1 signature scheme |
| `--v2-only` | Sign using only APK Signature Scheme v2 |
| `--v3-only` | Sign using only APK Signature Scheme v3 |
| `--no-v3` | Disable APK Signature Scheme v3 |

#### 7. ADB Device Options
| Flag | Description |
|---|---|
| `-I`, `--install` | Auto install built base APK onto connected ADB device |
| `-d`, `--device <serial>` | Specific ADB device serial to target |
| `--launch` | Automatically launch patched app after ADB installation |
| `--uninstall` | Uninstall existing package before installing |

---

## 4. Supported Applications & Patch Breakdown

### 1. Bluetooth Keyboard & Mouse (`io.appground.blek` v6.22.0)

| Patch ID | Name | Description | Key Files Modified |
|---|---|---|---|
| `pairip` | Bypass License & Play Store Check | Neutralizes PairIP anti piracy checks, license verification, and Play Store redirection | `AndroidManifest.xml`<br>`smali/com/pairip/licensecheck/LicenseClient.smali`<br>`smali/com/pairip/licensecheck/LicenseContentProvider.smali`<br>`smali/com/pairip/application/Application.smali`<br>`smali/eu5.smali` |
| `pro_unlock` | Unlock Pro & Premium Features | Sets `isPremium=true` and `isSubscribed=true`, bypassing in app billing SKU verification | `smali/fj3.smali`<br>`smali/ez.smali`<br>`smali/uy.smali` |
| `password_mode` | Unlock Password Mode | Enables keyboard password visibility toggling and EndIcon controls | `smali/uv.smali` |
| `clean_menu` | Clean Interface | Removes upgrade banners, subscription prompts, feedback dialogs, and unused menu items | `smali/jh0.smali`<br>`smali/m2.smali`<br>`smali/ug5.smali` |
| `theme_default` | Default BlueGrey & System Theme | Sets default theme to BlueGrey accent and System Dark/Light theme | `smali/b64.smali`<br>`smali/c64.smali`<br>`smali/wv3.smali`<br>`smali/io/appground/blek/MainActivity.smali` |

### 2. Truecaller (`com.truecaller` v26.31.5)

| Patch ID | Name | Description | Key Files Modified |
|---|---|---|---|
| `remove_ads` | Remove Ads & Promotional Banners | Disables all ad networks, interstitial dialogs, banner slots, and enables No Ads entitlement | `smali_classes6/ga2/j.smali`<br>`smali_classes5/z90/c.smali`<br>`smali_classes6/com/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig.smali`<br>`smali_classes5/com/truecaller/ads/mutliad/util/MultiAdRemoteConfigAutoScroll.smali`<br>`smali_classes5/com/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote.smali` |

#### Architectural Breakdown:
1. **Entitlement Layer (`ga2/j.smali`)**: Overrides `g()Z` to return `true` (`const/4 v0, 0x1`), notifying all UI fragments (search results, contact details, after call screen, and messaging tabs) that the `NO_ADS` feature is active.
2. **Core Ad Engine Deactivation (`z90/c.smali`)**: Overrides `shouldShowAds()` and `canShowAd(config)` to return `false` (`const/4 v0, 0x0`), preventing network ad unit fetching, webview allocations, video ad loading, and telemetry.
3. **SMS & Insights Notification Ads (`AdsMsgIdConfig.smali`)**: Neutralizes `isAdEnabled()` to return `false`.
4. **Multi Ad AutoScroll Remote Engine (`MultiAdRemoteConfigAutoScroll.smali`, `MultiAdAutoScrollRemote.smali`)**: Overrides `isEnabled()` to return `false`.
5. **Binary Resource Preservation (`no_res: true`)**: Truecaller uses split dependent AndroidX `<bitmap>` drawables (such as voice notes `RecordView`). By configuring `"no_res": true` in `config.json`, Apktool leaves `resources.arsc` and all binary XML files 100% untouched, preventing resource corruption while allowing instant Smali bytecode patching.

---

## 5. Universal App Cloner Mechanics (`cloner.py`)

The App Cloner enables parallel dual installation alongside original applications through the following steps:

1. **Relative Component Expansion**: Scans `AndroidManifest.xml` and expands relative component declarations (e.g. `android:name=".MainActivity"`) into fully qualified class names (`android:name="io.appground.blek.MainActivity"`).
2. **Package Name Transformation**: Modifies the root `<manifest package="...">` attribute to `<original_pkg>.tux` (or custom package name).
3. **Custom Permission Isolation**: Updates `<permission>`, `<uses-permission>`, and `<permission-group>` declarations containing the original package prefix to prevent permission collisions with the official app.
4. **ContentProvider Authority Isolation**: Replaces all `android:authorities="..."` strings with cloned equivalents, preventing Android package manager `INSTALL_FAILED_CONFLICTING_PROVIDER` errors.
5. **Split Requirement Neutralization**: Strips Google Play split APK metadata tags (`com.android.vending.splits`, `isSplitRequired="false"`) so the cloned APK installs as a standalone package without missing split failures.
6. **Bytecode Authority Update**: Walks all Smali files and updates hardcoded provider authority strings (e.g. `"io.appground.blek.fileprovider"` -> `"io.appground.blek.tux.fileprovider"`).

---

## 6. Developer Guide: Adding Custom Applications & Patches

### Step 1: Create Application Directory
Create a folder inside `patches/` named after the target application's package name:
```bash
mkdir -p patches/com.example.app/base
```

### Step 2: Define `config.json`
Create `patches/com.example.app/config.json`:
```json
{
  "package_name": "com.example.app",
  "app_title": "Example App",
  "target_version_name": "1.0.0",
  "target_version_code": "100",
  "main_activity": "com.example.app.MainActivity",
  "no_res": false,
  "supported_arches": [
    "arm64-v8a",
    "armeabi-v7a"
  ],
  "apkmirror_url": "https://www.apkmirror.com/apk/example/app/"
}
```
*(Note: Set `"no_res": true` if all patches are Smali only to preserve binary XML resources and speed up builds).*

### Step 3: Define `patch_groups.json`
Create `patches/com.example.app/patch_groups.json` specifying patch modules, overlay files, and regex replacement rules:
```json
[
  {
    "id": "unlock_pro",
    "name": "Unlock Pro Features",
    "desc": "Unlocks subscription and pro capabilities",
    "default": true,
    "files": {
      "smali/com/example/app/Billing.smali": "Force isPro return true"
    },
    "regex_rules": [
      {
        "target_file": "smali/com/example/app/Config.smali",
        "pattern": "const/4 v0, 0x0",
        "replacement": "const/4 v0, 0x1",
        "desc": "Enable premium feature flag"
      }
    ]
  }
]
```

### Step 4: Place Overlay Files
Place modified Smali or XML files into `patches/com.example.app/base/` replicating their relative path in the decompiled APK.

### Step 5: Test & Validate
Verify your configuration using the built in diagnostic and dry run tools:
```bash
# List supported apps
python3 build.py --list-apps

# List available patches
python3 build.py --list-patches -a com.example.app

# Simulate patch application
python3 build.py input/app.apkm --dry-run
```

---

## 7. Testing & Quality Assurance

MikuPatches includes a unit test suite located in `tests/test_engine.py`.

To run all automated tests:
```bash
python3 -m unittest discover tests
```

Continuous integration is handled via GitHub Actions in `.github/workflows/release.yml`, automating source archive creation (`.tar.gz` and `.zip`) and release packaging on tagged commits.
