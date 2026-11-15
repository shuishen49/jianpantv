"""Verify the production remuxer with short real A/V and failure fixtures.

No copyrighted samples are distributed. Pass --fixture a local, independently
available H.264/AAC MPEG-TS fragment when reproducing these checks.
"""
from pathlib import Path
import argparse
import datetime
import hashlib
import json
import struct
import shutil
import subprocess
import time
from build_native import ROOT, STAGE, OUT, VERSION, FFMPEG

TEST = ROOT / f"testing/windows-native-{VERSION}"
DRIVER = STAGE / "remux-test.exe"
PROBE = FFMPEG / "ffprobe_g.exe"


def probe(path):
    result = subprocess.run([str(PROBE), "-v", "error", "-count_packets", "-show_entries",
        "format=duration,size:stream=codec_type,codec_name,width,height,nb_read_packets,duration,extradata_size",
        "-of", "json", str(path)], capture_output=True, check=True, timeout=20)
    return json.loads(result.stdout)


def record(folder, name, body):
    key = hashlib.sha256(name.encode()).hexdigest()
    media = folder / "media"
    media.mkdir(exist_ok=True)
    (media / (key + ".ts")).write_bytes(body)
    headers = "Content-Type: video/mp2t\r\n\0".encode("utf-16le")
    metadata = struct.pack("<IIII", 0x3243504a, 200, len(body), len(headers)) + hashlib.sha256(body).digest()
    (media / (key + ".info")).write_bytes(metadata + headers)
    return f"media/{key}.ts"


def manifest(folder, case, text):
    key = hashlib.sha256(case.encode()).hexdigest()
    (folder / (key + ".m3u8")).write_text(text, encoding="utf-8", newline="\n")
    return key


def export(folder, key, mode="export", title="测试影片", language="", episode=""):
    completed = subprocess.run([str(DRIVER), mode, str(folder), key, title, language, episode],
                              capture_output=True, timeout=45)
    result = json.loads(completed.stdout.decode("utf-8"))
    result["exit_code"] = completed.returncode
    if completed.returncode:
        result["stderr"] = completed.stderr.decode("utf-8", errors="replace")
    return result


def vod(resources, seconds, extra="", discontinuity=False):
    text = "#EXTM3U\n#EXT-X-VERSION:3\n#EXT-X-TARGETDURATION:10\n" + extra
    for index, resource in enumerate(resources):
        if discontinuity and index:
            text += "#EXT-X-DISCONTINUITY\n"
        text += f"#EXTINF:{seconds:.6f},\n{resource}\n"
    return text + "#EXT-X-ENDLIST\n"

def continuous_ts(body, counters):
    """Make repeated fixture segments legal TS across continuity counters."""
    data = bytearray(body)
    assert len(data) % 188 == 0
    for cursor in range(0, len(data), 188):
        assert data[cursor] == 0x47
        pid = ((data[cursor+1] & 31) << 8) | data[cursor+2]
        payload = bool(data[cursor+3] & 16)
        previous = counters.get(pid, (data[cursor+3] & 15) - (1 if payload else 0))
        current = (previous + (1 if payload else 0)) & 15
        data[cursor+3] = (data[cursor+3] & 0xf0) | current
        counters[pid] = current
    return bytes(data)

def shift_ts_timestamps(body, ticks):
    """Change PES timestamps without changing compressed A/V or TS counters."""
    data = bytearray(body)
    for cursor in range(0, len(data), 188):
        if not data[cursor+1] & 0x40 or not data[cursor+3] & 0x10:
            continue
        start = cursor + 4
        if data[cursor+3] & 0x20:
            start += 1 + data[cursor+4]
        if start+19 > cursor+188 or data[start:start+3] != b"\0\0\1":
            continue
        flags = data[start+7] >> 6
        for offset in ([9, 14] if flags == 3 else [9] if flags == 2 else []):
            pos = start+offset
            a, b, c, d, e = data[pos:pos+5]
            old = ((a & 14) << 29) | (b << 22) | ((c & 254) << 14) | (d << 7) | (e >> 1)
            value = (old + ticks) & ((1 << 33)-1)
            data[pos:pos+5] = bytes(((a & 0xf0) | (((value >> 30) & 7) << 1) | 1,
                                    (value >> 22) & 255, ((value >> 14) & 254) | 1,
                                    (value >> 7) & 255, ((value << 1) & 254) | 1))
    return bytes(data)

