"""
Dynamic hook to strip redundant modder binaries, watermarks, and bloat files
to drastically optimize APK size and remove supply-chain/packer risks.
"""
import os

TARGET_LIBS = [
    "libfuck.so",       # 23MB deadweight APK zip left by modders
    "libdexloader.so",   # 1.1MB modder dynamic dex loader
    "El-a Mo-ds.so",     # 85-byte telegram watermark text file
]

TARGET_FILES = [
    "E_l_a_Mods.xml",
]

def apply_hook(decompiled_dir: str, app_profile, verbose: bool = False):
    total_saved = 0
    lib_dir = os.path.join(decompiled_dir, "lib")
    if os.path.exists(lib_dir):
        for arch in os.listdir(lib_dir):
            arch_dir = os.path.join(lib_dir, arch)
            if os.path.isdir(arch_dir):
                for target in TARGET_LIBS:
                    target_path = os.path.join(arch_dir, target)
                    if os.path.exists(target_path):
                        sz = os.path.getsize(target_path)
                        total_saved += sz
                        try:
                            os.remove(target_path)
                            if verbose:
                                print(f"  [Hook] Stripped {arch}/{target} ({sz / (1024*1024):.2f} MB)")
                        except Exception as e:
                            print(f"  [Hook Warning] Failed to delete {target_path}: {e}")

    for tf in TARGET_FILES:
        tf_path = os.path.join(decompiled_dir, tf)
        if os.path.exists(tf_path):
            try:
                os.remove(tf_path)
            except Exception:
                pass

    saved_mb = total_saved / (1024 * 1024)
    print(f"  -> Stripped modder bloat & watermarks: {saved_mb:.2f} MB saved!")
