import os
import re
import shutil

NON_LANG_QUALIFIERS = {
    "ldrtl", "ldltr",
    "port", "land",
    "night", "notnight",
    "small", "normal", "large", "xlarge",
    "watch", "car", "desk", "television", "appliance",
    "nodpi", "anydpi", "ldpi", "mdpi", "hdpi", "xhdpi", "xxhdpi", "xxxhdpi", "tvdpi"
}

def is_non_lang_token(token):
    if token in NON_LANG_QUALIFIERS:
        return True
    if re.match(r"^(?:v\d+|sw\d+dp|w\d+dp|h\d+dp)$", token):
        return True
    return False

def should_keep_directory(dirname, keep_langs={"en", "hi"}):
    if "-" not in dirname:
        return True
    parts = dirname.split("-")
    qualifiers = parts[1:]

    i = 0
    has_lang = False
    lang_code = None
    while i < len(qualifiers):
        q = qualifiers[i]
        if is_non_lang_token(q):
            i += 1
            continue
        if q.startswith("b+"):
            has_lang = True
            lang_code = q.split("+")[1]
            i += 1
            continue
        if re.match(r"^[a-z]{2,3}$", q):
            has_lang = True
            lang_code = q
            i += 1
            if i < len(qualifiers) and re.match(r"^(?:r[A-Z]{2}|\d{3})$", qualifiers[i]):
                i += 1
            continue
        i += 1

    if not has_lang:
        return True
    if lang_code in keep_langs:
        return True
    return False

def apply_hook(decompiled_dir, app_profile, verbose=False):
    """
    Strips all unused localized language resource directories (values-*, mipmap-*),
    retaining only English (values, values-en*) and Hindi (values-hi), plus all non-language
    resource qualifiers (orientations, densities, screen sizes, night mode, API versions).
    Leaves all video content, audio tracks, and subtitles completely untouched.
    """
    res_dir = os.path.join(decompiled_dir, "res")
    if not os.path.exists(res_dir):
        return

    removed_count = 0
    for d in sorted(os.listdir(res_dir)):
        dir_path = os.path.join(res_dir, d)
        if not os.path.isdir(dir_path):
            continue
        if not should_keep_directory(d):
            shutil.rmtree(dir_path)
            removed_count += 1
            if verbose:
                print(f"    Stripped unused language resource directory: {d}")

    if removed_count > 0:
        print(f"  -> Stripped {removed_count} unused language resource directories (kept English & Hindi)")
