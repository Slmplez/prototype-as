# ASCET 6.4 multi-instance Tool API implementation analysis

Date: 2026-10-02. Scope: multiple GUI processes in one Windows session, each
with its own Cebra endpoint and its own database copy.

An isolated fixed-port prototype is now implemented and has passed a controlled
two-instance runtime test. Only private runtime/database copies were used; the
original installation image remains unchanged. Reconstructed Smalltalk is not
original vendor source. The design below distinguishes the preferred bootstrap
from the implemented offline experiment.

## Verified prototype

Implementation and commands: `tools/multi-instance/README.md`.
Evidence: `analysis/multi-instance/2026-10-02/run-01/validation.json`.

- A: PID 25712, loopback port 32611, private A database.
- B: PID 39272, loopback port 32612, private B database; restarted as PID 17540.
- Each host completed 200 matching echo requests while both hosts were active.
- A remained connected and retained its database/PID while B stopped/restarted.
- Original image/configuration/database hashes and monitored ASCET registry
  values matched before/after. Test hosts and private ASCET processes were closed.

The implementation replaces nine existing compact method records within their
original record capacities, preserving their addresses and identities. It adds
only private path strings to the data segment. Appending new compact methods
failed at the VM `methodClass` primitive despite structural validation, so that
approach is not used. Unchanged method records and shared code users are checked
against the source image before output is accepted.

The prototype embeds fixed ports and absolute private paths. It does not yet
implement `-toolapiport:`, a PATCHBOX `.app`, a full Agent/MCP bridge, or model
write/code-generation validation. Its API host verifies the server PID and
multi-instance mode before opening the specified disposable database.

The launcher now accepts `-Background`. A separate Win32 window guard hides
the private process's existing and newly shown windows while retaining its UI
message loop and API service. This does not select native service/headless mode.
`windows.ps1 -Action Show` restores windows and exits the guard. A controlled
test passed 200 API echoes while hidden, restore/re-hide checks, and automatic
guard cleanup; evidence is `run-01/agent-b/background-validation.json`.

## Result

The architecture is feasible: keep ASCET's native multi-instance mode, enable
the Cebra listener before its startup hook runs, assign a distinct loopback
port to every process, suppress shared default-discovery and COM registration,
and use one persistent .NET host per ASCET process. Serialize live business
operations inside each host; run operations against different ASCET processes
in parallel.

The preferred deployment still requires a working bootstrap component. The
installed runtime has a PATCHBOX loader, but no compatible `.app` package has
been produced. The isolated offline patch provides the tested prototype; it is
not a complete supported deployment.

## Current evidence

| Fact | Evidence |
| --- | --- |
| Native multi-instance suffix | `ASDAscetController.st:138`, `:337`, `:451` read `-multiinstance:` and determine multi-instance mode. An empty suffix causes runtime exit in `EtasMainDatabaseWindow_class.st:2641`. |
| Tool API is explicitly disabled | `ASDGeneralOptions.st:2436` returns false in multi-instance mode before consulting the `ToolServer` option. |
| Current configuration already enables Tool API | `E:/ETASData/ASCET6.4/stationSettings.xml:19` has `ToolServer=true`, GUI port 32503, headless port 32502. This does not override the early return. |
| Both startup checks use that option | `EtasCebra_class.st:191` and `SGToolServer_class.st:646` call `optionToolServer`. |
| Default discovery is shared | `SGToolServer.st:75` and `:99` write `ToolApiPort` through `EtasGeneralDllApi`; its registry path switches only between ASCET and ASCETServer (`EtasGeneralDllApi_class.st:1344`). |
| Enabling the option also enables COM registration work | `EtasCebra_class.st:380` calls `setCOMServerInformationInRegistryForTool:` after starting the listener. Its implementation can execute `regedit.exe /s` (`:667`). |
| Some original multi-instance isolation already exists | Startup skips shared application-state writes, Temp and CodeGeneration paths append the instance suffix, and `EtasXMLBasedOptions.st:1365` skips ordinary XML option persistence in multi-instance mode. |
| Explicit client endpoints already work | `scripts/AscetConcurrencyProbe.cs:151` initializes Cebra independently and registers a `ToolEntry` before constructing `Ascet`. Historical run-03 used this against a measurement proxy. |

Smalltalk paths in this document are under
`E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/`, unless noted otherwise.

## Bootstrap and startup order

The GUI startup call chain is:

```text
EtasMainDatabaseWindow class>>run
  loadPatchAndToolboxesLogIn:                       line 3517
    RBToolboxManager initializeProgressDialog:
      load external toolboxes and register them
    RBPatchboxManager initialize                   line 360
      loadAllPatches
        scan <ASCET executable directory>/PATCHBOX/*.app
        sort file names
        System loadComponent: <each file>
  runMainSplashWindow:                              line 3629
    RBToolboxManager initializeToolboxesForTool:progressWnd:
      EtasCebra initializeToolboxAfterLoadForTool:
        SGToolServer create:
        SGToolServer start
```

