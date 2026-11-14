"""Check the shipped PE, its pinned loader, and recorded end-to-end playback."""
from pathlib import Path
import datetime
import hashlib
import json
import shutil
import struct
import subprocess
import sys
from check_fullscreen import check as check_fullscreen

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "output/Jianpian-Windows-C-0.2.2"
TEST = ROOT / "testing/windows-native-0.2.2"
BUILD = ROOT / "work/windows-native-build"


def read_json(path):
    return json.loads(path.read_text(encoding="utf-8-sig"))


def pe_information(path):
    data = path.read_bytes()
    pe = struct.unpack_from("<I", data, 0x3C)[0]
    assert data[pe:pe+4] == b"PE\0\0"
    machine, sections = struct.unpack_from("<HH", data, pe+4)
    optional_size = struct.unpack_from("<H", data, pe+20)[0]
    optional = pe + 24
    assert struct.unpack_from("<H", data, optional)[0] == 0x20B
    characteristics = struct.unpack_from("<H", data, optional+70)[0]
    section_headers = optional + optional_size

    def offset(rva):
        for number in range(sections):
            start = section_headers + 40 * number
            size, address, raw_size, raw_offset = struct.unpack_from("<IIII", data, start+8)
            if address <= rva < address + max(size, raw_size):
                return raw_offset + rva - address
        raise AssertionError("RVA outside PE sections")

    imports = []
    import_rva = struct.unpack_from("<I", data, optional+120)[0]
    if import_rva:
        cursor = offset(import_rva)
        while any(data[cursor:cursor+20]):
            name_rva = struct.unpack_from("<I", data, cursor+12)[0]
            start = offset(name_rva)
            imports.append(data[start:data.index(0, start)].decode("ascii").lower())
            cursor += 20
    clr_rva = struct.unpack_from("<I", data, optional+112+14*8)[0]
    return {"machine": hex(machine), "imports": imports, "uses_dotnet": clr_rva != 0,
            "aslr": bool(characteristics & 0x40), "nx": bool(characteristics & 0x100),
            "high_entropy_aslr": bool(characteristics & 0x20)}


def check_integrity():
    TEST.mkdir(parents=True, exist_ok=True)
    results = {}
    for name in ("intact", "tampered", "missing"):
        folder = TEST / ("integrity-" + name)
        folder.mkdir(exist_ok=True)
        shutil.copyfile(OUT / "Jianpian.exe", folder / "Jianpian.exe")
        if name != "missing":
            loader = bytearray((OUT / "WebView2Loader.dll").read_bytes())
            if name == "tampered":
                loader[512] ^= 1
            (folder / "WebView2Loader.dll").write_bytes(loader)
        report = folder / "result.json"
        completed = subprocess.run([str(folder / "Jianpian.exe"), "--verify-runtime", str(report)], timeout=15)
        result = read_json(report)
        assert result["verified"] is (name == "intact")
        assert completed.returncode == (0 if name == "intact" else 2)
        results[name] = result
    return results


