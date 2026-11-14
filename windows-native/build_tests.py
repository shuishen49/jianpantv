"""Compile the three native checks using the production compiler and SDK options."""
from pathlib import Path
import json
import os
import subprocess

ROOT = Path(__file__).resolve().parents[1]
STAGE = ROOT / "work/windows-native-build"
command = json.loads((STAGE / "build-command.json").read_text())
env = os.environ.copy()
env["ZIG_GLOBAL_CACHE_DIR"] = str(STAGE / "compiler-cache")
env["ZIG_LOCAL_CACHE_DIR"] = str(STAGE / "compiler-cache-local")
for source, name in (("policy_test.c", "policy-test"), ("cache_test.c", "cache-test"),
                     ("playlist_test.c", "playlist-test")):
    test = []
    for value in command:
        if value.endswith("main.c"):
            value = str(ROOT / "windows-native" / source)
        elif value.endswith("app.res"):
            continue
        elif value.startswith("-Wl,"):
            value = "-Wl,--dynamicbase,--nxcompat,--high-entropy-va"
        elif value.endswith("Jianpian.exe"):
            value = str(STAGE / (name + ".exe"))
        elif value == "-municode" and source == "policy_test.c":
            continue
        test.append(value)
    subprocess.run(test, env=env, check=True)
    print("Built", name)
