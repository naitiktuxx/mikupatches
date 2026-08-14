"""
Unit and integration tests for MikuPatches dynamic modular architecture, universal cloner, and reliability.
"""

import unittest
import os
import sys
import tempfile
import shutil
import json

# Add workspace to path
WORKSPACE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
if WORKSPACE not in sys.path:
    sys.path.insert(0, WORKSPACE)

from mikupatches.models import BuildOptions, AppProfile, PatchGroup
from mikupatches.patcher import AppManager, PatchEngine
from mikupatches.cloner import AppCloner
from mikupatches.extractor import Extractor
from mikupatches.cli import parse_cli_options, build_parser
from mikupatches.bundler import Bundler
from mikupatches.adb import AdbManager
from mikupatches.constants import SUPPORTED_ARCHITECTURES, DEFAULT_PATCHES_DIR


class TestAppProfiles(unittest.TestCase):
    def test_list_supported_apps(self):
        apps = AppManager.list_supported_apps()
        self.assertGreaterEqual(len(apps), 1)
        pkg_names = [a.package_name for a in apps]
        self.assertIn("io.appground.blek", pkg_names)

    def test_blek_profile(self):
        profile = AppManager.find_app_profile("io.appground.blek")
        self.assertIsNotNone(profile)
        self.assertEqual(profile.package_name, "io.appground.blek")
        self.assertEqual(profile.target_version_name, "6.22.0")
        self.assertEqual(profile.target_version_code, "255")
        self.assertGreaterEqual(len(profile.patch_groups), 6)
        patch_ids = [g.id for g in profile.patch_groups]
        self.assertIn("pairip", patch_ids)
        self.assertIn("pro_unlock", patch_ids)
        self.assertIn(AppCloner.CLONE_PATCH_ID, patch_ids)

    def test_truecaller_profile(self):
        profile = AppManager.find_app_profile("com.truecaller")
        self.assertIsNotNone(profile)
        self.assertEqual(profile.package_name, "com.truecaller")
        self.assertEqual(profile.target_version_name, "26.31.5")
        self.assertEqual(profile.target_version_code, "2631005")
        self.assertIn("arm64-v8a", profile.supported_arches)
        self.assertIn("armeabi-v7a", profile.supported_arches)
        self.assertIn(AppCloner.CLONE_PATCH_ID, [g.id for g in profile.patch_groups])


class TestDynamicMetadata(unittest.TestCase):
    def test_dynamic_info_json_generation(self):
        info = Extractor.generate_dynamic_info_json(
            pkg_name="com.test.app",
            app_title="Test Application",
            ver_name="1.2.3",
            ver_code="123",
            arches=["arm64-v8a"],
            arch_variant="arm64-v8a",
        )
        self.assertEqual(info["pname"], "com.test.app")
        self.assertEqual(info["app_name"], "Test Application")
        self.assertEqual(info["release_version"], "1.2.3")
        self.assertEqual(info["versioncode"], "123")
        self.assertEqual(info["arches"], ["arm64-v8a"])
        self.assertIn("arm64-v8a", info["variant"])


