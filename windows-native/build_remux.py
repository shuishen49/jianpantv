"""Build only the LGPL FFmpeg container code used by MP4 export.

Fetch the pinned official archive separately; verify its detached signature using
FFmpeg's published fingerprint before first use. No FFmpeg executables ship.
"""
from pathlib import Path
import hashlib
import json
import os
import shlex
import subprocess

ROOT = Path(__file__).resolve().parents[1]
VERSION = "9.0.2"
SOURCE_SHA = "8c3850283eb25fa026482078a04051e0be17347b09ef81a0849bec15a96e002e"
SOURCE = ROOT / f"tools/ffmpeg-{VERSION}"
ARCHIVE = ROOT / f"tools/ffmpeg-{VERSION}.tar.xz"
STAGE = ROOT / "work/windows-native-build"
BASH = Path("C:/Program Files/Git/bin/bash.exe")
ZIG = ROOT / "tools/zig-x86_64-windows-0.14.1/zig.exe"
MAKE = ROOT / "tools/make/mingw64/bin/mingw32-make.exe"


def main():
    assert hashlib.sha256(ARCHIVE.read_bytes()).hexdigest() == SOURCE_SHA
    STAGE.mkdir(parents=True, exist_ok=True)
    env = os.environ.copy()
    env["ZIG_GLOBAL_CACHE_DIR"] = str(STAGE / "compiler-cache")
    env["ZIG_LOCAL_CACHE_DIR"] = str(STAGE / "compiler-cache-local")
    # Git's shell handles FFmpeg's portable make recipes; no shell is shipped.
    env["PATH"] = str(BASH.parent.parent / "usr/bin") + os.pathsep + env["PATH"]
    cc = f"{ZIG.as_posix()} cc -target x86_64-windows-gnu"
    options = [
        "./configure", "--target-os=mingw32", "--arch=x86_64",
        f"--cc={cc}", f"--host-cc={cc}", f"--ld={cc}",
        f"--ar={ZIG.as_posix()} ar", f"--ranlib={ZIG.as_posix()} ranlib",
        "--disable-everything", "--disable-autodetect", "--disable-programs",
        "--enable-ffprobe", "--disable-doc", "--disable-network", "--enable-debug=0",
        "--disable-asm", "--disable-x86asm", "--disable-inline-asm", "--disable-avdevice",
        "--nm=true",
        "--disable-avfilter", "--disable-swresample", "--disable-swscale",
        "--disable-shared", "--enable-static", "--enable-small",
        "--enable-demuxer=hls,mpegts,mov,aac,ac3,eac3",
        "--enable-muxer=mp4", "--enable-protocol=file,crypto",
        "--enable-parser=h264,hevc,aac,ac3,mpegaudio",
        "--enable-bsf=aac_adtstoasc,extract_extradata",
        "--extra-cflags=-Os -ffunction-sections -fdata-sections",
        "--extra-ldflags=-Wl,--gc-sections",
    ]
    config_record = STAGE / "remux-configure.json"
    if not config_record.exists() or json.loads(config_record.read_text()) != options:
        with (STAGE / "remux-configure.log").open("w") as log:
            subprocess.run([str(BASH), "-c", shlex.join(options)], cwd=SOURCE, env=env,
                           stdout=log, stderr=subprocess.STDOUT, check=True)
        config_record.write_text(json.dumps(options, indent=2), encoding="utf-8")
    with (STAGE / "remux-build.log").open("w") as log:
        subprocess.run([str(MAKE), "-j6", f"SHELL={BASH.as_posix()}",
                        "libavformat/libavformat.a", "libavcodec/libavcodec.a",
                        "libavutil/libavutil.a", "ffprobe_g.exe"],
                       cwd=SOURCE, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
    libraries = {}
    for lib in ("avformat", "avcodec", "avutil"):
        path = SOURCE / f"lib{lib}/lib{lib}.a"
        libraries[path.relative_to(ROOT).as_posix()] = {
            "bytes": path.stat().st_size, "sha256": hashlib.sha256(path.read_bytes()).hexdigest()}
    record = {"version": VERSION, "source_sha256": SOURCE_SHA,
              "source_url": f"https://ffmpeg.org/releases/ffmpeg-{VERSION}.tar.xz",
              "release_signing_fingerprint": "FCF986EA15E6E293A5644F10B4322F04D67658D8",
              "license": "LGPL-2.1-or-later", "network_disabled": True,
              "decoders_disabled": True, "encoders_disabled": True,
              "configure": options, "libraries": libraries}
    (STAGE / "remux-build.json").write_text(json.dumps(record, indent=2), encoding="utf-8")
    print(json.dumps(record, indent=2))


if __name__ == "__main__":
    main()
