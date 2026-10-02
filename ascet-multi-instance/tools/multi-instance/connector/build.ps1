param([string]$Output = (Join-Path $PSScriptRoot 'dist'))
$ErrorActionPreference = 'Stop'
$directory = [IO.Path]::GetFullPath($Output)
$framework = Join-Path $directory 'net47'
$modern = Join-Path $directory 'net8.0'
New-Item -ItemType Directory -Path $framework,$modern -Force | Out-Null
$compiler = Join-Path $env:WINDIR 'Microsoft.NET\Framework\v4.0.30319\csc.exe'
$source = Join-Path $PSScriptRoot 'AscetConnector.cs'
$example = Join-Path $PSScriptRoot 'examples\AgentExample.cs'
& $compiler /nologo /target:library /platform:anycpu /r:System.Runtime.Serialization.dll "/out:$framework\Ascet.AgentConnector.dll" $source
if ($LASTEXITCODE -ne 0) { throw 'Framework connector compilation failed' }
& $compiler /nologo /platform:x64 "/r:$framework\Ascet.AgentConnector.dll" "/out:$framework\AgentExample.exe" $example
if ($LASTEXITCODE -ne 0) { throw 'Framework example compilation failed' }

# The runtime assemblies allow an SDK-free build on this ASCET workstation.
$runtimes = & dotnet --list-runtimes
$runtime = $runtimes | Where-Object { $_ -match '^Microsoft.NETCore.App 8\.0\.' } | Select-Object -Last 1
if (-not $runtime -or $runtime -notmatch '^Microsoft.NETCore.App (\S+) \[(.+)\]$') {
    throw '.NET 8 runtime is required for the modern connector build'
}
$runtimeDirectory = Join-Path $Matches[2] $Matches[1]
$references = Get-ChildItem -LiteralPath $runtimeDirectory -Filter '*.dll' | ForEach-Object {
    try {
        [Reflection.AssemblyName]::GetAssemblyName($_.FullName) | Out-Null
        '/r:' + $_.FullName
    } catch [BadImageFormatException] { }
}
& $compiler /nologo /noconfig /nostdlib /target:library /platform:anycpu $references "/out:$modern\Ascet.AgentConnector.dll" $source
if ($LASTEXITCODE -ne 0) { throw '.NET 8 connector compilation failed' }
& $compiler /nologo /noconfig /nostdlib /platform:x64 $references "/r:$modern\Ascet.AgentConnector.dll" "/out:$modern\AgentExample.dll" $example
if ($LASTEXITCODE -ne 0) { throw '.NET 8 example compilation failed' }
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'examples\AgentExample.runtimeconfig.json') -Destination $modern
Write-Output $directory
