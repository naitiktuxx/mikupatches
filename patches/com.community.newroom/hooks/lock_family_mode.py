import os
import re

def apply_hook(decompiled_dir, app_profile, verbose=False):
    """
    1. Removes Family Mode item from SettingActivity UI and neutralizes click handler.
    2. Suppresses Family Mode notification badge dot in MainActivity.
    3. Locks Family Mode interception ON in Subject.smali without altering native Lak/l;.
    """
    # 1. Modify SettingActivity.smali
    setting_smali = os.path.join(decompiled_dir, "smali_classes7", "com", "transsion", "usercenter", "setting", "SettingActivity.smali")
    if os.path.exists(setting_smali):
        with open(setting_smali, "r", encoding="utf-8") as f:
            content = f.read()

        # Remove adding Family Mode item to settings list
        pattern_add = r'iget-object\s+\w+,\s+\w+,\s+Lcom/transsion/usercenter/setting/SettingActivity;->c:Ljava/util/List;\s+invoke-direct/[^\n]+->L0\(\)Lvw/b;\s+move-result-object\s+\w+\s+invoke-interface\s+\{[^}]+\},\s+Ljava/util/List;->add\(Ljava/lang/Object;\)Z'
        content, c1 = re.subn(pattern_add, '# Family Mode item removed from settings list', content)

        # Neutralize click handler
        pattern_f0 = r'\.method private final F0\(\)Lkotlinx/coroutines/t1;.*?\.end method'
        rep_f0 = '''.method private final F0()Lkotlinx/coroutines/t1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method'''
        content, c2 = re.subn(pattern_f0, rep_f0, content, flags=re.DOTALL)

        with open(setting_smali, "w", encoding="utf-8") as f:
            f.write(content)

        if verbose or c1 > 0:
            print(f"  -> Hidden Family Mode switch from SettingActivity (removed={c1}, neutralized={c2})")

    # 2. Suppress Family Mode red badge in MainActivity
    main_smali = os.path.join(decompiled_dir, "smali", "com", "transsion", "subroom", "activity", "MainActivity.smali")
    if os.path.exists(main_smali):
        with open(main_smali, "r", encoding="utf-8") as f:
            content = f.read()

        # In MainActivity, replace getBoolean("k_is_family_mode_badge", true) with false
        content = content.replace(
            'const-string v1, "k_is_family_mode_badge"\n\n    const/4 v2, 0x1',
            'const-string v1, "k_is_family_mode_badge"\n\n    const/4 v2, 0x0'
        )
        content = content.replace(
            'const-string v2, "k_is_family_mode_badge"\n\n    const/4 v3, 0x1',
            'const-string v2, "k_is_family_mode_badge"\n\n    const/4 v3, 0x0'
        )

        with open(main_smali, "w", encoding="utf-8") as f:
            f.write(content)

        print("  -> Suppressed Family Mode badge notification in MainActivity")

    # 3. Lock Family Mode interception ON in Subject.smali (safe without modifying native Lak/l;)
    subject_smali = os.path.join(decompiled_dir, "smali", "com", "transsion", "moviedetailapi", "bean", "Subject.smali")
    if os.path.exists(subject_smali):
        with open(subject_smali, "r", encoding="utf-8") as f:
            content = f.read()

        old_call = "invoke-static {}, Lak/l;->a()Z\n\n    move-result v0"
        new_call = "const/4 v0, 0x1"
        if old_call in content:
            content = content.replace(old_call, new_call)
            with open(subject_smali, "w", encoding="utf-8") as f:
                f.write(content)
            print("  -> Forced Family Mode interception ON in Subject.smali (safe native preservation)")
