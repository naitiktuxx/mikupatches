"""
APK alignment (zipalign) and signing (apksigner) operations.
"""

import os
import shutil
import zipfile
from typing import Optional, List, Dict

from mikupatches.toolchain import Toolchain
from mikupatches.ui.console import Console


class ApkSigner:
    """Handles stripping old signatures, 4-byte zipalign, and apksigner execution."""

    @classmethod
    def strip_meta_inf(cls, apk_path: str, verbose: bool = False):
        """Strips old signature entries from META-INF inside APK using pure Python with CLI fallback."""
        try:
            temp_apk = apk_path + ".strip.tmp"
            with zipfile.ZipFile(apk_path, "r") as zin:
                with zipfile.ZipFile(temp_apk, "w", zipfile.ZIP_DEFLATED) as zout:
                    for item in zin.infolist():
                        # Exclude Android signature and manifest files in META-INF
                        fname_upper = item.filename.upper()
                        if fname_upper.startswith("META-INF/") and (
                            fname_upper.endswith((".SF", ".RSA", ".DSA", ".EC", ".MF"))
                            or "SIG-" in fname_upper
                            or fname_upper.startswith("META-INF/CERT.")
                        ):
                            continue
                        zout.writestr(item, zin.read(item.filename))
            os.replace(temp_apk, apk_path)
            Console.debug(f"Stripped existing signatures from {os.path.basename(apk_path)}.", verbose=verbose)
        except Exception as e:
            Console.debug(f"Python zipfile strip fallback due to: {e}", verbose=verbose)
            Toolchain.run_cmd(f'zip -d "{apk_path}" "META-INF/*" || true', check=False, verbose=verbose)

    @classmethod
    def align_and_sign(
        cls,
        input_apk: str,
        output_apk: str,
        keystore_path: str,
        ks_pass: str = "android",
        ks_alias: str = "androiddebugkey",
        key_pass: str = "android",
        v1: bool = True,
        v2: bool = True,
        v3: bool = True,
        v4: bool = False,
        verbose: bool = False,
    ):
        zipalign_bin = Toolchain.get_zipalign()
        apksigner_bin = Toolchain.get_apksigner()

        if not zipalign_bin or not apksigner_bin:
            raise RuntimeError(
                "Missing 'zipalign' or 'apksigner'. Both are required to sign APK packages."
            )

        os.makedirs(os.path.dirname(output_apk), exist_ok=True)
        unaligned_tmp = output_apk + ".unaligned"
        shutil.copyfile(input_apk, unaligned_tmp)

        # 1. Strip old META-INF signatures
        cls.strip_meta_inf(unaligned_tmp, verbose=verbose)

        # 2. 4-byte Page Alignment
        zipalign_cmd = f'"{zipalign_bin}" -p -f -v 4 "{unaligned_tmp}" "{output_apk}"'
        Toolchain.run_cmd(zipalign_cmd, check=True, verbose=verbose)

        if os.path.exists(unaligned_tmp):
            os.remove(unaligned_tmp)

        # 3. APK Signing
        sign_args = [
            f'"{apksigner_bin}"',
            "sign",
            f'--v1-signing-enabled {"true" if v1 else "false"}',
            f'--v2-signing-enabled {"true" if v2 else "false"}',
            f'--v3-signing-enabled {"true" if v3 else "false"}',
        ]
        if v4:
            sign_args.append('--v4-signing-enabled true')
        sign_args.extend([
            f'--ks "{keystore_path}"',
            f'--ks-pass pass:"{ks_pass}"',
            f'--key-pass pass:"{key_pass}"',
            f'--ks-key-alias "{ks_alias}"',
            f'"{output_apk}"',
        ])
        sign_cmd = " ".join(sign_args)
        Toolchain.run_cmd(sign_cmd, check=True, verbose=verbose)

        # 4. Integrity & Signature Verification
        verify_align = f'"{zipalign_bin}" -c -v 4 "{output_apk}"'
        Toolchain.run_cmd(verify_align, check=True, verbose=verbose)

        verify_sign = f'"{apksigner_bin}" verify --verbose "{output_apk}"'
        Toolchain.run_cmd(verify_sign, check=True, verbose=verbose)

    @classmethod
    def sign_all_splits(
        cls,
        bundle_staging: str,
        build_staging: str,
        keystore_path: str,
        ks_pass: str = "android",
        ks_alias: str = "androiddebugkey",
        key_pass: str = "android",
        verbose: bool = False,
    ) -> Dict[str, str]:
        staged_splits = {}
        for fname in sorted(os.listdir(bundle_staging)):
            fpath = os.path.join(bundle_staging, fname)
            if fname.endswith(".apk") and fname != "base.apk":
                out_staged = os.path.join(build_staging, fname)
                cls.align_and_sign(
                    input_apk=fpath,
                    output_apk=out_staged,
                    keystore_path=keystore_path,
                    ks_pass=ks_pass,
                    ks_alias=ks_alias,
                    key_pass=key_pass,
                    verbose=verbose,
                )
                staged_splits[fname] = out_staged
        return staged_splits
