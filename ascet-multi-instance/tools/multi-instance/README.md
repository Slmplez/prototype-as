# Private ASCET 6.4 instances with independent Cebra endpoints

Chinese workflow guide for a normal ASCET dedicated to Copilot, separate native
multi-instance GUI windows for manual work, and the private background connector
option: [operator guide](../../docs/ascet-agent-background-workflow.md).

For the current one-Agent workflow, keep the normal ASCET on its task database
and use `launch-manual.ps1` for a separate manual GUI. This uses the installed
runtime's native multi-instance mode, which disables Tool API in that GUI:

```powershell
& E:\Repo\ASCET\tools\multi-instance\launch-manual.ps1
```

Use `-Database` for a separate existing database directory, `-InstanceName manual-2`
for another manual instance, or `-WhatIf` to inspect the command without starting
ASCET. An omitted database is left to ASCET startup behavior; check that the
manual window is not using the Agent's database before working in it. This
launcher does not connect, hide, or stop the normal ASCET or any API Host.

The tested prototype uses two complete runtime copies, two disposable database
copies, native `-multiinstance:` mode, and one explicitly addressed SDK host per
ASCET process. The original installation is not patched.

## Verified Result

`analysis/multi-instance/2026-10-02/run-01/validation.json` records a passing run:

| Instance | API endpoint | PID in the passing run | Database |
| --- | --- | --- | --- |
| agent-a | 127.0.0.1:32611 | 25712 | agent-a/data/Database/agent-a |
| agent-b | 127.0.0.1:32612 | 39272 | agent-b/data/Database/agent-b |
| agent-b after restart | 127.0.0.1:32612 | 17540 | same private B database |

Both hosts completed 200 echo calls concurrently with matching tokens. A stayed
connected and retained its PID and database while B stopped and restarted.
The original image, monitored station/user configuration files, source database
files, and values under HKCU/HKLM32 `Software\ETAS\ASCET\6.4` matched before
and after the test. The test processes were cleaned up.

This proves separate endpoints and read isolation for this prototype. It does
not validate model writes, code generation, experiments, arbitrary toolboxes,
all registry keys, or long-running stability. Normal database opening may update
the disposable database; no original database is opened by the probe.

## Launch Existing Copies

Run from `E:\Repo\ASCET` in PowerShell 7.5 or newer:

```powershell
pwsh -NoProfile -File tools\multi-instance\launch.ps1 -Manifest analysis\multi-instance\2026-10-02\run-01\agent-a\instance.json
pwsh -NoProfile -File tools\multi-instance\launch.ps1 -Manifest analysis\multi-instance\2026-10-02\run-01\agent-b\instance.json
```

Each launcher prints the actual PID and writes `process.json`. An occupied port,
an already-running copy, or a changed image hash causes an error. The launcher
starts the process; the validator additionally verifies listener ownership and
API/database identity. Database readiness is established through the host,
which opens the manifest's existing private database when none is open.

### Start In The Background

```powershell
pwsh -NoProfile -File tools\multi-instance\launch.ps1 -Manifest analysis\multi-instance\2026-10-02\run-01\agent-b\instance.json -Background
```

`-Background` starts a console-free window guard for this exact private ASCET
process generation. It hides existing and newly shown top-level windows,
including dialogs, while the ASCET UI thread and Cebra service keep running.
`Start-Process -WindowStyle Hidden` alone does not suppress ASCET's later windows.
This is GUI hiding, not native headless/service mode; a brief startup flash is
still possible. The guard requires the local .NET Framework 4 compiler and
exits automatically when the private ASCET process exits.

Restore the windows, hide an already running copy, or inspect the guard:

```powershell
pwsh -NoProfile -File tools\multi-instance\windows.ps1 -Manifest analysis\multi-instance\2026-10-02\run-01\agent-b\instance.json -Action Show
pwsh -NoProfile -File tools\multi-instance\windows.ps1 -Manifest analysis\multi-instance\2026-10-02\run-01\agent-b\instance.json -Action Hide
pwsh -NoProfile -File tools\multi-instance\windows.ps1 -Manifest analysis\multi-instance\2026-10-02\run-01\agent-b\instance.json -Action Status
```

`background.json` records guard identity and hidden window titles. Restore the
GUI to inspect a modal prompt when API startup or an operation waits for user
input. The guard restores its hidden windows on a handled failure. It does not
hide the original installation's ASCET process or consume a Cebra connection.

