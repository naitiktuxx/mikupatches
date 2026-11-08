import os
import re

def apply_hook(decompiled_dir, app_profile, verbose=False):
    """
    Hook for modern_floating_dock_ui:
    Updates tab_bottom_show_height in res/values/dimens.xml to 82.0dp
    so all scrolling lists cleanly clear the floating dock at the bottom.
    """
    res_dir = os.path.join(decompiled_dir, "res")
    if not os.path.exists(res_dir):
        return

    dimens_path = os.path.join(res_dir, "values", "dimens.xml")
    if os.path.exists(dimens_path):
        try:
            with open(dimens_path, "r", encoding="utf-8") as f:
                content = f.read()

            modified = re.sub(
                r'(<dimen\s+name="tab_bottom_show_height"[^>]*>)(.*?)(</dimen>)',
                r'\g<1>82.0dp\g<3>',
                content
            )

            if modified != content:
                with open(dimens_path, "w", encoding="utf-8") as f:
                    f.write(modified)
                if verbose:
                    print("  -> Updated tab_bottom_show_height in res/values/dimens.xml to 82.0dp")
        except Exception as e:
            if verbose:
                print(f"  [warn] Failed to update dimens.xml: {e}")
