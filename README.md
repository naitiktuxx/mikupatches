# MikuPatches

MikuPatches is a modular multi-app patch build engine for Android applications. It automatically detects input packages, supports selective patch toggling, enables dual-install app cloning, and builds signed release APKs and split bundles.

---

## Supported Applications & Universal Patches

### 1. Bluetooth Keyboard & Mouse (`io.appground.blek` v6.22.0)
- **Play Store Redirection & PairIP License Bypass** (`pairip`): Neutralizes PairIP anti-piracy checks, license client verification, and Play Store redirection dialogs.
- **Pro & Premium Features Unlock** (`pro_unlock`): Activates lifetime subscription, unlocks all Pro controls and features.
- **Password Mode Unlock** (`password_mode`): Enables keyboard password visibility toggling.
- **Clean Interface** (`clean_menu`): Removes upgrade banners, subscription prompts, feedback dialogs, and unused menu actions.
- **BlueGrey & System Theme Defaults** (`theme_default`): Sets BlueGrey accent color and system Dark/Light theme as default.

### 2. Truecaller (`com.truecaller` v26.30.5)
- **Ad-Free Experience** (`remove_ads`): Blocks all banner, interstitial, native, and popup ad networks (AdMob, GAM, Facebook, InMobi, Vungle).
- **Gold Caller ID & Badge Unlock** (`gold_theme_unlock`): Activates Gold membership tier, metallic call screen gradient, and gold caller badge while removing upgrade lock labels.

### 3. Universal Patches (All Applications)
- **App Clone & Dual Installation** (`clone_dual_install` / `--clone`): Renames package name with `.tux` suffix (e.g., `io.appground.blek.tux`, `com.truecaller.tux`), updates component permissions, and isolates ContentProvider authorities so you can install and run the patched app side-by-side with the official app without uninstalling.

---

## Operating System Compatibility

MikuPatches is cross-platform and fully supported across major desktop operating systems:

| Operating System | Compatibility Status | Recommended Environment |
|---|---|---|
| **Linux (Ubuntu, Debian, Mint)** | 100% Native | System package manager (`apt`) |
| **Linux (Fedora, RHEL, CentOS)** | 100% Native | System package manager (`dnf`) |
| **Linux (Arch Linux, Manjaro)** | 100% Native | Official repositories (`pacman`) |
| **Linux (openSUSE, Alpine)** | 100% Native | System package manager (`zypper` / `apk`) |
| **macOS (Apple Silicon & Intel)** | 100% Native | Homebrew (`brew`) |
| **Windows via WSL / WSL2** | 100% Native (Recommended) | Ubuntu / Debian on WSL2 |
| **Windows Native (PowerShell / CMD / Git Bash)** | Supported | JDK 17+, Apktool, and Android SDK Build-Tools on PATH |

---

## Requirements & Installation Guide

### Prerequisites
- **Python** (3.8 or newer)
- **Java JDK** (17 or newer, required by Apktool and apksigner)
- **Apktool** (2.9.0 or newer)
- **Android SDK Build-Tools** (`zipalign` and `apksigner`)
- *Optional:* **ADB** (`android-tools`) for auto-installing onto a connected Android device

---

### Quick Installation per Operating System

#### macOS (Homebrew)
```bash
brew install python apktool openjdk android-commandlinetools
```

#### Ubuntu / Debian / Linux Mint / WSL2
```bash
sudo apt update && sudo apt install -y python3 apktool default-jdk zipalign apksigner android-tools-adb
```

#### Fedora / RHEL / CentOS
```bash
sudo dnf install -y python3 apktool java-17-openjdk-devel zipalign android-tools
```

#### Arch Linux / Manjaro
```bash
sudo pacman -S --needed python apktool java-environment-openjdk android-tools
```

#### openSUSE (Tumbleweed / Leap)
```bash
sudo zypper install -y python3 apktool java-17-openjdk-devel android-tools
```

#### Alpine Linux
```bash
sudo apk add python3 openjdk17-jre apktool android-tools
```

