param(
    [Parameter(Mandatory=$true)][string]$Manifest,
    [ValidateSet('Hide', 'Show', 'Status')][string]$Action = 'Status'
)
$ErrorActionPreference = 'Stop'
$resolvedManifest = (Resolve-Path -LiteralPath $Manifest).Path
$base = Split-Path -Parent $resolvedManifest
$root = Split-Path -Parent $base
if (-not (Test-Path -LiteralPath (Join-Path $root 'experiment.json'))) {
    throw 'Only prepared experiment directories can be controlled'
}
$instance = Get-Content -LiteralPath $resolvedManifest -Raw | ConvertFrom-Json
$identity = Get-Content -LiteralPath (Join-Path $base 'process.json') -Raw | ConvertFrom-Json -DateKind String
$process = Get-Process -Id $identity.pid -ErrorAction SilentlyContinue
if (-not $process -or $process.Path -ne (Join-Path $instance.runtime 'ASCET.exe') -or
    $process.StartTime.ToUniversalTime().ToString('o') -ne $identity.start_time_utc) {
    throw 'Private ASCET process is not running or its identity changed'
}
$stateFile = Join-Path $base 'background.json'
$state = if (Test-Path -LiteralPath $stateFile) {
    Get-Content -LiteralPath $stateFile -Raw | ConvertFrom-Json -DateKind String
}
$guard = $null
if ($state -and $state.target_pid -eq $process.Id -and
    $state.target_start_time_utc -eq $identity.start_time_utc) {
    $candidate = Get-Process -Id $state.pid -ErrorAction SilentlyContinue
    if ($candidate -and $candidate.Path -eq $state.executable -and
        $candidate.StartTime.ToUniversalTime().ToString('o') -eq $state.start_time_utc) {
        $guard = $candidate
    }
}
if ($Action -eq 'Status') {
    [ordered]@{pid=$process.Id; background=[bool]($guard -and $state.status -eq 'watching');
        guard=$state} | ConvertTo-Json -Depth 5
    return
}
if ($Action -eq 'Show') {
    if ($guard) {
        'show' | Set-Content -LiteralPath ($stateFile + '.command') -Encoding ascii
        if (-not $guard.WaitForExit(10000)) { throw 'Window guard did not acknowledge the show request' }
        $state = Get-Content -LiteralPath $stateFile -Raw | ConvertFrom-Json -DateKind String
        if ($state.status -ne 'shown') { throw ('Window restore failed: ' + $state.error) }
    } elseif ($state -and $state.status -eq 'watching') {
        throw 'Window guard exited unexpectedly; inspect background.json before restoring'
    }
    [ordered]@{pid=$process.Id; background=$false} | ConvertTo-Json -Compress
    return
}
if ($guard) {
    if ($state.status -ne 'watching') { throw 'Window guard is stopping; retry after it exits' }
    [ordered]@{pid=$process.Id; background=$true; guard_pid=$guard.Id} | ConvertTo-Json -Compress
    return
}

$source = Join-Path $PSScriptRoot 'WindowGuard.cs'
$hash = (Get-FileHash -LiteralPath $source -Algorithm SHA256).Hash.Substring(0, 16)
$executable = Join-Path $root ('WindowGuard-' + $hash + '.exe')
if (-not (Test-Path -LiteralPath $executable)) {
    $compiler = Join-Path $env:WINDIR 'Microsoft.NET\Framework\v4.0.30319\csc.exe'
    $compilerOutput = & $compiler /nologo /target:winexe /r:System.Windows.Forms.dll /r:System.Web.Extensions.dll "/out:$executable" $source
    if ($LASTEXITCODE -ne 0) { throw ('Window guard compilation failed: ' + ($compilerOutput -join "`n")) }
}
Remove-Item -LiteralPath ($stateFile + '.command') -Force -ErrorAction SilentlyContinue
$arguments = @([string]$process.Id, $identity.start_time_utc,
    ('"' + $process.Path + '"'), ('"' + $stateFile + '"'))
$guard = Start-Process -FilePath $executable -ArgumentList $arguments -WindowStyle Hidden -PassThru
$deadline = [DateTime]::UtcNow.AddSeconds(10)
while ([DateTime]::UtcNow -lt $deadline) {
    if (Test-Path -LiteralPath $stateFile) {
        $state = Get-Content -LiteralPath $stateFile -Raw | ConvertFrom-Json -DateKind String
        if ($state.pid -eq $guard.Id -and
            $state.start_time_utc -eq $guard.StartTime.ToUniversalTime().ToString('o')) {
            if ($state.status -eq 'failed') { throw ('Window guard failed: ' + $state.error) }
            if ($state.status -eq 'watching') {
                [ordered]@{pid=$process.Id; background=$true; guard_pid=$guard.Id} | ConvertTo-Json -Compress
                return
            }
        }
    }
    if ($guard.HasExited) { throw 'Window guard exited during startup' }
    Start-Sleep -Milliseconds 100
}
# This Process object is the helper launched by this invocation, never an arbitrary PID.
if (-not $guard.HasExited) { $guard.Kill(); $guard.WaitForExit() }
throw 'Window guard startup timed out'
