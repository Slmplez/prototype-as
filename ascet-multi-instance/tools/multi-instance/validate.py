"""Bounded read-only validation of two prepared, private ASCET processes."""

import argparse
from concurrent.futures import ThreadPoolExecutor
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import queue
import shutil
import subprocess
import threading
import time
import winreg

HERE = Path(__file__).resolve().parent
POWERSHELL = shutil.which("pwsh") or "powershell.exe"


def powershell(command):
    result = subprocess.run([POWERSHELL, "-NoProfile", "-Command", command],
                            capture_output=True, text=True, encoding="utf-8", errors="replace", timeout=30,
                            creationflags=subprocess.CREATE_NO_WINDOW)
    if result.returncode:
        raise RuntimeError(result.stderr.strip() or "PowerShell failed: " + command)
    return result.stdout.strip()


def registry_snapshot():
    result = {}
    for name, root, access in (("user", winreg.HKEY_CURRENT_USER, 0),
                               ("machine", winreg.HKEY_LOCAL_MACHINE, winreg.KEY_WOW64_32KEY)):
        with winreg.OpenKey(root, r"Software\ETAS\ASCET\6.4", 0, winreg.KEY_READ | access) as key:
            values = {}
            index = 0
            while True:
                try:
                    value_name, value, kind = winreg.EnumValue(key, index)
                except OSError:
                    break
                values[value_name] = {"value": value, "kind": kind}
                index += 1
            result[name] = values
    return result


def original_hashes():
    files = [Path("E:/ETAS/ASCET6.4/icsrun/ASDBase.ic"),
             Path("E:/ETASData/ASCET6.4/stationSettings.xml")]
    files.extend(Path("E:/ETASData/ASCET6.4/USER/ZJR").glob("*"))
    return {str(p): hashlib.sha256(p.read_bytes()).hexdigest() for p in files if p.is_file()}


def listener_pid(port):
    table = subprocess.run(["netstat.exe", "-ano", "-p", "TCP"], capture_output=True,
                           text=True, timeout=10, creationflags=subprocess.CREATE_NO_WINDOW)
    for line in table.stdout.splitlines():
        columns = line.split()
        if len(columns) == 5 and columns[1] == "127.0.0.1:" + str(port) and columns[3] == "LISTENING":
            return int(columns[4])
    return None


def launch(base):
    result = subprocess.run([POWERSHELL, "-NoProfile", "-ExecutionPolicy", "Bypass",
                             "-File", str(HERE / "launch.ps1"), "-Manifest", str(base / "instance.json")],
                            capture_output=True, text=True, encoding="utf-8", errors="replace", timeout=30,
                            creationflags=subprocess.CREATE_NO_WINDOW)
    if result.returncode:
        raise RuntimeError(result.stderr.strip())
    identity = json.loads(result.stdout.strip())
    print("Started " + base.name + " PID " + str(identity["pid"]), flush=True)
    deadline = time.monotonic() + 90
    while time.monotonic() < deadline:
        owner = listener_pid(identity["port"])
        if owner == identity["pid"]:
            print("Listening " + base.name + " port " + str(identity["port"]), flush=True)
            return identity
        if owner is not None:
            raise RuntimeError("Port belongs to a different process")
        state = powershell("$p=Get-Process -Id " + str(identity["pid"]) +
                           " -ErrorAction SilentlyContinue; if($p){$p.MainWindowTitle}else{'EXITED'}")
        if state == "EXITED":
            raise RuntimeError("ASCET exited before API startup: " + str(base))
        if state == "Fatal Application Error":
            diagnostics = subprocess.run([POWERSHELL, "-NoProfile", "-File",
                                          str(HERE / "read-windows.ps1"),
                                          "-TargetProcessId", str(identity["pid"])],
                                         capture_output=True, text=True, encoding="utf-8", errors="replace", timeout=30)
            (base / "startup-windows.json").write_text(diagnostics.stdout, encoding="utf-8")
            raise RuntimeError("ASCET fatal startup error: " + str(base))
        time.sleep(1)
    diagnostics = subprocess.run([POWERSHELL, "-NoProfile", "-File",
                                  str(HERE / "read-windows.ps1"),
                                  "-TargetProcessId", str(identity["pid"])],
                                 capture_output=True, text=True, encoding="utf-8", errors="replace", timeout=30)
    (base / "startup-windows.json").write_text(diagnostics.stdout, encoding="utf-8")
    raise TimeoutError("ASCET listener did not become ready: " + str(base))


def stop(base):
    process_file = base / "process.json"
    if not process_file.exists():
        return
    identity = json.loads(process_file.read_text(encoding="utf-8-sig"))
    expected = str(Path(identity["runtime"]) / "ASCET.exe").replace("'", "''")
    timestamp = identity["start_time_utc"].replace("'", "''")
    # Cleanup only the exact process generation launched from this private runtime.
    command = ("$p=Get-Process -Id " + str(identity["pid"]) + " -ErrorAction SilentlyContinue; "
               "if($p){if($p.Path -ne '" + expected + "' -or "
               "$p.StartTime.ToUniversalTime().ToString('o') -ne '" + timestamp + "'){throw 'Process identity changed'}; "
               "Stop-Process -Id $p.Id -Force}; exit 0")
    powershell(command)


