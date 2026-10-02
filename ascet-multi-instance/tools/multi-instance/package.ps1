param(
    [string]$OutputDirectory,
    [ValidatePattern('^[a-z0-9][a-z0-9._-]{0,95}$')]
    [string]$Name = 'ascet-multi-instance-connector-20261002'
)
$ErrorActionPreference = 'Stop'
$workspace = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..\..')).Path
if (-not $OutputDirectory) { $OutputDirectory = Join-Path $workspace 'dist' }
$output = [IO.Path]::GetFullPath($OutputDirectory)
$stage = Join-Path $output $Name
$archivePath = Join-Path $output ($Name + '.zip')
$checksumPath = $archivePath + '.sha256'
foreach ($path in @($stage, $archivePath, $checksumPath)) {
    if (Test-Path -LiteralPath $path) { throw ('Package output already exists: ' + $path) }
}

$sources = [System.Collections.Generic.List[object]]::new()
function Add-PackageFile([string]$Source, [string]$Destination) {
    if (-not (Test-Path -LiteralPath $Source -PathType Leaf)) {
        throw ('Required package source is missing: ' + $Source)
    }
    $sources.Add([pscustomobject]@{ Source = $Source; Destination = $Destination.Replace('\', '/') })
}

Get-ChildItem -LiteralPath $PSScriptRoot -File -Recurse | Where-Object {
    $_.FullName -notmatch '\\(__pycache__|obj|bin)\\' -and
    $_.Extension -ne '.pyc' -and $_.Name -ne 'PACKAGE-README.zh-CN.md'
} | ForEach-Object {
    Add-PackageFile $_.FullName ([IO.Path]::GetRelativePath($workspace, $_.FullName))
}
Add-PackageFile (Join-Path $PSScriptRoot 'PACKAGE-README.zh-CN.md') 'README.md'

foreach ($relative in @(
    'docs/ascet-agent-background-workflow.md',
    'docs/ascet-multi-instance-api-implementation.md',
    'docs/ascet-api-concurrency-analysis.md',
    'docs/ascet-api-concurrency-test-results.md',
    'scripts/smalltalk_image.py',
    'scripts/decompile_smalltalk.py'
)) { Add-PackageFile (Join-Path $workspace $relative) $relative }

$run = Join-Path $workspace 'analysis\multi-instance\2026-10-02\run-01'
Add-PackageFile (Join-Path $run 'EndpointHost.exe') 'bin/EndpointHost.exe'
foreach ($relative in @(
    'validation.json', 'experiment.json',
    'agent-a/instance.json', 'agent-a/patch.json',
    'agent-b/instance.json', 'agent-b/patch.json',
    'agent-b/background-validation.json', 'agent-b/startup-windows.json'
)) { Add-PackageFile (Join-Path $run $relative) ('evidence/2026-10-02/run-01/' + $relative) }

foreach ($relative in @(
    'ASDBase.ic/ASDGeneralOptions.st',
    'ASDBase.ic/ASDAscetController.st',
    'ASDBase.ic/EtasCebra_class.st',
    'ASDBase.ic/SGToolServer.st',
    'ASDBase.ic/SGToolServer_class.st',
    'ASDBase.ic/EtasGeneralDllApi_class.st',
    'ASDBase.ic/EtasMainDatabaseWindow_class.st',
    'ASDBase.ic/EtasXMLBasedOptions.st',
    'ASDBase.ic/RBPatchboxManager_class.st',
    'ASDBase.ic/RBToolboxManager_class.st',
    'cfsnls.ic/CfsDirectoryDescriptor_class.st',
    'kernel.ic/EmSystemConfiguration.st',
    'kernel.ic/Behavior.st',
    'parse.ic/EsCompiler_class.st'
)) {
    $path = 'unpacked/smalltalk-source/' + $relative
    Add-PackageFile (Join-Path $workspace $path) $path
}
foreach ($relative in @(
    'de.etas.cebra/Cebra.cs',
    'de.etas.cebra.socket/ToolClient.cs',
    'de.etas.util/LogFile.cs'
)) {
    $path = 'decompiled/Etas.AscetNET/' + $relative
    Add-PackageFile (Join-Path $workspace $path) $path
}

$copilot = 'E:\Rep\AscetAgent\src'
foreach ($mapping in @(
    @{ Source = 'ascetcli/src/AscetCopilot/AscetReadDomain.cs'; Destination = 'AscetReadDomain.cs' },
    @{ Source = 'ascetcli/src/AscetCopilot/Core/AscetLiveContext.cs'; Destination = 'Core/AscetLiveContext.cs' },
    @{ Source = 'services/ascet/runner.ts'; Destination = 'runner.ts' },
    @{ Source = 'services/ascet/cliLock.ts'; Destination = 'cliLock.ts' }
)) {
    Add-PackageFile (Join-Path $copilot $mapping.Source) ('references/copilot/' + $mapping.Destination)
}

$duplicates = @($sources | Group-Object Destination | Where-Object { $_.Count -gt 1 })
if ($duplicates.Count) { throw 'Duplicate package destinations' }
New-Item -ItemType Directory -Path $stage | Out-Null
$files = foreach ($item in ($sources | Sort-Object Destination)) {
    $destination = Join-Path $stage $item.Destination
    New-Item -ItemType Directory -Path (Split-Path -Parent $destination) -Force | Out-Null
    Copy-Item -LiteralPath $item.Source -Destination $destination
    $sourceHash = (Get-FileHash -LiteralPath $item.Source -Algorithm SHA256).Hash.ToLowerInvariant()
    $hash = (Get-FileHash -LiteralPath $destination -Algorithm SHA256).Hash.ToLowerInvariant()
    if ($hash -ne $sourceHash) { throw ('Source changed during packaging: ' + $item.Source) }
    [ordered]@{
        path = $item.Destination
        bytes = (Get-Item -LiteralPath $destination).Length
        sha256 = $hash
        source = $item.Source
    }
}
$catalog = [ordered]@{
    schema_version = 1
    package_kind = 'ascet-multi-instance-connector-materials'
    created_at_utc = [DateTime]::UtcNow.ToString('o')
    source_workspace = $workspace
    file_count = @($files).Count
    includes_vendor_runtime = $false
    includes_database_contents = $false
    files = @($files)
}
$catalog | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath (Join-Path $stage 'manifest.json') -Encoding utf8

Add-Type -AssemblyName System.IO.Compression.FileSystem
[IO.Compression.ZipFile]::CreateFromDirectory($stage, $archivePath, [IO.Compression.CompressionLevel]::Optimal, $true)
$archive = [IO.Compression.ZipFile]::OpenRead($archivePath)
try {
    $entryFiles = @($archive.Entries | Where-Object { -not $_.FullName.EndsWith('/') })
    if ($entryFiles.Count -ne @($files).Count + 1) { throw 'Archive file count mismatch' }
    foreach ($file in @($files) + @(@{ path = 'manifest.json'; sha256 = (Get-FileHash -LiteralPath (Join-Path $stage 'manifest.json') -Algorithm SHA256).Hash.ToLowerInvariant() })) {
        $entry = $archive.GetEntry($Name + '/' + $file.path)
        if (-not $entry) { throw ('Archive entry is missing: ' + $file.path) }
        $stream = $entry.Open()
        $sha = [Security.Cryptography.SHA256]::Create()
        try { $hash = [BitConverter]::ToString($sha.ComputeHash($stream)).Replace('-', '').ToLowerInvariant() }
        finally { $stream.Dispose(); $sha.Dispose() }
        if ($hash -ne $file.sha256) { throw ('Archive hash mismatch: ' + $file.path) }
    }
} finally { $archive.Dispose() }
$archiveHash = (Get-FileHash -LiteralPath $archivePath -Algorithm SHA256).Hash.ToLowerInvariant()
($archiveHash + '  ' + [IO.Path]::GetFileName($archivePath)) | Set-Content -LiteralPath $checksumPath -Encoding ascii
[ordered]@{
    archive = $archivePath
    readme = Join-Path $stage 'README.md'
    file_count = @($files).Count + 1
    bytes = (Get-Item -LiteralPath $archivePath).Length
    sha256 = $archiveHash
    archive_entries_verified = $true
} | ConvertTo-Json
