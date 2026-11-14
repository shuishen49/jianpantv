"""Run the regression against helpers taken from the actual, hash-pinned APK."""
from pathlib import Path
import hashlib
import io
import json
import subprocess
import zipfile
from build_native import APK, APK_SHA, BUNDLE_SHA, adapt_fullscreen


def check():
    assert hashlib.sha256(APK.read_bytes()).hexdigest() == APK_SHA
    with zipfile.ZipFile(APK) as apk:
        bundle = apk.read("assets/web-bundle.zip")
    assert hashlib.sha256(bundle).hexdigest() == BUNDLE_SHA
    with zipfile.ZipFile(io.BytesIO(bundle)) as archive:
        app = adapt_fullscreen(archive.read("assets/app-modern.js").decode("utf-8"))
    helpers = {}
    for name, start, end in (
        ("enter", "async function k0(e,t={}){", "async function _0(e){"),
        ("exit", "async function _0(e){", "function E0(){"),
        ("resize", "function p0(e){", "function v0(e){"),
    ):
        offset = app.index(start)
        helpers[name] = app[offset:app.index(end, offset)]
    completed = subprocess.run(["node", str(Path(__file__).with_name("fullscreen_test.cjs"))],
        input=json.dumps(helpers), capture_output=True, text=True, check=True)
    return json.loads(completed.stdout)


if __name__ == "__main__":
    print(json.dumps(check()))
