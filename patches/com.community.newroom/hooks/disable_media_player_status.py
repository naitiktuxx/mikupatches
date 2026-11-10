import os
import re
from typing import Dict, List, Optional, Tuple


TARGET_SUBDIR = os.path.join("com", "transsion", "player", "mediasession")


def _find_mediasession_file(decompiled_dir: str, filename: str) -> Optional[str]:
    """Locates a mediasession Smali file across any smali* dex directory."""
    if not os.path.isdir(decompiled_dir):
        return None

    for entry in sorted(os.listdir(decompiled_dir)):
        if entry == "smali" or entry.startswith("smali_"):
            candidate = os.path.join(decompiled_dir, entry, TARGET_SUBDIR, filename)
            if os.path.isfile(candidate):
                return candidate
    return None


def _replace_method_body(content: str, method_sig: str, body: str) -> Tuple[str, bool]:
    """Replaces the body of a Smali method matching method_sig while preserving its header."""
    pattern = re.compile(
        rf"^(\.method\s+[^\n]*?\s{re.escape(method_sig)})\s*\r?\n(?:(?!^\.method\b).)*?^\.end method",
        re.MULTILINE | re.DOTALL,
    )

    matched = False

    def _repl(match: re.Match) -> str:
        nonlocal matched
        matched = True
        header = match.group(1)
        return f"{header}\n{body}\n.end method"

    updated = pattern.sub(_repl, content, count=1)
    return updated, matched


def _patch_smali_methods(
    filepath: str,
    method_bodies: Dict[str, str],
    decompiled_dir: str,
    require_all: bool = True,
) -> int:
    """Applies method body replacements to a single Smali file."""
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()

    updated = content
    patched_count = 0
    for sig, body in method_bodies.items():
        updated, found = _replace_method_body(updated, sig, body)
        if not found:
            if require_all:
                rel_path = os.path.relpath(filepath, decompiled_dir)
                raise RuntimeError(f"Required method '{sig}' not found in {rel_path}")
            continue
        patched_count += 1

    if updated != content:
        with open(filepath, "w", encoding="utf-8") as f:
            f.write(updated)

    return patched_count


def _strip_manifest_media_components(decompiled_dir: str) -> int:
    """Removes MediaService and media broadcast receivers from AndroidManifest.xml if present."""
    manifest_path = os.path.join(decompiled_dir, "AndroidManifest.xml")
    if not os.path.isfile(manifest_path):
        return 0

    with open(manifest_path, "r", encoding="utf-8") as f:
        content = f.read()

    targets = (
        ("receiver", "com.transsion.player.mediasession.MusicIntentReceiver"),
        ("receiver", "com.transsion.player.mediasession.MusicNotificationBroadcastReceiver"),
        ("service", "com.transsion.player.mediasession.MediaService"),
    )

    updated = content
    removed_count = 0
    for tag, comp_name in targets:
        pattern = re.compile(
            rf'[ \t]*<{tag}\b[^>]*\bandroid:name="{re.escape(comp_name)}"[^>]*(?:/>|>.*?</{tag}>)\r?\n?',
            re.DOTALL,
        )
        updated, n = pattern.subn("", updated)
        removed_count += n

    if updated != content:
        with open(manifest_path, "w", encoding="utf-8") as f:
            f.write(updated)

    return removed_count


