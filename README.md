# MikuPatches

MikuPatches is a build tool that applies custom patches to Bluetooth Keyboard & Mouse (v6.22.0) for Android.

## Features

Running MikuPatches applies five core patch modules:

- Play Store Redirection & PairIP Bypass (`pairip`): Removes the "Install from original source" popup and neutralizes PairIP installer checks.
- Pro & Premium Unlock (`pro_unlock`): Unlocks all paid remote keyboard and mouse features and billing checks.
- Password Mode (`password_mode`): Enables password input mode and the eye visibility toggle in the keyboard.
- Clean Interface (`clean_menu`): Removes upgrade buttons, subscription management items, and feedback actions.
- Improved Default Theme (`theme_default`): Sets default theme preferences to BlueGrey and System Default dark mode.

## Operating System Compatibility

MikuPatches is cross-platform and compatible with major desktop operating systems:

| Operating System | Compatibility Status | Notes |
|---|---|---|
| macOS (Apple Silicon & Intel) | 100% Native | Fully supported via Homebrew |
| Linux (Ubuntu, Debian, Fedora, Arch, etc.) | 100% Native | Fully supported via system package managers |
| Windows via WSL / WSL2 | 100% Native (Recommended) | Fully supported in Ubuntu/Debian on Windows |
| Windows Native (Git Bash / PowerShell / CMD) | Supported | Fallback prompt mode if ANSI/TTY features are limited |

## Requirements & Dependency Installation Guide

### Prerequisites
- Python (3.8 or newer)
- Java JDK (17 or newer, required by Apktool and apksigner)
- Apktool (2.9.0 or newer)
- Android SDK Build-Tools (`zipalign` and `apksigner`)
- Optional: ADB (for auto-installing built APKs onto a connected Android device)

---

### Installation Guide per OS

#### 1. macOS (Apple Silicon & Intel)
Install dependencies using [Homebrew](https://brew.sh/):
```bash
brew install apktool openjdk android-commandlinetools
```

#### 2. Linux (Ubuntu / Debian / Linux Mint)
Install dependencies using `apt`:
```bash
sudo apt update && sudo apt install python3 apktool default-jdk zipalign apksigner
```

#### 3. Linux (Fedora / RHEL)
Install dependencies using `dnf`:
```bash
sudo dnf install python3 apktool java-17-openjdk zipalign android-tools
```

#### 4. Linux (Arch Linux / Manjaro)
Install dependencies using `pacman`:
```bash
sudo pacman -S python android-tools java-environment-openjdk apktool
```

#### 5. Windows via WSL2 (Recommended for Windows Users)
1. Open PowerShell and install WSL: `wsl --install`
2. Open the Ubuntu terminal in WSL and run:
   ```bash
   sudo apt update && sudo apt install python3 apktool default-jdk zipalign apksigner
   ```

#### 6. Windows Native (Git Bash / PowerShell / Command Prompt)
1. Install [Python 3](https://www.python.org/downloads/) (make sure to check "Add Python to PATH").
2. Install [Java JDK 17+](https://adoptium.net/).
3. Install [Android Studio / Command Line Tools](https://developer.android.com/studio) to acquire `zipalign` and `apksigner`.
4. Download [Apktool](https://apktool.org/) and place `apktool.jar` / `apktool.bat` in your system `PATH`.

---

## How to Use per OS

### 1. Clone the Repository
```bash
git clone https://github.com/naitiktuxx/mikupatches.git
cd mikupatches
```

### 2. Run the Build Script

#### On macOS / Linux / WSL2:
```bash
python3 build.py
```
*(Or execute `./build.sh`).*

#### On Windows Native (Git Bash / Command Prompt / PowerShell):
```cmd
python build.py
```

### 3. Provide the Input App Package
- Place your target `v6.22.0` `.apkm`, `.apks`, `.apk`, or `.zip` file inside the `input/` directory.
- If no input file is found, `build.py` will prompt to open the APKMirror download page in your browser and automatically wait for the file to be placed in `input/`.

The script decompiles `base.apk`, verifies the target version, injects selected patches, rebuilds, aligns, signs, and generates output files under `dist/`.

## Input and Output Formats

### Supported Input Formats
- `.apkm` / `.apks` / `.zip`: Complete split APK bundles (recommended).
- `.apk`: Single APK file (fallback metadata and icons from `patches/bundle_fallback/` will be used if `info.json` or `icon.png` are missing).

Target app version must be `6.22.0` (versionCode `255`). To force a build on a different version, pass `-f` or `--force`.

### Build Outputs (`dist/`)
Once complete, all generated files are saved to `dist/`:

- `dist/universal.apkm`: Universal multi-split bundle for installation via bundle installers.
- `dist/universal.apks`: Alternative APKS bundle.
- `dist/base.apk`: Standalone patched primary APK.
- `dist/<arch>/`: Architecture-specific bundles (`arm64-v8a`, `armeabi-v7a`, `x86`, `x86_64`).

## Installation

### Method 1: Installing Bundles on Your Device
1. Transfer `dist/universal.apkm` (or an architecture bundle from `dist/<arch>/`) to your device.
2. Install using [Split APKs Installer (SAI)](https://play.google.com/store/apps/details?id=com.aefyr.sai) or [APKMirror Installer](https://play.google.com/store/apps/details?id=com.apkmirror.helper.prod).

### Method 2: Installing Base APK via ADB
Connect your phone with USB debugging enabled, then either:
- Pass the `-i` flag during build: `python3 build.py -i`
- Select option `[4]` from the interactive menu: `python3 build.py -m`
- Manually run: `adb install -r dist/base.apk`

## Further Reading

- [TECHNICAL.md](TECHNICAL.md): CLI options reference, build pipeline details, patch file mappings, and contributor guide.
- [LEGAL.md](LEGAL.md): Non-affiliation disclaimer, redistribution policy, and trademark notices.
- [LICENSE](LICENSE): Released under the GNU General Public License v3.0.