References: `RBPatchboxManager_class.st:13`, `:23`, `:265`, `:399`;
`RBToolboxManager_class.st:1610`, `:1307`;
`EtasMainDatabaseWindow_class.st:4316`.

`CfsDirectoryDescriptor class>>initializeStartUpDirectory` uses the executable
path in a runtime image (`cfsnls.ic/CfsDirectoryDescriptor_class.st:234`).
Changing the process working directory alone does not select a different
PATCHBOX directory in the normal runtime path.

`System loadComponent:` calls a VM primitive and links components; the linker
invokes application `loaded` hooks (`kernel.ic/EmSystemConfiguration.st:8054`,
`:8869`, `:10119`). This is a candidate early bootstrap mechanism. It requires
a runtime-compatible component, with the correct dependencies and class/method
installation behavior. A text `.st` renamed to `.app` will not provide it.

Preferred implementation: produce a compatible component through a matching
Smalltalk/ASCET packaging environment, load it from PATCHBOX, and keep its
behavior conditional on an explicit per-process API port. Check package order
and compatibility with any existing vendor patches. The availability of that
packaging environment has not been established.

The runtime compiler returns a method; installation is a separate step:

```smalltalk
method := EsCompiler compile: source inClass: targetClass.
method isNil ifTrue: [self error: 'Compilation failed'].
targetClass addCompiledMethod: method.
```

References: `parse.ic/EsCompiler_class.st:444` returns the compiled method;
`kernel.ic/Behavior.st:418` installs it through `addSelector:withMethod:`.
This sequence is statically supported, not tested as a live class replacement.
It still needs an initial executable bootstrap. A disabled Cebra service cannot
be used to inject the code that enables itself.

## Smalltalk changes

Proposed new launch contract, implemented by the patch rather than supplied by
the current ASCET installation:

```text
ASCET.exe -multiinstance:agent-a -toolapiport:32611
ASCET.exe -multiinstance:agent-b -toolapiport:32612
```

The existing `getCommandLineArgument:` reads argument prefixes from
`System commandLine` (`ASDAscetController.st:472`). A new helper can use it to
read `-toolapiport:`. Validate decimal syntax and port range 1..65535; reject
duplicate or invalid values and freeze the parsed result for this process.
Absent opt-in retains the original disabled Tool API behavior for multi-instance
GUI use. The new command-line contract still needs a launcher/runtime test.

| Method to change | Required behavior |
| --- | --- |
| `ASDGeneralOptions>>optionToolServer` | For a multi-instance process, allow the configured `ToolServer` option only when an explicit valid API port was provided. Keep the original single-instance option lookup. |
| `ASDGeneralOptions>>optionToolServerPortNumber` | For an opted-in multi-instance GUI process, return its validated port. Keep ordinary port behavior otherwise. Headless/server mode uses another option and needs a separate extension. |
| `SGToolServer>>setActive` | Keep the `active` state transition. Skip writing shared `ToolApiPort` for multi-instance processes. |
| `SGToolServer>>setInactive` | Keep the `active` state transition. Skip clearing shared `ToolApiPort` for multi-instance processes, including initialization, failure and shutdown. |
| `EtasCebra class>>setCOMServerInformationInRegistryForTool:` | Return immediately for multi-instance processes. Use TCP explicit endpoints for these clients. |

Example control flow for the first replacement, with a proposed helper:

```smalltalk
optionToolServer
    ASDAscetController instance isMultiInstanceMode ifTrue: [
        self validatedMultiApiPort isNil ifTrue: [^false]
    ].
    ^self optionAt: 'ToolServer' ifAbsent: [self optionToolServerDefault]
```

Do not change `isMultiInstanceMode` globally to false. Existing checks also
protect application discovery, option persistence, process information and
temporary paths. Localized service changes preserve those protections.
Do not globally change the registry-root getter either: installation metadata
and configuration reads may depend on the original root.

The listener already binds to loopback (`SGToolServer_class.st:13`). Preserve
that binding. `start` marks the server active before its asynchronous bind
finishes; an active flag alone is not readiness. Confirm listening ownership
and perform an API handshake before exposing the host to an Agent.

## Offline fallback for an isolated experiment

The current installed `icsrun/ASDBase.ic` matches the recovered image:

```text
SHA256: B4DFF51F53463F2053AD7163F6AFAF7A9A24DFDFD0D538ECEEC22432FADB5237
ASDGeneralOptions>>optionToolServer address: 0x20226064
Method record file offset: 0xb22910
Bytecode file offset: 0xb22938
Bytecode length: 34
```

