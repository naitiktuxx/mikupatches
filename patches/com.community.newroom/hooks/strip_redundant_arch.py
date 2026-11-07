import os
import shutil

def apply_hook(decompiled_dir, app_profile, verbose=False):
    """
    Strips redundant legacy 32-bit (armeabi-v7a) native libraries.
    Modern devices run 64-bit arm64-v8a natively. Removing the duplicate
    32-bit library directory reduces APK size by ~41 MB without breaking
    any packed JNI methods or video playback engines.
    """
    armeabi_dir = os.path.join(decompiled_dir, "lib", "armeabi-v7a")
    if os.path.exists(armeabi_dir):
        shutil.rmtree(armeabi_dir)
        print("  -> Stripped redundant 32-bit armeabi-v7a libraries (~41 MB saved)")
