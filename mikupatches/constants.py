"""
Constants and default configurations for MikuPatches.
"""

import os

# Root Workspace
WORKSPACE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Default Directory Paths
DEFAULT_DIST_DIR = os.path.join(WORKSPACE_DIR, "dist")
DEFAULT_STAGING_DIR = os.path.join(WORKSPACE_DIR, "build_staging")
DEFAULT_INPUT_DIR = os.path.join(WORKSPACE_DIR, "input")
DEFAULT_PATCHES_DIR = os.path.join(WORKSPACE_DIR, "patches")
DEFAULT_FRAMEWORK_DIR = os.path.join(WORKSPACE_DIR, "framework")
DEFAULT_KEYSTORE_PATH = os.path.join(WORKSPACE_DIR, "debug.keystore")

# Default Keystore Credentials
DEFAULT_KS_ALIAS = "androiddebugkey"
DEFAULT_KS_PASS = "android"
DEFAULT_KEY_PASS = "android"
DEFAULT_KS_DNAME = "CN=Android Debug,O=Android,C=US"

# Supported Architectures
SUPPORTED_ARCHITECTURES = [
    "arm64-v8a",
    "armeabi-v7a",
    "x86",
    "x86_64",
]

ARCH_SPLIT_MAP = {
    "arm64-v8a": "split_config.arm64_v8a.apk",
    "armeabi-v7a": "split_config.armeabi_v7a.apk",
    "x86": "split_config.x86.apk",
    "x86_64": "split_config.x86_64.apk",
}

# Input and Output Formats
SUPPORTED_INPUT_EXTENSIONS = (".apkm", ".apks", ".xapk", ".zip", ".apk")
SUPPORTED_OUTPUT_FORMATS = ["all", "apk", "apkm", "apks", "xapk", "splits"]

# ANSI Color Codes
class Colors:
    CYAN = "\033[96m"
    GREEN = "\033[92m"
    YELLOW = "\033[93m"
    RED = "\033[91m"
    BLUE = "\033[94m"
    MAGENTA = "\033[95m"
    BOLD = "\033[1m"
    DIM = "\033[2m"
    RESET = "\033[0m"

    @classmethod
    def strip_colors(cls):
        cls.CYAN = ""
        cls.GREEN = ""
        cls.YELLOW = ""
        cls.RED = ""
        cls.BLUE = ""
        cls.MAGENTA = ""
        cls.BOLD = ""
        cls.DIM = ""
        cls.RESET = ""