#### Windows (Native via Winget / Scoop / Chocolatey)
```powershell
# Using Winget:
winget install Python.Python.3.12
winget install Microsoft.OpenJDK.17

# Using Scoop:
scoop install python openjdk apktool adb
```

---

## How to Use

### 1. Interactive Menu Mode
Simply launch the build script in your terminal:
```bash
python3 build.py
```
*(Or execute `./build.sh` on Unix/macOS/Linux).*

The interactive TUI provides guided options:
- **`[1] (Recommended) Build App with All Patches`**: Auto-detects input file or prompts app selection, asks if you want to enable App Clone (`[y/N]`), and builds with all patches enabled.
- **`[2] Custom Patch Selection & Build`**: Lets you choose the target app and opens an interactive checkbox menu to toggle individual patch modules on or off.
- **`[3] Architecture Filter & Build`**: Filter target ABI (`arm64-v8a`, `armeabi-v7a`, `x86`, `x86_64`) to build lightweight packages.
- **`[4] Install Built App on Phone`**: Push patched APK directly to a connected Android phone via ADB.
- **`[5] Clean Build Files`**: Clean `dist/` and temporary `build_staging/` directories.
- **`[6] Check System Requirements`**: Run diagnostic checks for all required toolchain binaries (`apktool`, `zipalign`, `apksigner`, `adb`, `java`).
- **`[7] Help & CLI Reference`**: View all CLI arguments and usage instructions.

---

### 2. Command Line Interface (CLI) Examples

#### Build specific app non-interactively:
```bash
python3 build.py -a com.truecaller -y
```

#### Build with App Clone enabled (dual install alongside original app):
```bash
python3 build.py input/app.apkm --clone -y
```

#### Build for a specific architecture only (e.g. ARM64) and auto-install via ADB:
```bash
python3 build.py input/blek.apkm --arch arm64-v8a -I --launch
```

#### Apply specific patch modules only:
```bash
python3 build.py --only-patches pairip,pro_unlock
```

#### Simulate build and verify patch targets without compiling (Dry-Run):
```bash
python3 build.py --dry-run
```

#### List all supported apps and patch modules:
```bash
python3 build.py --list-apps
python3 build.py --list-patches -a com.truecaller
```

#### Clean build outputs and staging files:
```bash
python3 build.py --clean
```

---

## Input & Output Formats

### Supported Input Formats
Place your input file into `input/` or pass its path as a CLI argument:
- **`.apkm` / `.apks` / `.xapk` / `.zip`**: Complete split APK bundles (recommended).
- **`.apk`**: Single standalone APK file (fallback bundle metadata will be automatically generated).

### Build Outputs (`dist/`)
All generated release artifacts are saved in the `dist/` directory:
- `dist/base.apk`: Standalone patched primary APK.
- `dist/universal.apkm`: Universal multi-split bundle for bundle installers.
- `dist/universal.apks`: Alternative APKS format bundle.
- `dist/<arch>/<arch>.apkm`: Architecture-specific bundles (e.g., `dist/arm64-v8a/arm64-v8a.apkm`).

---

## Installing on Android Devices

### Method 1: Installing `.apkm` Bundles
1. Transfer `dist/universal.apkm` (or `dist/arm64-v8a/arm64-v8a.apkm`) to your Android device.
2. Install via [APKMirror Installer](https://play.google.com/store/apps/details?id=com.apkmirror.helper.prod) or [SAI (Split APKs Installer)](https://play.google.com/store/apps/details?id=com.aefyr.sai).

### Method 2: Installing via ADB
Connect your Android phone with USB debugging enabled, then run:
```bash
python3 build.py -I --launch
```
Or manually:
```bash
adb install -r dist/base.apk
```

---

## Further Reading

- [TECHNICAL.md](TECHNICAL.md): Architecture details, modular engine breakdown, full CLI flags reference, and guide for adding new apps/patches.
- [LEGAL.md](LEGAL.md): Non-affiliation disclaimer, redistribution notices, and educational use policies.
- [LICENSE](LICENSE): GNU General Public License v3.0.