`agent-b/background-validation.json` records a passing background test: zero
visible private top-level windows, 200 matching API echoes, successful restore
and re-hide, suppression of a subsequently shown window, and guard exit after
ASCET stops. The original process's windows and monitored files/registry values
were unchanged. Reproduce with the original ASCET's current PID (the test starts
and cleans up B, so stop a running private B first):

```powershell
python tools\multi-instance\validate_background.py analysis\multi-instance\2026-10-02\run-01\agent-b\instance.json --original-pid 10472
```

Connect one host per instance, using its current PID from `process.json`:

```powershell
$ascetProcessA = Get-Content analysis\multi-instance\2026-10-02\run-01\agent-a\process.json -Raw | ConvertFrom-Json
analysis\multi-instance\2026-10-02\run-01\EndpointHost.exe 32611 analysis\multi-instance\2026-10-02\run-01\agent-a\logs\host analysis\multi-instance\2026-10-02\run-01\agent-a\data\Database\agent-a $ascetProcessA.pid
```

The host reads one JSON object per stdin line and writes JSON responses:

```json
{"id":1,"op":"identity"}
{"id":2,"op":"echo","token":100001}
{"id":3,"op":"quit"}
```

`EndpointHost` is a verification host with serial commands. It is not a general
Agent/MCP bridge. An Agent integration must retain the explicit port and process
generation, serialize each instance's live operations, and own its handles.
Default `new Ascet()` discovery still selects the original shared endpoint.

A typed C#/.NET connector is available in `connector/README.md`. It attaches to
an already running private instance through one persistent EndpointHost, checks
process/database identity, serializes concurrent callers, and cleans up the
owned Host on disconnect. .NET 8 x64 and .NET Framework x64 clients are verified;
its current business surface follows the Host's `identity` and `echo` commands.

Use the GUI's normal exit for an instance containing work. Forced cleanup of a
disposable test instance checks executable path and process start time:

```powershell
pwsh -NoProfile -File tools\multi-instance\stop.ps1 -Manifest analysis\multi-instance\2026-10-02\run-01\agent-a\instance.json
```

## Reproduce

Requirements: Windows, PowerShell 7.5+ on PATH, Python 3.12, .NET Framework 4 x86
compiler, and the existing licensed installation. About 1.3 GB is needed for
two runtime copies. Only ASCII instance paths are supported by this prototype.

```powershell
python tools\multi-instance\test_image_patch.py
python tools\multi-instance\prepare.py --output analysis\multi-instance\2026-10-02\run-02 --ports 32621 32622
python tools\multi-instance\validate.py analysis\multi-instance\2026-10-02\run-02
```

Preparation requires the exact source image SHA256
`b4dff51f53463f2053ad7163f6afaf7a9a24dfdfd0d538eceec22432fadb5237`.
The default source database is `D:\ETASData\ASCET6.4\Database\AEB_1`.
`--installation`, `--data`, and `--database` override preparation inputs;
the current validator monitors the default installation's configuration.

The validator starts both copies, attaches both hosts, checks database/PID
identity, runs 400 matching echo calls, restarts B, and verifies original-file
and discovery-value isolation. It always disconnects hosts and cleans up its
private processes, including on failure. Logs and `validation.json` remain.

## Implementation Notes

- Nine existing method records are replaced within their original capacities.
  Original method addresses, identities, dictionary entries and untouched methods
  are preserved. Shared bytecode is handled without changing unrelated methods.
- Private path strings are appended to the data segment, updating its four end
  boundaries. Appending CompactMethod records was rejected after VM
  `methodClass`/error 53 failures; static decoding alone did not validate that
  approach. Previous experimental images remain as `.ic.previous-*` backups.
- The patch keeps native multi-instance behavior and the configured ToolServer
  option, supplies a fixed port, suppresses ToolApiPort/COM discovery writes,
  and redirects program, data and log paths.
- DLL application registration is retained using the installed path. Replacing
  the entire registration routine with a no-op prevented product detection.
- Private XML uses a freshly computed CRC-32 processing instruction. Its CRC is
  over the exact serialized root bytes. Private Web Service is disabled to avoid
  the separate fixed HTTP port 32510; Temp and Import paths are private.
- SDK log initialization uses host-specific directories before touching
  ToolClient, avoiding deletion of common Cebra log files.
- Ports and paths are embedded in each image. Moving a prepared directory or
  changing its manifest alone does not reconfigure it. `refresh.py` regenerates
  images from `.ic.original` in stopped private copies and rebuilds the host.
- A supported PATCHBOX component remains preferable for deployment. This
  fixed-version offline prototype is not a vendor-supported extension.
