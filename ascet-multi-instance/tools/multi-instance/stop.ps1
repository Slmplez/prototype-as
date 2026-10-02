param([Parameter(Mandatory=$true)][string]$Manifest)
$ErrorActionPreference = 'Stop'
$base = Split-Path -Parent (Resolve-Path -LiteralPath $Manifest).Path
if (-not (Test-Path -LiteralPath (Join-Path (Split-Path -Parent $base) 'experiment.json'))) {
    throw 'Only prepared experiment directories can be stopped'
}
$file = Join-Path $base 'process.json'
if (-not (Test-Path -LiteralPath $file)) { exit 0 }
$identity = Get-Content -LiteralPath $file -Raw | ConvertFrom-Json -DateKind String
$process = Get-Process -Id $identity.pid -ErrorAction SilentlyContinue
if ($process) {
    if ($process.Path -ne (Join-Path $identity.runtime 'ASCET.exe') -or
        $process.StartTime.ToUniversalTime().ToString('o') -ne $identity.start_time_utc) {
        throw 'Process identity changed'
    }
    Stop-Process -Id $process.Id -Force
}
$backgroundFile = Join-Path $base 'background.json'
if (Test-Path -LiteralPath $backgroundFile) {
    $background = Get-Content -LiteralPath $backgroundFile -Raw | ConvertFrom-Json -DateKind String
    if ($background.target_pid -eq $identity.pid -and
        $background.target_start_time_utc -eq $identity.start_time_utc) {
        $guard = Get-Process -Id $background.pid -ErrorAction SilentlyContinue
        if ($guard -and $guard.Path -eq $background.executable -and
            $guard.StartTime.ToUniversalTime().ToString('o') -eq $background.start_time_utc) {
            if (-not $guard.WaitForExit(5000)) { throw 'Window guard did not exit after ASCET stopped' }
        }
    }
}
exit 0
