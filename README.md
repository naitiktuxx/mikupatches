# mikupatches

Modular multi app patch build engine for Android applications. It automatically detects input packages, supports selective patch toggling, enables dual-install app cloning, and builds signed release APKs and split bundles.

---

## ⚙️ Patch Details

> [v6.22.0](https://github.com/naitiktuxx/mikupatches/releases/latest) · `main` · 8 patches across 2 applications

<details>
<summary>📦 <b>Truecaller: Trusted Caller ID</b> · 2 patches</summary>

<br>

#### 🎯 Supported versions:

```
26.31.5
```

| 💊 Patch | 📜 Description | ⚙️ Options |
|:---|:---|:---|
| [Remove Ads & Promotional Banners](patches/com.truecaller/patch_groups.json) | Completely removes in app ads, disables AdsRouter engine (`shouldShowAds=false`), blocks SMS/Insights notification ads, neutralizes MultiAd autoscroll, and enables the official `NO_ADS` feature entitlement without breaking XML drawables. | |
| [App Clone (Dual Install)](mikupatches/cloner.py) | Allows installing alongside the official Truecaller app by renaming package name to `com.truecaller.tux` and isolating ContentProvider authorities. | • Clone suffix<br>• Custom package |

</details>

<details>
<summary>📦 <b>Bluetooth Keyboard & Mouse</b> · 6 patches</summary>

<br>

#### 🎯 Supported versions:

```
6.22.0
```

| 💊 Patch | 📜 Description | ⚙️ Options |
|:---|:---|:---|
| [Bypass License & Play Store Check](patches/io.appground.blek/base) | Neutralizes PairIP anti piracy checks, license client verification, and Play Store redirection dialogs. | |
| [Unlock Pro & Premium Features](patches/io.appground.blek/base) | Unlocks all Pro features and lifetime subscription (`isPremium=true`, `isSubscribed=true`). | |
| [Unlock Password Mode](patches/io.appground.blek/base) | Enables keyboard password visibility toggle and EndIcon controls. | |
| [Clean Interface](patches/io.appground.blek/base) | Removes upgrade banners, subscription prompts, feedback dialogs, and unused menu actions. | |
| [Default BlueGrey & System Theme](patches/io.appground.blek/base) | Sets BlueGrey accent color and System Dark/Light theme as default. | |
| [App Clone (Dual Install)](mikupatches/cloner.py) | Allows installing alongside the original app by renaming package name to `io.appground.blek.tux` and isolating ContentProvider authorities. | • Clone suffix<br>• Custom package |

</details>

---

## Docker Setup (Recommended)

Running with Docker is the easiest method because you do not need to install Java, Apktool, or Android SDK build tools on your machine.

### Folder Mapping

- `input/`: Put your downloaded `.apk` or `.apkm` files here.
- `dist/`: Your built and signed APK files will be saved here automatically.

---

### Quick Start

#### 1. Add your app package
Copy your target `.apk` or `.apkm` file into the `input/` folder.

#### 2. Build the image (run once)
```bash
docker build -t mikupatches .
```

#### 3. Run the patcher

**Using Docker Compose:**
```bash
docker compose run --rm mikupatches
```

**Using Docker directly:**

* macOS / Linux:
```bash
docker run --rm -it \
  -v "$(pwd)/input:/app/input" \
  -v "$(pwd)/dist:/app/dist" \
  mikupatches
```

* Windows (PowerShell):
```powershell
docker run --rm -it `
  -v "${PWD}/input:/app/input" `
  -v "${PWD}/dist:/app/dist" `
  mikupatches
```

---

### CLI Mode (Direct Build via Docker)

You can pass command line flags directly to run builds without the interactive menu:

```bash
# Build Truecaller with all default patches
docker compose run --rm mikupatches --app com.truecaller --all

# Build Bluetooth Keyboard & Mouse with App Clone enabled
docker compose run --rm mikupatches --app io.appground.blek --clone --all
```

---

## Manual Local Setup (Alternative)

If you prefer running directly on your host machine without Docker, follow the setup instructions below.

### Operating System Compatibility

| Operating System | Compatibility Status | Recommended Environment |
|---|---|---|
| Linux (Ubuntu, Debian, Mint) | 100% Native | System package manager (`apt`) |
| Linux (Fedora, RHEL, CentOS) | 100% Native | System package manager (`dnf`) |
| Linux (Arch Linux, Manjaro) | 100% Native | Official repositories (`pacman`) |
| Linux (openSUSE, Alpine) | 100% Native | System package manager (`zypper` / `apk`) |
| macOS (Apple Silicon & Intel) | 100% Native | Homebrew (`brew`) |
| Windows via WSL / WSL2 | 100% Native (Recommended) | Ubuntu / Debian on WSL2 |
| Windows Native (PowerShell / CMD) | Supported | JDK 17+, Apktool, and Android SDK on PATH |

---

### Prerequisites & Installation

Required tools on your system:
- Python (3.8 or newer)
- Java JDK (17 or newer)
- Apktool (2.9.0 or newer)
- Android SDK Build Tools (`zipalign` and `apksigner`)
- Optional: ADB (`android-tools`) for device installation

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

## Building (Local Mode)

### 1. Interactive Menu Mode
Launch the build script in your terminal:
```bash
python3 build.py
```
*(Or run `./build.sh` on Unix/macOS/Linux).*

The interactive TUI provides guided options:
- **`[1] (Recommended) Build App with All Patches`**: Auto detects input file or prompts app selection, asks if you want to enable App Clone (`[y/N]`), and builds with all patches enabled.
- **`[2] Custom Patch Selection & Build`**: Choose target app and toggle individual patch modules on or off with an interactive checkbox menu.
- **`[3] Architecture Filter & Build`**: Filter target ABI (`arm64-v8a`, `armeabi-v7a`, `x86`, `x86_64`) to build lightweight packages.
- **`[4] Install Built App on Phone`**: Push patched APK directly to a connected Android phone via ADB.
- **`[5] Clean Build Files`**: Clean `dist/` and temporary `build_staging/` directories.
- **`[6] Check System Requirements`**: Run diagnostic checks for all required toolchain binaries.
- **`[7] Help & CLI Reference`**: View all CLI flags and usage instructions.

---

### 2. Command Line Interface (CLI) Examples

#### Build Truecaller or BLEK non interactively:
```bash
# Truecaller (v26.31.5) with ad removal:
python3 build.py input/truecaller.apkm -y

# Bluetooth Keyboard & Mouse (v6.22.0):
python3 build.py -a io.appground.blek -y
```

#### Build with App Clone enabled (dual install alongside original app):
```bash
python3 build.py input/truecaller.apkm --clone -y
```

#### Build for a specific architecture only (e.g. ARM64) and auto install via ADB:
```bash
python3 build.py input/truecaller.apkm --arch arm64-v8a -I --launch
```

#### Apply specific patch modules only:
```bash
python3 build.py -a com.truecaller --only-patches remove_ads -y
python3 build.py -a io.appground.blek --only-patches pairip,pro_unlock -y
```

#### Simulate build and verify patch targets without compiling (Dry Run):
```bash
python3 build.py input/truecaller.apkm --dry-run
```

#### List all supported apps and patch modules:
```bash
python3 build.py --list-apps
python3 build.py --list-patches -a com.truecaller
python3 build.py --list-patches -a io.appground.blek
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
- `dist/universal.apkm`: Universal multi split bundle for bundle installers.
- `dist/universal.apks`: Alternative APKS format bundle.
- `dist/<arch>/<arch>.apkm`: Architecture specific bundles (e.g., `dist/arm64-v8a/arm64-v8a.apkm`).

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
- [LEGAL.md](LEGAL.md): Non affiliation disclaimer, redistribution notices, and educational use policies.
- [LICENSE](LICENSE): GNU General Public License v3.0.
