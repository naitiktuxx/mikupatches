#!/usr/bin/env python3
import os
import re
import xml.etree.ElementTree as ET

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
INSPECT_DIR = os.path.join(BASE_DIR, "build_staging", "inspect_res")
PATCHES_BASE = os.path.join(BASE_DIR, "patches", "com.community.newroom", "base")

# Palette constants
NETFLIX_MAIN_BG = "#ff0b0b0f"        # #0B0B0F
NETFLIX_SEC_BG = "#ff141414"         # #141414
NETFLIX_CARD_BG = "#ff181818"        # #181818
NETFLIX_BORDER = "#ff2a2a2a"         # #2A2A2A
NETFLIX_RED = "#ffe50914"            # #E50914 (Brand primary)
NETFLIX_RED_HOVER = "#ffff2633"      # Lighter red
NETFLIX_RED_LIGHT = "#ffff5c66"      # Subtle light red
NETFLIX_RED_DARK_1 = "#ffb80710"     # Darker red
NETFLIX_RED_DARK_2 = "#ff8c050c"     # Deep red
NETFLIX_RED_DARK_3 = "#ff5e0308"     # Dark wine red
NETFLIX_RED_DARK_4 = "#ff300104"     # Very dark red
NETFLIX_RED_ALPHA_10 = "#1ae50914"   # 10% alpha red
NETFLIX_RED_ALPHA_12 = "#1fe50914"   # 12% alpha red
NETFLIX_RED_ALPHA_16 = "#29e50914"   # 16% alpha red
NETFLIX_RED_ALPHA_20 = "#33e50914"   # 20% alpha red
NETFLIX_RED_ALPHA_30 = "#4de50914"   # 30% alpha red
NETFLIX_RED_ALPHA_50 = "#80e50914"   # 50% alpha red
NETFLIX_RED_ALPHA_80 = "#cce50914"   # 80% alpha red
NETFLIX_TEXT_PRIMARY = "#fff5f5f1"   # #F5F5F1
NETFLIX_TEXT_SECONDARY = "#ffa3a3a3" # #A3A3A3
NETFLIX_TEXT_MUTED = "#ff737373"     # #737373

