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

        return pkg_name, ver_name, ver_code
