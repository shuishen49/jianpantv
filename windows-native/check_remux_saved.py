"""Reproduce a saved VOD in an isolated workspace; never modify its cache.

The evidence contains counts, digests and decoder results, not media or headers.
"""
from pathlib import Path
import argparse
import datetime
import hashlib
import json
import re
import shutil
import struct
import subprocess
import time
from build_native import ROOT, STAGE, OUT, VERSION, FFMPEG


def run(arguments, timeout=90):
    started = time.monotonic()
    result = subprocess.run([str(a) for a in arguments], capture_output=True, timeout=timeout)
    return result, time.monotonic()-started


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("directory", type=Path)
    parser.add_argument("id")
    parser.add_argument("--seek", type=float, nargs="+", default=[1])
    args = parser.parse_args()
    assert re.fullmatch("[0-9a-f]{64}", args.id)
    source = args.directory / (args.id + ".m3u8")
    body = source.read_bytes()
    text = body.decode("utf-8")
    references = list(dict.fromkeys(re.findall(r"media/([0-9a-f]{64})\.ts", text)))
    seconds = sum(float(n) for n in re.findall(r"#EXTINF:([0-9.]+),", text))
    test = ROOT / f"testing/windows-native-{VERSION}"
    test.mkdir(exist_ok=True, parents=True)
    folder = ROOT / "work" / ("saved-vod-" + str(time.time_ns()))
    folder.mkdir()
    (folder / "media").mkdir()
    (folder / source.name).write_bytes(body)
    total = 0
    for key in references:
        media = args.directory / "media" / (key + ".ts")
        info = media.with_suffix(".info")
        metadata = info.read_bytes()
        magic, status, length, headers = struct.unpack("<IIII", metadata[:16])
        content = media.read_bytes()
        assert magic == 0x3243504a and status == 200 and len(content) == length
        assert len(metadata) == 48+headers and hashlib.sha256(content).digest() == metadata[16:48]
        total += length
        shutil.copyfile(media, folder / "media" / media.name)
        shutil.copyfile(info, folder / "media" / info.name)
    probe_args = [FFMPEG / "ffprobe_g.exe", "-v", "error", "-count_packets",
                  "-show_entries", "format=duration,size:stream=codec_name,codec_type,width,height,nb_read_packets,extradata_size",
                  "-of", "json"]
    before, _ = run(probe_args + ["-extension_picky", "0", "-allowed_extensions", "ts,m3u8", source])
    assert before.returncode == 0, before.stderr
    before_probe = json.loads(before.stdout)
    exported, elapsed = run([STAGE / "remux-test.exe", "export", folder, args.id, "合并验证"])
    saved = json.loads(exported.stdout.decode("utf-8"))
    assert exported.returncode == 0 and saved["phase"] == 2, (saved, exported.stderr)
    output = folder / saved["file"]
    after, _ = run(probe_args + [output])
    assert after.returncode == 0, after.stderr
    after_probe = json.loads(after.stdout)
    for original, final in zip(before_probe["streams"], after_probe["streams"], strict=True):
        assert original["codec_name"] == final["codec_name"]
        assert int(original["nb_read_packets"]) == int(final["nb_read_packets"]), (original, final)
    assert abs(float(after_probe["format"]["duration"])-seconds) < 0.3, after_probe
    decodes = []
    for position in args.seek:
        decoded, _ = run([STAGE / "remux-test.exe", "decode", output, position], timeout=45)
        result = json.loads(decoded.stdout)
        assert decoded.returncode == 0 and result["decoded"], (position, result, decoded.stderr)
        decodes.append(result)
    # Inspect only the sample description counts, without embedding media.
    data = output.read_bytes()
    descriptions = []
    for match in re.finditer(b"stsd", data):
        offset = match.start()
        size = int.from_bytes(data[offset-4:offset], "big")
        if 16 <= size <= len(data)-offset+4:
            descriptions.append(int.from_bytes(data[offset+8:offset+12], "big"))
    assert source.read_bytes() == body
    assert not (folder / source.name).exists()
    assert not list(folder.glob("*.partial"))
    report = {
        "timestamp": datetime.datetime.now().astimezone().isoformat(),
        "exe_sha256": hashlib.sha256((OUT / "Jianpian.exe").read_bytes()).hexdigest(),
        "driver_sha256": hashlib.sha256((STAGE / "remux-test.exe").read_bytes()).hexdigest(),
        "manifest_sha256": hashlib.sha256(body).hexdigest(),
        "segments": len(re.findall(r"^media/[0-9a-f]{64}\.ts$", text, re.M)),
        "resources": len(references), "cache_bytes": total, "all_cache_digests_valid": True,
        "discontinuities": text.count("#EXT-X-DISCONTINUITY\n"),
        "manifest_seconds": seconds, "merge_seconds": elapsed,
        "saved": saved, "output": str(output), "output_sha256": hashlib.sha256(data).hexdigest(),
        "input_packet_counts": [int(s["nb_read_packets"]) for s in before_probe["streams"]],
        "output_probe": after_probe, "sample_description_counts": descriptions,
        "os_decode_and_seek": decodes, "original_cache_preserved": True,
        "all_passed": True,
    }
    (test / "saved-vod-verification.json").write_text(
        json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
