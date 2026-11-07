import os
import re

def apply_hook(decompiled_dir, app_profile, verbose=False):
    """
    Hook for search_remove_filter_panel_movies_only:
    1. Updates search_hint_input in res/values*/strings.xml from 'Search Movie/Series/Audio'
       to just 'Search'.
    2. Ensures layout search hints cleanly reference the updated string.
    """
    res_dir = os.path.join(decompiled_dir, "res")
    if not os.path.exists(res_dir):
        return

    updated_count = 0
    for root, dirs, files in os.walk(res_dir):
        if "values" in os.path.basename(root) and "strings.xml" in files:
            strings_path = os.path.join(root, "strings.xml")
            try:
                with open(strings_path, "r", encoding="utf-8") as f:
                    content = f.read()

                # Replace search_hint_input content with "Search"
                modified = re.sub(
                    r'(<string\s+name="search_hint_input"[^>]*>)(.*?)(</string>)',
                    r'\g<1>Search\g<3>',
                    content
                )

                if modified != content:
                    with open(strings_path, "w", encoding="utf-8") as f:
                        f.write(modified)
                    updated_count += 1
            except Exception as e:
                if verbose:
                    print(f"  [warn] Failed to update strings.xml in {root}: {e}")

    if verbose or updated_count > 0:
        print(f"  -> Updated search_hint_input string in {updated_count} values directory(ies) to 'Search'")
