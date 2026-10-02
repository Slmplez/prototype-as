param(
    [Parameter(Mandatory=$true)][string]$Manifest,
    [switch]$Background
)
$ErrorActionPreference = 'Stop'
$resolvedManifest = (Resolve-Path -LiteralPath $Manifest).Path
$instance = Get-Content -LiteralPath $resolvedManifest -Raw | ConvertFrom-Json
$runtime = (Resolve-Path -LiteralPath $instance.runtime).Path
$base = Split-Path -Parent $resolvedManifest
if (-not (Test-Path -LiteralPath (Join-Path (Split-Path -Parent $base) 'experiment.json'))) {
    throw 'Only prepared experiment directories can be launched'
}
if ((Get-FileHash -Algorithm SHA256 -LiteralPath (Join-Path $runtime 'icsrun\ASDBase.ic')).Hash -ne $instance.patched_image_sha256) {
    throw 'Patched image hash mismatch'
}
$existing = Get-CimInstance Win32_Process -Filter "Name='ASCET.exe'" | Where-Object {$_.ExecutablePath -eq (Join-Path $runtime 'ASCET.exe')}
if ($existing) { throw 'This instance is already running' }
if (Get-NetTCPConnection -State Listen -LocalPort $instance.port -ErrorAction SilentlyContinue) {
    throw 'Requested API port is already listening'
}
$arguments = @(('-multiinstance:' + $instance.instance_id),
    ('"-database' + $instance.database + '"'), ('"-l' + (Join-Path $instance.logs 'crash.log') + '"'))
$process = Start-Process -FilePath (Join-Path $runtime 'ASCET.exe') -WorkingDirectory $runtime -ArgumentList $arguments -WindowStyle Hidden -PassThru
$identity = [ordered]@{pid=$process.Id; start_time_utc=$process.StartTime.ToUniversalTime().ToString('o'); runtime=$runtime; port=$instance.port}
$identity | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $base 'process.json') -Encoding utf8
if ($Background) {
    try {
        $hidden = & (Join-Path $PSScriptRoot 'windows.ps1') -Manifest $resolvedManifest -Action Hide | ConvertFrom-Json -DateKind String
        $identity.background = $hidden.background
        $identity.guard_pid = $hidden.guard_pid
    } catch {
        if (-not $process.HasExited) { $process.Kill(); $process.WaitForExit() }
        throw
    }
}
$identity | ConvertTo-Json -Compress
