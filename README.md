# MikuPatches

Modular multi app patch build engine for Android applications. It automatically detects input packages, supports selective patch toggling, enables dual install app cloning, and builds signed release APKs and split bundles.

---

## Supported Applications & Patches

> Latest Release: [v6.22.0](https://github.com/naitiktuxx/mikupatches/releases/latest) · Branch: `main` · 8 patches across 2 applications

<details>
<summary><b>Truecaller: Trusted Caller ID</b> (2 patches)</summary>

<br>

**Supported Version:** `26.31.5`

| Patch | Description | Options |
|---|---|---|
| [Remove Ads & Promotional Banners](patches/com.truecaller/patch_groups.json) | Completely removes in app ads, disables AdsRouter engine (`shouldShowAds=false`), blocks SMS/Insights notification ads, neutralizes MultiAd autoscroll, and enables the official `NO_ADS` feature entitlement without breaking XML drawables. | None |
| [App Clone (Dual Install)](mikupatches/cloner.py) | Allows installing alongside the official Truecaller app by renaming package name to `com.truecaller.tux` and isolating ContentProvider authorities. | Clone suffix, Custom package |

</details>

<details>
<summary><b>Bluetooth Keyboard & Mouse</b> (6 patches)</summary>

<br>

**Supported Version:** `6.22.0`

| Patch | Description | Options |
|---|---|---|
| [Bypass License & Play Store Check](patches/io.appground.blek/base) | Neutralizes PairIP anti piracy checks, license client verification, and Play Store redirection dialogs. | None |
| [Unlock Pro & Premium Features](patches/io.appground.blek/base) | Unlocks all Pro features and lifetime subscription (`isPremium=true`, `isSubscribed=true`). | None |
| [Unlock Password Mode](patches/io.appground.blek/base) | Enables keyboard password visibility toggle and EndIcon controls. | None |
| [Clean Interface](patches/io.appground.blek/base) | Removes upgrade banners, subscription prompts, feedback dialogs, and unused menu actions. | None |
| [Default BlueGrey & System Theme](patches/io.appground.blek/base) | Sets BlueGrey accent color and System Dark/Light theme as default. | None |
| [App Clone (Dual Install)](mikupatches/cloner.py) | Allows installing alongside the original app by renaming package name to `io.appground.blek.tux` and isolating ContentProvider authorities. | Clone suffix, Custom package |

</details>

---

## Docker Setup (Recommended)

Running with Docker is the fastest method because all dependencies (Java JDK, Apktool, Android build tools, Python) are pre-installed in the container.

### Directory Mapping

| Host Directory | Container Path | Purpose |
|---|---|---|
| `./input/` | `/app/input/` | Put downloaded `.apk` or `.apkm` files here |
| `./dist/` | `/app/dist/` | Built and signed APKs are saved here automatically |

```text
  Host System                               Docker Container
  ./input/ (original APK/APKM)  ──mapped──►  /app/input/
                                                    │ (decompiles, patches, signs)
                                                    ▼
  ./dist/  (patched APK/APKM)   ◄──mapped──  /app/dist/
```

### Quick Start

1. **Add your input package:**  
   Copy your downloaded `.apk` or `.apkm` file into the `input/` directory.

2. **Build the container image (one time):**
   ```bash
   docker build -t mikupatches .
   ```

3. **Run the patcher:**

   **Using Docker Compose:**
   ```bash
   docker compose run --rm mikupatches
   ```

   **Using Docker directly:**
   - **macOS / Linux:**
     ```bash
     docker run --rm -it \
       -v "$(pwd)/input:/app/input" \
       -v "$(pwd)/dist:/app/dist" \
       mikupatches
     ```
   - **Windows (PowerShell):**
     ```powershell
     docker run --rm -it `
       -v "${PWD}/input:/app/input" `
       -v "${PWD}/dist:/app/dist" `
       mikupatches
     ```

### Automated CLI Mode in Docker

You can pass CLI arguments directly without opening the interactive menu:

```bash
# Build Truecaller with all default patches
docker compose run --rm mikupatches --app com.truecaller --all

# Build Bluetooth Keyboard & Mouse with App Clone enabled
docker compose run --rm mikupatches --app io.appground.blek --clone --all
```

---

## Manual Local Setup (Alternative)

If you prefer running directly on your host machine without Docker, install the prerequisites below.

### System Compatibility

| Operating System | Support Level | Recommended Installation |
|---|---|---|
| Linux (Ubuntu, Debian, Mint) | Native | System package manager (`apt`) |
| Linux (Fedora, RHEL, CentOS) | Native | System package manager (`dnf`) |
| Linux (Arch Linux, Manjaro) | Native | Official repositories (`pacman`) |
| Linux (openSUSE, Alpine) | Native | System package manager (`zypper` / `apk`) |
| macOS (Apple Silicon & Intel) | Native | Homebrew (`brew`) |
| Windows (WSL2) | Native (Recommended) | Ubuntu / Debian on WSL2 |
| Windows (PowerShell / CMD) | Supported | JDK 17+, Apktool, and Android SDK on PATH |

### Prerequisites & Installation

Required tools:
- Python 3.8+
- Java JDK 17+
- Apktool 2.9.0+
- Android SDK Build Tools (`zipalign` and `apksigner`)
- Optional: ADB (`android-tools`) for USB installation

**macOS (Homebrew):**
```bash
brew install python apktool openjdk android-commandlinetools
```

**Ubuntu / Debian / Linux Mint / WSL2:**
```bash
sudo apt update && sudo apt install -y python3 apktool default-jdk zipalign apksigner android-tools-adb
```

**Fedora / RHEL / CentOS:**
```bash
sudo dnf install -y python3 apktool java-17-openjdk-devel zipalign android-tools
```

**Arch Linux / Manjaro:**
```bash
sudo pacman -S --needed python apktool java-environment-openjdk android-tools
```

**Windows (Winget / Scoop):**
```powershell
# Using Winget:
winget install Python.Python.3.12 Microsoft.OpenJDK.17

# Using Scoop:
scoop install python openjdk apktool adb
```

---

## Building Locally

### Interactive TUI Mode

Launch the build script:
```bash
python3 build.py
```
*(Or run `./build.sh` on Unix/macOS/Linux).*

Available menu actions:
- `[1] Build App with All Patches`: Auto detects input package, prompts for App Clone option, and builds with default patches.
- `[2] Custom Patch Selection & Build`: Select target app and toggle individual patch modules with an interactive checklist.
- `[3] Architecture Filter & Build`: Filter specific ABIs (`arm64-v8a`, `armeabi-v7a`, `x86`, `x86_64`) for smaller package sizes.
- `[4] Install Built App on Phone`: Push patched APK directly to a connected Android phone over ADB.
- `[5] Clean Build Files`: Delete `dist/` outputs and `build_staging/` temporary files.
- `[6] Check System Requirements`: Verify all external toolchain binaries.
- `[7] Help & CLI Reference`: View full command line options.

### CLI Examples

**Build non interactively:**
```bash
# Truecaller (v26.31.5) with ad removal:
python3 build.py input/truecaller.apkm -y

# Bluetooth Keyboard & Mouse (v6.22.0):
python3 build.py -a io.appground.blek -y
```

**Build with App Clone enabled (dual parallel install):**
```bash
python3 build.py input/truecaller.apkm --clone -y
```

**Build for a specific architecture and install via ADB:**
```bash
python3 build.py input/truecaller.apkm --arch arm64-v8a -I --launch
```

**Apply specific patch modules only:**
```bash
python3 build.py -a com.truecaller --only-patches remove_ads -y
python3 build.py -a io.appground.blek --only-patches pairip,pro_unlock -y
```

**Dry run (validate targets without compiling):**
```bash
python3 build.py input/truecaller.apkm --dry-run
```

**List supported applications and patch modules:**
```bash
python3 build.py --list-apps
python3 build.py --list-patches -a com.truecaller
python3 build.py --list-patches -a io.appground.blek
```

---

## Input & Output Formats

### Supported Input Packages
Place files in `input/` or pass file paths via CLI:
- `.apkm`, `.apks`, `.xapk`, `.zip`: Full split APK bundles (recommended).
- `.apk`: Standalone single APK file (automatic fallback metadata generation).

### Build Outputs (`dist/`)
All generated packages are placed in `dist/`:
- `dist/base.apk`: Patched primary APK file.
- `dist/universal.apkm`: Universal multi split bundle.
- `dist/universal.apks`: APKS format bundle.
- `dist/<arch>/<arch>.apkm`: Architecture specific split bundle (e.g. `dist/arm64-v8a/arm64-v8a.apkm`).

---

## Installing on Android Devices

### Method 1: Split Bundle Install (.apkm)
1. Transfer `dist/universal.apkm` (or your architecture bundle) to your device.
2. Install with [APKMirror Installer](https://play.google.com/store/apps/details?id=com.apkmirror.helper.prod) or [SAI (Split APKs Installer)](https://play.google.com/store/apps/details?id=com.aefyr.sai).

### Method 2: Direct ADB Install
Connect your device with USB debugging enabled:
```bash
python3 build.py -I --launch
```
Or manually:
```bash
adb install -r dist/base.apk
```

---

## Documentation & References

- [TECHNICAL.md](TECHNICAL.md): Architecture breakdown, Smali override mechanics, full CLI flags reference, and patch creation guide.
- [LEGAL.md](LEGAL.md): Non affiliation disclaimer, binary distribution policy, and educational use notice.
- [LICENSE](LICENSE): GNU General Public License v3.0.