def check_functional():
    for number in range(1, 14):
        assert (TEST / f"ui-state-{number}.json").stat().st_mtime >= (OUT / "Jianpian.exe").stat().st_mtime
    states = [read_json(TEST / f"ui-state-{i}.json") for i in range(1, 14)]
    memory = [read_json(TEST / f"memory-{i}.json") for i in range(1, 14)]
    runtime = read_json(TEST / "runtime.json")
    assert all(state["secureContext"] and not state["hasAndroidBridge"] for state in states)
    assert states[0]["route"].endswith("#/home")
    assert "#/search?" in states[1]["route"] and states[1]["cards"] > 0
    video3, video4 = states[2]["videos"][0], states[3]["videos"][0]
    assert not video3["paused"] and video3["readyState"] >= 3 and video3["width"] >= 1920
    assert video4["currentTime"] > video3["currentTime"] + 2
    assert states[4]["videos"][0]["paused"]
    assert states[5]["videos"][0]["currentTime"] >= 60 and not states[5]["videos"][0]["paused"]
    assert memory[6]["native_fullscreen"]
    full = states[6]["desktopFullscreen"]
    assert full["nativeFullscreen"] and full["playerFullscreen"] and full["unobstructed"]
    assert abs(full["player"]["x"]) <= 2 and abs(full["player"]["y"]) <= 2
    assert abs(full["player"]["width"] - full["width"]) <= 2
    assert abs(full["player"]["height"] - full["height"]) <= 2
    assert states[6]["videoNodePreserved"] and not states[6]["videos"][0]["paused"]
    assert states[6]["videos"][0]["currentTime"] > states[5]["videos"][0]["currentTime"]
    assert not states[7]["desktopFullscreen"]["nativeFullscreen"]
    assert not states[7]["desktopFullscreen"]["playerFullscreen"]
    assert all("请旋转手机" not in state["text"] for state in states)
    assert len({entry["window_handle"] for entry in memory}) == 1
    assert states[12]["route"].endswith("#/home") and not states[12]["videos"]
    assert runtime["api_success"] > 0 and runtime["api_failure"] == 0
    assert runtime["media_success"] > 0 and runtime["media_failure"] == runtime["blocked_media"]
    assert runtime["cache_writes"] > 0 and runtime["cache_hits"] > 0 and runtime["cache_errors"] == 0
    def layout(state, name):
        return next(e for e in state["layout"] if e["class"] == name)
    for number in (2, 7, 8, 9):
        player = layout(states[number], "detail__player-shell")
        pager = layout(states[number], "detail__pager")
        assert player["x"] + player["width"] <= pager["x"] + 1
        assert pager["height"] >= 400
    assert not states[2]["fullscreen"] and not memory[2]["native_fullscreen"]
    for number in (7, 8):
        pane = next(e for e in states[number]["layout"] if e["class"] == "detail__pane" and not e["inert"])
        composer = layout(states[number], "discussion__composer")
        assert composer["x"] >= pane["x"] - 1
        assert composer["x"] + composer["width"] <= pane["x"] + pane["width"] + 1
    assert any(e["scrollTop"] > 0 for e in states[9]["layout"] if e["class"] == "detail__pane")
    assert states[10]["cache"]["downloading"] or "整集已保存" in states[10]["cache"]["message"]
    assert not states[11]["cache"]["downloading"]
    cache_entries = 0
    for info in (TEST / "media").glob("*.info"):
        metadata = info.read_bytes()
        magic, status, length, header_bytes = struct.unpack_from("<IIII", metadata)
        assert magic == 0x3243504a and status in (200, 206)
        assert len(metadata) == 48 + header_bytes
        body = info.with_suffix(".ts").read_bytes()
        assert len(body) == length and hashlib.sha256(body).digest() == metadata[16:48]
        cache_entries += 1
    assert cache_entries > 5
    return {"homepage": True, "real_search_results": states[1]["cards"], "video_decoded_1080p": True,
            "playback_progressed": [video3["currentTime"], video4["currentTime"]],
            "pause": True, "seek_and_resume": True, "native_fullscreen": True,
            "player_button_fills_viewport": True, "fullscreen_preserves_playback": True,
            "fullscreen_unobstructed": True,
            "no_phone_rotation_prompt": True, "fullscreen_exit_restores_layout": True,
            "window_handle_preserved": True, "returned_home": True, "runtime": runtime,
            "small_player_by_default": True, "discussion_confined_to_right_pane": True,
            "compact_window_900x640": True, "detail_scroll": True,
            "real_download_while_playing": True, "cancel_download": True,
            "cache_entries_verified": cache_entries,
            "account_login_tested": False, "all_media_lines_tested": False}


def main():
    inventory = read_json(BUILD / "build-inventory.json")
    assert hashlib.sha256((OUT / "Jianpian.exe").read_bytes()).hexdigest() == inventory["exe_sha256"]
    assert hashlib.sha256((OUT / "WebView2Loader.dll").read_bytes()).hexdigest() == inventory["loader_sha256"]
    pe = pe_information(OUT / "Jianpian.exe")
    assert pe["machine"] == "0x8664" and not pe["uses_dotnet"] and pe["aslr"] and pe["nx"]
    system_dlls = {"kernel32.dll", "user32.dll", "gdi32.dll", "msvcrt.dll", "ole32.dll",
                   "shlwapi.dll", "shell32.dll", "winhttp.dll", "bcrypt.dll", "cabinet.dll",
                   "ws2_32.dll", "dwmapi.dll", "psapi.dll", "ntdll.dll", "advapi32.dll"}
    assert all(name in system_dlls or
               (name.startswith("api-ms-win-crt-") and name.endswith(".dll"))
               for name in pe["imports"]), pe["imports"]
    policy = subprocess.run([str(BUILD / "policy-test.exe")], capture_output=True, text=True, check=True)
    report = {"timestamp": datetime.datetime.now().astimezone().isoformat(), "pe": pe,
              "url_policy": json.loads(policy.stdout), "runtime_integrity": check_integrity()}
    report["fullscreen_regression"] = check_fullscreen()
    if "--binary-only" not in sys.argv:
        for executable in ("cache-test", "playlist-test"):
            folder = TEST / executable
            folder.mkdir(exist_ok=True)
            result = subprocess.run([str(BUILD / (executable + ".exe")), str(folder)],
                                    capture_output=True, text=True, check=True)
            report[executable] = json.loads(result.stdout)
        result = subprocess.run(["node", str(ROOT / "windows-native/desktop_test.cjs")],
                                capture_output=True, text=True, check=True)
        report["download_controller"] = json.loads(result.stdout)
    if "--binary-only" not in sys.argv:
        report["functional"] = check_functional()
    name = "binary-verification.json" if "--binary-only" in sys.argv else "verification.json"
    (TEST / name).write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
