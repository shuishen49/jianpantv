"""Publish only the fixed Windows tag after source and uploaded digests match."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import time
import urllib.error
import urllib.parse
import urllib.request
import zipfile

REPO_ROOT = Path(__file__).resolve().parents[2]
ROOT = REPO_ROOT / ".release-windows"
REPOSITORY = "shuishen49/jianpantv"
TAG = "v0.2.1-windows"
BRANCH = "codex/release-windows-021-20261114"
API = f"https://api.github.com/repos/{REPOSITORY}"


def git(*args):
    return subprocess.check_output(["git", "-c", f"safe.directory={REPO_ROOT.as_posix()}",
                                    "-C", str(REPO_ROOT), *args])


def validate():
    manifest = json.loads((ROOT / "release-manifest.json").read_text("utf-8"))
    assert manifest["repository"] == REPOSITORY and manifest["tag"] == TAG
    source = manifest["source_commit"]
    assert len(source) == 40 and all(c in "0123456789abcdef" for c in source)
    git("cat-file", "-e", source + "^{commit}")
    git("merge-base", "--is-ancestor", source, "HEAD")
    expected_names = {
        "Jianpian-Windows-C-0.2.1.zip",
        "Jianpian-Windows-C-0.2.1-source-and-checks.zip",
        "windows-0.2.1-release-report.md",
        "SHA256SUMS.txt",
    }
    assert set(manifest["assets"]) == expected_names
    for name, expected in manifest["assets"].items():
        assert Path(name).name == name
        data = (ROOT / name).read_bytes()
        assert len(data) == expected["size"], name
        assert hashlib.sha256(data).hexdigest() == expected["sha256"], name
    sums = {}
    for line in (ROOT / "SHA256SUMS.txt").read_text("utf-8").splitlines():
        digest, name = line.split("  ", 1)
        assert name not in sums
        sums[name] = digest
    assert set(sums) == expected_names - {"SHA256SUMS.txt"}
    for name, digest in sums.items():
        assert digest == manifest["assets"][name]["sha256"]
    source_files = json.loads((ROOT / "source-files.json").read_text("utf-8"))
    assert len(source_files) == 17
    with zipfile.ZipFile(ROOT / "Jianpian-Windows-C-0.2.1-source-and-checks.zip") as archive:
        assert archive.testzip() is None
        actual = {n for n in archive.namelist()
                  if n.startswith("windows-native/") or n == "windows-desktop/desktop.css"}
        assert actual == set(source_files)
        for name, digest in source_files.items():
            assert name.startswith("windows-native/") or name == "windows-desktop/desktop.css"
            data = git("show", f"{source}:{name}")
            assert hashlib.sha256(data).hexdigest() == digest, name
            assert archive.read(name) == data, name
    with zipfile.ZipFile(ROOT / "Jianpian-Windows-C-0.2.1.zip") as archive:
        assert archive.testzip() is None
        delivery = json.loads(git("show", f"{source}:testing/windows-native-0.2.1/delivery.json"))
        assert set(archive.namelist()) == {
            "Jianpian-Windows-C-0.2.1/" + name for name in delivery["files"]
        }
        for name, expected in delivery["files"].items():
            data = archive.read("Jianpian-Windows-C-0.2.1/" + name)
            assert len(data) == expected["bytes"]
            assert hashlib.sha256(data).hexdigest() == expected["sha256"]
    assert (ROOT / "windows-0.2.1-release-report.md").read_bytes() == git(
        "show", f"{source}:docs/windows-0.2.1-release.md")
    return manifest


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--validate-only", action="store_true")
    args = parser.parse_args()
    manifest = validate()
    if args.validate_only:
        print(json.dumps({"validated": True, "tag": TAG, "source_files": 17,
                          "assets": len(manifest["assets"])}))
        return
    assert os.environ["GITHUB_REPOSITORY"] == REPOSITORY
    assert os.environ["GITHUB_REF_NAME"] == BRANCH
    token = os.environ["GITHUB_TOKEN"]

    def request(method, url, payload=None, content_type="application/json"):
        assert url.startswith((API + "/", f"https://uploads.github.com/repos/{REPOSITORY}/"))
        data = payload if isinstance(payload, bytes) else (
            json.dumps(payload, ensure_ascii=False).encode() if payload is not None else None)
        req = urllib.request.Request(url, data=data, method=method, headers={
            "Authorization": f"Bearer {token}",
            "Accept": "application/vnd.github+json",
            "X-GitHub-Api-Version": "2022-11-28",
            "User-Agent": "jianpantv-windows-release",
            "Content-Type": content_type,
        })
        try:
            with urllib.request.urlopen(req, timeout=60) as response:
                return json.load(response)
        except urllib.error.HTTPError as error:
            if method == "GET" and error.code == 404:
                return None
            try:
                detail = json.loads(error.read()).get("message", "GitHub API error")
            except Exception:
                detail = "GitHub API error"
            raise RuntimeError(f"GitHub HTTP {error.code}: {detail}") from None

    source = manifest["source_commit"]
    ref = request("GET", f"{API}/git/ref/tags/{TAG}")
    assert ref and ref["object"]["type"] == "commit" and ref["object"]["sha"] == source
    notes = (ROOT / "RELEASE_NOTES.md").read_text("utf-8")
    release = request("GET", f"{API}/releases/tags/{TAG}")
    if release is None:
        release = request("POST", f"{API}/releases", {
            "tag_name": TAG, "target_commitish": source, "name": manifest["title"],
            "body": notes, "draft": True, "prerelease": True,
            "make_latest": "false", "generate_release_notes": False,
        })
    assert release["tag_name"] == TAG and not release.get("immutable")

    def verify_asset(asset, expected):
        assert asset["state"] == "uploaded"
        assert asset["size"] == expected["size"], asset["name"]
        for _ in range(5):
            if asset.get("digest"):
                break
            time.sleep(1)
            asset = request("GET", f"{API}/releases/assets/{asset['id']}")
        assert asset.get("digest") == "sha256:" + expected["sha256"], asset["name"]

    known = {asset["name"]: asset for asset in release["assets"]}
    assert not (set(known) - set(manifest["assets"]))
    if not release["draft"]:
        assert release["prerelease"]
        for name, expected in manifest["assets"].items():
            verify_asset(known[name], expected)
        print(json.dumps({"already_published": True, "url": release["html_url"]}))
        return
    for name, expected in manifest["assets"].items():
        if name in known:
            verify_asset(known[name], expected)
            continue
        url = release["upload_url"].split("{", 1)[0] + "?" + urllib.parse.urlencode({"name": name})
        kind = "application/zip" if name.endswith(".zip") else (
            "text/markdown" if name.endswith(".md") else "text/plain")
        asset = request("POST", url, (ROOT / name).read_bytes(), kind)
        verify_asset(asset, expected)
        print(json.dumps({"uploaded": name, "size": asset["size"], "digest": asset["digest"]}))
    current = request("GET", f"{API}/releases/{release['id']}")
    assets = {asset["name"]: asset for asset in current["assets"]}
    assert set(assets) == set(manifest["assets"])
    for name, expected in manifest["assets"].items():
        verify_asset(assets[name], expected)
    published = request("PATCH", f"{API}/releases/{release['id']}", {
        "draft": False, "prerelease": True, "make_latest": "false",
        "name": manifest["title"], "body": notes,
    })
    assert not published["draft"] and published["prerelease"]
    final_ref = request("GET", f"{API}/git/ref/tags/{TAG}")
    assert final_ref["object"]["sha"] == source
    print(json.dumps({"published": True, "url": published["html_url"],
                      "source_commit": source, "assets": list(assets)}, ensure_ascii=False))
    if os.environ.get("GITHUB_STEP_SUMMARY"):
        with open(os.environ["GITHUB_STEP_SUMMARY"], "a", encoding="utf-8") as stream:
            stream.write(f"Published [{TAG}]({published['html_url']}); "
                         "verified all four asset SHA-256 digests and the source tag.\n")


if __name__ == "__main__":
    main()
