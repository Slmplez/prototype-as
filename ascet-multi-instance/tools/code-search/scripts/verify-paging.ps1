param([int]$WaitSeconds = 45, [ValidateSet('verify-paging', 'verify-optimization', 'verify-scope-edges', 'verify-agent', 'verify-agent-polish', 'benchmark-component-references', 'verify-diagrams', 'verify-diagram-generality', 'verify-object-search', 'verify-model-generality', 'verify-multiple-diagrams', 'verify-cold-read', 'verify-read-pages', 'verify-fast-search')][string]$Script = 'verify-paging')
$ErrorActionPreference = 'Stop'
# Cooperate with the BDE tools' existing per-user ASCET lock. Never terminate
# another client or restart an ASCET instance with in-flight model edits.
$pagingLockDirectory = Join-Path $env:LOCALAPPDATA 'AscetBdeTools'
[System.IO.Directory]::CreateDirectory($pagingLockDirectory) | Out-Null
$pagingLockPath = Join-Path $pagingLockDirectory 'local-ascet.lock'
$pagingLockStream = [System.IO.File]::Open($pagingLockPath, [System.IO.FileMode]::OpenOrCreate,
    [System.IO.FileAccess]::ReadWrite, [System.IO.FileShare]::ReadWrite)
$pagingLockHeld = $false
try {
    $pagingWaitTimer = [System.Diagnostics.Stopwatch]::StartNew()
    while (-not $pagingLockHeld) {
        try { $pagingLockStream.Lock(0, 1); $pagingLockHeld = $true }
        catch [System.IO.IOException] {
            if ($pagingWaitTimer.Elapsed.TotalSeconds -ge $WaitSeconds) {
                throw 'ASCET_BUSY: another task holds the shared live-model lock; verification has not accessed ASCET.'
            }
            Start-Sleep -Milliseconds 250
        }
    }
    $previousExternalLock = $env:ASCET_CODE_SEARCH_EXTERNAL_LOCK
    $env:ASCET_CODE_SEARCH_EXTERNAL_LOCK = '1'
    try { & node (Join-Path $PSScriptRoot ("..\dist\scripts\" + $Script + '.js')) }
    finally { $env:ASCET_CODE_SEARCH_EXTERNAL_LOCK = $previousExternalLock }
    $pagingExitCode = $LASTEXITCODE
} finally {
    if ($pagingLockHeld) { $pagingLockStream.Unlock(0, 1) }
    $pagingLockStream.Dispose()
}
exit $pagingExitCode
