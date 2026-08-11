# MikuPatches

An easy-to-use tool for building a patched version of **Bluetooth Keyboard & Mouse** (v6.22.0) for Android.

---

## Features

Building with MikuPatches unlocks the following improvements:

- **Play Store Redirection Removed**: Eliminates the "Install from original source" popup.
- **Pro & Premium Features Unlocked**: Access all paid remote keyboard and mouse features.
- **Password Input Mode Enabled**: Unlocks password mode and the eye toggle in the keyboard.
- **Clean Interface**: Hides promotional upgrade buttons and subscription menu items.
- **Improved Default Theme**: Sets default colors to BlueGrey with System Default dark mode.

---

## How to Build

### 1. Requirements
Make sure you have **Python 3**, **Java**, and **Apktool** installed on your computer.

### 2. Run the Script
Open your terminal and run:

```bash
git clone https://github.com/naitiktuxx/mikupatches.git
cd mikupatches
python3 build.py
```

### 3. Provide Original App File
If the original app (`.apkm`) is not in the `input/` folder:
1. The script will open the download page on APKMirror.
2. Download the **v6.22.0 Universal APKM** file.
3. Put the downloaded file into the `input/` folder.

The script will automatically detect the file, apply the patches, and save your finished APK files in the `dist/` folder.

---

## Installing on Your Phone

Once the build is complete, you will find `universal.apkm` inside the `dist/` folder:

1. Copy `dist/universal.apkm` to your Android phone.
2. Open **[Split APKs Installer (SAI)](https://play.google.com/store/apps/details?id=com.aefyr.sai)** or **[APKMirror Installer](https://play.google.com/store/apps/details?id=com.apkmirror.helper.prod)** on your phone.
3. Select `universal.apkm` and tap **Install**.

---

## Documentation & License

- **Developer Documentation**: For CLI options, technical architecture, and patch details, see [TECHNICAL.md](TECHNICAL.md).
- **Legal Information**: For disclaimers and trademark notices, see [LEGAL.md](LEGAL.md).
- **License**: Released under the [GNU General Public License v3.0](LICENSE).