class TestUniversalAppCloner(unittest.TestCase):
    def setUp(self):
        self.temp_dir = tempfile.mkdtemp()
        manifest_content = """<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="com.example.test">
    <permission android:name="com.example.test.DYNAMIC_PERMISSION" />
    <application android:name=".MainApp">
        <activity android:name=".MainActivity" />
        <provider android:name="androidx.core.content.FileProvider" android:authorities="com.example.test.fileprovider" />
        <meta-data android:name="com.android.vending.splits.required" android:value="true"/>
    </application>
</manifest>"""
        with open(os.path.join(self.temp_dir, "AndroidManifest.xml"), "w", encoding="utf-8") as f:
            f.write(manifest_content)

    def tearDown(self):
        shutil.rmtree(self.temp_dir, ignore_errors=True)

    def test_apply_clone_transformations(self):
        res = AppCloner.apply_clone(
            decompiled_dir=self.temp_dir,
            orig_pkg="com.example.test",
            suffix=".tux",
            dry_run=False,
        )
        self.assertEqual(res["cloned_package"], "com.example.test.tux")

        with open(os.path.join(self.temp_dir, "AndroidManifest.xml"), "r", encoding="utf-8") as f:
            updated = f.read()

        self.assertIn('package="com.example.test.tux"', updated)
        self.assertIn('android:name="com.example.test.tux.DYNAMIC_PERMISSION"', updated)
        self.assertIn('android:authorities="com.example.test.tux.fileprovider"', updated)
        self.assertIn('android:name="com.example.test.MainActivity"', updated)
        self.assertIn('android:name="com.example.test.MainApp"', updated)
        self.assertNotIn('com.android.vending.splits.required', updated)

    def test_clone_naming_convention(self):
        profile_orig = AppManager.find_app_profile("io.appground.blek")
        self.assertIsNotNone(profile_orig)
        dir_orig = Bundler.get_clean_app_dirname(profile_orig)
        self.assertEqual(dir_orig, "Bluetooth_Keyboard_Mouse")

        profile_clone = AppProfile(
            package_name="io.appground.blek.tux",
            app_title="Bluetooth Keyboard & Mouse (Clone)",
            target_version_name="6.22.0",
            target_version_code="255",
            apkmirror_url="",
            main_activity="",
            supported_arches=[],
            patch_groups=[],
        )
        dir_clone = Bundler.get_clean_app_dirname(profile_clone)
        self.assertEqual(dir_clone, "Bluetooth_Keyboard_Mouse")
        slug_clone = Bundler.get_variant_slug(profile_clone)
        self.assertEqual(slug_clone, "Vanilla_Clone")

    def test_variant_slug_generation(self):
        profile = AppManager.find_app_profile("io.appground.blek")
        self.assertIsNotNone(profile)

        # 1. Full variant (all default patches on, clone off)
        all_on = {g.id: True for g in profile.patch_groups}
        all_on["clone_dual_install"] = False
        slug_full = Bundler.get_variant_slug(profile, all_on)
        self.assertEqual(slug_full, "Full")

        # 2. Cloned Full variant
        all_on_clone = {g.id: True for g in profile.patch_groups}
        all_on_clone["clone_dual_install"] = True
        slug_clone = Bundler.get_variant_slug(profile, all_on_clone)
        self.assertEqual(slug_clone, "Full_Clone")

        # 3. Dynamic CamelCase subset without hardcoded maps
        slug_single = Bundler.get_variant_slug(profile, {"pairip": True, "pro_unlock": False, "clone_dual_install": False})
        self.assertEqual(slug_single, "Pairip")

        # 4. Arbitrary new future app with custom tag or auto-derived tag
        future_app = AppProfile(
            package_name="com.future.music",
            app_title="Future Music",
            target_version_name="1.0.0",
            target_version_code="100",
            apkmirror_url="",
            patch_groups=[
                PatchGroup(id="unlock_hifi", name="HiFi Audio", desc="Unlocks lossless audio", tag="HiFi"),
                PatchGroup(id="custom_equalizer_dsp", name="DSP Equalizer", desc="Custom equalizer"),
            ],
        )
        # Subset with custom tag + auto-derived camelcase
        slug_future = Bundler.get_variant_slug(future_app, {"unlock_hifi": True, "custom_equalizer_dsp": True, "clone_dual_install": False})
        self.assertEqual(slug_future, "Full")

        slug_future_single = Bundler.get_variant_slug(future_app, {"unlock_hifi": False, "custom_equalizer_dsp": True, "clone_dual_install": False})
        self.assertEqual(slug_future_single, "CustomEqualizerDsp")

        slug_future_tag = Bundler.get_variant_slug(future_app, {"unlock_hifi": True, "custom_equalizer_dsp": False, "clone_dual_install": False})
        self.assertEqual(slug_future_tag, "HiFi")

    def test_patches_txt_summary_content(self):
        profile = AppManager.find_app_profile("io.appground.blek")
        self.assertIsNotNone(profile)
        summary = Bundler.generate_patches_summary(
            app_profile=profile,
            active_status={"pairip": True, "pro_unlock": False, "clone_dual_install": False},
            ver_name="6.22.0",
            ver_code="255",
            variant_slug="Pairip",
        )
        self.assertIn("Bluetooth Keyboard & Mouse v6.22.0 - Patched Release", summary)
        self.assertIn("Variant : Pairip", summary)
        self.assertIn("[✓] Bypass License & Play Store Check", summary)
        self.assertIn("[ ] Unlock Pro & Premium Features", summary)

    def test_incremental_output_directories(self):
        profile = AppManager.find_app_profile("io.appground.blek")
        self.assertIsNotNone(profile)
        base_out = os.path.join(self.temp_dir, "dist")
        os.makedirs(base_out, exist_ok=True)

        # 1. No existing folder -> returns dist/Bluetooth_Keyboard_Mouse/Full
        d1 = Bundler.resolve_app_output_dir(base_out, profile, variant_slug="Full", overwrite=False)
        self.assertEqual(os.path.basename(d1), "Full")
        self.assertEqual(os.path.basename(os.path.dirname(d1)), "Bluetooth_Keyboard_Mouse")
        os.makedirs(d1, exist_ok=True)
        with open(os.path.join(d1, "dummy.txt"), "w") as f:
            f.write("test")

        # 2. Existing folder with overwrite=False -> returns dist/Bluetooth_Keyboard_Mouse/Full-1
        d2 = Bundler.resolve_app_output_dir(base_out, profile, variant_slug="Full", overwrite=False)
        self.assertEqual(os.path.basename(d2), "Full-1")
        os.makedirs(d2, exist_ok=True)
        with open(os.path.join(d2, "dummy.txt"), "w") as f:
            f.write("test")

        # 3. Existing folder with overwrite=False -> returns dist/Bluetooth_Keyboard_Mouse/Full-2
        d3 = Bundler.resolve_app_output_dir(base_out, profile, variant_slug="Full", overwrite=False)
        self.assertEqual(os.path.basename(d3), "Full-2")

    def test_launch_package_resolution(self):
        # Create a test dist structure
        dist_dir = os.path.join(self.temp_dir, "dist_launch")
        blek_clone_dir = os.path.join(dist_dir, "Bluetooth_Keyboard_Mouse", "Full_Clone", "arm64-v8a")
        os.makedirs(blek_clone_dir, exist_ok=True)

        info_path = os.path.join(dist_dir, "Bluetooth_Keyboard_Mouse", "Full_Clone", "info.json")
        with open(info_path, "w", encoding="utf-8") as f:
            json.dump({"pname": "io.appground.blek.tux"}, f)

        apk_path = os.path.join(blek_clone_dir, "base.apk")
        with open(apk_path, "w") as f:
            f.write("dummy")

        # Test resolution
        curr_dir = os.path.dirname(apk_path)
        pkg = None
        while curr_dir and os.path.abspath(curr_dir) != os.path.abspath(os.path.dirname(dist_dir)):
            cand = os.path.join(curr_dir, "info.json")
            if os.path.isfile(cand):
                with open(cand, "r") as f:
                    pkg = json.load(f).get("pname")
                    break
            if os.path.abspath(curr_dir) == os.path.abspath(dist_dir):
                break
            curr_dir = os.path.dirname(curr_dir)

        self.assertEqual(pkg, "io.appground.blek.tux")


