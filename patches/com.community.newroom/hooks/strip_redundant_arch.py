import os
import shutil

def apply_hook(decompiled_dir, app_profile, verbose=False):
    """
    Strips dead modder watermarks, offline H5 ad archives, and push banner assets (~2.5 MB).
    Architecture-specific code isolation (arm64-v8a vs armeabi-v7a) is handled automatically
    during APKM packaging to produce standalone minimum-size packages for each architecture.
    """
    # 1. Strip modder watermark dummy library
    for arch in ("arm64-v8a", "armeabi-v7a"):
        elamods_so = os.path.join(decompiled_dir, "lib", arch, "El-a Mo-ds.so")
        if os.path.exists(elamods_so):
            os.remove(elamods_so)

    # 2. Strip dead assets and modder watermarks
    dead_asset_paths = [
        "assets/mini_offline",
        "assets/elamods.png",
        "assets/Modder_Hub_Title",
        "assets/Modder_Hub_Msg",
        "assets/El_a credit.xml",
        "assets/push",
        "assets/test_h5_ad.html",
        "assets/ShellJSBridge",
        "assets/injectjavascript",
        "assets/image/posts",
    ]
    cleaned_count = 0
    for rel_path in dead_asset_paths:
        full_path = os.path.join(decompiled_dir, rel_path)
        if os.path.exists(full_path):
            if os.path.isdir(full_path):
                shutil.rmtree(full_path)
            else:
                os.remove(full_path)
            cleaned_count += 1

    if cleaned_count > 0:
        print(f"  -> Stripped {cleaned_count} dead asset bundles and modder watermarks (~2.5 MB saved)")
