#!/usr/bin/env python3
import os
import re
import json

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DEX5_SMALI = os.path.join(BASE_DIR, "scripts", "inspect_work", "decomp_dex5", "smali")
PATCHES_BASE = os.path.join(BASE_DIR, "patches", "com.community.newroom", "base", "smali_classes5")
PATCH_GROUPS_FILE = os.path.join(BASE_DIR, "patches", "com.community.newroom", "patch_groups.json")

def patch_course_manager():
    rel = os.path.join("com", "transsion", "edcation", "CourseManager.smali")
    src = os.path.join(DEX5_SMALI, rel)
    dst = os.path.join(PATCHES_BASE, rel)
    os.makedirs(os.path.dirname(dst), exist_ok=True)

    with open(src, "r", encoding="utf-8") as f:
        content = f.read()

    # 1. Neutralize method h(FragmentManager) -> return-void
    pat_h = r'(\.method public final h\(Landroidx/fragment/app/FragmentManager;\)V\s*\.locals \d+)(.*?)(\.end method)'
    rep_h = r'''\1

    return-void
.end method'''
    content, n1 = re.subn(pat_h, rep_h, content, flags=re.DOTALL)
    assert n1 == 1, f"Failed to patch CourseManager.h, matches={n1}"

    # 2. Neutralize method n()Z -> return false
    pat_n = r'(\.method private final n\(\)Z\s*\.locals \d+)(.*?)(\.end method)'
    rep_n = r'''\1

    const/4 v0, 0x0

    return v0
.end method'''
    content, n2 = re.subn(pat_n, rep_n, content, flags=re.DOTALL)
    assert n2 == 1, f"Failed to patch CourseManager.n, matches={n2}"

    with open(dst, "w", encoding="utf-8") as f:
        f.write(content)

    print(f"Patched CourseManager.smali at {dst}")
    return "smali_classes5/" + rel.replace(os.sep, "/")

def patch_interest_select_dialog():
    rel = os.path.join("com", "transsion", "edcation", "dialog", "InterestSelectDialog.smali")
    src = os.path.join(DEX5_SMALI, rel)
    dst = os.path.join(PATCHES_BASE, rel)
    os.makedirs(os.path.dirname(dst), exist_ok=True)

    with open(src, "r", encoding="utf-8") as f:
        content = f.read()

    # 1. In initView()V -> dismissAllowingStateLoss(); return-void
    pat_init = r'(\.method public initView\(\)V\s*\.locals \d+)(.*?)(\.end method)'
    rep_init = r'''\1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method'''
    content, n1 = re.subn(pat_init, rep_init, content, flags=re.DOTALL)
    assert n1 == 1, f"Failed to patch InterestSelectDialog.initView, matches={n1}"

    # 2. In v0()V -> return-void
    pat_v0 = r'(\.method private final v0\(\)V\s*\.locals \d+)(.*?)(\.end method)'
    rep_v0 = r'''\1

    return-void
.end method'''
    content, n2 = re.subn(pat_v0, rep_v0, content, flags=re.DOTALL)
    assert n2 == 1, f"Failed to patch InterestSelectDialog.v0, matches={n2}"

    with open(dst, "w", encoding="utf-8") as f:
        f.write(content)

    print(f"Patched InterestSelectDialog.smali at {dst}")
    return "smali_classes5/" + rel.replace(os.sep, "/")

def patch_home_preferences_enter_pop_dialog():
    rel = os.path.join("com", "transsion", "home", "fragment", "dialog", "HomePreferencesEnterPopDialog.smali")
    src = os.path.join(DEX5_SMALI, rel)
    dst = os.path.join(PATCHES_BASE, rel)
    os.makedirs(os.path.dirname(dst), exist_ok=True)

    with open(src, "r", encoding="utf-8") as f:
        content = f.read()

    pat_ovc = r'(\.method public onViewCreated\(Landroid/view/View;Landroid/os/Bundle;\)V\s*\.locals \d+)(.*?)(\.end method)'
    rep_ovc = r'''\1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method'''
    content, n = re.subn(pat_ovc, rep_ovc, content, flags=re.DOTALL)
    assert n == 1, f"Failed to patch HomePreferencesEnterPopDialog.onViewCreated, matches={n}"

    with open(dst, "w", encoding="utf-8") as f:
        f.write(content)

    print(f"Patched HomePreferencesEnterPopDialog.smali at {dst}")
    return "smali_classes5/" + rel.replace(os.sep, "/")

