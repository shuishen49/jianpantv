"""Verify the final signed tv10 artifact; export only non-sensitive evidence."""
from pathlib import Path
import argparse
import hashlib
import io
import json
import re
import struct
import subprocess
import zipfile

ROOT = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser()
parser.add_argument("--tv-version", type=int, default=10)
parser.add_argument(
    "--java-home", type=Path,
    default=Path(r"D:\harmony-tools\jdk17\jdk-17.0.20.1+1"))
parser.add_argument(
    "--build-tools", type=Path,
    default=ROOT / "tools/android-build-tools/android-16")
parser.add_argument(
    "--expected-signer",
    default="b90fbbf29671e0dc83c7ad3b43381c62c8d6b8788693a4bbdf1cb922951bc9d7")
args = parser.parse_args()
TV_VERSION = args.tv_version
APK = ROOT / f"output/jianpian-mobile-tv-5.0.78-tv.{TV_VERSION}.apk"
OUT = ROOT / f"testing/security-tv{TV_VERSION}"
OUT.mkdir(exist_ok=True)
JAVA = args.java_home / "bin/java.exe"
BT = args.build_tools


def dex_inventory(data):
    def u32(offset):
        return struct.unpack_from("<I", data, offset)[0]

    def read_uleb(offset):
        while data[offset] & 0x80:
            offset += 1
        return offset + 1

    strings = []
    for i in range(u32(56)):
        offset = read_uleb(u32(u32(60) + i * 4))
        end = data.index(b"\0", offset)
        strings.append(data[offset:end].decode("utf-8", errors="replace"))
    types = [strings[u32(u32(68) + i*4)] for i in range(u32(64))]
    classes = [types[u32(u32(100) + i*32)] for i in range(u32(96))]
    return strings, types, classes


evidence = {
    "apk": str(APK),
    "sha256": hashlib.sha256(APK.read_bytes()).hexdigest(),
    "size_bytes": APK.stat().st_size,
    "static_checks": {},
}
with zipfile.ZipFile(APK) as archive:
    names = archive.namelist()
    evidence["native_libraries"] = [n for n in names if n.endswith(".so")]
    assert not any("umeng" in n.lower() for n in evidence["native_libraries"])
    classes = []
    types = []
    for name in names:
        if re.fullmatch(r"classes\d*\.dex", name):
            _, current_types, current_classes = dex_inventory(archive.read(name))
            types += current_types
            classes += current_classes
    assert not any(x.startswith("Lcom/umeng/") for x in types)
    assert not any("TrustedLocalWebRuntime$FallbackBridge" in x for x in types)
    evidence["static_checks"]["compiled_dex_no_umeng_types"] = True
    evidence["static_checks"]["compiled_dex_no_originless_fallback_types"] = True
    evidence["dex_class_count"] = len(classes)
    settings = json.loads(archive.read("assets/jp-runtime-settings.json"))
    assert settings["analytics"]["enabled"] is False
    assert settings["analytics"]["app_key"] == ""
    evidence["static_checks"]["analytics_disabled_key_empty"] = True
    builtin = json.loads(archive.read("assets/builtin-runtime.json"))
    bundle = archive.read("assets/web-bundle.zip")
    assert builtin["releaseSetId"] == f"20261107-local-tv{TV_VERSION}"
    assert builtin["web"]["length"] == len(bundle)
    assert builtin["web"]["sha256"] == hashlib.sha256(bundle).hexdigest()
    with zipfile.ZipFile(io.BytesIO(bundle)) as web:
        manifest = json.loads(web.read("bundle-manifest.json"))
        for item in manifest["files"]:
            content = web.read(item["path"])
            assert len(content) == item["length"]
            assert hashlib.sha256(content).hexdigest() == item["sha256"]
        with zipfile.ZipFile(ROOT / "handoff/apks/mobile-5.0.78.apk") as old:
            with zipfile.ZipFile(io.BytesIO(old.read("assets/web-bundle.zip"))) as old_web:
                preserved = [
                    name for name in old_web.namelist()
                    if not old_web.getinfo(name).is_dir()
                    and name not in ("index.html", "bundle-manifest.json")
                ]
                assert all(old_web.read(n) == web.read(n) for n in preserved)
    evidence["static_checks"]["builtin_and_each_web_resource_hash_valid"] = True
    evidence["static_checks"]["original_business_web_modules_unchanged"] = True
    evidence["original_web_files_verified"] = len(preserved)

permissions = subprocess.run(
    [str(BT / "aapt2.exe"), "dump", "permissions", str(APK)],
    capture_output=True, check=True).stdout.decode("utf-8")
permission_names = re.findall(r"name='([^']+)'", permissions)
assert not any(
    term in name for name in permission_names
    for term in ("READ_EXTERNAL", "WRITE_EXTERNAL", "MANAGE_EXTERNAL",
                 "READ_MEDIA", "CAMERA", "RECORD_AUDIO", "READ_PHONE", "AD_ID"))
evidence["permissions"] = permission_names
evidence["static_checks"]["no_storage_media_camera_phone_ad_permissions"] = True
certificate = subprocess.run(
    [str(JAVA), "-jar", str(BT / "lib/apksigner.jar"),
     "verify", "--verbose", "--print-certs", str(APK)],
    capture_output=True, check=True).stdout.decode("utf-8")
signer = re.search(r"certificate SHA-256 digest: ([a-f0-9]+)", certificate).group(1)
assert signer == args.expected_signer.lower()
evidence["signer_sha256"] = signer
evidence["static_checks"]["same_signer_v2_v3_verified"] = (
    "Verified using v2 scheme (APK Signature Scheme v2): true" in certificate
    and "Verified using v3 scheme (APK Signature Scheme v3): true" in certificate)
assert evidence["static_checks"]["same_signer_v2_v3_verified"]
subprocess.run([str(BT / "zipalign.exe"), "-c", "-P", "16", "4", str(APK)], check=True)
evidence["static_checks"]["zip_alignment_verified"] = True
(OUT / "final-artifact-verification.json").write_text(
    json.dumps(evidence, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
print(json.dumps({k: v for k, v in evidence.items()
                  if k not in ("native_libraries",)}, ensure_ascii=False, indent=2))