class Host:
    def __init__(self, root, instance, process):
        self.responses = queue.Queue()
        self.diagnostics = []
        self.sequence = 0
        logs = str(Path(instance["logs"]) / "host")
        self.process = subprocess.Popen([str(root / "EndpointHost.exe"), str(instance["port"]),
                                         logs, instance["database"], str(process["pid"])],
                                        stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                                        text=True, encoding="utf-8", errors="replace",
                                        creationflags=subprocess.CREATE_NO_WINDOW)

        def read():
            for line in self.process.stdout:
                try:
                    value = json.loads(line)
                    if isinstance(value, dict) and ("kind" in value or "id" in value):
                        self.responses.put(value)
                    else:
                        self.diagnostics.append(value)
                except ValueError:
                    self.diagnostics.append(line.rstrip())
            self.responses.put({"kind": "eof", "returncode": self.process.poll()})

        self.thread = threading.Thread(target=read, daemon=True)
        self.thread.start()
        try:
            ready = self.responses.get(timeout=45)
        except queue.Empty:
            self.close()
            raise TimeoutError("Host startup timed out: " + repr(self.diagnostics))
        if ready.get("kind") != "ready":
            self.close()
            raise RuntimeError("Host startup failed: " + json.dumps(ready))
        self.identity = ready["identity"]

    def call(self, operation, **parameters):
        self.sequence += 1
        request = {"id": self.sequence, "op": operation, **parameters}
        self.process.stdin.write(json.dumps(request) + "\n")
        self.process.stdin.flush()
        response = self.responses.get(timeout=15)
        if response.get("id") != self.sequence or not response.get("ok"):
            raise RuntimeError("Unexpected response: " + json.dumps(response))
        return response.get("result")

    def close(self):
        if self.process.poll() is None:
            try:
                self.call("quit")
                self.process.wait(timeout=10)
            except Exception:
                self.process.kill()
                self.process.wait(timeout=10)
        for stream in (self.process.stdin, self.process.stdout):
            stream.close()
        self.thread.join(timeout=2)


def check_identity(host, instance, process):
    identity = host.call("identity")
    expected = Path(instance["database"]).resolve()
    observed = Path(identity["database_path"]).resolve()
    if (observed != expected or identity["server_pid"] != process["pid"] or
            not identity["multi_instance"] or
            Path(identity["database_root"]).resolve() != expected.parent):
        raise RuntimeError("Instance identity mismatch: " + json.dumps(identity))
    return identity


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("root", type=Path)
    args = parser.parse_args()
    root = args.root.resolve()
    if not (root / "experiment.json").exists():
        parser.error("Not a prepared experiment")
    bases = [root / name for name in ("agent-a", "agent-b")]
    instances = [json.loads((base / "instance.json").read_text()) for base in bases]
    experiment = json.loads((root / "experiment.json").read_text())
    source_database = Path(experiment["database_source"])

    def database_hashes():
        return {str(p.relative_to(source_database)): hashlib.sha256(p.read_bytes()).hexdigest()
                for p in source_database.rglob("*") if p.is_file()}

    before_database = database_hashes()
    before_registry, before_hashes = registry_snapshot(), original_hashes()
    result = {"started_at_utc": datetime.now(timezone.utc).isoformat(),
              "before_registry": before_registry, "before_hashes": before_hashes,
              "before_database_hashes": before_database, "passed": False}
    hosts = []
    try:
        processes = [launch(base) for base in bases]
        for instance, process in zip(instances, processes):
            hosts.append(Host(root, instance, process))
        result["identities"] = [check_identity(h, i, p) for h, i, p in zip(hosts, instances, processes)]
        result["host_diagnostics"] = [h.diagnostics for h in hosts]

        def echoes(index):
            for sequence in range(200):
                token = (index + 1) * 100000 + sequence
                if hosts[index].call("echo", token=token) != token:
                    raise RuntimeError("Echo token mismatch")
            return {"instance": instances[index]["instance_id"], "matched": 200}

        with ThreadPoolExecutor(max_workers=2) as pool:
            result["parallel_echoes"] = list(pool.map(echoes, range(2)))
        hosts[1].close()
        stop(bases[1])
        result["a_after_b_stop"] = check_identity(hosts[0], instances[0], processes[0])
        processes[1] = launch(bases[1])
        hosts[1] = Host(root, instances[1], processes[1])
        result["b_after_restart"] = check_identity(hosts[1], instances[1], processes[1])
        result["a_after_b_restart"] = check_identity(hosts[0], instances[0], processes[0])
        result["passed"] = True
        print("Read isolation and independent restart passed", flush=True)
    except Exception as error:
        result["error"] = str(error)
        print("Validation failed: " + str(error), flush=True)
    finally:
        for host in hosts:
            try:
                host.close()
            except Exception as error:
                result.setdefault("cleanup_errors", []).append(str(error))
        for base in reversed(bases):
            try:
                stop(base)
            except Exception as error:
                result.setdefault("cleanup_errors", []).append(str(error))
        result["after_registry"], result["after_hashes"] = registry_snapshot(), original_hashes()
        result["original_registry_unchanged"] = result["after_registry"] == before_registry
        result["original_files_unchanged"] = result["after_hashes"] == before_hashes
        result["after_database_hashes"] = database_hashes()
        result["original_database_unchanged"] = result["after_database_hashes"] == before_database
        result["passed"] = (result["passed"] and result["original_registry_unchanged"]
                            and result["original_files_unchanged"] and result["original_database_unchanged"]
                            and not result.get("cleanup_errors"))
        result["finished_at_utc"] = datetime.now(timezone.utc).isoformat()
        (root / "validation.json").write_text(json.dumps(result, indent=2), encoding="utf-8")
    raise SystemExit(0 if result["passed"] else 1)


if __name__ == "__main__":
    main()