def patch_home_preferences_dialog():
    rel = os.path.join("com", "transsion", "home", "fragment", "dialog", "HomePreferencesDialog.smali")
    src = os.path.join(DEX5_SMALI, rel)
    dst = os.path.join(PATCHES_BASE, rel)
    os.makedirs(os.path.dirname(dst), exist_ok=True)

    with open(src, "r", encoding="utf-8") as f:
        content = f.read()

    pat_ovc = r'(\.method public onViewCreated\(Landroid/view/View;Landroid/os/Bundle;\)V\s*\.locals \d+)(.*?)(\.end method)'
    rep_ovc = r'''\1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method'''
    content, n = re.subn(pat_ovc, rep_ovc, content, flags=re.DOTALL)
    assert n == 1, f"Failed to patch HomePreferencesDialog.onViewCreated, matches={n}"

    with open(dst, "w", encoding="utf-8") as f:
        f.write(content)

    print(f"Patched HomePreferencesDialog.smali at {dst}")
    return "smali_classes5/" + rel.replace(os.sep, "/")

def patch_home_fragment():
    rel = os.path.join("com", "transsion", "home", "fragment", "home", "HomeFragment.smali")
    src = os.path.join(DEX5_SMALI, rel)
    dst = os.path.join(PATCHES_BASE, rel)
    os.makedirs(os.path.dirname(dst), exist_ok=True)

    with open(src, "r", encoding="utf-8") as f:
        content = f.read()

    pat_n1 = r'(\.method private final n1\(Lcom/transsion/home/bean/HomePreferencesConfig;\)V\s*\.locals \d+)(.*?)(\.end method)'
    rep_n1 = r'''\1

    return-void
.end method'''
    content, n = re.subn(pat_n1, rep_n1, content, flags=re.DOTALL)
    assert n == 1, f"Failed to patch HomeFragment.n1, matches={n}"

    with open(dst, "w", encoding="utf-8") as f:
        f.write(content)

    print(f"Patched HomeFragment.smali at {dst}")
    return "smali_classes5/" + rel.replace(os.sep, "/")

def main():
    f1 = patch_course_manager()
    f2 = patch_interest_select_dialog()
    f3 = patch_home_preferences_enter_pop_dialog()
    f4 = patch_home_preferences_dialog()
    f5 = patch_home_fragment()

    # Register in patch_groups.json
    with open(PATCH_GROUPS_FILE, "r") as f:
        groups = json.load(f)

    new_group = {
        "id": "disable_interests_popup",
        "name": "Disable Interests Popup",
        "description": "Completely removes 'Tell us about your interests' popup dialogs in Education and Home tabs (CourseManager, InterestSelectDialog, HomePreferencesEnterPopDialog)",
        "default": True,
        "files": {
            f1: "Disable Education interest dialog trigger in CourseManager",
            f2: "Auto-dismiss and neutralize InterestSelectDialog",
            f3: "Auto-dismiss and neutralize HomePreferencesEnterPopDialog",
            f4: "Auto-dismiss and neutralize HomePreferencesDialog",
            f5: "Neutralize home preferences popup launcher in HomeFragment"
        }
    }

    idx = next((i for i, g in enumerate(groups) if g["id"] == "disable_interests_popup"), None)
    if idx is not None:
        groups[idx] = new_group
    else:
        groups.append(new_group)

    with open(PATCH_GROUPS_FILE, "w") as f:
        json.dump(groups, f, indent=2)

    print("Successfully registered disable_interests_popup in patch_groups.json!")

if __name__ == "__main__":
    main()
