"""
Data models and configuration definitions for MikuPatches.
"""

from dataclasses import dataclass, field
from typing import List, Dict, Optional, Any
import os
import json

from mikupatches.constants import (
    DEFAULT_DIST_DIR,
    DEFAULT_STAGING_DIR,
    DEFAULT_FRAMEWORK_DIR,
    DEFAULT_KEYSTORE_PATH,
    DEFAULT_KS_ALIAS,
    DEFAULT_KS_PASS,
    DEFAULT_KEY_PASS,
    SUPPORTED_ARCHITECTURES,
)
from mikupatches.cloner import AppCloner


@dataclass
class PatchGroup:
    id: str
    name: str
    desc: str
    default: bool = True
    tag: Optional[str] = None
    files: Dict[str, str] = field(default_factory=dict)
    regex_rules: List[Dict[str, str]] = field(default_factory=list)
    hooks: List[str] = field(default_factory=list)

    @classmethod
    def from_dict(cls, data: Dict[str, Any]) -> "PatchGroup":
        return cls(
            id=data.get("id", ""),
            name=data.get("name", ""),
            desc=data.get("desc", ""),
            default=data.get("default", True),
            tag=data.get("tag") or data.get("short_name"),
            files=data.get("files", {}),
            regex_rules=data.get("regex_rules", []),
            hooks=data.get("hooks", []),
        )

    def to_dict(self) -> Dict[str, Any]:
        d = {
            "id": self.id,
            "name": self.name,
            "desc": self.desc,
            "default": self.default,
            "files": self.files,
            "regex_rules": self.regex_rules,
            "hooks": self.hooks,
        }
        if self.tag:
            d["tag"] = self.tag
        return d


@dataclass
class AppProfile:
    package_name: str
    app_title: str
    target_version_name: str
    target_version_code: str
    apkmirror_url: str
    main_activity: Optional[str] = None
    supported_arches: List[str] = field(default_factory=lambda: list(SUPPORTED_ARCHITECTURES))
    patch_groups: List[PatchGroup] = field(default_factory=list)
    profile_dir: Optional[str] = None
    no_res: bool = False

    @classmethod
    def from_directory(cls, app_patch_dir: str) -> "AppProfile":
        config_file = os.path.join(app_patch_dir, "config.json")
        patch_groups_file = os.path.join(app_patch_dir, "patch_groups.json")

        if not os.path.exists(config_file):
            raise FileNotFoundError(f"Configuration file not found: {config_file}")

        with open(config_file, "r", encoding="utf-8") as f:
            cfg = json.load(f)

        patch_groups = []
        if os.path.exists(patch_groups_file):
            with open(patch_groups_file, "r", encoding="utf-8") as f:
                raw_groups = json.load(f)
                if isinstance(raw_groups, list):
                    patch_groups = [PatchGroup.from_dict(g) for g in raw_groups]

        # Dynamically append universal App Clone patch group if not already present
        if not any(g.id == AppCloner.CLONE_PATCH_ID for g in patch_groups):
            patch_groups.append(PatchGroup.from_dict(AppCloner.get_universal_patch_group_dict()))

        return cls(
            package_name=cfg.get("package_name", os.path.basename(app_patch_dir)),
            app_title=cfg.get("app_title", "Unknown App"),
            target_version_name=str(cfg.get("target_version_name", "0.0.0")),
            target_version_code=str(cfg.get("target_version_code", "0")),
            apkmirror_url=cfg.get("apkmirror_url", "https://www.apkmirror.com/"),
            main_activity=cfg.get("main_activity"),
            supported_arches=cfg.get("supported_arches", list(SUPPORTED_ARCHITECTURES)),
            patch_groups=patch_groups,
            profile_dir=app_patch_dir,
            no_res=bool(cfg.get("no_res", False)),
        )

    def get_patch_group(self, group_id: str) -> Optional[PatchGroup]:
        for g in self.patch_groups:
            if g.id == group_id:
                return g
        return None


@dataclass
class BuildOptions:
    input_file: Optional[str] = None
    target_app: Optional[str] = None
    target_version: Optional[str] = None
    output_dir: str = DEFAULT_DIST_DIR
    staging_dir: str = DEFAULT_STAGING_DIR
    framework_dir: str = DEFAULT_FRAMEWORK_DIR
    output_formats: List[str] = field(default_factory=lambda: ["all"])
    arches: List[str] = field(default_factory=lambda: list(SUPPORTED_ARCHITECTURES))
    output_name: Optional[str] = None
    force: bool = False
    dry_run: bool = False
    yes: bool = False
    verbose: bool = False
    quiet: bool = False
    no_color: bool = False
    select_patches: bool = False
    only_patches: Optional[List[str]] = None
    skip_patches: Optional[List[str]] = None
    clone: bool = False
    clone_suffix: str = ".tux"
    clone_pkg: Optional[str] = None
    keystore_path: str = DEFAULT_KEYSTORE_PATH
    ks_pass: str = DEFAULT_KS_PASS
    ks_alias: str = DEFAULT_KS_ALIAS
    key_pass: str = DEFAULT_KEY_PASS
    v1_only: bool = False
    v2_only: bool = False
    v3_only: bool = False
    no_v3: bool = False
    use_aapt2: bool = False
    no_src: bool = False
    no_res: bool = False
    apktool_args: Optional[str] = None
    keep_staging: bool = False
    install: bool = False
    device: Optional[str] = None
    launch: bool = False
    uninstall: bool = False


@dataclass
class BuildResult:
    success: bool
    app_profile: Optional[AppProfile] = None
    detected_version_name: Optional[str] = None
    detected_version_code: Optional[str] = None
    applied_patches: List[Dict[str, Any]] = field(default_factory=list)
    output_files: List[Dict[str, Any]] = field(default_factory=list)
    error_message: Optional[str] = None
