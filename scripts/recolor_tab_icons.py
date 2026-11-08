#!/usr/bin/env python3
import os
import struct
import zlib
import zipfile
import json

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
APK_PATH = os.path.join(BASE_DIR, "input", "MovieBox_4.0.apk")
PATCHES_BASE = os.path.join(BASE_DIR, "patches", "com.community.newroom", "base")
PATCH_GROUPS_FILE = os.path.join(BASE_DIR, "patches", "com.community.newroom", "patch_groups.json")

# Netflix Red gradient endpoints
NETFLIX_RED_START = (255, 38, 51)   # #FF2633
NETFLIX_RED_END = (184, 7, 16)      # #B80710

def recolor_rgba(raw, width, height, start_rgb, end_rgb):
    bpp = 4
    stride = width * bpp
    unfiltered = bytearray(height * stride)

    def paeth(a, b, c):
        p = a + b - c
        pa, pb, pc = abs(p - a), abs(p - b), abs(p - c)
        if pa <= pb and pa <= pc: return a
        elif pb <= pc: return b
        else: return c

    src_idx = 0
    for y in range(height):
        ftype = raw[src_idx]; src_idx += 1
        for x in range(stride):
            val = raw[src_idx]; src_idx += 1
            left = unfiltered[y * stride + x - bpp] if x >= bpp else 0
            up = unfiltered[(y - 1) * stride + x] if y > 0 else 0
            upleft = unfiltered[(y - 1) * stride + x - bpp] if (y > 0 and x >= bpp) else 0
            if ftype == 0: res = val
            elif ftype == 1: res = (val + left) & 0xff
            elif ftype == 2: res = (val + up) & 0xff
            elif ftype == 3: res = (val + ((left + up) >> 1)) & 0xff
            elif ftype == 4: res = (val + paeth(left, up, upleft)) & 0xff
            unfiltered[y * stride + x] = res

    out_raw = bytearray()
    for y in range(height):
        out_raw.append(0)
        for x in range(width):
            px_idx = (y * width + x) * 4
            a = unfiltered[px_idx + 3]
            if a > 0:
                t = (x + y) / (width + height)
                r = int(start_rgb[0] * (1 - t) + end_rgb[0] * t)
                g = int(start_rgb[1] * (1 - t) + end_rgb[1] * t)
                b = int(start_rgb[2] * (1 - t) + end_rgb[2] * t)
                out_raw.extend([r, g, b, a])
            else:
                out_raw.extend([0, 0, 0, 0])
    return bytes(out_raw)

def recolor_indexed(raw, width, height, trns, start_rgb, end_rgb):
    stride = width
    unfiltered = bytearray(height * stride)

    def paeth(a, b, c):
        p = a + b - c
        pa, pb, pc = abs(p - a), abs(p - b), abs(p - c)
        if pa <= pb and pa <= pc: return a
        elif pb <= pc: return b
        else: return c

    src_idx = 0
    for y in range(height):
        ftype = raw[src_idx]; src_idx += 1
        for x in range(stride):
            val = raw[src_idx]; src_idx += 1
            left = unfiltered[y * stride + x - 1] if x >= 1 else 0
            up = unfiltered[(y - 1) * stride + x] if y > 0 else 0
            upleft = unfiltered[(y - 1) * stride + x - 1] if (y > 0 and x >= 1) else 0
            if ftype == 0: res = val
            elif ftype == 1: res = (val + left) & 0xff
            elif ftype == 2: res = (val + up) & 0xff
            elif ftype == 3: res = (val + ((left + up) >> 1)) & 0xff
            elif ftype == 4: res = (val + paeth(left, up, upleft)) & 0xff
            unfiltered[y * stride + x] = res

    out_raw = bytearray()
    for y in range(height):
        out_raw.append(0)
        for x in range(width):
            palette_idx = unfiltered[y * width + x]
            a = trns[palette_idx] if (trns and palette_idx < len(trns)) else 255
            if a > 0:
                t = (x + y) / (width + height)
                r = int(start_rgb[0] * (1 - t) + end_rgb[0] * t)
                g = int(start_rgb[1] * (1 - t) + end_rgb[1] * t)
                b = int(start_rgb[2] * (1 - t) + end_rgb[2] * t)
                out_raw.extend([r, g, b, a])
            else:
                out_raw.extend([0, 0, 0, 0])
    return bytes(out_raw)