def apply_hook(decompiled_dir: str, app_profile, verbose: bool = False) -> None:
    """
    Independent hook to completely disable Android Control Center / lock screen / notification
    media player playing status while preserving all in-app video playback and controls:
    1. MediaBrowserCompatHelper (+ $b callback): neutralizes connection/dispatch (p, w, s, u, v, x, y, z, A)
       and play/pause/controller updates (t, r, $b.a/b/c).
    2. MediaService: prevents creating/activating MediaSessionCompat (t), skips channel/session
       setup in onCreate (stopping cleanly), and returns null from onGetRoot (f).
    3. mediasession/h: neutralizes notification channel creation (l), MediaStyle notification
       builder (m), cover art fetching (n), status flag (r), and redirects notifyNotification (o)
       to stopNotification (p).
    4. mediasession/f: neutralizes MediaSessionCompat.Callback notification dispatch (E),
       custom actions (e), and transport callbacks (A, r, C, h, i, s, z, f).
    5. MusicIntentReceiver / MusicNotificationBroadcastReceiver & AndroidManifest.xml:
       neutralizes MEDIA_BUTTON/notification receivers and removes MediaService + receiver entries.
    """
    void_noop = "    .locals 0\n\n    return-void"
    unit_noop = (
        "    .locals 1\n\n"
        "    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;\n\n"
        "    return-object v0"
    )
    dismiss_noop = (
        "    .locals 1\n\n"
        "    sget-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;\n\n"
        "    invoke-virtual {v0}, Lcom/transsion/player/mediasession/h;->p()V\n\n"
        "    return-void"
    )

    required_targets: List[Tuple[str, Dict[str, str]]] = [
        (
            "MediaBrowserCompatHelper.smali",
            {
                "p(Lkotlin/jvm/functions/Function1;)V": void_noop,
                "r(Lcom/transsion/player/mediasession/MediaItem;)V": void_noop,
                "t(Lcom/transsion/player/mediasession/MediaItem;)V": void_noop,
                "w(Lkotlin/jvm/functions/Function1;)V": void_noop,
            },
        ),
        (
            "MediaService.smali",
            {
                "t()V": void_noop,
                "onCreate()V": (
                    "    .locals 0\n\n"
                    "    invoke-super {p0}, Landroidx/media/MediaBrowserServiceCompat;->onCreate()V\n\n"
                    "    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V\n\n"
                    "    return-void"
                ),
                "f(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$e;": (
                    "    .locals 1\n\n"
                    "    const/4 v0, 0x0\n\n"
                    "    return-object v0"
                ),
            },
        ),
        (
            "h.smali",
            {
                "l()V": void_noop,
                "m(Lcom/transsion/player/mediasession/MediaService;Lcom/transsion/player/mediasession/MediaItem;Ljava/lang/Integer;Landroid/support/v4/media/session/MediaSessionCompat;)V": void_noop,
                "n()V": void_noop,
                "o(Lcom/transsion/player/mediasession/MediaService;Lcom/transsion/player/mediasession/MediaItem;Ljava/lang/Integer;Landroid/support/v4/media/session/MediaSessionCompat;)V": (
                    "    .locals 0\n\n"
                    "    invoke-virtual {p0}, Lcom/transsion/player/mediasession/h;->p()V\n\n"
                    "    return-void"
                ),
            },
        ),
        (
            "f.smali",
            {
                "E(Landroid/support/v4/media/session/PlaybackStateCompat;)V": void_noop,
                "e(Ljava/lang/String;Landroid/os/Bundle;)V": void_noop,
            },
        ),
    ]

    optional_targets: List[Tuple[str, Dict[str, str]]] = [
        (
            "MediaBrowserCompatHelper.smali",
            {
                "s(Lcom/transsion/player/mediasession/MediaItem;Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;": unit_noop,
                "u(Lcom/transsion/player/mediasession/MediaItem;Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;": unit_noop,
                "v(Ljava/lang/String;)V": void_noop,
                "x()V": void_noop,
                "y(Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;": unit_noop,
                "z()V": void_noop,
                "A(Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;": unit_noop,
            },
        ),
        (
            "MediaBrowserCompatHelper$b.smali",
            {
                "a()V": void_noop,
                "b()V": void_noop,
                "c()V": void_noop,
            },
        ),
        (
            "h.smali",
            {
                "r(Z)V": void_noop,
            },
        ),
        (
            "f.smali",
            {
                "A()V": void_noop,
                "r()V": void_noop,
                "C()V": void_noop,
                "h()V": void_noop,
                "i()V": void_noop,
                "s(J)V": void_noop,
                "z()V": void_noop,
                "f()V": void_noop,
            },
        ),
        (
            "MusicIntentReceiver.smali",
            {
                "onReceive(Landroid/content/Context;Landroid/content/Intent;)V": void_noop,
            },
        ),
        (
            "MusicNotificationBroadcastReceiver.smali",
            {
                "onReceive(Landroid/content/Context;Landroid/content/Intent;)V": dismiss_noop,
            },
        ),
    ]

    total_methods = 0
    patched_files: Dict[str, int] = {}

    for filename, method_bodies in required_targets:
        filepath = _find_mediasession_file(decompiled_dir, filename)
        if not filepath:
            raise RuntimeError(
                f"Target mediasession class '{filename}' not found in {decompiled_dir}"
            )
        count = _patch_smali_methods(filepath, method_bodies, decompiled_dir, require_all=True)
        total_methods += count
        rel_path = os.path.relpath(filepath, decompiled_dir)
        patched_files[rel_path] = patched_files.get(rel_path, 0) + count

    for filename, method_bodies in optional_targets:
        filepath = _find_mediasession_file(decompiled_dir, filename)
        if not filepath:
            continue
        count = _patch_smali_methods(filepath, method_bodies, decompiled_dir, require_all=False)
        if count:
            total_methods += count
            rel_path = os.path.relpath(filepath, decompiled_dir)
            patched_files[rel_path] = patched_files.get(rel_path, 0) + count

    manifest_removed = _strip_manifest_media_components(decompiled_dir)

    print(
        f"  -> Disabled Android Control Center media player playing status "
        f"({len(patched_files)} classes, {total_methods} methods"
        + (f", {manifest_removed} manifest entries removed" if manifest_removed else "")
        + ")"
    )
    if verbose:
        for rel_path, count in patched_files.items():
            print(f"     * {rel_path} ({count} method(s))")
        if manifest_removed:
            print(f"     * AndroidManifest.xml ({manifest_removed} media entry/entries removed)")
