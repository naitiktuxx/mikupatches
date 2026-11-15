import os
import re

# ==============================================================================
# CONFIGURATION: WEBSITE / UPDATE REDIRECT URL
# ==============================================================================
WEBSITE_URL = "https://naitiktuxx.github.io/mikupatches/"
BUTTON_TITLE = "Official Website"


def apply_hook(decompiled_dir, app_profile, verbose=False):
    """
    Hook: Adds an 'Official Website' button in the Me (Profile) section:
    1. In MeViewmodel.smali: Injects an IconItemInfo with type 5 at the end of the
       item list in method T() (right after Settings).
    2. In adapter/k.smali: Injects Intent.ACTION_VIEW redirect to WEBSITE_URL in
       the click listener method F() when moduleName == 'website_redirect'.
    """
    me_vm_file = None
    k_adapter_file = None

    for root, dirs, files in os.walk(decompiled_dir):
        if "MeViewmodel.smali" in files and "usercenter/me" in root:
            me_vm_file = os.path.join(root, "MeViewmodel.smali")
        if "k.smali" in files and "usercenter/me/adapter" in root:
            k_adapter_file = os.path.join(root, "k.smali")
        if me_vm_file and k_adapter_file:
            break

    if not me_vm_file or not os.path.exists(me_vm_file):
        raise RuntimeError("MeViewmodel.smali not found in decompiled tree!")

    if not k_adapter_file or not os.path.exists(k_adapter_file):
        raise RuntimeError("adapter/k.smali not found in decompiled tree!")

    # --------------------------------------------------------------------------
    # 1. Modify MeViewmodel.smali: Add Official Website button to Me list
    # --------------------------------------------------------------------------
    with open(me_vm_file, "r", encoding="utf-8") as f:
        vm_content = f.read()

    if "website_redirect" in vm_content:
        if verbose:
            print("  [*] MeViewmodel.smali already contains website_redirect button.")
    else:
        # Match setting item addition in method T():
        # const-string v15, "setting" ... invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
        setting_pattern = re.compile(
            r'(const-string v\d+, "setting".*?invoke-interface \{v\d+, v\d+\}, Ljava/util/List;->add\(Ljava/lang/Object;\)Z)',
            re.DOTALL
        )

        match = setting_pattern.search(vm_content)
        if not match:
            raise RuntimeError("Setting item addition anchor not found in MeViewmodel.smali!")

        matched_block = match.group(1)

        inject_button_smali = f"""

    # Add Official Website / Updates Button (Miku Patches)
    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    const-string v7, "{BUTTON_TITLE}"

    sget v10, Lcom/tn/lib/widget/R$drawable;->ic_me_tv_download_web_link:I

    sget v11, Lcom/transsion/baseui/R$drawable;->bg_radius_6_color_white_6p:I

    const/16 v5, 0x8

    invoke-static {{v5}}, Ldk/a;->b(I)I

    move-result v13

    new-instance v5, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    const/16 v17, 0x280

    const/16 v18, 0x0

    const/4 v8, 0x0

    const-string v9, "{WEBSITE_URL}"

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-string v15, "website_redirect"

    const/16 v16, 0x0

    move-object v6, v5

    invoke-direct/range {{v6 .. v18}}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x5

    invoke-direct {{v3, v6, v5}}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {{v2, v3}}, Ljava/util/List;->add(Ljava/lang/Object;)Z"""

        new_vm_content = vm_content[:match.end()] + inject_button_smali + vm_content[match.end():]
        with open(me_vm_file, "w", encoding="utf-8") as f:
            f.write(new_vm_content)

        if verbose:
            print("  [+] Added Official Website item to MeViewmodel.smali")

    # --------------------------------------------------------------------------
    # 2. Modify adapter/k.smali: Handle click for website_redirect
    # --------------------------------------------------------------------------
    with open(k_adapter_file, "r", encoding="utf-8") as f:
        k_content = f.read()

    if "website_redirect" in k_content:
        if verbose:
            print("  [*] adapter/k.smali already contains website_redirect handler.")
    else:
        k_anchor = "invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V"
        if k_anchor not in k_content:
            raise RuntimeError("Click listener anchor in adapter/k.smali not found!")

        inject_click_smali = f"""

    # Website redirect external browser intent
    invoke-virtual {{p0}}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getModuleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "website_redirect"

    invoke-static {{v0, v1}}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_website_skip

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "{WEBSITE_URL}"

    invoke-static {{v2}}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {{v0, v1, v2}}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {{v0, v1}}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_site
    invoke-virtual {{p4}}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {{v1, v0}}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_site
    .catchall {{:try_start_site .. :try_end_site}} :catch_site

    :catch_site
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_website_skip"""

        new_k_content = k_content.replace(k_anchor, k_anchor + inject_click_smali, 1)
        with open(k_adapter_file, "w", encoding="utf-8") as f:
            f.write(new_k_content)

        if verbose:
            print("  [+] Added click redirect to adapter/k.smali")
