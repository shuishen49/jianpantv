"""Relink the application objects with replacement LGPL FFmpeg libraries."""
from pathlib import Path
import argparse
import subprocess


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--compiler", type=Path, required=True, help="Path to Zig 0.14.1 zig.exe")
    parser.add_argument("--libraries", type=Path, default=Path(__file__).resolve().parent)
    parser.add_argument("--output", type=Path, default=Path("Jianpian-relinked.exe"))
    args = parser.parse_args()
    base = Path(__file__).resolve().parent
    libraries = [args.libraries / f"lib{name}.a" for name in ("avformat", "avcodec", "avutil")]
    inputs = [base / "main.o", base / "remux.o", base / "app.res", *libraries]
    assert all(path.is_file() for path in inputs)
    subprocess.run([str(args.compiler.resolve()), "cc", "-target", "x86_64-windows-gnu",
        "-s", "-municode", *(str(path.resolve()) for path in inputs),
        "-luser32", "-lgdi32", "-lole32", "-lshlwapi", "-lshell32",
        "-lwinhttp", "-lbcrypt", "-lcabinet", "-lws2_32", "-luuid", "-lpsapi", "-ldwmapi",
        "-lm", "-latomic", "-Wl,--subsystem,windows,--dynamicbase,--nxcompat,--high-entropy-va,--gc-sections",
        "-o", str(args.output.resolve())], check=True)
    print(args.output.resolve())


if __name__ == "__main__":
    main()
