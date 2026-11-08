import os
import re
import shutil

TARGET_CLASSES = {
    # Home & Sub-operate beans
    "OperateItem.smali": ["getTitle", "setTitle"],
    "RankingListItem.smali": ["getTitle", "setTitle"],
    "RankAllData.smali": ["getTitle", "setTitle"],
    "UGCRankAllData.smali": ["getTitle", "setTitle"],
    "GradeGroup.smali": ["getTitle", "setTitle"],
    "Item.smali": ["getTitle", "setTitle"],
    "PlayListResp.smali": ["getTitle", "setTitle"],
    "HomeTabItem.smali": ["getName", "setName"],
}

def patch_get_method(content, method_name, field_name):
    """
    Patches a getter method (e.g. getTitle or getName) to filter emojis via EmojiFilter.clean(s).
    Caches the cleaned string back to the instance field.
    """
    pattern = re.compile(
        rf'(\.method\s+public\s+(?:final\s+)?{method_name}\(\)Ljava/lang/String;\s+'
        rf'\.locals\s+\d+\s+'
        rf'iget-object\s+([vp]\d+),\s+([vp]\d+),\s+(L[^;]+;->{field_name}:Ljava/lang/String;)\s+)'
        rf'(return-object\s+\2\s+'
        rf'\.end\s+method)',
        re.MULTILINE
    )

    def repl(m):
        prefix = m.group(1)
        reg_val = m.group(2)
        reg_this = m.group(3)
        field_desc = m.group(4)
        suffix = m.group(5)
        # Avoid double patching
        if "EmojiFilter" in prefix:
            return m.group(0)
        return (
            f"{prefix}"
            f"invoke-static {{{reg_val}}}, Lcom/miku/filter/EmojiFilter;->clean(Ljava/lang/String;)Ljava/lang/String;\n\n"
            f"    move-result-object {reg_val}\n\n"
            f"    iput-object {reg_val}, {reg_this}, {field_desc}\n\n"
            f"    {suffix}"
        )

    new_content, count = pattern.subn(repl, content)
    return new_content, count


def patch_set_method(content, method_name, field_name):
    """
    Patches a setter method (e.g. setTitle or setName) to clean the string before assigning.
    """
    pattern = re.compile(
        rf'(\.method\s+public\s+(?:final\s+)?{method_name}\(Ljava/lang/String;\)V\s+'
        rf'\.locals\s+\d+\s+)'
        rf'(iput-object\s+([vp]\d+),\s+([vp]\d+),\s+(L[^;]+;->{field_name}:Ljava/lang/String;)\s+'
        rf'return-void\s+'
        rf'\.end\s+method)',
        re.MULTILINE
    )

    def repl(m):
        prefix = m.group(1)
        reg_val = m.group(3)
        reg_this = m.group(4)
        field_desc = m.group(5)
        # Avoid double patching
        if "EmojiFilter" in prefix:
            return m.group(0)
        return (
            f"{prefix}"
            f"invoke-static {{{reg_val}}}, Lcom/miku/filter/EmojiFilter;->clean(Ljava/lang/String;)Ljava/lang/String;\n\n"
            f"    move-result-object {reg_val}\n\n"
            f"    iput-object {reg_val}, {reg_this}, {field_desc}\n\n"
            f"    return-void\n"
            f".end method"
        )

    new_content, count = pattern.subn(repl, content)
    return new_content, count


def apply_hook(decompiled_dir, app_profile, verbose=False):
    """
    Hook to strip any kind of emojis and icons from section headers, category titles,
    and tab names across all tabs on the Home screen (Trending, Movie, Anime, TV,
    Kids, Education, UGC, Short TV, etc.).
    """
    # 1. Ensure EmojiFilter.smali exists in decompiled_dir
    emoji_filter_dest = os.path.join(
        decompiled_dir, "smali", "com", "miku", "filter", "EmojiFilter.smali"
    )
    if not os.path.exists(emoji_filter_dest):
        patches_base = os.path.join(app_profile.profile_dir, "base") if app_profile.profile_dir else ""
        emoji_filter_src = os.path.join(
            patches_base, "smali", "com", "miku", "filter", "EmojiFilter.smali"
        )
        if os.path.exists(emoji_filter_src):
            os.makedirs(os.path.dirname(emoji_filter_dest), exist_ok=True)
            shutil.copyfile(emoji_filter_src, emoji_filter_dest)
            if verbose:
                print(f"  -> Injected EmojiFilter.smali into {emoji_filter_dest}")

    # 2. Walk smali directories and patch target bean classes
    patched_files = []
    for root, _, files in os.walk(decompiled_dir):
        dirname = os.path.basename(root)
        if not (dirname.startswith("smali") or "smali" in root):
            continue

        for filename in files:
            if filename in TARGET_CLASSES:
                filepath = os.path.join(root, filename)
                methods = TARGET_CLASSES[filename]

                with open(filepath, "r", encoding="utf-8") as f:
                    content = f.read()

                modified = content
                file_patches = 0

                # Determine field name (usually 'title', or 'name' for HomeTabItem)
                field_name = "name" if "HomeTabItem" in filename else "title"

                for m in methods:
                    if m.startswith("get"):
                        modified, c = patch_get_method(modified, m, field_name)
                        file_patches += c
                    elif m.startswith("set"):
                        modified, c = patch_set_method(modified, m, field_name)
                        file_patches += c

                if file_patches > 0 and modified != content:
                    with open(filepath, "w", encoding="utf-8") as f:
                        f.write(modified)
                    rel_path = os.path.relpath(filepath, decompiled_dir)
                    patched_files.append((rel_path, file_patches))

    if verbose or patched_files:
        print(f"  -> Stripped emojis from {len(patched_files)} Home section/tab data model(s):")
        for path, count in patched_files:
            print(f"     * {path} ({count} method(s) patched)")
