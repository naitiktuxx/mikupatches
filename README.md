# MikuPatches - Bluetooth Keyboard & Mouse Patch Pipeline

An automated patch pipeline for **Bluetooth Keyboard & Mouse** (v6.22.0).

---

## Prerequisites / Dependencies

To build the patched APK/APKM on your system, you need the following dependencies installed:

### 1. **Python 3**
- Standard Python 3.8+ (Uses built-in modules only, no `pip install` required).

### 2. **Java (JDK 17 or higher)**
- Required by `apktool`, `apksigner`, and `keytool`.
- macOS: `brew install openjdk`

### 3. **Apktool**
- Used for decompiling and recompiling `base.apk`.
- macOS: `brew install apktool`

### 4. **Android Command-line Tools / SDK (zipalign & apksigner)**
- Required for aligning and signing the final APKs.
- `zipalign`
- `apksigner`
- Default paths configured in `build.py`:
  - ZipAlign: `/opt/homebrew/share/android-commandlinetools/build-tools/34.0.0/zipalign`
  - ApkSigner: `/opt/homebrew/share/android-commandlinetools/build-tools/34.0.0/apksigner`

---

## How to Build

1. Run the build script:
   ```bash
   ./build.sh
   # OR
   python3 build.py
   ```

2. If the original `v6.22.0` APKM is not in the `input/` folder:
   - The script will automatically open the APKMirror download link in your browser.
   - Save the downloaded `.apkm` file inside the `input/` directory.

3. The script will automatically:
   - Extract `base.apk` and splits
   - Decompile `base.apk`
   - Apply smali & manifest patches
   - Rebuild, align, sign, and generate ready-to-install `.apkm` & `.apks` bundles in `dist/`.

---

## Applied Patches Summary

- **Play Store Redirection & License Bypass**: Neutralizes PairIP Play Store License & Installer verification.
- **Pro & Premium Features Unlocked**: Unlocks Pro status across all UI components.
- **Password Mode Unlocked**: Enables password mode / eye toggle in keyboard view.
- **Clean UI**: Removes Manage Subscription, Upgrade to Pro, and Feedback menu items.
