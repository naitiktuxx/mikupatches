"""
Universal App Cloner and Dual Installation Patcher.
Enables parallel installation alongside original applications by renaming package names,
qualifying relative manifest components, and resolving conflicting provider authorities.
"""

import os
import re
import struct
import zipfile
import tempfile
import xml.etree.ElementTree as ET
from typing import Dict, Any, Optional, List, Tuple

from mikupatches.constants import Colors
from mikupatches.ui.console import Console


class AppCloner:
    """Universal patcher to clone any Android APK for dual/parallel installation."""

    CLONE_PATCH_ID = "clone_dual_install"
    CLONE_DEFAULT_SUFFIX = ".tux"
    CLONE_PATCH_NAME = "App Clone (Dual Install)"
    CLONE_PATCH_DESC = "Allows installing alongside the original app (adds .tux to package name)"

    @classmethod
    def get_universal_patch_group_dict(cls) -> Dict[str, Any]:
        return {
            "id": cls.CLONE_PATCH_ID,
            "name": cls.CLONE_PATCH_NAME,
            "desc": cls.CLONE_PATCH_DESC,
            "default": False,
            "files": {},
            "regex_rules": [],
            "hooks": [],
        }

    @classmethod
    def apply_clone(
        cls,
        decompiled_dir: str,
        orig_pkg: str,
        suffix: str = CLONE_DEFAULT_SUFFIX,
        custom_pkg: Optional[str] = None,
        dry_run: bool = False,
        verbose: bool = False,
    ) -> Dict[str, Any]:
        """Performs complete manifest, provider authority, and bytecode transformations for cloning."""
        new_pkg = custom_pkg or f"{orig_pkg}{suffix}"
        action_word = "Simulating clone" if dry_run else "Applying clone"
        Console.step(f"{action_word}: Renaming package {Colors.CYAN}{orig_pkg}{Colors.RESET} -> {Colors.GREEN}{new_pkg}{Colors.RESET}...")

        manifest_path = os.path.join(decompiled_dir, "AndroidManifest.xml")
        if not os.path.exists(manifest_path):
            raise FileNotFoundError(f"AndroidManifest.xml not found in {decompiled_dir}")

        with open(manifest_path, "r", encoding="utf-8", errors="ignore") as f:
            content = f.read()

        # 1. Expand relative component names to fully qualified original package names
        # e.g., android:name=".MainActivity" -> android:name="orig_pkg.MainActivity"
        def expand_relative_name(match):
            prefix = match.group(1)
            rel_name = match.group(2)
            if rel_name.startswith("."):
                full_name = f"{orig_pkg}{rel_name}"
            elif "." not in rel_name:
                full_name = f"{orig_pkg}.{rel_name}"
            else:
                full_name = rel_name
            return f'{prefix}="{full_name}"'

        content = re.sub(
            r'(android:name)\s*=\s*["\'](\.[a-zA-Z0-9_$.]+|[a-zA-Z0-9_$]+)["\']',
            expand_relative_name,
            content,
        )

        # 2. Update root package attribute in <manifest ... package="...">
        pkg_pattern = r'(<manifest\b[^>]*?\bpackage\s*=\s*["\'])' + re.escape(orig_pkg) + r'(["\'])'
        content = re.sub(pkg_pattern, r'\g<1>' + new_pkg + r'\g<2>', content)

        # 3. Update custom permissions defined by the app: <permission android:name="orig_pkg...">, <uses-permission...>, and <permission-group...>
        def update_permission_name(match):
            tag = match.group(1)
            attr = match.group(2)
            perm_name = match.group(3)
            new_perm = perm_name.replace(orig_pkg, new_pkg)
            return f'<{tag} {attr}="{new_perm}"'

        content = re.sub(
            r'<(permission|uses-permission|permission-group)\s+([^>]*?\bandroid:name)\s*=\s*["\'](' + re.escape(orig_pkg) + r'\.[^"\']+)["\']',
            update_permission_name,
            content,
        )

        # 4. Update ContentProvider Authorities: android:authorities="orig_pkg..."
        # Providers must have globally unique authorities across all installed apps on Android.
        def update_authorities(match):
            attr = match.group(1)
            auth_val = match.group(2)
            authorities = [a.strip() for a in auth_val.split(";")]
            new_authorities = []
            for auth in authorities:
                if orig_pkg in auth:
                    new_auth = auth.replace(orig_pkg, new_pkg)
                else:
                    new_auth = f"{auth}{suffix}"
                new_authorities.append(new_auth)
            return f'{attr}="{";".join(new_authorities)}"'

        content = re.sub(
            r'(android:authorities)\s*=\s*["\']([^"\']+)["\']',
            update_authorities,
            content,
        )

        # 5. Remove split APK requirements and Google Play split meta-data
        # This prevents INSTALL_FAILED_MISSING_SPLIT when installing standalone APKs
        content = re.sub(r'\s*android:requiredSplitTypes\s*=\s*["\'][^"\']*["\']', '', content)
        content = re.sub(r'\s*android:splitTypes\s*=\s*["\'][^"\']*["\']', '', content)
        content = re.sub(r'\s*android:isSplitRequired\s*=\s*["\']true["\']', ' android:isSplitRequired="false"', content)
        content = re.sub(r'<meta-data\s+[^>]*?\bandroid:name\s*=\s*["\']com\.android\.vending\.splits[^"\']*["\'][^>]*?>(\s*</meta-data>)?\s*', '', content)
        content = re.sub(r'<meta-data\s+[^>]*?\bandroid:name\s*=\s*["\']com\.android\.stamp\.[^"\']*["\'][^>]*?>(\s*</meta-data>)?\s*', '', content)
        content = re.sub(r'<meta-data\s+[^>]*?\bandroid:name\s*=\s*["\']com\.android\.vending\.derived\.apk\.id["\'][^>]*?>(\s*</meta-data>)?\s*', '', content)

        if not dry_run:
            with open(manifest_path, "w", encoding="utf-8") as f:
                f.write(content)

        # 6. Update Provider Authorities & Package string references in Smali files
        smali_updated_count = 0
        if not dry_run:
            for root, _, files in os.walk(decompiled_dir):
                rel_root = os.path.relpath(root, decompiled_dir)
                if rel_root != "." and not rel_root.split(os.sep)[0].startswith("smali"):
                    continue
                for fname in files:
                    if fname.endswith(".smali"):
                        sfile = os.path.join(root, fname)
                        try:
                            with open(sfile, "r", encoding="utf-8", errors="ignore") as sf:
                                scontent = sf.read()

                            # Replace hardcoded authority strings (e.g. "io.appground.blek.fileprovider")
                            modified_scontent = scontent
                            # Replace occurrences of old authority or permission strings
                            old_auth_needle = f'"{orig_pkg}.'
                            new_auth_needle = f'"{new_pkg}.'
                            if old_auth_needle in modified_scontent:
                                modified_scontent = modified_scontent.replace(old_auth_needle, new_auth_needle)
                                with open(sfile, "w", encoding="utf-8") as sf:
                                    sf.write(modified_scontent)
                                smali_updated_count += 1
                        except Exception as e:
                            Console.debug(f"Smali clone check skipped for {fname}: {e}", verbose=verbose)

        Console.success(f"App Clone configured successfully! Package renamed to: {Colors.CYAN}{new_pkg}{Colors.RESET}")
        if smali_updated_count > 0:
            Console.debug(f"Updated authority references across {smali_updated_count} Smali bytecode file(s).", verbose=True)

        return {
            "original_package": orig_pkg,
            "cloned_package": new_pkg,
            "suffix": suffix,
            "manifest_updated": True,
            "smali_files_updated": smali_updated_count,
        }

    @classmethod
    def patch_axml_strings(cls, data: bytes, replacements: Dict[str, str]) -> bytes:
        """
        Parses an Android Binary XML (AXML) buffer and replaces strings in its StringPool table.
        Supports both UTF-8 and UTF-16 encoded string tables and maintains 4-byte chunk alignment.
        """
        if len(data) < 8:
            return data

        # 1. Root Chunk Header
        chunk_type, root_header_sz, root_total_sz = struct.unpack("<HHI", data[0:8])
        if chunk_type != 0x0003:  # RES_XML_TYPE
            return data

        # 2. StringPool Chunk Header
        sp_pos = root_header_sz
        if len(data) < sp_pos + 8:
            return data

        sp_type, sp_header_sz, sp_total_sz = struct.unpack("<HHI", data[sp_pos : sp_pos + 8])
        if sp_type != 0x0001:  # RES_STRING_POOL_TYPE
            return data

        str_count, style_count, flags, strings_start, styles_start = struct.unpack(
            "<IIIII", data[sp_pos + 8 : sp_pos + 28]
        )
        is_utf8 = bool(flags & (1 << 8))

        # 3. Read String Offsets
        offsets = list(
            struct.unpack(f"<{str_count}I", data[sp_pos + 28 : sp_pos + 28 + str_count * 4])
        )
        base_strings = sp_pos + strings_start
        strings = []

        # 4. Extract Existing Strings
        for off in offsets:
            p = base_strings + off
            if is_utf8:
                # UTF-8 decoding: read char length, byte length, then UTF-8 bytes
                b1 = data[p]
                p += 1
                if b1 & 0x80:
                    p += 1
                b2 = data[p]
                p += 1
                if b2 & 0x80:
                    b2 = ((b2 & 0x7F) << 8) | data[p]
                    p += 1
                s = data[p : p + b2].decode("utf-8", errors="replace")
            else:
                # UTF-16 decoding: read char length (16-bit uint) then UTF-16LE bytes
                u16_len = struct.unpack("<H", data[p : p + 2])[0]
                if u16_len & 0x8000:
                    u16_len2 = struct.unpack("<H", data[p + 2 : p + 4])[0]
                    u16_len = ((u16_len & 0x7FFF) << 16) | u16_len2
                    p += 4
                else:
                    p += 2
                s = data[p : p + u16_len * 2].decode("utf-16le", errors="replace")
            strings.append(s)

        # 5. Apply Replacements
        new_strings = []
        has_change = False
        for s in strings:
            new_s = s
            for old_val, rep_val in replacements.items():
                if old_val in new_s:
                    new_s = new_s.replace(old_val, rep_val)
                    has_change = True
            new_strings.append(new_s)

        if not has_change:
            return data

        # 6. Re-encode Strings into String Table
        new_str_data = bytearray()
        new_offsets = []

        for s in new_strings:
            new_offsets.append(len(new_str_data))
            if is_utf8:
                s_bytes = s.encode("utf-8")
                char_len = len(s)
                byte_len = len(s_bytes)
                if char_len > 127:
                    new_str_data.extend(bytes([(char_len >> 8) | 0x80, char_len & 0xFF]))
                else:
                    new_str_data.append(char_len)
                if byte_len > 127:
                    new_str_data.extend(bytes([(byte_len >> 8) | 0x80, byte_len & 0xFF]))
                else:
                    new_str_data.append(byte_len)
                new_str_data.extend(s_bytes)
                new_str_data.append(0)
            else:
                s_bytes = s.encode("utf-16le")
                char_len = len(s)
                if char_len > 0x7FFF:
                    new_str_data.extend(
                        struct.pack("<HH", (char_len >> 16) | 0x8000, char_len & 0xFFFF)
                    )
                else:
                    new_str_data.extend(struct.pack("<H", char_len))
                new_str_data.extend(s_bytes)
                new_str_data.extend(b"\x00\x00")

        while len(new_str_data) % 4 != 0:
            new_str_data.append(0)

        # 7. Preserve Style Chunk if present
        style_data = b""
        if style_count > 0 and styles_start != 0:
            old_style_offset = sp_pos + styles_start
            style_data = data[old_style_offset : sp_pos + sp_total_sz]
            new_styles_start = 28 + (str_count * 4) + (style_count * 4) + len(new_str_data)
        else:
            new_styles_start = 0

        new_strings_start = 28 + (str_count * 4) + (style_count * 4)
        new_sp_total_sz = new_strings_start + len(new_str_data) + len(style_data)
        while new_sp_total_sz % 4 != 0:
            new_sp_total_sz += 1

        new_sp_hdr = struct.pack(
            "<HHI IIIII",
            sp_type,
            sp_header_sz,
            new_sp_total_sz,
            str_count,
            style_count,
            flags,
            new_strings_start,
            new_styles_start,
        )

        new_offsets_bytes = struct.pack(f"<{str_count}I", *new_offsets)
        style_offsets_bytes = b""
        if style_count > 0:
            style_offsets_bytes = data[
                sp_pos + 28 + str_count * 4 : sp_pos + 28 + str_count * 4 + style_count * 4
            ]

        new_sp_chunk = (
            new_sp_hdr
            + new_offsets_bytes
            + style_offsets_bytes
            + bytes(new_str_data)
            + style_data
        )
        while len(new_sp_chunk) < new_sp_total_sz:
            new_sp_chunk += b"\x00"

        # 8. Update Root Chunk Header with total size delta
        delta = len(new_sp_chunk) - sp_total_sz
        new_root_total_sz = root_total_sz + delta
        new_root_hdr = struct.pack("<HHI", chunk_type, root_header_sz, new_root_total_sz)
        rest_of_axml = data[sp_pos + sp_total_sz :]

        return new_root_hdr + new_sp_chunk + rest_of_axml

    @classmethod
    def clone_split_apk(
        cls,
        input_split_apk: str,
        output_split_apk: str,
        orig_pkg: str,
        new_pkg: str,
        suffix: str = CLONE_DEFAULT_SUFFIX,
    ) -> bool:
        """
        Updates AndroidManifest.xml package name and authorities in a split APK,
        removes old META-INF signatures, and writes the transformed split APK.
        """
        replacements = {orig_pkg: new_pkg}
        try:
            with zipfile.ZipFile(input_split_apk, "r") as zin:
                with zipfile.ZipFile(output_split_apk, "w", compression=zipfile.ZIP_DEFLATED) as zout:
                    for item in zin.infolist():
                        # Omit old signature files so the split can be cleanly signed
                        if item.filename.startswith("META-INF/") and (
                            item.filename.endswith((".SF", ".RSA", ".DSA", ".EC", ".MF"))
                            or "MANIFEST.MF" in item.filename
                        ):
                            continue
                        data = zin.read(item.filename)
                        if item.filename == "AndroidManifest.xml":
                            data = cls.patch_axml_strings(data, replacements)
                        zout.writestr(item, data)
            return True
        except Exception as e:
            Console.debug(f"Error cloning split APK '{os.path.basename(input_split_apk)}': {e}")
            return False

    @classmethod
    def clone_all_splits(
        cls,
        bundle_staging: str,
        orig_pkg: str,
        new_pkg: str,
        suffix: str = CLONE_DEFAULT_SUFFIX,
        verbose: bool = False,
    ) -> int:
        """
        Transforms all auxiliary split APKs in bundle_staging in-place to match the cloned package name.
        """
        if not os.path.exists(bundle_staging):
            return 0
        cloned_count = 0
        for fname in sorted(os.listdir(bundle_staging)):
            if fname.endswith(".apk") and fname != "base.apk":
                fpath = os.path.join(bundle_staging, fname)
                tmp_out = f"{fpath}.clone_tmp"
                ok = cls.clone_split_apk(
                    input_split_apk=fpath,
                    output_split_apk=tmp_out,
                    orig_pkg=orig_pkg,
                    new_pkg=new_pkg,
                    suffix=suffix,
                )
                if ok and os.path.isfile(tmp_out):
                    os.replace(tmp_out, fpath)
                    cloned_count += 1
                    Console.debug(f"Cloned split manifest for '{fname}' -> {new_pkg}", verbose=verbose)
        if cloned_count > 0:
            Console.success(f"Updated package name to {Colors.CYAN}{new_pkg}{Colors.RESET} across {cloned_count} split APK(s).")
        return cloned_count
