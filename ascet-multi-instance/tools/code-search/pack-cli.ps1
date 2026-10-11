param([string]$OutputDirectory = (Join-Path $PSScriptRoot '..\..\dist'))
$ErrorActionPreference = 'Stop'
# Preload this shell's modules before hashing inside the packaging pipeline.
Import-Module (Join-Path $PSHOME 'Modules\Microsoft.PowerShell.Utility') -ErrorAction Stop
Import-Module (Join-Path $PSHOME 'Modules\Microsoft.PowerShell.Archive') -ErrorAction Stop
$packageRoot = [IO.Path]::GetFullPath($OutputDirectory)
[IO.Directory]::CreateDirectory($packageRoot) | Out-Null
$sourcePackage = Get-Content -LiteralPath (Join-Path $PSScriptRoot 'package.json') -Raw | ConvertFrom-Json
$packageEncoding = New-Object System.Text.UTF8Encoding $false
$stamp = [DateTime]::UtcNow.ToString('yyyyMMddTHHmmssfffZ')
$packageName = "ascet-code-search-cli-$($sourcePackage.version)-$stamp"
$stage = Join-Path $packageRoot $packageName
$null = New-Item -ItemType Directory -Path $stage
$runtime = Join-Path $stage 'dist\src'
$sources = Join-Path $stage 'src'
$null = New-Item -ItemType Directory -Path $runtime,$sources
foreach ($file in Get-ChildItem -LiteralPath (Join-Path $PSScriptRoot 'dist\src') -File) {
    if ($file.Name -notlike 'mcp*') { Copy-Item -LiteralPath $file.FullName -Destination $runtime }
}
foreach ($file in Get-ChildItem -LiteralPath (Join-Path $PSScriptRoot 'src') -File) {
    if ($file.Name -notlike 'mcp*') { Copy-Item -LiteralPath $file.FullName -Destination $sources }
}
$files = @('CodeSearchBridge.exe', 'CodeSearchBridge.cs', 'build.ps1', 'native-snapshot.st',
    'state-source-reader.st', 'state-topology-reader.st', 'graph-source-reader.st', 'bde-source-reader.st', 'bde-read-audit.st',
    'bde-prefilter.st', 'bde-load-factory.st', 'native-transport.st', 'container-source-reader.st', 'saved-container-reader.st', 'AGENT_SEARCH_PROMPT.md', 'AGENT_SEARCH_REFERENCE.md', 'ASCET_TERMINOLOGY.md',
    'AGENT_JSON_EXAMPLES.json', 'BDE_OBJECT_JSON_EXAMPLES.json',
    'prompt-examples.json', 'agent-simple-find-tool-definition.json',
    'agent-simple-search-tool-definition.json', 'agent-simple-read-tool-definition.json', 'PI_TOOLS.md')
foreach ($name in $files) { Copy-Item -LiteralPath (Join-Path $PSScriptRoot $name) -Destination $stage }
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'CLI_PACKAGE.md') -Destination (Join-Path $stage 'CLI.md')
# The package contract omits the repository's historical validation journal.
$contract = Get-Content -LiteralPath (Join-Path $PSScriptRoot 'AGENT_SIMPLE.md') -Encoding UTF8
$contractEnd = [Array]::IndexOf($contract, '<!-- cli-package-contract-end -->')
if ($contractEnd -lt 1) { throw 'Agent contract validation heading was not found' }
$contract[0..($contractEnd - 1)] | Set-Content -LiteralPath (Join-Path $stage 'AGENT_SIMPLE.md') -Encoding UTF8
foreach ($name in @('experiments\multiple-diagrams\REPORT.md', 'experiments\agent-interface\agent-read-same-component.json')) {
    $destination = Join-Path $stage $name
    [IO.Directory]::CreateDirectory([IO.Path]::GetDirectoryName($destination)) | Out-Null
    Copy-Item -LiteralPath (Join-Path $PSScriptRoot $name) -Destination $destination
}
$metadata = [ordered]@{
    name = '@ascet/code-search-cli'; version = $sourcePackage.version; private = $true; type = 'module'
    engines = @{ node = '>=22' }; main = './dist/src/index.js'; types = './dist/src/index.d.ts'
    exports = [ordered]@{ '.' = @{ types = './dist/src/index.d.ts'; import = './dist/src/index.js' }; './pi' = './dist/src/pi-extension.js' }
    pi = @{ extensions = @('./dist/src/pi-extension.js') }
    scripts = [ordered]@{
        start = 'node dist/src/cli.js --agent'; 'build:ts' = 'tsc -p tsconfig.json'
        'build:bridge' = 'powershell.exe -NoProfile -ExecutionPolicy Bypass -File ./build.ps1 -BridgeOnly'
        build = 'npm run build:ts && npm run build:bridge'
    }
    devDependencies = $sourcePackage.devDependencies
    dependencies = @{ ajv = $sourcePackage.dependencies.ajv }
}
[IO.File]::WriteAllText((Join-Path $stage 'package.json'), ($metadata | ConvertTo-Json -Depth 8), $packageEncoding)
# PowerShell 5 cannot parse package-lock's empty root package key as a PSObject.
Add-Type -AssemblyName System.Web.Extensions
$lockSerializer = New-Object System.Web.Script.Serialization.JavaScriptSerializer
$lockSerializer.MaxJsonLength = 16777216
$dependencyLock = $lockSerializer.DeserializeObject([IO.File]::ReadAllText((Join-Path $PSScriptRoot 'package-lock.json')))
$dependencyLock['name'] = $metadata.name
$dependencyLock['packages']['']['name'] = $metadata.name
$dependencyLock['packages']['']['dependencies'] = $metadata.dependencies
[IO.File]::WriteAllText((Join-Path $stage 'package-lock.json'), $lockSerializer.Serialize($dependencyLock), $packageEncoding)
$tsconfig = Get-Content -LiteralPath (Join-Path $PSScriptRoot 'tsconfig.json') -Raw | ConvertFrom-Json
$tsconfig.include = @('src/**/*.ts')
[IO.File]::WriteAllText((Join-Path $stage 'tsconfig.json'), ($tsconfig | ConvertTo-Json -Depth 8), $packageEncoding)
$entries = @(Get-ChildItem -LiteralPath $stage -Recurse -File | Sort-Object FullName | ForEach-Object {
    [ordered]@{ path = $_.FullName.Substring($stage.Length + 1).Replace('\', '/'); bytes = $_.Length
        sha256 = (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash.ToLowerInvariant() }
})
$manifest = [ordered]@{ name = $packageName; version = $sourcePackage.version
    built_utc = [DateTime]::UtcNow.ToString('o'); runtime_dependencies = @('Node.js >=22', '.NET Framework 4', 'ASCET 6.4 ToolAPI DLL')
    files = $entries }
[IO.File]::WriteAllText((Join-Path $stage 'manifest.json'), ($manifest | ConvertTo-Json -Depth 8), $packageEncoding)
$archive = Join-Path $packageRoot ($packageName + '.zip')
Compress-Archive -LiteralPath $stage -DestinationPath $archive -CompressionLevel Optimal
[ordered]@{ directory = $stage; archive = $archive; files = $entries.Count
    bytes = (Get-Item -LiteralPath $archive).Length
    sha256 = (Get-FileHash -LiteralPath $archive -Algorithm SHA256).Hash.ToLowerInvariant() } | ConvertTo-Json
