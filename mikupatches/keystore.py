"""
Android Keystore management and auto-generation.
"""

import os
from mikupatches.constants import (
    DEFAULT_KEYSTORE_PATH,
    DEFAULT_KS_ALIAS,
    DEFAULT_KS_PASS,
    DEFAULT_KEY_PASS,
    DEFAULT_KS_DNAME,
)
from mikupatches.toolchain import Toolchain
from mikupatches.ui.console import Console


class KeystoreManager:
    """Manages creation, loading, and validation of keystores for APK signing."""

    @classmethod
    def ensure_keystore(
        cls,
        keystore_path: str = DEFAULT_KEYSTORE_PATH,
        ks_alias: str = DEFAULT_KS_ALIAS,
        ks_pass: str = DEFAULT_KS_PASS,
        key_pass: str = DEFAULT_KEY_PASS,
        dname: str = DEFAULT_KS_DNAME,
        verbose: bool = False,
    ) -> str:
        if os.path.exists(keystore_path):
            if os.path.isdir(keystore_path):
                keystore_path = os.path.join(keystore_path, "debug.keystore")
                if os.path.isfile(keystore_path):
                    return keystore_path
            elif os.path.isfile(keystore_path):
                return keystore_path

        # If custom path was specified but does not exist, abort
        if os.path.abspath(keystore_path) != os.path.abspath(DEFAULT_KEYSTORE_PATH) and not os.path.isdir(keystore_path):
            raise FileNotFoundError(f"Specified custom keystore does not exist: {keystore_path}")

        Console.step("Generating debug keystore for APK signing...")
        keytool_bin = Toolchain.get_keytool()
        if not keytool_bin:
            keytool_bin = "keytool"

        cmd = (
            f'"{keytool_bin}" -genkey -v -keystore "{keystore_path}" -storepass "{ks_pass}" '
            f'-alias "{ks_alias}" -keypass "{key_pass}" -keyalg RSA -keysize 2048 '
            f'-validity 10000 -dname "{dname}"'
        )

        Toolchain.run_cmd(cmd, check=True, verbose=verbose)
        if not os.path.exists(keystore_path):
            raise RuntimeError(f"Failed to generate debug keystore at {keystore_path}")

        Console.success(f"Generated debug keystore: {os.path.basename(keystore_path)}")
        return keystore_path