class TestCLIParser(unittest.TestCase):
    def test_default_options(self):
        parsed, options = parse_cli_options([])
        self.assertFalse(options.force)
        self.assertFalse(options.dry_run)
        self.assertFalse(options.clone)
        self.assertEqual(options.output_formats, ["all"])
        self.assertEqual(set(options.arches), set(SUPPORTED_ARCHITECTURES))

    def test_custom_flags(self):
        args = [
            "input/app.apkm",
            "-a", "io.appground.blek",
            "-f",
            "--dry-run",
            "-y",
            "--clone",
            "--clone-suffix", ".tux",
            "--arch", "arm64-v8a",
            "-O", "apk,apkm",
            "--only-patches", "pairip,clone_dual_install",
            "-I",
            "--launch",
        ]
        parsed, options = parse_cli_options(args)
        self.assertEqual(options.input_file, "input/app.apkm")
        self.assertEqual(options.target_app, "io.appground.blek")
        self.assertTrue(options.force)
        self.assertTrue(options.dry_run)
        self.assertTrue(options.yes)
        self.assertTrue(options.clone)
        self.assertEqual(options.clone_suffix, ".tux")
        self.assertEqual(options.arches, ["arm64-v8a"])
        self.assertEqual(options.output_formats, ["apk", "apkm"])
        self.assertEqual(options.only_patches, ["pairip", "clone_dual_install"])
        self.assertTrue(options.install)
        self.assertTrue(options.launch)

    def test_skip_patches(self):
        args = ["--skip-patches", "clean_menu,theme_default"]
        parsed, options = parse_cli_options(args)
        self.assertEqual(options.skip_patches, ["clean_menu", "theme_default"])

