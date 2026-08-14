"""
Apktool execution wrapper for decompiling and building Android APKs.
"""

import os
import re
import xml.etree.ElementTree as ET
from typing import Tuple, Optional

from mikupatches.toolchain import Toolchain
from mikupatches.ui.console import Console


class ApktoolRunner:
    """Wrapper around Apktool CLI operations."""

    @classmethod
    def decompile(
        cls,
        apk_path: str,
        output_dir: str,
        framework_dir: Optional[str] = None,
        no_src: bool = False,
        no_res: bool = False,
        extra_args: Optional[str] = None,
        verbose: bool = False,
    ):
        apktool_bin = Toolchain.get_apktool() or "apktool"
        cmd = f'"{apktool_bin}" d -f'

        if framework_dir and os.path.exists(framework_dir):
            cmd += f' -p "{framework_dir}"'
        if no_src:
            cmd += " -s"
        if no_res:
            cmd += " -r"
        if extra_args:
            cmd += f" {extra_args}"

        cmd += f' "{apk_path}" -o "{output_dir}"'

        Console.step("Decompiling APK package with Apktool...")
        res = Toolchain.run_cmd(cmd, check=False, verbose=verbose)
        if res.returncode != 0:
            Console.error("APKTOOL DECOMPILATION FAILED!")
            if verbose or not Console._color_enabled:
                print(res.stderr or res.stdout)
            raise RuntimeError(f"Apktool decompilation failed with exit code {res.returncode}:\n{res.stderr or res.stdout}")

    @classmethod
    def build(
        cls,
        decompiled_dir: str,
        output_apk: str,
        framework_dir: Optional[str] = None,
        use_aapt2: bool = False,
        extra_args: Optional[str] = None,
        verbose: bool = False,
    ):
        apktool_bin = Toolchain.get_apktool() or "apktool"
        cmd = f'"{apktool_bin}" b -f'

        if framework_dir and os.path.exists(framework_dir):
            cmd += f' -p "{framework_dir}"'
        if use_aapt2:
            cmd += " --use-aapt2"
        if extra_args:
            cmd += f" {extra_args}"

        cmd += f' "{decompiled_dir}" -o "{output_apk}"'

        Console.step("Recompiling patched APK with Apktool...")
        res = Toolchain.run_cmd(cmd, check=False, verbose=verbose)
        if res.returncode != 0:
            Console.error("APKTOOL RECOMPILATION FAILED!")
            if verbose or not Console._color_enabled:
                print(res.stderr or res.stdout)
            raise RuntimeError(
                f"Apktool recompilation failed with exit code {res.returncode}.\n"
                f"A Smali syntax error, missing resource, or ID collision occurred.\n"
                f"Details:\n{res.stderr or res.stdout}"
            )

    @classmethod
    def parse_package_and_version(cls, decompiled_dir: str) -> Tuple[Optional[str], Optional[str], Optional[str]]:
        apktool_yml = os.path.join(decompiled_dir, "apktool.yml")
        manifest_xml = os.path.join(decompiled_dir, "AndroidManifest.xml")
        ver_name = None
        ver_code = None
        pkg_name = None

        if os.path.exists(apktool_yml):
            with open(apktool_yml, "r", encoding="utf-8", errors="ignore") as f:
                content = f.read()
                m_name = re.search(r"versionName:\s*['\"]?([^'\"\n]+)['\"]?", content)
                m_code = re.search(r"versionCode:\s*['\"]?([^'\"\n]+)['\"]?", content)
                m_pkg_yml = re.search(r"renameManifestPackage:\s*['\"]?([^'\"\n]+)['\"]?", content)
                if m_name and m_name.group(1).strip() != "null":
                    ver_name = m_name.group(1).strip()
                if m_code and m_code.group(1).strip() != "null":
                    ver_code = m_code.group(1).strip()
                if m_pkg_yml and m_pkg_yml.group(1).strip() != "null":
                    pkg_name = m_pkg_yml.group(1).strip()

        if os.path.exists(manifest_xml):
            try:
                with open(manifest_xml, "r", encoding="utf-8", errors="ignore") as f:
                    content = f.read()
                m_pkg = re.search(r'package=["\']([^"\']+)["\']', content)
                if m_pkg:
                    pkg_name = m_pkg.group(1).strip()
                if not ver_name:
                    m_vname = re.search(r'android:versionName=["\']([^"\']+)["\']', content)
                    if m_vname:
                        ver_name = m_vname.group(1).strip()
                if not ver_code:
                    m_vcode = re.search(r'android:versionCode=["\']([^"\']+)["\']', content)
                    if m_vcode:
                        ver_code = m_vcode.group(1).strip()
            except Exception:
                pass

            # If manifest is in binary AXML format (from -r decompilation)
            if not pkg_name or not ver_name:
                try:
                    b_pkg, b_vname, b_vcode = cls._parse_binary_axml(manifest_xml)
                    if b_pkg and not pkg_name:
                        pkg_name = b_pkg
                    if b_vname and not ver_name:
                        ver_name = b_vname
                    if b_vcode and not ver_code:
                        ver_code = b_vcode
                except Exception:
                    pass

        return pkg_name, ver_name, ver_code

    @classmethod
    def _parse_binary_axml(cls, manifest_path: str) -> Tuple[Optional[str], Optional[str], Optional[str]]:
        import struct
        with open(manifest_path, "rb") as f:
            data = f.read()
        if len(data) < 8 or data[0:2] != b"\x03\x00":
            return None, None, None
        idx = 8
        strings = []
        while idx < len(data) - 8:
            chunk_type, chunk_size = struct.unpack("<II", data[idx:idx+8])
            if chunk_type == 0x001c0001:
                string_count, style_count, flags, strings_start, styles_start = struct.unpack("<IIIII", data[idx+8:idx+28])
                is_utf8 = bool(flags & (1 << 8))
                offsets = struct.unpack(f"<{string_count}I", data[idx+28:idx+28+string_count*4])
                pool_data = data[idx+strings_start:]
                for off in offsets:
                    if is_utf8:
                        str_len = pool_data[off+1]
                        s = pool_data[off+2:off+2+str_len].decode("utf-8", errors="ignore")
                    else:
                        str_len = struct.unpack("<H", pool_data[off:off+2])[0]
                        s = pool_data[off+2:off+2+str_len*2].decode("utf-16le", errors="ignore")
                    strings.append(s)
                idx += chunk_size
                break
            idx += chunk_size

        pkg_name, ver_name, ver_code = None, None, None
        while idx < len(data) - 8:
            chunk_type, chunk_size = struct.unpack("<II", data[idx:idx+8])
            if chunk_type == 0x00100102: # START_TAG <manifest>
                attr_start, attr_size, attr_count = struct.unpack("<HHH", data[idx+24:idx+30])
                attr_offset = idx + 16 + attr_start
                for _ in range(attr_count):
                    attr_ns, attr_name_idx, attr_raw_val, attr_type, attr_data = struct.unpack("<IIIII", data[attr_offset:attr_offset+20])
                    attr_name = strings[attr_name_idx] if 0 <= attr_name_idx < len(strings) else ""
                    val = strings[attr_raw_val] if (0 <= attr_raw_val < len(strings) and attr_raw_val != 0xffffffff) else str(attr_data)
                    if attr_name == "package":
                        pkg_name = val
                    elif attr_name == "versionName":
                        ver_name = val
                    elif attr_name == "versionCode":
                        ver_code = str(attr_data) if attr_type in (16, 17) else val
                    attr_offset += attr_size
                break
            idx += chunk_size

        return pkg_name, ver_name, ver_code
