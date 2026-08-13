# mikupatches

Modular multi-app patch build engine for Android applications. It automatically detects input packages, supports selective patch toggling, enables dual-install app cloning, and builds signed release APKs and split bundles.

---

## ⚙️ Patch Details

> [v6.22.0](https://github.com/naitiktuxx/mikupatches/releases/latest) · `main` · 9 patches total

<details>
<summary>📦 <b>Bluetooth Keyboard & Mouse</b> · 6 patches</summary>

<br>

#### 🎯 Supported versions:

```
6.22.0
```

| 💊 Patch | 📜 Description | ⚙️ Options |
|:---|:---|:---|
| [Bypass License & Play Store Check](patches/io.appground.blek/base) | Neutralizes PairIP anti-piracy checks, license client verification, and Play Store redirection dialogs. | |
| [Unlock Pro & Premium Features](patches/io.appground.blek/base) | Unlocks all Pro features and lifetime subscription (`isPremium=true`, `isSubscribed=true`). | |
| [Unlock Password Mode](patches/io.appground.blek/base) | Enables keyboard password visibility toggle and EndIcon controls. | |
| [Clean Interface](patches/io.appground.blek/base) | Removes upgrade banners, subscription prompts, feedback dialogs, and unused menu actions. | |
| [Default BlueGrey & System Theme](patches/io.appground.blek/base) | Sets BlueGrey accent color and System Dark/Light theme as default. | |
| [App Clone (Dual Install)](mikupatches/cloner.py) | Allows installing alongside the original app by renaming package name to `io.appground.blek.tux` and isolating ContentProvider authorities. | • Clone suffix<br>• Custom package |

</details>

<details>
<summary>📦 <b>Truecaller</b> · 3 patches</summary>

<br>

#### 🎯 Supported versions:

```
26.30.5
```

| 💊 Patch | 📜 Description | ⚙️ Options |
|:---|:---|:---|
| [Ad-Free Experience](patches/com.truecaller/base) | Blocks all banner, interstitial, native, and popup ad networks (AdMob, GAM, Facebook, InMobi, Vungle). | |
| [Unlock Gold Caller ID & Badge](patches/com.truecaller/base) | Unlocks Gold membership tier, metallic incoming call screen gradient, and gold badge while removing upgrade locks. | |
| [App Clone (Dual Install)](mikupatches/cloner.py) | Allows installing alongside the original app by renaming package name to `com.truecaller.tux` and isolating ContentProvider authorities. | • Clone suffix<br>• Custom package |

</details>

---

## 💻 Operating System Compatibility

| Operating System | Compatibility Status | Recommended Environment |
|---|---|---|
| **Linux (Ubuntu, Debian, Mint)** | 100% Native | System package manager (`apt`) |
| **Linux (Fedora, RHEL, CentOS)** | 100% Native | System package manager (`dnf`) |
| **Linux (Arch Linux, Manjaro)** | 100% Native | Official repositories (`pacman`) |
| **Linux (openSUSE, Alpine)** | 100% Native | System package manager (`zypper` / `apk`) |
| **macOS (Apple Silicon & Intel)** | 100% Native | Homebrew (`brew`) |
| **Windows via WSL / WSL2** | 100% Native (Recommended) | Ubuntu / Debian on WSL2 |
| **Windows Native (PowerShell / CMD)** | Supported | JDK 17+, Apktool, and Android SDK on PATH |

---

## 📦 Requirements & Installation Guide

### Prerequisites
- **Python** (3.8 or newer)
- **Java JDK** (17 or newer, required by Apktool and apksigner)
- **Apktool** (2.9.0 or newer)
- **Android SDK Build-Tools** (`zipalign` and `apksigner`)
- *Optional:* **ADB** (`android-tools`) for auto-installing onto a connected Android device

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

#### Windows (Native via Winget / Scoop)
```powershell
# Using Winget:
winget install Python.Python.3.12 Microsoft.OpenJDK.17

# Using Scoop:
scoop install python openjdk apktool adb
```

---

## 🛠️ Building

### 1. Interactive Menu Mode
Simply launch the build script in your terminal:
```bash
python3 build.py
```
*(Or run `./build.sh` on Unix/macOS/Linux).*

The interactive TUI provides guided options:
- **`[1] (Recommended) Build App with All Patches`**: Auto-detects input file or prompts app selection, asks if you want to enable App Clone (`[y/N]`), and builds with all patches enabled.
- **`[2] Custom Patch Selection & Build`**: Choose target app and toggle individual patch modules on or off with an interactive checkbox menu.
- **`[3] Architecture Filter & Build`**: Filter target ABI (`arm64-v8a`, `armeabi-v7a`, `x86`, `x86_64`) to build lightweight packages.
- **`[4] Install Built App on Phone`**: Push patched APK directly to a connected Android phone via ADB.
- **`[5] Clean Build Files`**: Clean `dist/` and temporary `build_staging/` directories.
- **`[6] Check System Requirements`**: Run diagnostic checks for all required toolchain binaries.
- **`[7] Help & CLI Reference`**: View all CLI flags and usage instructions.

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

---

## 📥 Input & Output Formats

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

## 📱 Installing on Android Devices

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

## 📖 Further Reading

- [TECHNICAL.md](TECHNICAL.md): Architecture details, modular engine breakdown, full CLI flags reference, and guide for adding new apps/patches.
- [LEGAL.md](LEGAL.md): Non-affiliation disclaimer, redistribution notices, and educational use policies.
- [LICENSE](LICENSE): GNU General Public License v3.0.

---

## ✨ Stargazers over time

[![Stargazers over time](https://starchart.cc/naitiktuxx/mikupatches.svg?variant=adaptive)](https://starchart.cc/naitiktuxx/mikupatches)