class TestPatchEngine(unittest.TestCase):
    def setUp(self):
        self.temp_dir = tempfile.mkdtemp()

    def tearDown(self):
        shutil.rmtree(self.temp_dir, ignore_errors=True)

    def test_patch_application_simulation(self):
        profile = AppManager.find_app_profile("io.appground.blek")
        self.assertIsNotNone(profile)
        active_status = {g.id: (g.id == "pro_unlock") for g in profile.patch_groups}

        results = PatchEngine.apply_patches(
            decompiled_dir=self.temp_dir,
            app_profile=profile,
            active_status=active_status,
            dry_run=True,
        )

        applied = [r for r in results if r["applied"]]
        self.assertEqual(len(applied), 1)
        self.assertEqual(applied[0]["id"], "pro_unlock")

    def test_clone_flag_disabled_by_default(self):
        profile = AppManager.find_app_profile("io.appground.blek")
        self.assertIsNotNone(profile)
        active_status = {g.id: g.default for g in profile.patch_groups}
        self.assertFalse(active_status.get(AppCloner.CLONE_PATCH_ID, True))


class TestHardeningAndEdgeCases(unittest.TestCase):
    def setUp(self):
        self.temp_dir = tempfile.mkdtemp()

    def tearDown(self):
        shutil.rmtree(self.temp_dir, ignore_errors=True)

    def test_pure_python_signature_stripping(self):
        from mikupatches.signer import ApkSigner
        import zipfile

        fake_apk = os.path.join(self.temp_dir, "test_signed.apk")
        with zipfile.ZipFile(fake_apk, "w") as zf:
            zf.writestr("classes.dex", b"DEX_CONTENT")
            zf.writestr("AndroidManifest.xml", b"MANIFEST_CONTENT")
            zf.writestr("META-INF/MANIFEST.MF", b"MANIFEST_MF")
            zf.writestr("META-INF/CERT.SF", b"CERT_SF")
            zf.writestr("META-INF/CERT.RSA", b"CERT_RSA")

        ApkSigner.strip_meta_inf(fake_apk, verbose=False)

        with zipfile.ZipFile(fake_apk, "r") as zf:
            names = zf.namelist()
            self.assertIn("classes.dex", names)
            self.assertIn("AndroidManifest.xml", names)
            self.assertNotIn("META-INF/MANIFEST.MF", names)
            self.assertNotIn("META-INF/CERT.SF", names)
            self.assertNotIn("META-INF/CERT.RSA", names)

    def test_apktool_manifest_fallback_parsing(self):
        from mikupatches.apktool import ApktoolRunner

        # Directory with only AndroidManifest.xml (no apktool.yml)
        manifest_content = """<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.fallback"
    android:versionCode="456"
    android:versionName="2.3.4">
    <application android:name=".App" />
</manifest>"""
        with open(os.path.join(self.temp_dir, "AndroidManifest.xml"), "w") as f:
            f.write(manifest_content)

        pkg, ver_name, ver_code = ApktoolRunner.parse_package_and_version(self.temp_dir)
        self.assertEqual(pkg, "com.example.fallback")
        self.assertEqual(ver_name, "2.3.4")
        self.assertEqual(ver_code, "456")

    def test_extractor_picks_largest_apk_in_xapk(self):
        import zipfile

        fake_bundle = os.path.join(self.temp_dir, "app.xapk")
        bundle_staging = os.path.join(self.temp_dir, "staging")

        with zipfile.ZipFile(fake_bundle, "w") as zf:
            zf.writestr("config.arm64_v8a.apk", b"X" * 100)
            zf.writestr("config.xxhdpi.apk", b"X" * 200)
            zf.writestr("com.example.realapp.apk", b"X" * 5000)

        base_apk = Extractor.prepare_bundle(fake_bundle, bundle_staging)
        self.assertTrue(os.path.exists(base_apk))
        self.assertEqual(os.path.getsize(base_apk), 5000)

    def test_build_sh_forwards_arguments(self):
        build_sh_path = os.path.join(WORKSPACE, "build.sh")
        self.assertTrue(os.path.exists(build_sh_path))
        with open(build_sh_path, "r") as f:
            content = f.read()
        self.assertIn('"$@"', content)

    def test_build_py_imports_bundler(self):
        import build
        self.assertTrue(hasattr(build, "Bundler"))

    def test_adb_bundle_install_candidate_priority(self):
        import build
        # Create a mock dist structure with multiple apps, variants, and inner architecture folders
        dist_dir = os.path.join(self.temp_dir, "dist_mock")
        
        # Variant 1: Bluetooth Keyboard & Mouse Full (with universal.apkm, base.apk, and arm64 subfolder)
        blek_full = os.path.join(dist_dir, "Bluetooth_Keyboard_Mouse", "Full")
        os.makedirs(os.path.join(blek_full, "arm64-v8a"), exist_ok=True)
        with open(os.path.join(blek_full, "universal.apkm"), "w") as f:
            f.write("apkm")
        with open(os.path.join(blek_full, "base.apk"), "w") as f:
            f.write("base")
        with open(os.path.join(blek_full, "arm64-v8a", "base.apk"), "w") as f:
            f.write("arm64_base")

        # Variant 2: Bluetooth Keyboard & Mouse Custom (ProUnlock)
        blek_custom = os.path.join(dist_dir, "Bluetooth_Keyboard_Mouse", "ProUnlock")
        os.makedirs(blek_custom, exist_ok=True)
        with open(os.path.join(blek_custom, "universal.apkm"), "w") as f:
            f.write("custom_apkm")

        # Variant 3: Sample App Full
        sample_full = os.path.join(dist_dir, "Sample_App", "Full")
        os.makedirs(sample_full, exist_ok=True)
        with open(os.path.join(sample_full, "universal.apkm"), "w") as f:
            f.write("sample_apkm")

        variants = build.scan_dist_variants(dist_dir)
        # Should contain exactly 3 clean entries (1 per variant), NOT 7 fragmented files
        self.assertEqual(len(variants), 3)

        titles = [v["display_title"] for v in variants]
        self.assertIn("Bluetooth Keyboard & Mouse [Full]", titles)
        self.assertIn("Bluetooth Keyboard & Mouse [ProUnlock]", titles)
        self.assertIn("Sample App [Full]", titles)

        # Ensure universal.apkm is selected as package_path for each
        for v in variants:
            self.assertTrue(v["package_path"].endswith("universal.apkm"))


if __name__ == "__main__":
    unittest.main()
