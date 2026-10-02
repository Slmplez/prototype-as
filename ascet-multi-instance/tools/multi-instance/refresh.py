"""Refresh patches in stopped private runtimes, retaining the previous image."""

import argparse
import json
from datetime import datetime, timezone
from pathlib import Path
import subprocess

from image_patch import ROOT, patch_image
from prepare import write_json, configure_private_options, compile_host


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("root", type=Path)
    args = parser.parse_args()
    root = args.root.resolve()
    if not root.is_relative_to(ROOT / "analysis"):
        parser.error("Only private analysis directories are supported")
    experiment = json.loads((root / "experiment.json").read_text())
    if experiment["kind"] != "ascet-private-multi-instance":
        parser.error("Not a prepared experiment")
    processes = subprocess.run(["tasklist.exe", "/fi", "IMAGENAME eq ASCET.exe", "/fo", "csv"],
                               capture_output=True, text=True, check=True).stdout
    for base in (root / "agent-a", root / "agent-b"):
        manifest = base / "instance.json"
        instance = json.loads(manifest.read_text())
        process_file = base / "process.json"
        if process_file.exists():
            pid = json.loads(process_file.read_text(encoding="utf-8-sig"))["pid"]
            if '\"' + str(pid) + '\"' in processes:
                parser.error("Stop private instance before refreshing: " + str(base))
        runtime = Path(instance["runtime"])
        image = runtime / "icsrun/ASDBase.ic"
        candidate = image.with_suffix(".ic.next")
        patch = patch_image(image.with_suffix(".ic.original"), candidate,
                            instance["port"], runtime, instance["data"],
                            instance["logs"], experiment["installation"])
        stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%f")
        image.rename(image.with_suffix(".ic.previous-" + stamp))
        candidate.rename(image)
        instance["patched_image_sha256"] = patch["patched_sha256"]
        write_json(manifest, instance)
        write_json(base / "patch.json", patch)
        configure_private_options(Path(instance["data"]))
        print("Refreshed " + str(base), flush=True)
    compile_host(root, root / "Etas.AscetNET.dll")


if __name__ == "__main__":
    main()
