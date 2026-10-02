"""Verify background hiding and API availability on one disposable private ASCET."""

import argparse
import ctypes
from ctypes import wintypes
from datetime import datetime, timezone
import json
from pathlib import Path
import subprocess
import time

from validate import HERE, POWERSHELL, Host, check_identity, listener_pid
from validate import original_hashes, registry_snapshot

USER32 = ctypes.WinDLL("user32", use_last_error=True)
ENUMPROC = ctypes.WINFUNCTYPE(wintypes.BOOL, wintypes.HWND, wintypes.LPARAM)
USER32.EnumWindows.argtypes = [ENUMPROC, wintypes.LPARAM]
USER32.EnumWindows.restype = wintypes.BOOL
USER32.GetWindowThreadProcessId.argtypes = [wintypes.HWND, ctypes.POINTER(wintypes.DWORD)]
USER32.GetWindowThreadProcessId.restype = wintypes.DWORD
USER32.IsWindowVisible.argtypes = [wintypes.HWND]
USER32.IsWindowVisible.restype = wintypes.BOOL
USER32.GetWindowTextW.argtypes = [wintypes.HWND, wintypes.LPWSTR, ctypes.c_int]
USER32.GetWindowTextW.restype = ctypes.c_int
USER32.ShowWindowAsync.argtypes = [wintypes.HWND, ctypes.c_int]
USER32.ShowWindowAsync.restype = wintypes.BOOL


def windows(pid):
    result = []

    @ENUMPROC
    def collect(handle, parameter):
        owner = wintypes.DWORD()
        USER32.GetWindowThreadProcessId(handle, ctypes.byref(owner))
        if owner.value == pid:
            text = ctypes.create_unicode_buffer(1024)
            USER32.GetWindowTextW(handle, text, len(text))
            result.append({"handle": handle, "text": text.value,
                           "visible": bool(USER32.IsWindowVisible(handle))})
        return True

    if not USER32.EnumWindows(collect, 0):
        raise ctypes.WinError(ctypes.get_last_error())
    return result


def run_script(name, manifest, *parameters):
    result = subprocess.run([POWERSHELL, "-NoProfile", "-File", str(HERE / name),
                             "-Manifest", str(manifest), *parameters], capture_output=True,
                            text=True, encoding="utf-8", errors="replace", timeout=30,
                            creationflags=subprocess.CREATE_NO_WINDOW)
    if result.returncode:
        raise RuntimeError(result.stderr.strip())
    return json.loads(result.stdout) if result.stdout.strip() else None


def wait_until(predicate, message, timeout=10):
    deadline = time.monotonic() + timeout
    while time.monotonic() < deadline:
        if predicate():
            return
        time.sleep(0.1)
    raise TimeoutError(message)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("manifest", type=Path)
    parser.add_argument("--original-pid", type=int, required=True)
    args = parser.parse_args()
    manifest = args.manifest.resolve()
    base, root = manifest.parent, manifest.parent.parent
    instance = json.loads(manifest.read_text())
    before_original = windows(args.original_pid)
    if not before_original:
        parser.error("The original ASCET process has no windows")
    before_hashes, before_registry = original_hashes(), registry_snapshot()
    result = {"started_at_utc": datetime.now(timezone.utc).isoformat(), "passed": False,
              "original_pid": args.original_pid, "original_windows_before": before_original}
    launched, host = False, None
    try:
        process = run_script("launch.ps1", manifest, "-Background")
        launched = True
        result["process"] = process
        wait_until(lambda: listener_pid(instance["port"]) == process["pid"],
                   "Private API listener did not start", timeout=90)
        host = Host(root, instance, process)
        result["identity"] = check_identity(host, instance, process)
        wait_until(lambda: any(w["text"].startswith("ASCET-") for w in windows(process["pid"])),
                   "Private main window did not initialize")
        wait_until(lambda: not any(w["visible"] for w in windows(process["pid"])),
                   "Private windows stayed visible")
        result["hidden_windows"] = windows(process["pid"])
        for token in range(200):
            if host.call("echo", token=token) != token:
                raise RuntimeError("Background API echo mismatch")
        result["matching_echoes"] = 200
        print("Hidden window and 200 API echoes passed", flush=True)

        run_script("windows.ps1", manifest, "-Action", "Show")
        wait_until(lambda: any(w["visible"] and w["text"].startswith("ASCET-")
                              for w in windows(process["pid"])), "Main window did not restore")
        result["shown_windows"] = windows(process["pid"])
        if host.call("echo", token=201) != 201:
            raise RuntimeError("API disconnected after restoring windows")
        run_script("windows.ps1", manifest, "-Action", "Hide")
        wait_until(lambda: not any(w["visible"] for w in windows(process["pid"])),
                   "Main window did not hide again")

        main_window = next(w for w in windows(process["pid"]) if w["text"].startswith("ASCET-"))
        USER32.ShowWindowAsync(main_window["handle"], 4)
        time.sleep(0.5)
        if any(w["visible"] for w in windows(process["pid"])):
            raise RuntimeError("Guard did not hide a newly shown window")
        if host.call("echo", token=202) != 202:
            raise RuntimeError("API disconnected after hiding windows again")
        result["reshown_window_hidden"] = True
        result["guard_status"] = run_script("windows.ps1", manifest, "-Action", "Status")
        if not result["guard_status"]["background"]:
            raise RuntimeError("Window guard is not running")
        result["passed"] = True
        print("Restore, re-hide, and subsequent window suppression passed", flush=True)
    except Exception as error:
        result["error"] = str(error)
        print("Background validation failed: " + str(error), flush=True)
    finally:
        if host:
            try:
                host.close()
            except Exception as error:
                result.setdefault("cleanup_errors", []).append(str(error))
        if launched:
            try:
                run_script("stop.ps1", manifest)
                state = json.loads((base / "background.json").read_text())
                result["guard_exited_with_ascet"] = state["status"] == "exited"
            except Exception as error:
                result.setdefault("cleanup_errors", []).append(str(error))
        result["original_windows_after"] = windows(args.original_pid)
        result["original_windows_unchanged"] = result["original_windows_after"] == before_original
        result["original_files_unchanged"] = original_hashes() == before_hashes
        result["original_registry_unchanged"] = registry_snapshot() == before_registry
        result["passed"] = (result["passed"] and result.get("guard_exited_with_ascet", False)
                            and result["original_windows_unchanged"]
                            and result["original_files_unchanged"]
                            and result["original_registry_unchanged"]
                            and not result.get("cleanup_errors"))
        result["finished_at_utc"] = datetime.now(timezone.utc).isoformat()
        (base / "background-validation.json").write_text(json.dumps(result, indent=2), encoding="utf-8")
    raise SystemExit(0 if result["passed"] else 1)


if __name__ == "__main__":
    main()
