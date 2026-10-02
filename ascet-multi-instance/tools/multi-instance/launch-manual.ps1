[CmdletBinding(SupportsShouldProcess=$true)]
param(
    [string]$Executable = 'E:\ETAS\ASCET6.4\ASCET.exe',
    [ValidatePattern('^[A-Za-z0-9][A-Za-z0-9_-]{0,63}$')]
    [string]$InstanceName = 'manual',
    [string]$Database
)

$ErrorActionPreference = 'Stop'
$resolvedExecutable = (Resolve-Path -LiteralPath $Executable).Path
if (-not (Test-Path -LiteralPath $resolvedExecutable -PathType Leaf) -or
    (Split-Path -Leaf $resolvedExecutable) -ine 'ASCET.exe') {
    throw 'Executable must point to an existing ASCET.exe'
}

$arguments = @('-multiinstance:' + $InstanceName)
$databasePath = $null
if ($Database) {
    $databasePath = (Resolve-Path -LiteralPath $Database).Path
    if (-not (Test-Path -LiteralPath (Join-Path $databasePath 'sobjects.dat') -PathType Leaf)) {
        throw 'Database must point to an existing ASCET database directory'
    }
    $arguments += '"-database' + $databasePath + '"'
}

if ($PSCmdlet.ShouldProcess($resolvedExecutable, 'Start manual ASCET: ' + ($arguments -join ' '))) {
    $process = Start-Process -FilePath $resolvedExecutable -WorkingDirectory (Split-Path -Parent $resolvedExecutable) -ArgumentList $arguments -WindowStyle Normal -PassThru
    [pscustomobject]@{
        LaunchProcessId = $process.Id
        InstanceName = $InstanceName
        RequestedDatabase = $databasePath
        Executable = $resolvedExecutable
    }
}
