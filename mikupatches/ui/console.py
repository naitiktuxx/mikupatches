"""
Terminal console and formatted logging utilities.
"""

import sys
from typing import List, Tuple, Optional
from mikupatches.constants import Colors


class Console:
    _color_enabled = True

    @classmethod
    def set_color_enabled(cls, enabled: bool):
        cls._color_enabled = enabled
        if not enabled:
            Colors.strip_colors()

    @classmethod
    def is_color_enabled(cls) -> bool:
        return cls._color_enabled

    @classmethod
    def step(cls, msg: str):
        if cls._color_enabled:
            print(f"{Colors.CYAN}{Colors.BOLD}[Step]{Colors.RESET} {msg}")
        else:
            print(f"[Step] {msg}")

    @classmethod
    def success(cls, msg: str):
        if cls._color_enabled:
            print(f"{Colors.GREEN}{Colors.BOLD}[Success]{Colors.RESET} {msg}")
        else:
            print(f"[Success] {msg}")

    @classmethod
    def warn(cls, msg: str):
        if cls._color_enabled:
            print(f"{Colors.YELLOW}[Warning]{Colors.RESET} {msg}")
        else:
            print(f"[Warning] {msg}")

    @classmethod
    def error(cls, msg: str):
        if cls._color_enabled:
            print(f"{Colors.RED}{Colors.BOLD}[Error]{Colors.RESET} {msg}")
        else:
            print(f"[Error] {msg}")

    @classmethod
    def debug(cls, msg: str, verbose: bool = False):
        if verbose:
            if cls._color_enabled:
                print(f"{Colors.DIM}[Debug] {msg}{Colors.RESET}")
            else:
                print(f"[Debug] {msg}")

    @classmethod
    def banner(cls, title: str, subtitle: Optional[str] = None):
        width = 76
        print("\n" + "=" * width)
        if cls._color_enabled:
            print(f"{Colors.CYAN}{Colors.BOLD} {title}{Colors.RESET}")
        else:
            print(f" {title}")
        if subtitle:
            print("-" * width)
            print(f" {subtitle}")
        print("=" * width + "\n")

    @classmethod
    def print_table(cls, headers: List[str], rows: List[List[str]], col_widths: Optional[List[int]] = None):
        if not rows:
            return

        num_cols = len(headers)
        if not col_widths:
            col_widths = [len(h) for h in headers]
            for row in rows:
                for i in range(min(num_cols, len(row))):
                    col_widths[i] = max(col_widths[i], len(str(row[i])))

        header_line = " | ".join(f"{h:<{col_widths[i]}}" for i, h in enumerate(headers))
        sep_line = "-+-".join("-" * col_widths[i] for i in range(num_cols))

        print(header_line)
        print(sep_line)
        for row in rows:
            padded = [f"{str(row[i]) if i < len(row) else '':<{col_widths[i]}}" for i in range(num_cols)]
            print(" | ".join(padded))
