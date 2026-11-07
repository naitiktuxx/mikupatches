import os
import shutil

def apply_hook(decompiled_dir, app_profile, verbose=False):
    """
    1. Strips redundant legacy 32-bit (armeabi-v7a) native libraries (~41 MB).
    2. Strips dead modder watermarks, offline H5 ad archives, and push banner assets (~2.5 MB).
    """
    # 1. Strip redundant 32-bit native libraries
    armeabi_dir = os.path.join(decompiled_dir, "lib", "armeabi-v7a")
    if os.path.exists(armeabi_dir):
        shutil.rmtree(armeabi_dir)
        print("  -> Stripped redundant 32-bit armeabi-v7a libraries (~41 MB saved)")

    # 2. Strip modder watermark dummy library
    elamods_so = os.path.join(decompiled_dir, "lib", "arm64-v8a", "El-a Mo-ds.so")
    if os.path.exists(elamods_so):
        os.remove(elamods_so)

    # 3. Strip dead assets and modder watermarks
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
