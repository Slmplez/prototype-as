param([string]$AscetDll = 'E:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll')
$ErrorActionPreference = 'Stop'
$experimentCompiler = Join-Path $env:WINDIR 'Microsoft.NET\Framework\v4.0.30319\csc.exe'
$sourceRoot = (Resolve-Path $PSScriptRoot).Path
$outputPath = Join-Path $sourceRoot 'ExperimentHost.exe'
$resourcePath = Join-Path $sourceRoot 'native.st'
$sourcePath = Join-Path $sourceRoot 'ExperimentHost.cs'
$temporaryRoot = if ($env:TEMP) { $env:TEMP } else { $env:TMP }
$temporaryOutput = Join-Path $temporaryRoot ('ExperimentHost-' + [guid]::NewGuid().ToString('N') + '.exe')
Push-Location $temporaryRoot
try {
    & $experimentCompiler /nologo /target:exe /platform:x86 /r:System.Core.dll /r:System.Web.Extensions.dll "/r:$AscetDll" "/out:$temporaryOutput" "/resource:$resourcePath,native.st" "$sourcePath"
    if ($LASTEXITCODE -ne 0) { throw 'ExperimentHost compilation failed' }
    Copy-Item -LiteralPath $temporaryOutput -Destination $outputPath -Force
}
finally {
    Pop-Location
    if (Test-Path -LiteralPath $temporaryOutput) { Remove-Item -LiteralPath $temporaryOutput -Force -ErrorAction SilentlyContinue }
}
