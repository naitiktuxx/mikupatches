import os
import re

def apply_hook(decompiled_dir, app_profile, verbose=False):
    """
    Hook: Reduces video buffering in AliPlayer (wrapped by com.transsion.player.orplayer.w):
    1. In setPlayerConfig (anchored by 'Aliplayer config:'):
       - config.mStartBufferDuration = 2500 (0x9c4)
       - config.mHighBufferDuration = 8000 (0x1f40)
       - config.mMaxBufferDuration = 120000 (0x1d4c0)
       - config.mNetworkTimeout = 15000 (0x3a98)
       - config.mNetworkRetryCount = 5 (0x5)
       - Logs 120000 for 'Aliplayer config:'
       - Sets this.s to 120000L
    2. In CacheConfig method g0 (anchored by 'video_cache' and CacheConfig):
       - Overwrites cacheConfig.mMaxSizeMB with 1024 (0x400)
    3. In ORPlayerPreloadManager (anchored by 'ORPlayerPreload'):
       - Updates preload duration constant 4000 (0xfa0) to 10000 (0x2710)
    """
    # 1. Locate AliPlayer wrapper class containing 'Aliplayer config:'
    aliplayer_file = None
    for root, dirs, files in os.walk(decompiled_dir):
        for f in files:
            if f.endswith('.smali'):
                fpath = os.path.join(root, f)
                try:
                    with open(fpath, 'r', encoding='utf-8', errors='ignore') as fp:
                        if '"Aliplayer config:"' in fp.read():
                            aliplayer_file = fpath
                            break
                except Exception:
                    pass
        if aliplayer_file:
            break

    if not aliplayer_file:
        raise RuntimeError("Anchor 'Aliplayer config:' not found in any smali file in decompiled directory!")

    with open(aliplayer_file, 'r', encoding='utf-8') as f:
        content = f.read()

    # Anchor 1: Find setPlayerConfig method
    m1 = re.search(r'(\.method\s+[^\n]*\n(?:(?!\.method).)*?\"Aliplayer config:\".*?\.end method)', content, re.DOTALL)
    if not m1:
        raise RuntimeError(f"Method containing 'Aliplayer config:' anchor not found in {aliplayer_file}!")

    m1_orig = m1.group(1)

    # Verify required fields
    required_fields = [
        'mMaxBufferDuration:I',
        'mHighBufferDuration:I',
        'mStartBufferDuration:I',
        'mNetworkRetryCount:I',
        'mNetworkTimeout:I'
    ]
    for rf in required_fields:
        if rf not in m1_orig:
            raise RuntimeError(f"Required field {rf} not found in setPlayerConfig method in {aliplayer_file}!")

    m1_patched = m1_orig

    # Check if already patched
    if '# AliPlayer Anti-Buffering Overrides' not in m1_patched:
        m_disable = re.search(r'(iput-boolean\s+\w+,\s+(\w+),\s+Lcom/aliyun/player/nativeclass/PlayerConfig;->mDisableVideo:Z)', m1_patched)
        if not m_disable:
            raise RuntimeError(f"Anchor instruction mDisableVideo not found in setPlayerConfig in {aliplayer_file}!")

        cfg_reg = m_disable.group(2)
        overrides = f'''\\g<1>

    # AliPlayer Anti-Buffering Overrides
    const/16 v1, 0x9c4

    iput v1, {cfg_reg}, Lcom/aliyun/player/nativeclass/PlayerConfig;->mStartBufferDuration:I

    const/16 v1, 0x1f40

    iput v1, {cfg_reg}, Lcom/aliyun/player/nativeclass/PlayerConfig;->mHighBufferDuration:I

    const v1, 0x1d4c0

    iput v1, {cfg_reg}, Lcom/aliyun/player/nativeclass/PlayerConfig;->mMaxBufferDuration:I

    const/16 v1, 0x3a98

    iput v1, {cfg_reg}, Lcom/aliyun/player/nativeclass/PlayerConfig;->mNetworkTimeout:I

    const/4 v1, 0x5

    iput v1, {cfg_reg}, Lcom/aliyun/player/nativeclass/PlayerConfig;->mNetworkRetryCount:I'''

        m1_patched = re.sub(
            r'(iput-boolean\s+\w+,\s+' + re.escape(cfg_reg) + r',\s+Lcom/aliyun/player/nativeclass/PlayerConfig;->mDisableVideo:Z)',
            overrides,
            m1_patched
        )

        # Overwrite logcat buffer value: invoke-virtual {p1}, Lbo/d;->g()I / move-result v1 -> const v1, 0x1d4c0
        pattern_log_val = r'invoke-virtual\s+\{[^}]+\},\s+L[^;]+;->g\(\)I\s+move-result\s+(v\d+)\s+invoke-static\s+\{\1\},\s+Ljava/lang/Integer;->valueOf\(I\)Ljava/lang/Integer;'
        if not re.search(pattern_log_val, m1_patched):
            raise RuntimeError("Instruction pattern for logcat max buffer value not found in setPlayerConfig!")

        m1_patched = re.sub(
            pattern_log_val,
            r'const \1, 0x1d4c0\n\n    invoke-static {\1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;',
            m1_patched
        )

        # Overwrite this.s assignment: invoke-virtual {p1}, Lbo/d;->g()I / move-result p1 -> const p1, 0x1d4c0
        pattern_this_s = r'(:cond_2\s+)invoke-virtual\s+\{[^}]+\},\s+L[^;]+;->g\(\)I\s+move-result\s+(\w+)'
        if not re.search(pattern_this_s, m1_patched):
            raise RuntimeError("Instruction pattern for this.s max buffer assignment not found in setPlayerConfig!")

        m1_patched = re.sub(
            pattern_this_s,
            r'\g<1>const \2, 0x1d4c0',
            m1_patched
        )

        content = content.replace(m1_orig, m1_patched)

    # Anchor 2: CacheConfig method
    m2 = re.search(r'(\.method\s+[^\n]*\n(?:(?!\.method).)*?\"video_cache\"(?:(?!\.method).)*?CacheConfig.*?\.end method)', content, re.DOTALL)
    if not m2:
        raise RuntimeError(f"CacheConfig method containing 'video_cache' anchor not found in {aliplayer_file}!")

    m2_orig = m2.group(1)
    if 'Lcom/aliyun/player/nativeclass/CacheConfig;->mMaxSizeMB:I' not in m2_orig:
        raise RuntimeError(f"CacheConfig.mMaxSizeMB with type 'I' not found in {aliplayer_file}!")

    if '0x400' not in m2_orig:
        pattern_cache = r'(iput\s+(\w+),\s+(\w+),\s+Lcom/aliyun/player/nativeclass/CacheConfig;->mMaxSizeMB:I)'
        if not re.search(pattern_cache, m2_orig):
            raise RuntimeError("Instruction pattern 'iput ..., ...->mMaxSizeMB:I' not found in CacheConfig method!")

        m2_patched = re.sub(
            pattern_cache,
            r'\g<1>\n\n    const/16 \2, 0x400\n\n    iput \2, \3, Lcom/aliyun/player/nativeclass/CacheConfig;->mMaxSizeMB:I',
            m2_orig
        )
        content = content.replace(m2_orig, m2_patched)

    with open(aliplayer_file, 'w', encoding='utf-8') as f:
        f.write(content)

    if verbose:
        print(f"  -> Patched AliPlayer buffer settings and CacheConfig in {os.path.basename(aliplayer_file)}")

    # Anchor 3: ORPlayerPreloadManager
    preload_file = None
    for root, dirs, files in os.walk(decompiled_dir):
        for f in files:
            if f == 'ORPlayerPreloadManager.smali':
                preload_file = os.path.join(root, f)
                break
        if preload_file:
            break

    if preload_file:
        with open(preload_file, 'r', encoding='utf-8') as f:
            p_content = f.read()

        if 'const-wide/16 v0, 0xfa0' in p_content:
            p_content = p_content.replace('const-wide/16 v0, 0xfa0', 'const-wide/16 v0, 0x2710')
            with open(preload_file, 'w', encoding='utf-8') as f:
                f.write(p_content)
            if verbose:
                print(f"  -> Patched preload duration to 10s in {os.path.basename(preload_file)}")
        elif 'const-wide/16 v0, 0x2710' in p_content:
            if verbose:
                print(f"  -> Preload duration already 10s in {os.path.basename(preload_file)}")
        else:
            raise RuntimeError("Constant 'const-wide/16 v0, 0xfa0' not found in ORPlayerPreloadManager!")
    else:
        raise RuntimeError("ORPlayerPreloadManager.smali not found in decompiled directory!")

    print(f"  -> Successfully applied AliPlayer buffer and preload optimizations (start=2.5s, high=8s, max=120s, cache=1024MB, preload=10s)")
