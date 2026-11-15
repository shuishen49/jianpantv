"""Verify final-EXE offline playback and the production read-only file stream."""
from pathlib import Path
import datetime
import hashlib
import json
import subprocess
from build_native import ROOT, STAGE, OUT, VERSION

TEST = ROOT / f"testing/windows-native-{VERSION}"

def read(path):
    return json.loads(path.read_text(encoding="utf-8-sig"))

def check():
    exe = OUT / "Jianpian.exe"
    folder = TEST / "local"
    assert read(folder / "done.json")["completed"]
    states = {}
    for i in range(1, 13):
        path = folder / f"ui-state-{i}.json"
        assert path.stat().st_mtime > exe.stat().st_mtime, "Old diagnostics are not final-binary evidence"
        states[i] = read(path)
    def video(i):
        return states[i]["videos"][-1]
    assert states[1]["localPlayer"]["open"] and states[1]["localPlayer"]["movies"] >= 1
    assert video(1)["width"] == 1920 and video(1)["readyState"] >= 3
    assert not video(1)["paused"] and video(1)["currentTime"] > 0
    assert video(2)["paused"]
    assert not video(3)["paused"] and video(3)["currentTime"] > 2
    assert states[4]["desktopFullscreen"]["unobstructed"]
    assert states[4]["desktopFullscreen"]["playerFullscreen"]
    assert video(5)["currentTime"] - video(4)["currentTime"] >= 9.5
    assert not states[6]["desktopFullscreen"]["nativeFullscreen"]
    ranges = states[7]["localRanges"]
    assert ranges["partial"] == 206 and ranges["bytes"] == 32
    assert ranges["head"] == 200 and ranges["size"] > 1_000_000
    assert ranges["tail"] == ranges["end"] == 206 and ranges["tailBytes"] == 8 and ranges["tailMatches"]
    assert ranges["unsatisfiable"] == ranges["multi"] == 416
    assert ranges["denied"] == ranges["unknown"] == 404
    assert states[8]["localPlayer"]["open"] and not states[8]["videos"][-1]["readyState"]
    assert not video(9)["paused"] and video(9)["width"] == 1920
    assert "无法播放" in states[10]["localPlayer"]["status"]
    assert states[11]["localPlayer"]["source"].startswith("blob:")
    assert states[11]["localPlayer"]["name"] == "拖入测试-国语.mp4"
    assert not video(11)["paused"] and video(11)["width"] == 1920
    assert not states[12]["localPlayer"]["open"] and not states[12]["videos"]
    runtime = read(folder / "runtime.json")
    for key in ("api_success", "api_failure", "media_success", "media_failure", "cache_writes"):
        assert runtime[key] == 0, "Offline mode must not use the network or create a second video cache"
    result = subprocess.run([str(STAGE / "local-test.exe"), str(TEST)],
                            check=True, capture_output=True, text=True)
    native = json.loads(result.stdout)
    assert native["passed"] >= 7000 and native["sparse_file_over_4gib"]
    report = {"version":VERSION, "exe_sha256":hashlib.sha256(exe.read_bytes()).hexdigest(),
        "timestamp":datetime.datetime.now().astimezone().isoformat(),
        "all_passed":True, "native":native, "checkpoints":12,
        "functional":{"offline_1080p_decode":True,"file_launch_autoplays":True,"pause":True,
            "seek":True,"fullscreen_unobstructed":True,"fullscreen_seek_ten_seconds":True,
            "return_to_window":True,"library_click_plays":True,"corrupt_file_message":True,
            "dom_file_drop_plays":True,"close_releases_video":True,"no_video_copy_or_network":True},
        "http_ranges":ranges,
        "physical_explorer_drag_tested":False,
        "note":"DOM drop is dispatched with a real File/DataTransfer inside the final EXE. "
               "This is distinct from a physical Explorer-to-WebView drag; manual UI evidence is recorded separately."}
    (TEST / "local-verification.json").write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    return report

if __name__ == "__main__":
    print(json.dumps(check(), ensure_ascii=False, indent=2))