# Replacement mapping by color name
COLOR_NAME_MAP = {
    # Main Backgrounds -> #0B0B0F
    "color_bg_01": NETFLIX_MAIN_BG,
    "bg_01": NETFLIX_MAIN_BG,
    "module_01": NETFLIX_MAIN_BG,
    "short_tv_module_01": NETFLIX_MAIN_BG,
    "rank_all_list_background": NETFLIX_MAIN_BG,
    "color_video_detail_bg": NETFLIX_MAIN_BG,
    "common_window_background_color": NETFLIX_MAIN_BG,
    "design_dark_default_color_background": NETFLIX_MAIN_BG,
    "design_default_color_background": NETFLIX_MAIN_BG,
    "material_personalized_color_background": NETFLIX_MAIN_BG,
    "m3_sys_color_dark_background": NETFLIX_MAIN_BG,
    "m3_sys_color_light_background": NETFLIX_MAIN_BG,
    "m3_sys_color_dark_surface": NETFLIX_MAIN_BG,
    "m3_sys_color_light_surface": NETFLIX_MAIN_BG,
    "background_material_dark": NETFLIX_MAIN_BG,
    "background_material_light": NETFLIX_MAIN_BG,
    "gray_0": NETFLIX_MAIN_BG,
    "gray_dark_00": NETFLIX_MAIN_BG,
    "gray_dark_10": NETFLIX_MAIN_BG,
    "short_tv_gray_10": NETFLIX_MAIN_BG,
    "short_tv_gray_20": NETFLIX_MAIN_BG,
    "ad_bg_01": NETFLIX_MAIN_BG,

    # Secondary Backgrounds -> #141414
    "module_02": NETFLIX_SEC_BG,
    "ad_module_02": NETFLIX_SEC_BG,
    "short_tv_module_02": NETFLIX_SEC_BG,
    "update_module_02": NETFLIX_SEC_BG,
    "share_module_02": NETFLIX_SEC_BG,
    "download_module_2": NETFLIX_SEC_BG,
    "rank_all_category_background": NETFLIX_SEC_BG,
    "bg_search_bg_01": NETFLIX_SEC_BG,
    "search_guide_bg": NETFLIX_SEC_BG,
    "comment_input_bg": NETFLIX_SEC_BG,
    "gray_10": NETFLIX_SEC_BG,
    "gray_20": NETFLIX_SEC_BG,
    "short_tv_gray_30": NETFLIX_SEC_BG,
    "gray_dark_20": NETFLIX_SEC_BG,
    "color_111214": NETFLIX_SEC_BG,
    "color_101114": NETFLIX_SEC_BG,
    "color_00101114": "#00141414",
    "color_111214_0": "#00141414",

    # Cards & Surfaces -> #181818
    "cardview_dark_background": NETFLIX_CARD_BG,
    "cardview_light_background": NETFLIX_CARD_BG,
    "module_03": NETFLIX_CARD_BG,
    "module_04": NETFLIX_CARD_BG,
    "module_05": NETFLIX_CARD_BG,
    "module_06": NETFLIX_CARD_BG,
    "module_07": NETFLIX_CARD_BG,
    "module_09": NETFLIX_CARD_BG,
    "module_10": NETFLIX_CARD_BG,
    "short_tv_module_04": NETFLIX_CARD_BG,
    "short_tv_module_05": NETFLIX_CARD_BG,
    "color_video_detail_dialog_bg": NETFLIX_CARD_BG,
    "color_download_dialog_bg": NETFLIX_CARD_BG,
    "mini_color_bg_01": NETFLIX_CARD_BG,
    "mini_color_bg_02": NETFLIX_CARD_BG,
    "mini_color_surface_01": NETFLIX_CARD_BG,
    "mini_color_surface_04": NETFLIX_CARD_BG,
    "mini_confirm_dialog_background": NETFLIX_CARD_BG,
    "mini_confirm_normal_dialog_background": NETFLIX_CARD_BG,
    "permissionx_default_dialog_bg": NETFLIX_CARD_BG,
    "upgrade_color_dialog_bg": NETFLIX_CARD_BG,
    "gray_30": NETFLIX_CARD_BG,
    "gray_dark_30": NETFLIX_CARD_BG,
    "color_28292E": NETFLIX_CARD_BG,
    "color_383A40": NETFLIX_CARD_BG,
    "design_dark_default_color_surface": NETFLIX_CARD_BG,
    "design_default_color_surface": NETFLIX_CARD_BG,
    "material_personalized_color_surface": NETFLIX_CARD_BG,
    "background_floating_material_dark": NETFLIX_CARD_BG,
    "background_floating_material_light": NETFLIX_CARD_BG,

    # Primary Text -> #F5F5F1
    "text_01": NETFLIX_TEXT_PRIMARY,
    "text01": NETFLIX_TEXT_PRIMARY,
    "short_tv_text_01": NETFLIX_TEXT_PRIMARY,
    "ad_text_01": NETFLIX_TEXT_PRIMARY,
    "ad_text01": NETFLIX_TEXT_PRIMARY,
    "update_text_01": NETFLIX_TEXT_PRIMARY,
    "text_ad_1": NETFLIX_TEXT_PRIMARY,
    "color_download_episode_name_normal": NETFLIX_TEXT_PRIMARY,
    "color_video_detail_episode_name_normal": NETFLIX_TEXT_PRIMARY,
    "design_dark_default_color_on_background": NETFLIX_TEXT_PRIMARY,
    "design_default_color_on_background": NETFLIX_TEXT_PRIMARY,
    "design_dark_default_color_on_surface": NETFLIX_TEXT_PRIMARY,
    "design_default_color_on_surface": NETFLIX_TEXT_PRIMARY,
    "mini_color_title_text": NETFLIX_TEXT_PRIMARY,
    "white_100": NETFLIX_TEXT_PRIMARY,

    # Secondary Text -> #A3A3A3
    "text_02": NETFLIX_TEXT_SECONDARY,
    "text02": NETFLIX_TEXT_SECONDARY,
    "short_tv_text_02": NETFLIX_TEXT_SECONDARY,
    "ad_text02": NETFLIX_TEXT_SECONDARY,
    "text_ad_2": NETFLIX_TEXT_SECONDARY,
    "main_operation_movie_more_text": NETFLIX_TEXT_SECONDARY,
    "color_score": NETFLIX_TEXT_SECONDARY,
    "white_80": NETFLIX_TEXT_SECONDARY,

    # Tertiary / Muted Text -> #737373
    "text_03": NETFLIX_TEXT_MUTED,
    "text_04": NETFLIX_TEXT_MUTED,
    "text_05": NETFLIX_TEXT_MUTED,
    "short_tv_text_03": NETFLIX_TEXT_MUTED,
    "short_tv_text_04": NETFLIX_TEXT_MUTED,
    "gray_40": NETFLIX_TEXT_MUTED,
    "gray_50": NETFLIX_TEXT_MUTED,
    "gray_60": NETFLIX_TEXT_MUTED,

    # Borders & Dividers -> #2A2A2A
    "border": NETFLIX_BORDER,
    "border_2": NETFLIX_BORDER,
    "border_3": NETFLIX_BORDER,
    "border_4": NETFLIX_BORDER,
    "line_01": NETFLIX_BORDER,
    "line_02": NETFLIX_BORDER,
    "line_03": NETFLIX_BORDER,
    "short_tv_line_01": NETFLIX_BORDER,
    "ad_line": NETFLIX_BORDER,
    "dialog_line": NETFLIX_BORDER,
    "dialog_divider_line_bg": NETFLIX_BORDER,
    "download_dialog_line": NETFLIX_BORDER,
    "download_history_line": NETFLIX_BORDER,
    "mini_color_divider_01": NETFLIX_BORDER,
    "mini_color_divider_02": NETFLIX_BORDER,

    # Netflix Red Accents (#E50914) & Tonal Variations
    "brand": NETFLIX_RED,
    "brand_50": NETFLIX_RED,
    "brand_40": NETFLIX_RED_HOVER,
    "brand_30": NETFLIX_RED_LIGHT,
    "brand_10": NETFLIX_RED_ALPHA_20,
    "brand_0": NETFLIX_RED_ALPHA_10,
    "brand_00": "#00e50914",
    "brand_60": NETFLIX_RED_DARK_1,
    "brand_70": NETFLIX_RED_DARK_2,
    "brand_80": NETFLIX_RED_DARK_3,
    "brand_90": NETFLIX_RED_DARK_4,
    "brand_0_10_bg": NETFLIX_RED_ALPHA_20,
    "brand_trans_10": NETFLIX_RED_ALPHA_10,
    "brand_trans_16": NETFLIX_RED_ALPHA_16,
    "brand_trans_20": NETFLIX_RED_ALPHA_20,
    "brand_dark_00": NETFLIX_RED_DARK_4,
    "brand_dark_10": NETFLIX_RED_DARK_3,
    "brand_dark_20": NETFLIX_RED_DARK_2,
    "brand_dark_30": NETFLIX_RED_DARK_1,
    "brand_dark_40": "#ffd00812",
    "brand_dark_50": NETFLIX_RED,
    "brand_dark_60": NETFLIX_RED_HOVER,
    "brand_dark_70": NETFLIX_RED_LIGHT,
    "brand_dark_80": "#ffff858d",
    "brand_dark_90": "#ffffb3b8",
    "brand_light_00": NETFLIX_RED_DARK_4,
    "brand_light_10": NETFLIX_RED_DARK_3,
    "brand_light_20": NETFLIX_RED_DARK_2,
    "brand_light_30": NETFLIX_RED_LIGHT,
    "brand_light_40": NETFLIX_RED_HOVER,
    "brand_light_50": NETFLIX_RED,
    "brand_light_60": NETFLIX_RED_DARK_1,
    "brand_light_70": NETFLIX_RED_DARK_2,
    "brand_light_80": NETFLIX_RED_DARK_3,
    "brand_light_90": NETFLIX_RED_DARK_4,
    "brand_new_50": NETFLIX_RED,
    "main": NETFLIX_RED,
    "main_10": NETFLIX_RED_ALPHA_10,
    "main_20": NETFLIX_RED_ALPHA_20,
    "theme": NETFLIX_RED,
    "common_accent_color": NETFLIX_RED,
    "update_brand": NETFLIX_RED,
    "short_tv_main": NETFLIX_RED,
    "short_tv_brand_dark_50": NETFLIX_RED,
    "subtitle_color_green": NETFLIX_RED,
    "color_07B84E": NETFLIX_RED,
    "color_08C962": NETFLIX_RED,
    "color_2FF58B": NETFLIX_RED,
    "color_collection_name": NETFLIX_RED,
    "color_keyword": NETFLIX_RED,
    "color_download_episode_name_sel": NETFLIX_RED,
    "color_video_detail_episode_name_sel": NETFLIX_RED,
    "color_video_detail_episode_bg_sel": NETFLIX_RED_ALPHA_20,
    "color_DFF7E4": NETFLIX_RED_ALPHA_20,
    "downloading_progress": NETFLIX_RED,
    "download_ic_in": NETFLIX_RED,
    "cl_ic_download_home": NETFLIX_RED,
    "accent_material_dark": NETFLIX_RED,
    "accent_material_light": NETFLIX_RED,
    "material_deep_teal_200": NETFLIX_RED,
    "material_deep_teal_500": NETFLIX_RED,
    "teal_200": NETFLIX_RED,
    "teal_700": NETFLIX_RED_DARK_1,
    "sub_operation_filter_bg": NETFLIX_RED_ALPHA_16,
    "sub_operation_filter_text": NETFLIX_RED,
    "ad_button_bg_color": NETFLIX_RED,
    "bottom_sheet_btn": NETFLIX_RED,
    "login_color_progress": NETFLIX_RED,
    "kids_color_primary": NETFLIX_RED,

    # Gradient Tokens (mapped to stylish Netflix Red Gradient)
    "brand_new_gradient_start": NETFLIX_RED,
    "brand_new_gradient_center": "#ffd00812",
    "brand_new_gradient_end": NETFLIX_RED_DARK_1,
    "brand_new_gradient_start_12": NETFLIX_RED_ALPHA_12,
    "brand_new_gradient_center_12": "#1fd00812",
    "brand_new_gradient_end_12": "#1fb80710",
    "brand_new_gradient_start_20": NETFLIX_RED_ALPHA_20,
    "brand_new_gradient_center_20": "#33d00812",
    "brand_new_gradient_end_20": "#33b80710",
    "brand_new_gradient_start_50": NETFLIX_RED_ALPHA_50,
    "brand_new_gradient_center_50": "#80d00812",
    "brand_new_gradient_end_50": "#80b80710",

    "brand_gradient_start": NETFLIX_RED,
    "brand_gradient_center": "#ffd00812",
    "brand_gradient_end": NETFLIX_RED_DARK_1,
    "brand_gradient_start_20": NETFLIX_RED_ALPHA_20,
    "brand_gradient_center_20": "#33d00812",
    "brand_gradient_end_20": "#33b80710",
    "brand_gradient_start_40": "#66e50914",
    "brand_gradient_center_40": "#66d00812",
    "brand_gradient_end_40": "#66b80710",
    "brand_gradient_start_60": "#99e50914",
    "brand_gradient_center_60": "#99d00812",
    "brand_gradient_end_60": "#99b80710",
    "brand_gradient_start_80": NETFLIX_RED_ALPHA_80,
    "brand_gradient_center_80": "#ccd00812",
    "brand_gradient_end_80": "#ccb80710",
    "brand_gradient_center_color": "#ffd00812",

    "main_gradient_start": NETFLIX_RED,
    "main_gradient_center": "#ffd00812",
    "main_gradient_end": NETFLIX_RED_DARK_1,
    "main_gradient_start_40": "#66e50914",
    "main_gradient_center_40": "#66d00812",
    "main_gradient_end_40": "#66b80710",

    "share_brand_gradient_start": NETFLIX_RED,
    "share_brand_gradient_center": "#ffd00812",
    "share_brand_gradient_end": NETFLIX_RED_DARK_1,

    "short_tv_main_gradient_start": NETFLIX_RED,
    "short_tv_main_gradient_center": "#ffd00812",
    "short_tv_main_gradient_end": NETFLIX_RED_DARK_1,
    "short_tv_main_gradient_start_20": NETFLIX_RED_ALPHA_20,
    "short_tv_main_gradient_center_20": "#33d00812",
    "short_tv_main_gradient_end_20": "#33b80710",
    "short_tv_main_gradient_start_40": "#66e50914",
    "short_tv_main_gradient_center_40": "#66d00812",
    "short_tv_main_gradient_end_40": "#66b80710",

    "live_brand_start": NETFLIX_RED,
    "live_brand_end": NETFLIX_RED_DARK_1,
    "gradient_start": NETFLIX_RED,
    "gradient_center": "#ffd00812",
    "gradient_end": NETFLIX_RED_DARK_1,
    "lib_web_brand_start": NETFLIX_RED,
    "kids_gradient_blue": NETFLIX_RED,
    "kids_color_gradient_start": NETFLIX_RED_ALPHA_20,
    "color_1fbdff_5p": NETFLIX_RED_ALPHA_10,
    "color_0ba7ff": NETFLIX_RED,
    "color_31baf5": NETFLIX_RED,
    "color_4c9ffe": NETFLIX_RED,
    "cl12": NETFLIX_RED,
    "cl17": NETFLIX_RED_ALPHA_10,
}

