param([Parameter(Mandatory=$true)][string]$Manifest)
$ErrorActionPreference = 'Stop'
& (Join-Path $PSScriptRoot 'build.ps1') | Out-Null
$tests = Join-Path $PSScriptRoot 'dist\tests'
New-Item -ItemType Directory -Path $tests -Force | Out-Null
$compiler = Join-Path $env:WINDIR 'Microsoft.NET\Framework\v4.0.30319\csc.exe'
& $compiler /nologo /platform:x86 /r:System.Web.Extensions.dll "/out:$tests\FakeEndpointHost.exe" (Join-Path $PSScriptRoot 'tests\FakeEndpointHost.cs')
if ($LASTEXITCODE -ne 0) { throw 'Fake Host compilation failed' }
$library = Join-Path $PSScriptRoot 'dist\net47\Ascet.AgentConnector.dll'
& $compiler /nologo /platform:x64 "/r:$library" "/out:$tests\ConnectorTests.exe" (Join-Path $PSScriptRoot 'tests\ConnectorTests.cs')
if ($LASTEXITCODE -ne 0) { throw 'Connector test compilation failed' }
Copy-Item -LiteralPath $library -Destination $tests -Force
& (Join-Path $tests 'ConnectorTests.exe') (Resolve-Path -LiteralPath $Manifest).Path (Join-Path $tests 'FakeEndpointHost.exe')
if ($LASTEXITCODE -ne 0) { throw 'Connector checks failed' }
$modernTests = Join-Path $PSScriptRoot 'dist\tests-net8'
New-Item -ItemType Directory -Path $modernTests -Force | Out-Null
Copy-Item -LiteralPath (Join-Path $tests 'ConnectorTests.exe') -Destination (Join-Path $modernTests 'ConnectorTests.dll') -Force
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'dist\net8.0\Ascet.AgentConnector.dll') -Destination $modernTests -Force
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'examples\AgentExample.runtimeconfig.json') -Destination (Join-Path $modernTests 'ConnectorTests.runtimeconfig.json') -Force
& dotnet (Join-Path $modernTests 'ConnectorTests.dll') (Resolve-Path -LiteralPath $Manifest).Path (Join-Path $tests 'FakeEndpointHost.exe')
if ($LASTEXITCODE -ne 0) { throw '.NET 8 connector checks failed' }
