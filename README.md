# mikupatches

Modular multi app patch build engine for Android applications. It automatically detects input packages, supports selective patch toggling, enables dual install app cloning, and builds signed release APKs and split bundles.

---

## Supported Applications & Patches

> Latest Release: [v6.22.0](https://github.com/naitiktuxx/mikupatches/releases/latest) · Branch: `main` · 47 patches across 3 applications

<details>
<summary><b>MovieBox</b> (39 patches)</summary>

<br>

**Supported Version:** `4.0.02.0903.02` (code `90020128`) · **Download:** [MEGA](https://mega.nz/file/QygA3agA#r0-814No0zey6JLFbwYLz18GqHWNm3K9MlTP8ulIY-4)

| Patch | Description | Options |
|---|---|---|
| [Block Ads](patches/com.community.newroom/patch_groups.json) | Disables in-app ad loading, neutralizes AdMob/Hisavana/Vungle/Mintegral/ByteDance, and eliminates interstitial delays. | None |
| [Unlock 1080p Video Quality](patches/com.community.newroom/patch_groups.json) | Unlocks high-resolution / HD video streams and skips playback interception ads without watching ads. | None |
| [Disable Tracking & Analytics](patches/com.community.newroom/patch_groups.json) | Disables Firebase Analytics user tracking and crash reporting. | None |
| [Remove Unneeded Permissions](patches/com.community.newroom/patch_groups.json) | Removes 18 intrusive permissions (location, camera, audio, calendar) and disables 26 background ad/tinker/push services. | None |
| [Remove Login & Account Prompts](patches/com.community.newroom/patch_groups.json) | Completely removes 'Log in to your account' card, login button, and neutralizes all login/sign-up activities. | None |
| [Clean Profile Screen](patches/com.community.newroom/patch_groups.json) | Removes floating cash/chest widget, Premium TV Pro VIP banner in Me section, and fission rewards. | None |
| [Remove Community & Study Section](patches/com.community.newroom/patch_groups.json) | Removes Community, My Activity, Study Mode, TV/Web link, feedback dialogs, and auto-finishes all community and feedback activities. | None |
| [Clean Settings Menu](patches/com.community.newroom/patch_groups.json) | Removes Check for Updates, About Us, Privacy Policy, User Agreement, and Login/Sign Up from Settings; disables Athena analytics, periodic reporting, install referrer, and push trackers. | None |
| [Remove QR Scanner](patches/com.community.newroom/patch_groups.json) | Removes the Scan (QR code) icon from the top-right corner of the Me panel, neutralizes the router navigation, and auto-finishes ProfileQRCodeActivity. | None |
| [Remove Premium Tab & Floating Coins](patches/com.community.newroom/patch_groups.json) | Removes the Premium tab from bottom navigation (retaining only Home, Downloads, Me) and completely removes the floating cash/chest widget and its web view launcher. | None |
| [Clean Downloads Page](patches/com.community.newroom/patch_groups.json) | Removes transfer/share options, local files player access/scanning, For You recommendations, and Win Big Prizes button from Downloads tab. | None |
| [Clean Video Details Page](patches/com.community.newroom/patch_groups.json) | Removes TV/Help buttons, Ads skipped for Premium banner, Share button, Resources line (title, uploader, info), For You suggestions, Comments section, + Post button, and neutralizes all post/publishing activities. | None |
| [Miku Branding & App Icon](patches/com.community.newroom/patch_groups.json) | Renames app to Miku, updates package name to `com.mikuplayer.tux`, and replaces launcher icons with custom Miku icons. | None |
| [Disable Push Notifications](patches/com.community.newroom/patch_groups.json) | Completely disables server push notifications (FCM), promotional messages (TPush, MPush, Sunflower), and background push workers while preserving download notifications. | None |
| [Netflix Dark Theme](patches/com.community.newroom/patch_groups.json) | Applies permanent AMOLED dark mode (`#0B0B0F`, `#141414`, `#181818`), Netflix Red (`#E50914`) accents, neutralizes aqua background glow, and removes all green/teal/mint colors. | None |
| [Disable Interests Popup](patches/com.community.newroom/patch_groups.json) | Completely removes 'Tell us about your interests' popup dialogs in Education and Home tabs. | None |
| [Clean Search Page](patches/com.community.newroom/patch_groups.json) | Removes prefilled search suggestions, mic button, 'Everyone is searching' section, and hot tabs/rankings while preserving search functionality and recent searches. | None |
| [Secure App File Storage](patches/com.community.newroom/patch_groups.json) | Removes dangerous root filesystem path from FileProvider in `util_code_provider_paths.xml` to eliminate sandbox escape risks. | None |
| [Lock Hidden App Activities](patches/com.community.newroom/patch_groups.json) | Sets `android:exported=false` on internal payment, rewards, and UGC activities to prevent unauthorized external access. | None |
| [Disable In-App WebViews](patches/com.community.newroom/patch_groups.json) | Neutralizes web views and pre-warming caches to save RAM and eliminate WebView attack surface without breaking native video streaming. | None |
| [Hide Playback Toast Messages](patches/com.community.newroom/patch_groups.json) | Hides 'Analysing from server' and 'Last played time' overlay toasts during video playback across all orientations. | None |
| [Optimize APK Size (ARM64 Only)](patches/com.community.newroom/patch_groups.json) | Strips duplicate legacy 32-bit (armeabi-v7a) native libraries, offline H5 ad bundles, push banners, and modder watermarks down to ~88MB for modern 64-bit devices. | None |
| [Hide VIP Badges](patches/com.community.newroom/patch_groups.json) | Removes VIP/Premium crown badges and golden borders from buttons, episode lists, and resolution selectors. | None |
| [Remove NovelHub & Web Novels](patches/com.community.newroom/patch_groups.json) | Maintains strict UI consistency without large buttons, Hot Novels cards, or ShortTV tabs, and wipes NovelHub MiniApp logic. | None |
| [Fix Server Connection & Crash Protection](patches/com.community.newroom/patch_groups.json) | Ensures Transsion API Gateway HMAC signing always has a valid secret key and never throws NullPointerException in Base64 decode, preventing network request drops. | None |
| [Randomize Device ID](patches/com.community.newroom/patch_groups.json) | Generates unique random GAID, device_id, and ANDROID_ID per app install/data clear stored in private app storage to isolate guest watchlists. | None |
| [Hide Trending Banners & Promos](patches/com.community.newroom/patch_groups.json) | Removes promotional community/VIP slides from the hero carousel while preserving regular trending movies. | None |
| [Block NSFW Search Suggestions](patches/com.community.newroom/patch_groups.json) | Blocks adult/NSFW search suggestions, autocomplete terms, and queries across standard and UGC search backends using multi-lingual blocklists and leetspeak normalization. | None |
| [Set Anime as Default Tab](patches/com.community.newroom/patch_groups.json) | Removes unwanted tabs from Home top bar, centers slider with evenly spaced tabs, and sets Anime as the primary default tab. | None |
| [Always-On Family Safe Mode](patches/com.community.newroom/patch_groups.json) | Permanently locks Family Mode to ON across all movie/video content interception and hides Family Mode rows and toggles. | None |
| [Movies & Series Only Search](patches/com.community.newroom/patch_groups.json) | Removes category filter tabs from search results, eliminates sports/game vertical rank cards, and restricts search to movies and series. | None |
| [Modern Rounded Corners UI](patches/com.community.newroom/patch_groups.json) | Rounds search bars into smooth capsules (18dp) and softens square-cornered option overlays, dialogs, menus, and action buttons into slight rounded shapes (10-16dp). | None |
| [Smooth Player Controls Fade](patches/com.community.newroom/patch_groups.json) | Adds smooth, subtle fade-in and fade-out animations when showing or hiding player controls by tapping or timeout in both online streaming and downloaded video playback. | None |
| [Fast Video Buffering](patches/com.community.newroom/patch_groups.json) | Reduces streaming buffering and stalls by optimizing AliPlayer buffer settings: 2.5s start buffer, 8s high buffer, 1024MB cache, 10s preload. | None |
| [Keep Only English & Hindi](patches/com.community.newroom/patch_groups.json) | Removes unused language resource bundles, keeping only English and Hindi in UI language selection while keeping audio/subtitle tracks intact. | None |
| [Remove Emojis from Titles](patches/com.community.newroom/patch_groups.json) | Strips emojis, symbols, and redundant spaces from section headers and category titles across all tabs on the Home screen. | None |
| [Floating Frosted-Glass Bottom Bar](patches/com.community.newroom/patch_groups.json) | Converts bottom navigation into a sleek 180dp x 48dp floating frosted-glass pill dock with symmetrical icon spacing, hidden labels, real-time dynamic blur, Apple macOS specular gradient rim, and spring bounce physics. | None |
| [Tab Bounce Animation](patches/com.community.newroom/patch_groups.json) | Adds tactile press-back compression and spring overshoot rebound animation when tapping category tabs, search filter chips, and navigation buttons. | None |
| [App Clone (Dual Install)](mikupatches/cloner.py) | Allows installing alongside the original app by renaming package name to `com.community.newroom.tux` and isolating ContentProvider authorities. | Clone suffix, Custom package |

</details>

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
# Build MovieBox with all default patches
docker compose run --rm mikupatches --app com.community.newroom --all

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
# MovieBox (v4.0.02.0903.02) with all default patches:
python3 build.py input/MovieBox_4.0.apk -y

# Truecaller (v26.31.5) with ad removal:
python3 build.py input/truecaller.apkm -y

# Bluetooth Keyboard & Mouse (v6.22.0):
python3 build.py -a io.appground.blek -y
```

**Build with App Clone enabled (dual parallel install):**
```bash
python3 build.py input/MovieBox_4.0.apk --clone -y
python3 build.py input/truecaller.apkm --clone -y
```

**Build for a specific architecture and install via ADB:**
```bash
python3 build.py input/MovieBox_4.0.apk --arch arm64-v8a -I --launch
```

**Apply specific patch modules only:**
```bash
python3 build.py -a com.community.newroom --only-patches block_ads,smooth_player_fade -y
python3 build.py -a com.truecaller --only-patches remove_ads -y
python3 build.py -a io.appground.blek --only-patches pairip,pro_unlock -y
```

**Dry run (validate targets without compiling):**
```bash
python3 build.py input/MovieBox_4.0.apk --dry-run
```

**List supported applications and patch modules:**
```bash
python3 build.py --list-apps
python3 build.py --list-patches -a com.community.newroom
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