def patch_xml_file(src_path, dst_path, is_night=False):
    os.makedirs(os.path.dirname(dst_path), exist_ok=True)
    with open(src_path, "r", encoding="utf-8") as f:
        content = f.read()

    # Parse and modify elements
    tree = ET.parse(src_path)
    root = tree.getroot()

    replaced_count = 0
    for elem in root:
        name = elem.attrib.get("name")
        if name in COLOR_NAME_MAP:
            elem.text = COLOR_NAME_MAP[name]
            replaced_count += 1
        elif is_night and name in ["black"]:
            elem.text = NETFLIX_MAIN_BG
            replaced_count += 1

    # Preserve formatting using regex substitution for exact in-place edits
    for name, new_val in COLOR_NAME_MAP.items():
        pattern = rf'(<color\s+name="{re.escape(name)}">)(.*?)(</color>)'
        content, n = re.subn(pattern, rf'\g<1>{new_val}\g<3>', content)
        if n > 0:
            pass

    with open(dst_path, "w", encoding="utf-8") as f:
        f.write(content)

    print(f"Patched {dst_path}: updated {len(COLOR_NAME_MAP)} mapping rules.")

def patch_drawables():
    # Update drawables with hardcoded aqua / green hex colors to Netflix Red tones
    drawables_to_patch = [
        "ad_shape_btn_17_bg.xml",
        "ad_shape_gradient.xml",
        "base_ui_bg_activate_3.xml",
        "bg_btn_module_07.xml",
        "bg_hashtag_item_seleted.xml",
        "bg_kids_dialog_header_gradient.xml",
        "bg_linear_r16.xml",
        "bg_linear_r4.xml",
        "bg_search_secondtab_seleted.xml",
        "bg_sr_dialog_top.xml",
        "download_intercept_icon_bg.xml",
        "ic_ok.xml",
        "long_vod_ps_btn_bg_1.xml",
        "short_tv_alert_dialog_btn_primary_bg.xml",
        "short_tv_bg_video_list_tab_seleted.xml",
        "short_tv_locked_btn_buy_bg.xml",
        "subtitle_checked.xml",
        "subtitle_download_green.xml",
        "transfer_wifi_sender.xml",
        "treasure_bg_4_brand_2_shape.xml",
        "treasure_bg_4_brand_shape.xml",
    ]

    # Replacement pairs
    replacements = [
        ("#ff1cb7ff", "#ffe50914"),  # aqua start -> Netflix red
        ("#ff2ff58b", "#ffb80710"),  # mint end -> dark red
        ("#ff07b84e", "#ffe50914"),  # green -> Netflix red
        ("#331cb7ff", "#33e50914"),  # 20% aqua -> 20% red
        ("#332ff58b", "#33e50914"),  # 20% mint -> 20% red
        ("#321cb7ff", "#32e50914"),
        ("#322ff58b", "#32e50914"),
        ("#1f07b84e", "#1fe50914"),
        ("#0f1cb7ff", "#0fe50914"),
        ("#0f2ff58b", "#0fe50914"),
        ("@color/color_2FF58B", "@color/brand"),
    ]

    dst_drawable_dir = os.path.join(PATCHES_BASE, "res", "drawable")
    os.makedirs(dst_drawable_dir, exist_ok=True)

    patched_files = []
    for dname in drawables_to_patch:
        src_file = os.path.join(INSPECT_DIR, "res", "drawable", dname)
        if not os.path.exists(src_file):
            print(f"Skipping {dname}, not found in inspect_res")
            continue
        with open(src_file, "r", encoding="utf-8") as f:
            c = f.read()
        for old_val, new_val in replacements:
            c = c.replace(old_val, new_val)
        dst_file = os.path.join(dst_drawable_dir, dname)
        with open(dst_file, "w", encoding="utf-8") as f:
            f.write(c)
        patched_files.append(f"res/drawable/{dname}")

    print(f"Patched {len(patched_files)} drawable files.")
    return patched_files

