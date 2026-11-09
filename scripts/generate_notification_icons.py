#!/usr/bin/env python3
"""
Generates modern Miku-branded notification icons for MovieBox (com.community.newroom):
1. res/drawable/push_small_logo.xml (VectorDrawable white silhouette for Android status bar)
2. res/mipmap-hdpi/player_ic_push_small_logo.png (Monochrome white silhouette for player notifications)
3. res/mipmap-xxhdpi/player_ic_push_small_logo.png (Monochrome white silhouette for player notifications)
4. res/drawable/tpush_notify_icon.png (Monochrome white silhouette for push notifications)
5. res/mipmap-xhdpi/logo_about_us.webp (Miku app icon for download & system notification cards)
6. res/mipmap-xhdpi/ic_notification_logo.png (Miku app icon for push notification cards)
7. res/mipmap-hdpi/player_ic_notification_icon.png (Miku app icon for player media playback art)
8. res/mipmap-xxhdpi/player_ic_notification_icon.png (Miku app icon for player media playback art)
"""

import zlib, struct, math, os, subprocess
from collections import defaultdict

BASE_DIR = 'patches/com.community.newroom/base'

def read_png(path):
    with open(path, 'rb') as f:
        f.read(8); idat = b''
        while True:
            c = f.read(8)
            if not c: break
            l, t = struct.unpack('>I4s', c); d = f.read(l); f.read(4)
            if t == b'IHDR': w, h = struct.unpack('>II', d[:8])
            elif t == b'IDAT': idat += d
    raw = bytearray(zlib.decompress(idat))
    stride = 1 + w * 4; out = bytearray(w * h * 4)
    for y in range(h):
        ft = raw[y*stride]; row = raw[y*stride+1 : (y+1)*stride]
        pr = out[(y-1)*w*4 : y*w*4] if y > 0 else bytearray(w*4)
        for x in range(w):
            for c in range(4):
                curr = row[x*4 + c]; left = out[y*w*4 + (x-1)*4 + c] if x > 0 else 0
                ab = pr[x*4 + c]; dg = pr[(x-1)*4 + c] if x > 0 else 0
                if ft == 0: v = curr
                elif ft == 1: v = (curr + left) & 0xff
                elif ft == 2: v = (curr + ab) & 0xff
                elif ft == 3: v = (curr + (left + ab)//2) & 0xff
                elif ft == 4:
                    p = left + ab - dg; pa, pb, pc = abs(p - left), abs(p - ab), abs(p - dg)
                    pr_v = left if (pa <= pb and pa <= pc) else (ab if pb <= pc else dg)
                    v = (curr + pr_v) & 0xff
                out[y*w*4 + x*4 + c] = v
    return w, h, out

def write_png(path, w, h, data):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    raw = bytearray()
    for y in range(h):
        raw.append(0) # None filter
        raw.extend(data[y*w*4 : (y+1)*w*4])
    compressed = zlib.compress(bytes(raw), 9)
    with open(path, 'wb') as f:
        f.write(b'\x89PNG\r\n\x1a\n')
        ihdr = struct.pack('>IIBBBBB', w, h, 8, 6, 0, 0, 0)
        crc = zlib.crc32(b'IHDR' + ihdr)
        f.write(struct.pack('>I4s', 13, b'IHDR') + ihdr + struct.pack('>I', crc))
        crc = zlib.crc32(b'IDAT' + compressed)
        f.write(struct.pack('>I4s', len(compressed), b'IDAT') + compressed + struct.pack('>I', crc))
        crc = zlib.crc32(b'IEND')
        f.write(struct.pack('>I4s', 0, b'IEND') + struct.pack('>I', crc))

def main():
    print("Generating Miku notification icons...")
    # 1. Generate push_small_logo.xml VectorDrawable
    w, h, data = read_png(f'{BASE_DIR}/res/mipmap-xxhdpi/ic_home_mb_logo.png')
    grid = [[1 if data[(y*w + x)*4 + 3] > 128 else 0 for x in range(w)] for y in range(h)]
    edges = []
    for y in range(h):
        for x in range(w):
            if grid[y][x]:
                if y == 0 or not grid[y-1][x]: edges.append(((x, y), (x+1, y)))
                if x == w-1 or not grid[y][x+1]: edges.append(((x+1, y), (x+1, y+1)))
                if y == h-1 or not grid[y+1][x]: edges.append(((x+1, y+1), (x, y+1)))
                if x == 0 or not grid[y][x-1]: edges.append(((x, y+1), (x, y)))

    next_edge = defaultdict(list)
    for p1, p2 in edges: next_edge[p1].append(p2)
    start = (4, 88); curr = start; path = [curr]; visited_edges = set()
    while True:
        neighbors = next_edge[curr]; nxt = None
        for n in neighbors:
            if (curr, n) not in visited_edges:
                nxt = n; visited_edges.add((curr, n)); break
        if not nxt or nxt == start: break
        path.append(nxt); curr = nxt

    def rdp(pts, epsilon):
        if len(pts) < 3: return pts
        def dist(p, a, b):
            dx, dy = b[0] - a[0], b[1] - a[1]
            if dx == 0 and dy == 0: return math.hypot(p[0] - a[0], p[1] - a[1])
            t = ((p[0] - a[0]) * dx + (p[1] - a[1]) * dy) / (dx*dx + dy*dy)
            t = max(0, min(1, t))
            return math.hypot(p[0] - (a[0] + t*dx), p[1] - (a[1] + t*dy))
        dmax, index = 0, 0
        for i in range(1, len(pts)-1):
            d = dist(pts[i], pts[0], pts[-1])
            if d > dmax: index, dmax = i, d
        if dmax > epsilon:
            res1 = rdp(pts[:index+1], epsilon)
            res2 = rdp(pts[index:], epsilon)
            return res1[:-1] + res2
        else: return [pts[0], pts[-1]]

    simplified = rdp(path + [path[0]], 0.7)
    target_w = 18.0
    target_h = target_w * (70.0 / 83.0)
    off_x = (24.0 - target_w) / 2.0
    off_y = (24.0 - target_h) / 2.0
    svg_pts = [(round(off_x + (x - 4.0)*(target_w/83.0), 2), round(off_y + (y - 19.0)*(target_h/70.0), 2)) for x, y in simplified]

    d = f'M{svg_pts[0][0]},{svg_pts[0][1]}'
    for x, y in svg_pts[1:-1]:
        d += f'L{x},{y}'
    d += 'Z'

    xml_content = f'''<?xml version="1.0" encoding="utf-8"?>
<vector xmlns:android="http://schemas.android.com/apk/res/android"
    android:width="48.0dp"
    android:height="48.0dp"
    android:viewportWidth="24.0"
    android:viewportHeight="24.0">
    <path
        android:fillColor="#ffffffff"
        android:pathData="{d}" />
</vector>
'''
    os.makedirs(f'{BASE_DIR}/res/drawable', exist_ok=True)
    with open(f'{BASE_DIR}/res/drawable/push_small_logo.xml', 'w') as f:
        f.write(xml_content)
    print('  ✓ Generated push_small_logo.xml')

    # 2. Generate Monochrome PNGs
    crop_w, crop_h = 83, 70
    crop_data = bytearray(crop_w * crop_h * 4)
    for cy in range(crop_h):
        for cx in range(crop_w):
            src_idx = ((cy + 19) * w + (cx + 4)) * 4
            dst_idx = (cy * crop_w + cx) * 4
            crop_data[dst_idx : dst_idx+4] = data[src_idx : src_idx+4]

    write_png('/tmp/miku_crop.png', crop_w, crop_h, crop_data)

    def make_monochrome_icon(canvas_w, canvas_h, content_w, out_path):
        content_h = round(content_w * (crop_h / crop_w))
        tmp_resized = f'/tmp/resized_{content_w}x{content_h}.png'
        subprocess.run(['sips', '-z', str(content_h), str(content_w), '/tmp/miku_crop.png', '--out', tmp_resized], check=True, stdout=subprocess.DEVNULL)
        rw, rh, rdata = read_png(tmp_resized)
        canvas = bytearray(canvas_w * canvas_h * 4)
        dx = (canvas_w - rw) // 2
        dy = (canvas_h - rh) // 2
        for y in range(rh):
            for x in range(rw):
                a = rdata[(y * rw + x) * 4 + 3]
                c_idx = ((y + dy) * canvas_w + (x + dx)) * 4
                canvas[c_idx] = 255
                canvas[c_idx+1] = 255
                canvas[c_idx+2] = 255
                canvas[c_idx+3] = a
        write_png(out_path, canvas_w, canvas_h, canvas)
        print(f'  ✓ Generated {out_path}')

    make_monochrome_icon(72, 72, 54, f'{BASE_DIR}/res/mipmap-xxhdpi/player_ic_push_small_logo.png')
    make_monochrome_icon(48, 48, 36, f'{BASE_DIR}/res/mipmap-hdpi/player_ic_push_small_logo.png')
    make_monochrome_icon(60, 60, 45, f'{BASE_DIR}/res/drawable/tpush_notify_icon.png')

    # 3. Generate Color Icons from Miku App Icon
    subprocess.run(['/opt/homebrew/bin/dwebp', f'{BASE_DIR}/res/mipmap-xxxhdpi/ic_launcher.webp', '-o', '/tmp/ic_launcher_xxxhdpi.png'], check=True, stdout=subprocess.DEVNULL)

    # ic_notification_logo.png (64x64)
    subprocess.run(['sips', '-z', '64', '64', '/tmp/ic_launcher_xxxhdpi.png', '--out', f'{BASE_DIR}/res/mipmap-xhdpi/ic_notification_logo.png'], check=True, stdout=subprocess.DEVNULL)
    print('  ✓ Generated ic_notification_logo.png (64x64)')

    # player_ic_notification_icon.png (96x96 hdpi, 144x144 xxhdpi)
    subprocess.run(['sips', '-z', '96', '96', '/tmp/ic_launcher_xxxhdpi.png', '--out', f'{BASE_DIR}/res/mipmap-hdpi/player_ic_notification_icon.png'], check=True, stdout=subprocess.DEVNULL)
    subprocess.run(['sips', '-z', '144', '144', '/tmp/ic_launcher_xxxhdpi.png', '--out', f'{BASE_DIR}/res/mipmap-xxhdpi/player_ic_notification_icon.png'], check=True, stdout=subprocess.DEVNULL)
    print('  ✓ Generated player_ic_notification_icon.png (hdpi 96x96, xxhdpi 144x144)')

    # logo_about_us.webp (196x192)
    w_app, h_app, data_app = read_png('/tmp/ic_launcher_xxxhdpi.png')
    tw, th = 196, 192
    out_logo = bytearray(tw * th * 4)
    dx = (tw - w_app) // 2
    dy = (th - h_app) // 2
    for y in range(h_app):
        for x in range(w_app):
            src_idx = (y * w_app + x) * 4
            dst_idx = ((y + dy) * tw + (x + dx)) * 4
            out_logo[dst_idx : dst_idx+4] = data_app[src_idx : src_idx+4]
    write_png('/tmp/logo_about_us.png', tw, th, out_logo)
    subprocess.run(['/opt/homebrew/bin/cwebp', '-lossless', '/tmp/logo_about_us.png', '-o', f'{BASE_DIR}/res/mipmap-xhdpi/logo_about_us.webp'], check=True, stdout=subprocess.DEVNULL)
    print('  ✓ Generated logo_about_us.webp (196x192)')
    print("Done! All notification icons generated successfully.")

if __name__ == '__main__':
    main()