def video_continuation(body):
    video_pid = None
    for cursor in range(0, len(body), 188):
        if not body[cursor+3] & 16:
            continue
        pid = ((body[cursor+1] & 31) << 8) | body[cursor+2]
        start = cursor + 4
        if body[cursor+3] & 32:
            start += 1 + body[cursor+4]
        if body[cursor+1] & 64:
            if start+4 <= cursor+188 and body[start:start+3] == b"\0\0\1" and 0xe0 <= body[start+3] <= 0xef:
                video_pid = pid
        elif video_pid is not None and pid == video_pid and cursor >= len(body)//2:
            return cursor
    raise AssertionError("Fixture has no video PES continuation")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--fixture", type=Path, default=ROOT /
        "testing/windows-native-0.2.3/media/00d01e8f90f77179db83a76a2027752fcc30d08dcba921ece562ab55daabff89.ts")
    args = parser.parse_args()
    TEST.mkdir(parents=True, exist_ok=True)
    folder = TEST / ("MP4样本-" + str(time.time_ns()))
    folder.mkdir()
    source = args.fixture.read_bytes()
    source_probe = probe(args.fixture)
    video = next(s for s in source_probe["streams"] if s["codec_type"] == "video")
    audio = next(s for s in source_probe["streams"] if s["codec_type"] == "audio")
    assert video["codec_name"] == "h264" and audio["codec_name"] == "aac"
    seconds = float(video["duration"])
    resource = record(folder, "plain", source)
    report = {"timestamp": datetime.datetime.now().astimezone().isoformat(),
              "exe_sha256": hashlib.sha256((OUT / "Jianpian.exe").read_bytes()).hexdigest(),
              "source_sha256": hashlib.sha256(source).hexdigest(), "source_probe": source_probe,
              "fixture_directory": str(folder), "checks": {}}
    checks = report["checks"]
    key = manifest(folder, "plain", vod([resource], seconds))
    saved = export(folder, key)
    assert saved["phase"] == 2 and saved["exit_code"] == 0, saved
    output = folder / saved["file"]
    result = probe(output)
    output_video = next(s for s in result["streams"] if s["codec_type"] == "video")
    output_audio = next(s for s in result["streams"] if s["codec_type"] == "audio")
    for before, after in ((video, output_video), (audio, output_audio)):
        assert before["codec_name"] == after["codec_name"]
        assert int(before["nb_read_packets"]) == int(after["nb_read_packets"])
        assert after["extradata_size"] > 0
    assert output_video["width"] == video["width"] and output_video["height"] == video["height"]
    assert abs(float(result["format"]["duration"]) - seconds) < 0.3
    assert not (folder / (key + ".m3u8")).exists()
    assert not list(folder.glob("*.partial"))
    checks["ts_audio_video_single_mp4"] = {"passed": True, "saved": saved, "probe": result}
    resolution = min(video["width"], video["height"])
    assert saved["file"] == f"《测试影片》-{resolution}p.mp4", saved
    checks["filename_uses_actual_video_resolution_without_brand_or_hash"] = {"passed": True, "file": saved["file"]}
    key = manifest(folder, "filename-language", vod([resource], seconds))
    named = export(folder, key, title="八仙！", language="国语")
    assert named["phase"] == 2 and named["file"] == f"《八仙！》-{resolution}p-国语.mp4", named
    checks["optional_language_in_saved_filename"] = {"passed": True, "file": named["file"]}
    key = manifest(folder, "filename-episode", vod([resource], seconds))
    episode = export(folder, key, title="三体", language="und", episode="第01集")
    assert episode["phase"] == 2 and episode["file"] == f"《三体》-第01集-{resolution}p.mp4", episode
    checks["episode_identified_unknown_language_omitted"] = {"passed": True, "file": episode["file"]}
    original_bytes = output.read_bytes()
    duplicates = []
    for number in (2, 3):
        key = manifest(folder, f"duplicate-{number}", vod([resource], seconds))
        duplicate = export(folder, key)
        assert duplicate["phase"] == 2 and duplicate["file"] == f"《测试影片》-{resolution}p ({number}).mp4", duplicate
        assert output.read_bytes() == original_bytes
        duplicates.append(duplicate["file"])
    checks["same_title_never_overwrites_existing_mp4"] = {"passed": True, "files": duplicates}
    standalone = folder / "standalone"
    standalone.mkdir()
    copied = standalone / "单个文件.mp4"
    shutil.copyfile(output, copied)
    completed = subprocess.run([str(DRIVER), "decode", str(copied)], capture_output=True, timeout=30)
    decoded = json.loads(completed.stdout)
    assert completed.returncode == 0 and decoded["decoded"], decoded
    checks["standalone_os_video_audio_decode_and_seek"] = {"passed": True, **decoded}

    # AES-128 CBC with a sequence-derived IV and PKCS#7 padding.
    aes_key, iv = bytes(range(16)), (7).to_bytes(16, "big")
    encrypted = folder / "aes-fixture.bin"
    cipher_script = (
        "const fs=require('node:fs'),c=require('node:crypto');"
        "const t=c.createCipheriv('aes-128-cbc',Buffer.from(process.argv[3],'hex'),Buffer.from(process.argv[4],'hex'));"
        "fs.writeFileSync(process.argv[2],Buffer.concat([t.update(fs.readFileSync(process.argv[1])),t.final()]));")
    subprocess.run(["node", "-e", cipher_script, str(args.fixture), str(encrypted),
                    aes_key.hex(), iv.hex()], check=True)
    secret = record(folder, "key", aes_key)
    encrypted_resource = record(folder, "encrypted", encrypted.read_bytes())
    key = manifest(folder, "aes", vod([encrypted_resource], seconds,
        f'#EXT-X-MEDIA-SEQUENCE:7\n#EXT-X-KEY:METHOD=AES-128,URI="{secret}"\n'))
    saved_aes = export(folder, key, title="加密样本")
    assert saved_aes["phase"] == 2, saved_aes
    encrypted_probe = probe(folder / saved_aes["file"])
    assert encrypted_probe["streams"] == result["streams"]
    checks["aes128_decrypted_to_mp4"] = {"passed": True, "saved": saved_aes}
    second_iv = (8).to_bytes(16, "big")
    subprocess.run(["node", "-e", cipher_script, str(args.fixture), str(encrypted),
                    aes_key.hex(), second_iv.hex()], check=True)
    second_encrypted = record(folder, "encrypted-sequence-8", encrypted.read_bytes())
    key = manifest(folder, "aes-periods", vod([encrypted_resource, second_encrypted], seconds,
        f'#EXT-X-MEDIA-SEQUENCE:7\n#EXT-X-KEY:METHOD=AES-128,URI="{secret}"\n',
        discontinuity=True))
    saved_aes_periods = export(folder, key, title="跨段密钥和序号")
    assert saved_aes_periods["phase"] == 2, saved_aes_periods
    aes_periods_probe = probe(folder / saved_aes_periods["file"])
    assert abs(float(aes_periods_probe["format"]["duration"]) - seconds*2) < 0.3
    checks["discontinuity_inherits_aes_key_and_implicit_iv_sequence"] = {"passed": True}

    # A real fragmented-MP4 initialization segment followed by a media fragment.
    fragment = folder / "fragment-fixture.mp4"
    subprocess.run([str(DRIVER), "fragment", str(output), str(fragment)], check=True)
    fragment_bytes = fragment.read_bytes()
    cursor = 0
    while fragment_bytes[cursor+4:cursor+8] != b"moof":
        size = int.from_bytes(fragment_bytes[cursor:cursor+4], "big")
        assert 8 <= size <= len(fragment_bytes) - cursor
        cursor += size
    init = record(folder, "init", fragment_bytes[:cursor])
    media = record(folder, "fmp4", fragment_bytes[cursor:])
    fragment_duration = float(probe(fragment)["format"]["duration"])
    key = manifest(folder, "fmp4", vod([media], fragment_duration, f'#EXT-X-MAP:URI="{init}"\n'))
    saved_fmp4 = export(folder, key, title="初始化分片")
    assert saved_fmp4["phase"] == 2, saved_fmp4
    fmp4_probe = probe(folder / saved_fmp4["file"])
    assert len(fmp4_probe["streams"]) == 2 and int(fmp4_probe["streams"][0]["nb_read_packets"]) > 0
    checks["fragmented_mp4_initialization"] = {"passed": True, "saved": saved_fmp4, "probe": fmp4_probe}
    key = manifest(folder, "fmp4-periods", vod([media, media], fragment_duration,
        f'#EXT-X-MAP:URI="{init}"\n', discontinuity=True))
    saved_fmp4_periods = export(folder, key, title="跨段初始化")
    assert saved_fmp4_periods["phase"] == 2, saved_fmp4_periods
    assert abs(float(probe(folder / saved_fmp4_periods["file"])["format"]["duration"]) -
               fragment_duration*2) < 0.3
    checks["discontinuity_inherits_initialization"] = {"passed": True}

    # Counters really reset here; do not sanitize the fixture to hide the bug.
    key = manifest(folder, "raw-counter-resets", vod([resource]*4, seconds, discontinuity=True))
    raw_resets = export(folder, key, title="原始连续计数重置")
    assert raw_resets["phase"] == 2, raw_resets
    reset_probe = probe(folder / raw_resets["file"])
    for before, after in zip(result["streams"], reset_probe["streams"]):
        assert int(after["nb_read_packets"]) == 4*int(before["nb_read_packets"])
    assert abs(float(reset_probe["format"]["duration"]) - seconds*4) < 0.3
    checks["declared_transport_counter_resets_preserve_all_packets"] = {"passed": True}

    shifted = record(folder, "timestamp-forward", shift_ts_timestamps(source, 90000*300))
    key = manifest(folder, "backward-then-forward", vod([shifted, resource, shifted], seconds,
        discontinuity=True))
    forward = export(folder, key, title="时间戳先后退再前进")
    assert forward["phase"] == 2, forward
    forward_probe = probe(folder / forward["file"])
    assert abs(float(forward_probe["format"]["duration"]) - seconds*3) < 0.3
    for before, after in zip(result["streams"], forward_probe["streams"]):
        assert int(after["nb_read_packets"]) == 3*int(before["nb_read_packets"])
    checks["backward_then_forward_timestamp_splice"] = {"passed": True}

    key = manifest(folder, "undeclared-reset", vod([resource]*2, seconds))
    undeclared = export(folder, key)
    assert undeclared["phase"] == 4 and not (folder / undeclared["file"]).exists(), undeclared
    assert "分片衔接" in undeclared["error"], undeclared
    checks["undeclared_transport_errors_still_rejected_with_reason"] = {"passed": True}
    video_payload = video_continuation(source)
    flagged = bytearray(source)
    flagged[video_payload+1] |= 0x80
    for case, damaged_source in (
        ("transport-error", bytes(flagged)),
        ("interior-packet-loss", source[:video_payload] + source[video_payload+188:]),
    ):
        damaged_ref = record(folder, case, damaged_source)
        key = manifest(folder, case, vod([damaged_ref], seconds, discontinuity=True))
        damaged_result = export(folder, key)
        assert damaged_result["phase"] == 4 and not (folder / damaged_result["file"]).exists(), damaged_result
        checks[case + "_still_rejected_after_declared_reset"] = {"passed": True}

    counters = {}
    repeated_resources = [record(folder, f"continuity-{i}", continuous_ts(source, counters)) for i in range(100)]
    key = manifest(folder, "discontinuity", vod(repeated_resources[:4], seconds, discontinuity=True))
    repeated = export(folder, key, title="时间戳重置")
    assert repeated["phase"] == 2, repeated
    repeated_probe = probe(folder / repeated["file"])
    assert abs(float(repeated_probe["format"]["duration"]) - seconds*4) < 0.3
    checks["timestamp_discontinuity"] = {"passed": True, "probe": repeated_probe}

    # Failing reads and malformed references must not publish a partial file.
    corrupt = record(folder, "corrupt", source)
    corrupt_path = folder / corrupt
    damaged = bytearray(source); damaged[len(damaged)//2] ^= 1
    corrupt_path.write_bytes(damaged)
    key = manifest(folder, "corrupt", vod([corrupt], seconds))
    failed = export(folder, key)
    assert failed["phase"] == 4 and not (folder / failed["file"]).exists(), failed
    checks["corrupt_cached_digest_rejected"] = {"passed": True}
    missing = "media/" + "f"*64 + ".ts"
    for case, body in (
        ("missing", vod([resource, missing], seconds)),
        ("remote", vod(["https://example.com/video.ts"], seconds)),
        ("traversal", vod(["../outside.ts"], seconds)),
        ("wrong_duration", vod([resource], seconds*8)),
        ("live", vod([resource], seconds).replace("#EXT-X-ENDLIST\n", "")),
    ):
        key = manifest(folder, case, body)
        failed = export(folder, key)
        assert failed["phase"] == 4 and not (folder / failed["file"]).exists(), (case, failed)
        checks[case + "_not_published"] = {"passed": True}

    key = manifest(folder, "cancel", vod([resource], seconds))
    stopped = export(folder, key, mode="cancel")
    assert stopped["phase"] == 3 and not (folder / stopped["file"]).exists(), stopped
    checks["cancel_before_merge"] = {"passed": True}
    # Preserve a pre-existing final file while interrupting a real large merge.
    key = manifest(folder, "cancel-mid", vod(repeated_resources, seconds, discontinuity=True))
    stopped_name = "《测试影片》.mp4"
    final = folder / stopped_name
    final.write_bytes(b"previous-complete-file")
    stopped = export(folder, key, mode="cancel-mid")
    assert stopped["phase"] == 3 and stopped["bytes"] > 65536, stopped
    assert final.read_bytes() == b"previous-complete-file"
    assert not list(folder.glob("*.partial"))
    checks["cancel_during_write_preserves_previous"] = {"passed": True, "saved": stopped}
    key = manifest(folder, "filename", vod([resource], seconds))
    sanitized = export(folder, key, title='../CON:*?"bad\\title. ')
    assert sanitized["phase"] == 2 and "/" not in sanitized["file"] and "\\" not in sanitized["file"]
    assert (folder / sanitized["file"]).parent == folder
    checks["safe_title_filename"] = {"passed": True, "file": sanitized["file"]}
    # Successful production publication removes only its own cache; errors and
    # cancellation never invoke the completion hook.
    clean = folder / "automatic-cleanup"
    clean.mkdir()
    clean_ref = record(clean, "clean", source)
    unrelated = record(clean, "unrelated", source)
    key = manifest(clean, "clean", vod([clean_ref], seconds))
    cleaned = export(clean, key, mode="export-clean")
    assert cleaned["phase"] == 2 and (clean / cleaned["file"]).exists(), cleaned
    assert not (clean / clean_ref).exists() and not (clean / clean_ref).with_suffix(".info").exists()
    assert (clean / unrelated).exists() and not list(clean.glob("*.jp-cleanup"))
    cleaned_probe = probe(clean / cleaned["file"])
    assert [s["nb_read_packets"] for s in cleaned_probe["streams"]] == [
        s["nb_read_packets"] for s in result["streams"]]
    checks["verified_mp4_automatically_cleans_episode_only"] = {"passed": True, "saved": cleaned}
    key = manifest(clean, "clean-failure", vod([unrelated], seconds*8))
    failed_clean = export(clean, key, mode="export-clean")
    assert failed_clean["phase"] == 4 and (clean / unrelated).exists() and (clean / (key+".m3u8")).exists()
    checks["failed_merge_keeps_cache_and_manifest"] = {"passed": True}
    key = manifest(clean, "clean-cancel", vod([unrelated], seconds))
    cancelled_clean = export(clean, key, mode="cancel")
    assert cancelled_clean["phase"] == 3 and (clean / unrelated).exists() and (clean / (key+".m3u8")).exists()
    checks["cancelled_merge_keeps_cache_and_manifest"] = {"passed": True}
    report["passed"] = len(checks)
    report["all_passed"] = all(c["passed"] for c in checks.values())
    (TEST / "mp4-verification.json").write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
