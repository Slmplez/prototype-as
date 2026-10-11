param([string]$AscetDll = 'E:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll', [switch]$BridgeOnly)
$ErrorActionPreference = 'Stop'
if (-not $BridgeOnly) {
    & npm.cmd --prefix $PSScriptRoot run build:ts
    if ($LASTEXITCODE -ne 0) { throw 'TypeScript compilation failed; run npm.cmd ci in tools/code-search first' }
}
$codeSearchCompiler = Join-Path $env:WINDIR 'Microsoft.NET\Framework\v4.0.30319\csc.exe'
$codeSearchPrefilterResource = "/resource:$PSScriptRoot\bde-prefilter.st,bde-prefilter.st"
$codeSearchFactoryResource = "/resource:$PSScriptRoot\bde-load-factory.st,bde-load-factory.st"
$codeSearchTransportResource = "/resource:$PSScriptRoot\native-transport.st,native-transport.st"
$codeSearchContainerResource = "/resource:$PSScriptRoot\container-source-reader.st,container-source-reader.st"
$codeSearchSavedResource = "/resource:$PSScriptRoot\saved-container-reader.st,saved-container-reader.st"
$codeSearchTopologyResource = "/resource:$PSScriptRoot\state-topology-reader.st,state-topology-reader.st"
& $codeSearchCompiler /nologo /target:exe /platform:x86 /r:System.Core.dll /r:System.Web.Extensions.dll "/r:$AscetDll" "/out:$PSScriptRoot\CodeSearchBridge.exe" "/resource:$PSScriptRoot\native-snapshot.st,snapshot.st" "/resource:$PSScriptRoot\state-source-reader.st,state-reader.st" "/resource:$PSScriptRoot\graph-source-reader.st,graph-reader.st" "/resource:$PSScriptRoot\bde-source-reader.st,bde-reader.st" "/resource:$PSScriptRoot\bde-read-audit.st,bde-audit.st" $codeSearchPrefilterResource $codeSearchFactoryResource $codeSearchTransportResource $codeSearchContainerResource $codeSearchSavedResource $codeSearchTopologyResource "$PSScriptRoot\CodeSearchBridge.cs"
if ($LASTEXITCODE -ne 0) { throw 'CodeSearchBridge compilation failed' }
