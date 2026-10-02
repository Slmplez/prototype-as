# ASCET Agent Connector (.NET)

Chinese operator workflow, a native GUI option for current Copilot use, and
private connector integration boundaries:
[Foreground manual work and background Agent instances](../../../docs/ascet-agent-background-workflow.md).

A small typed connector to an **already running, prepared private ASCET 6.4
instance**. It owns one persistent `EndpointHost.exe` process and serializes
complete JSON requests over stdin/stdout. The Host owns the Cebra connection.
The Agent may run as x64 while the existing ETAS Host remains .NET Framework x86.

The connector does not start, hide, stop, prepare, or patch ASCET. Continue using
the existing multi-instance scripts for those operations. Connecting may open
the manifest's private database through the existing Host if none is open.

## Use

Reference `dist/net8.0/Ascet.AgentConnector.dll` in a .NET 8 project, or
`dist/net47/Ascet.AgentConnector.dll` in a .NET Framework 4.7+ project. No ETAS
DLL reference is needed in the Agent project.

```xml
<ItemGroup>
  <Reference Include="Ascet.AgentConnector">
    <HintPath>E:\Repo\ASCET\tools\multi-instance\connector\dist\net8.0\Ascet.AgentConnector.dll</HintPath>
  </Reference>
</ItemGroup>
```

```csharp
using Ascet.AgentConnector;

using var connector = await AscetConnector.ConnectAsync(new ConnectorOptions {
    ManifestPath = @"E:\Repo\ASCET\analysis\multi-instance\2026-10-02\run-01\agent-b\instance.json",
    AgentId = "agent-1"
});
var identity = await connector.GetIdentityAsync();
int reply = await connector.EchoAsync(123);
// Dispose disconnects the API Host; ASCET keeps running.
```

`HostExecutable` optionally overrides the default
`<experiment-root>/EndpointHost.exe`. Its matching `Etas.AscetNET.dll` must be
beside that executable. Each connection uses a unique SDK log directory.

## Interface

| Member | Behavior |
| --- | --- |
| `ConnectAsync(options, cancellationToken)` | Validate PID, start time, executable, port, and API/database identity; attach an isolated Host. |
| `GetIdentityAsync(cancellationToken)` | Read and recheck current private database and server PID. |
| `EchoAsync(token, cancellationToken)` | Connection probe returning the same integer token. |
| `DisconnectAsync()` / `Dispose()` | Disconnect and clean up only the owned Host. |
| `Identity`, `InstanceId`, `ProcessId`, `Port`, `ProcessStartTimeUtc` | Validated connection metadata; call `GetIdentityAsync` to refresh the snapshot. |
| `SessionId`, `AgentId`, `Diagnostics` | Caller identity and the last 32 diagnostic lines. |

Options default to a 45-second connection timeout, a 15-second total request
timeout including queue wait, and a maximum of 32 outstanding requests.

## Sharing And Failure Behavior

- Share **one connector object** among Agents/threads accessing one instance.
  Calls are serialized by a semaphore; replies are checked against unique IDs.
- One connector per private instance is enforced with an OS file lease. A
  second connector, including in another process, gets `INSTANCE_IN_USE`.
  This prototype does not provide shared access across Agent processes; a
  persistent broker would be required for that deployment.
- Different private ASCET instances may use independent connectors in parallel.
- Cancellation while queued removes that caller without disrupting the owner.
  Timeout or cancellation after dispatch closes the Host and invalidates the
  connector so a late response cannot be mistaken for the next response.
- Calls are never automatically replayed. `AscetConnectorException` exposes
  `Code`, `RequestId`, and `OutcomeUnknown`. Cancellation uses
  `OperationCanceledException`; after dispatch, the connection is unusable and
  the server operation may have completed. Reconnect explicitly.
- ASCET restart or a database change requires an explicit new connection.

Only `identity` and `echo` are currently supported by the existing Host and this
connector. Model read/write tools and MCP registration are not implemented.
Add business commands to the Host and typed connector methods when those
contracts are defined; keep native remote handles inside the Host.

## Build And Verify

PowerShell 7.5+, .NET Framework compiler, and .NET 8 runtime:

```powershell
& E:\Repo\ASCET\tools\multi-instance\connector\build.ps1
& E:\Repo\ASCET\tools\multi-instance\connector\test.ps1 -Manifest E:\Repo\ASCET\analysis\multi-instance\2026-10-02\run-01\agent-b\instance.json
dotnet E:\Repo\ASCET\tools\multi-instance\connector\dist\net8.0\AgentExample.dll E:\Repo\ASCET\analysis\multi-instance\2026-10-02\run-01\agent-b\instance.json
& E:\Repo\ASCET\tools\multi-instance\connector\dist\net47\AgentExample.exe E:\Repo\ASCET\analysis\multi-instance\2026-10-02\run-01\agent-b\instance.json
```

The build script uses installed runtime assemblies for an SDK-free local build.
When a .NET SDK is available, `Ascet.AgentConnector.csproj` provides the normal
`dotnet build` route for the .NET 8 library.

Verified on 2026-10-02: both x64 examples connected to hidden agent-b PID 39168
at 127.0.0.1:32612, checked the private database, and matched 20 concurrent
callers each. No other live Cebra connection was held during these tests.
Failure regression tests use a **fake Host** and an existing private ASCET
process for generation checks; they do not prove native API timeout recovery
or model write safety. ASCET and its window guard remain running after tests.
