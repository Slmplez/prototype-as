param(
    [string]$Manifest = (Join-Path $PSScriptRoot '..\..\..\analysis\search-tools-acceptance\2026-10-02\agent-a\instance.json'),
    [ValidateRange(1,50)][int]$Rounds = 50,
    [int]$ProcessorIndex = -1
)
$ErrorActionPreference = 'Stop'
$manifestPath = (Resolve-Path -LiteralPath $Manifest).Path
$instance = Get-Content -LiteralPath $manifestPath -Raw | ConvertFrom-Json
$identity = Get-Content -LiteralPath (Join-Path (Split-Path -Parent $manifestPath) 'process.json') -Raw | ConvertFrom-Json
if ($instance.port -eq 32503 -or $identity.port -ne $instance.port -or $identity.runtime -ne $instance.runtime) { throw 'Only manifested isolated endpoints are permitted' }
$process = Get-Process -Id $identity.pid
$expectedStart = ([DateTime]$identity.start_time_utc).ToUniversalTime()
if ($process.Path -ne (Join-Path $instance.runtime 'ASCET.exe') -or $process.StartTime.ToUniversalTime() -ne $expectedStart) { throw 'Isolated process identity mismatch' }
$listeners = @(Get-NetTCPConnection -State Listen -LocalPort $instance.port)
if ($listeners.Count -ne 1 -or $listeners[0].OwningProcess -ne $process.Id) { throw 'Isolated endpoint identity mismatch' }
if ($ProcessorIndex -lt -1 -or $ProcessorIndex -ge [Math]::Min([Environment]::ProcessorCount, 63)) { throw 'Invalid processor index' }
$originalAffinity = $process.ProcessorAffinity
$oldRounds = $env:ASCET_AGENT_LATENCY_ROUNDS
$oldManifest = $env:ASCET_AGENT_LATENCY_MANIFEST
$started = [DateTime]::UtcNow
$exitCode = 1
try {
    if ($ProcessorIndex -ge 0) { $process.ProcessorAffinity = [IntPtr]([long]1 -shl $ProcessorIndex) }
    $usedAffinity = $process.ProcessorAffinity
    $env:ASCET_AGENT_LATENCY_ROUNDS = [string]$Rounds
    $env:ASCET_AGENT_LATENCY_MANIFEST = $manifestPath
    & node (Join-Path $PSScriptRoot '..\dist\scripts\verify-agent-latency.js')
    $exitCode = $LASTEXITCODE
} finally {
    $process.ProcessorAffinity = $originalAffinity
    $process.Refresh()
    $environmentRecord = [ordered]@{ pid=$process.Id; started_utc=$started.ToString('o'); processor_index=$ProcessorIndex
        original_affinity=$originalAffinity.ToInt64(); measured_affinity=$usedAffinity.ToInt64()
        restored_affinity=$process.ProcessorAffinity.ToInt64(); logical_processors=[Environment]::ProcessorCount
        boundary='Reversible scheduling experiment on the manifested copied ASCET only. Other instances are untouched.' }
    $reportsRoot = Join-Path $PSScriptRoot '..\experiments\agent-latency'
    $latest = Get-ChildItem -LiteralPath $reportsRoot -Directory | Where-Object { $_.CreationTimeUtc -ge $started } | Sort-Object Name -Descending | Select-Object -First 1
    if ($latest) { $environmentRecord | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $latest.FullName 'environment.json') -Encoding UTF8 }
    $env:ASCET_AGENT_LATENCY_ROUNDS = $oldRounds
    $env:ASCET_AGENT_LATENCY_MANIFEST = $oldManifest
    $process.Dispose()
}
exit $exitCode