The method has inline bytecode (`shared_code=false`), and exactly one record in
the recovered ASDBase method inventory points to this bytecode offset.

The original early-return instructions are:

```text
PC 15: 2f 02 00   branch on false to PC 20, consuming the condition
PC 18: 3d         push false
PC 19: 46         context return
PC 20: ...        normal ToolServer option lookup
```

A candidate gate-only patch replaces `3d 46` at file offsets
`0xb2294a..0xb2294b` with `3e 0e` (push nil, pop). It keeps instruction lengths
and branch targets and balances the extra stack item, allowing both paths to
reach the ordinary option lookup. The candidate was decoded in memory using
`scripts/decompile_smalltalk.py`; installed bytes were only read.

This removes only the hard gate. It does not create per-process ports, isolate
registry/COM behavior or provide the conditional opt-in described above.
The gate-only candidate alone has not been runtime-tested. The verified
prototype combines it with eight additional scoped changes in private runtime
copies, exact hash checks and independent configuration. Do not treat these two
bytes as a complete fix.
Saving a live image is not an inert export: `EsImageStartUp>>saveImage:` runs
system saving/shutdown/restart code.

## Client and broker implementation

Each ASCET process gets one independent .NET host process. Each host retains
the standard `Ascet` tool alias and connects to its configured endpoint.
The existing single-host probe demonstrates the endpoint setup:

```csharp
Cebra.initCebraToolIndependent(false, false, null, null);
Cebra.initialized = true;
if (!ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port)))
    throw new InvalidOperationException("Ascet endpoint already registered");
var api = new Ascet();
```

`Cebra.initCebraToolDependent` returns immediately when `initialized` is true
(`decompiled/Etas.AscetNET/de.etas.cebra/Cebra.cs:252`). `ToolClient` prefers the
registered entry over registry discovery (`de.etas.cebra.socket/ToolClient.cs:132`).
No new Cebra protocol implementation is required.

The snippet is not a finished multi-host bootstrap: the SDK creates shared
`CebraLog.log`, `startupLog.log` and `EtasToolClient.log`. `LogFile` deletes an
existing file in its constructor, even when logging is disabled. Initialize
all SDK log state with a host-specific directory before constructing clients;
changing `cebraLogPath` after ordinary initialization does not undo deletion.
Implement a version-checked initialization adapter or a scoped SDK adjustment,
then verify it with simultaneous host startup. References: `Cebra.cs:299`,
`de.etas.cebra.socket/ToolClient.cs:428`, `de.etas.util/LogFile.cs:64`.

The launcher owns a per-instance manifest, for example:

```json
{
  "instance_id": "agent-a",
  "ascet_pid": 12345,
  "process_start_time": "<captured UTC timestamp>",
  "host": "127.0.0.1",
  "port": 32611,
  "database_path": "E:\\ASCETInstances\\agent-a\\Database",
  "broker_endpoint": "\\\\.\\pipe\\ascet-agent-a"
}
```

Before accepting work, check the TCP listener's owning PID and process start
time, then confirm database identity through the API. PID or port alone can
be reused. Bind every handle/snapshot to this process generation and database;
invalidate handles on reconnect, database change and restart. Never transfer
a live handle between hosts.

Use independent database copies. Native Temp/CodeGeneration suffix handling
does not make simultaneous writes to the same database safe. Also isolate
crash/API/patch logs and output directories. Ordinary multi-instance XML
persistence is already suppressed, but specialized write paths and toolbox
behavior still require verification.

Each host queues complete live business operations and owns one Cebra
connection. Historical run-03 observed a one-connection limit on one instance
and serial server execution per connection. This does not imply a global
one-connection limit across separate ASCET processes. Increasing
`MaxCebraServers` is not required by this architecture and would not establish
model safety. Agents may parallelize immutable snapshot processing separately.

## Validation needed before adoption

1. Load the bootstrap in a private runtime and verify method installation occurs
   before the Cebra hook. Record patch version, image hash and startup errors.
2. Launch A and B with different suffixes, ports and database copies. Confirm
   two process generations and listener-to-PID ownership.
3. Attach one host to each instance. Repeatedly compare database path, component
   identity and distinct echo tokens while both hosts are active.
4. Close/restart B while A remains connected; verify A still reads correctly,
   shared default-discovery values stay stable and B's old handles are rejected.
5. Check concurrent startup and shutdown for COM writes, shared log deletion,
   XML persistence, temporary/output collisions and port conflicts. A port
   conflict must fail rather than fall back to another instance.
6. Only after read isolation passes, test a small write in each disposable
   database and verify changes occur exclusively in the intended instance.

Historical client/pipeline evidence is in
`docs/ascet-api-concurrency-test-results.md` and
`analysis/concurrency-experiments/2026-09-30/run-03/`.
It validates the explicit-endpoint building block, not two ASCET instances.