def patch_blurred_sector_view():
    # Smali neutralizing BlurredSectorView.smali onDraw
    src_smali = os.path.join(BASE_DIR, "build_staging", "decomp_dex5", "smali", "com", "transsion", "baseui", "widget", "BlurredSectorView.smali")
    dst_smali = os.path.join(PATCHES_BASE, "smali_classes5", "com", "transsion", "baseui", "widget", "BlurredSectorView.smali")
    os.makedirs(os.path.dirname(dst_smali), exist_ok=True)

    with open(src_smali, "r", encoding="utf-8") as f:
        content = f.read()

    # 1. Replace #9900512F with #00000000 in method a()
    content = content.replace('"#9900512F"', '"#00000000"')

    # 2. Replace onDraw method body with return-void
    on_draw_pattern = r'(\.method protected onDraw\(Landroid/graphics/Canvas;\)V\s*\.locals \d+)(.*?)(\.end method)'
    new_on_draw = r'''\1

    return-void
.end method'''
    content = re.sub(on_draw_pattern, new_on_draw, content, flags=re.DOTALL)

    with open(dst_smali, "w", encoding="utf-8") as f:
        f.write(content)

    print(f"Neutralized BlurredSectorView.smali at {dst_smali}")
    return "smali_classes5/com/transsion/baseui/widget/BlurredSectorView.smali"

if __name__ == "__main__":
    print("Generating Netflix Dark Theme patch...")
    patch_xml_file(
        os.path.join(INSPECT_DIR, "res", "values", "colors.xml"),
        os.path.join(PATCHES_BASE, "res", "values", "colors.xml"),
        is_night=False
    )
    patch_xml_file(
        os.path.join(INSPECT_DIR, "res", "values-night", "colors.xml"),
        os.path.join(PATCHES_BASE, "res", "values-night", "colors.xml"),
        is_night=True
    )
    bsv_path = patch_blurred_sector_view()
    drawable_paths = patch_drawables()
    print("Generation complete!")