def recolor_png_data(png_bytes, start_rgb=NETFLIX_RED_START, end_rgb=NETFLIX_RED_END):
    idx = 8
    width, height, color_type = 0, 0, 0
    idat = bytearray()
    trns = None
    while idx < len(png_bytes):
        length = struct.unpack(">I", png_bytes[idx:idx+4])[0]
        ctype = png_bytes[idx+4:idx+8]
        cdata = png_bytes[idx+8:idx+8+length]
        idx += 12 + length
        if ctype == b"IHDR":
            width, height, bit_depth, color_type = struct.unpack(">IIBB", cdata[:10])
        elif ctype == b"tRNS":
            trns = cdata
        elif ctype == b"IDAT":
            idat.extend(cdata)

    raw = zlib.decompress(idat)
    if color_type == 6:
        out_raw = recolor_rgba(raw, width, height, start_rgb, end_rgb)
    elif color_type == 3:
        out_raw = recolor_indexed(raw, width, height, trns, start_rgb, end_rgb)
    else:
        print(f"Unsupported color_type: {color_type}")
        return None

    new_idat = zlib.compress(out_raw, 9)
    ihdr_data = struct.pack(">IIBBBBB", width, height, 8, 6, 0, 0, 0)

    def make_chunk(ctype, data):
        return struct.pack(">I", len(data)) + ctype + data + struct.pack(">I", zlib.crc32(ctype + data) & 0xffffffff)

    return (
        b"\x89PNG\r\n\x1a\n" +
        make_chunk(b"IHDR", ihdr_data) +
        make_chunk(b"IDAT", new_idat) +
        make_chunk(b"IEND", b"")
    )

def main():
    icons_to_recolor = [
        # Bottom tab active icons
        "res/mipmap-xxhdpi/ic_tab_home_active.png",
        "res/mipmap-xxhdpi/ic_tab_downloads_active.png",
        "res/mipmap-xxhdpi/ic_tab_me_active.png",
        "res/mipmap-xxhdpi/ic_tab_music_active.png",
        "res/mipmap-xxhdpi/ic_tab_short_tv_active.png",
        "res/mipmap-xxhdpi/ic_tab_novel_active.png",
        "res/mipmap-xxhdpi/bottom_tab_ic_home_focus.png",
        "res/mipmap-xxhdpi/bottom_tab_ic_group_focus.png",
        # Active download icons
        "res/mipmap-xxhdpi/ic_download_selected_check.png",
        "res/mipmap-xxhdpi/co_download_num.png",
        "res/mipmap-xxhdpi/ic_download_downloading.png",
    ]

    new_file_paths = []
    with zipfile.ZipFile(APK_PATH) as z:
        for rel_path in icons_to_recolor:
            data = z.read(rel_path)
            recolored = recolor_png_data(data)
            if recolored:
                dst = os.path.join(PATCHES_BASE, rel_path)
                os.makedirs(os.path.dirname(dst), exist_ok=True)
                with open(dst, "wb") as f:
                    f.write(recolored)
                print(f"Recolored and saved: {rel_path} ({len(recolored)} bytes)")
                new_file_paths.append(rel_path)

    # Register in patch_groups.json under netflix_dark_theme
    with open(PATCH_GROUPS_FILE, "r") as f:
        groups = json.load(f)

    for g in groups:
        if g["id"] == "netflix_dark_theme":
            for p in new_file_paths:
                g["files"][p] = "Netflix Red styled active tab/action icon"
            print(f"Updated patch group 'netflix_dark_theme' with {len(new_file_paths)} recolored icon(s).")
            break

    with open(PATCH_GROUPS_FILE, "w") as f:
        json.dump(groups, f, indent=2)

if __name__ == "__main__":
    main()
