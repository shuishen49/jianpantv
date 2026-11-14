"""Run production update unit checks and real multi-process replacement fixtures."""
from pathlib import Path
import datetime
import hashlib
import json
import shutil
import subprocess
import time

ROOT = Path(__file__).resolve().parents[1]
TEST = ROOT / "testing/windows-native-0.2.3"
DRIVER = ROOT / "work/windows-native-build/update-test.exe"
BINARY = ROOT / "output/Jianpian-Windows-C-0.2.3/Jianpian.exe"


def wait_for(path):
    deadline = time.monotonic() + 30
    while time.monotonic() < deadline:
        if path.exists():
            return
        time.sleep(0.1)
    raise AssertionError(f"Timed out: {path}")


def check():
    folder = TEST / "update-test"
    folder.mkdir(parents=True, exist_ok=True)
    result = subprocess.run([str(DRIVER), str(BINARY), str(folder)], capture_output=True,
                            text=True, check=True, timeout=20)
    report = json.loads(result.stdout)
    # A harmless overlay makes the new fixture byte-for-byte distinguishable.
    # Both processes run the production updater; only browser readiness and the
    # helper's error message are simulated by the explicit test executable.
    for mode in ("success", "restart-failure"):
        run = folder / (mode + "-" + str(time.time_ns()))
        run.mkdir()
        target, candidate = run / "Jianpian.exe", run / "candidate.exe"
        old = DRIVER.read_bytes()
        new = old + b"\nupdate-transaction-fixture\n"
        target.write_bytes(old)
        candidate.write_bytes(new)
        if mode == "restart-failure":
            (run / "reject-restart").write_text("test-only", encoding="ascii")
        subprocess.run([str(target), "--transaction", str(candidate)], check=True, timeout=15)
        marker = run / ("updated.txt" if mode == "success" else "rolled-back.txt")
        wait_for(marker)
        expected = new if mode == "success" else old
        assert target.read_bytes() == expected
        # The helper exits immediately after creating the readiness marker.
        deadline = time.monotonic() + 10
        while time.monotonic() < deadline:
            pending = list(run.glob("Jianpian.exe.pending-*.exe"))
            backup = list(run.glob("Jianpian.exe.previous-*.exe"))
            if not pending and not backup:
                break
            time.sleep(0.1)
        assert not list(run.glob("Jianpian.exe.pending-*.exe"))
        assert not list(run.glob("Jianpian.exe.previous-*.exe"))
        # Test fixtures have no long-running app to clean the stopped helper.
        for helper in run.glob("Jianpian.exe.updater-*.exe"):
            deadline = time.monotonic() + 10
            while True:
                try:
                    helper.unlink()
                    break
                except PermissionError:
                    assert time.monotonic() < deadline
                    time.sleep(0.1)
        report["transaction_" + mode.replace("-", "_")] = {
            "passed": True, "target_sha256": hashlib.sha256(target.read_bytes()).hexdigest(),
            "pending_and_backup_cleaned": True,
            "method": "Real helper process, inherited handles, ReplaceFile and readiness handshake",
        }
    report["exe_sha256"] = hashlib.sha256(BINARY.read_bytes()).hexdigest()
    report["timestamp"] = datetime.datetime.now().astimezone().isoformat()
    (TEST / "update-verification.json").write_text(
        json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    return report


if __name__ == "__main__":
    print(json.dumps(check(), ensure_ascii=False, indent=2))
