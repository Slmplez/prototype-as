import assert from 'node:assert/strict';
import { execFile, execFileSync, spawn } from 'node:child_process';
import { promisify } from 'node:util';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { Bridge, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
assert.notEqual(instance.port, 32503); assert.equal(resolve(instance.runtime), join(dirname(manifest), 'runtime'));
const directory = join(ROOT, 'experiments/container-loader', new Date().toISOString().replace(/[:.]/g, '-'));
const batchCleanup = process.env.ASCET_LOADER_CLEANUP === 'batch';
await mkdir(directory, { recursive: true });
let source = (await readFile(join(ROOT, 'native-snapshot.st'), 'utf8')).replaceAll('\r\n', '\n');
const replace = (from: string, to: string) => { assert.ok(source.includes(from), from); source = source.replace(from, to); };
replace('| stage |', '| stage probeLoader |');
replace('totalBdeWalkMs |', 'totalBdeWalkMs probeLoaderClass probeMethod probeStats probeLoadMs |');
replace('        stage := \'directory\'.', `        probeStats := Dictionary new. probeLoadMs := 0.
        probeLoaderClass := RBObjectLoader class basicNew.
        1 to: RBObjectLoader class instSize do: [:i | probeLoaderClass instVarAt: i put: (RBObjectLoader instVarAt: i)].
        probeLoaderClass superclass: RBObjectLoader. probeLoaderClass initializeMethodDictionary.
        probeLoaderClass instSize: RBObjectLoader instSize + 1.
        #('extractInstancesOfClasses: classes | began result stats | began := Time millisecondClockValue.
             result := super extractInstancesOfClasses: classes. stats := self instVarAt: self class instSize.
             stats ifNotNil: [stats at: #extract put: (stats at: #extract ifAbsent: [0]) + (Time millisecondClockValue - began)]. ^result'
          'loadFromStream: stream | began result stats | began := Time millisecondClockValue.
             result := super loadFromStream: stream. stats := self instVarAt: self class instSize.
             stats ifNotNil: [stats at: #parse put: (stats at: #parse ifAbsent: [0]) + (Time millisecondClockValue - began)]. ^result'
          'restoreInstVars: values | began result stats | began := Time millisecondClockValue.
             result := super restoreInstVars: values. stats := self instVarAt: self class instSize.
             stats ifNotNil: [stats at: #restore put: (stats at: #restore ifAbsent: [0]) + (Time millisecondClockValue - began)]. ^result'
          'mutate: object existingClasses: classes | began result stats | began := Time millisecondClockValue.
             result := super mutate: object existingClasses: classes. stats := self instVarAt: self class instSize.
             stats ifNotNil: [stats at: #mutate put: (stats at: #mutate ifAbsent: [0]) + (Time millisecondClockValue - began)]. ^result'
          'deleteSegments: segments withGarbageCollect: count | began result stats | began := Time millisecondClockValue.
             result := super deleteSegments: segments withGarbageCollect: count. stats := self instVarAt: self class instSize.
             stats ifNotNil: [stats at: #delete put: (stats at: #delete ifAbsent: [0]) + (Time millisecondClockValue - began)]. ^result') do: [:methodSource |
            probeMethod := EsCompiler compile: methodSource inClass: probeLoaderClass ifFail: [:failure | dbAPI error: failure printString].
            probeLoaderClass addSelector: probeMethod selector withMethod: probeMethod].
        probeLoader := probeLoaderClass new. probeLoader dbInterface: dbAPI dbInterface. probeLoader initializeRestoring.
        probeLoader instVarAt: probeLoaderClass instSize put: probeStats.
        stage := 'directory'.`);
if (batchCleanup) {
  replace('probeLoaderClass instSize: RBObjectLoader instSize + 1.', 'probeLoaderClass instSize: RBObjectLoader instSize + 2.');
  replace('        probeLoader := probeLoaderClass new.', `        #('deleteSegments: segments withGarbageCollect: count
             | pending | pending := self instVarAt: self class instSize - 1.
             pending ifNil: [^super deleteSegments: segments withGarbageCollect: count].
             segments ifNotNil: [pending addAll: segments. [segments isEmpty] whileFalse: [segments removeLast]].
             pending size >= 64 ifTrue: [self probeFlushSegments]. ^self'
          'probeFlushSegments | pending began stats | pending := self instVarAt: self class instSize - 1.
             pending isNil ifTrue: [^self]. began := Time millisecondClockValue.
             super deleteSegments: pending withGarbageCollect: 10.
             stats := self instVarAt: self class instSize.
             stats ifNotNil: [stats at: #delete put: (stats at: #delete ifAbsent: [0]) + (Time millisecondClockValue - began)]. ^self') do: [:methodSource |
            probeMethod := EsCompiler compile: methodSource inClass: probeLoaderClass ifFail: [:failure | dbAPI error: failure printString].
            probeLoaderClass addSelector: probeMethod selector withMethod: probeMethod].
        probeLoader := probeLoaderClass new.`);
  replace('        probeLoader instVarAt: probeLoaderClass instSize put: probeStats.', `        probeLoader instVarAt: probeLoaderClass instSize put: probeStats.
        probeLoader instVarAt: probeLoaderClass instSize - 1 put: OrderedCollection new.`);
  replace('    dbAPI handleExceptionsIn: [', '    [dbAPI handleExceptionsIn: [');
  const ending = "] ifFail: [:error | 'PROBE_ERROR: ', stage, ' ', error printString, ' ', error arguments printString]\n]";
  replace(ending, "] ifFail: [:error | 'PROBE_ERROR: ', stage, ' ', error printString, ' ', error arguments printString]] ensure: [probeLoader ifNotNil: [probeLoader probeFlushSegments]]\n]");
}
replace('| cc |', '| cc record began |');
replace('cc := entry value getObjectOrUndefined.', `began := Time millisecondClockValue.
                record := entry value dbInterface readRecord: entry value.
                record isError ifTrue: [dbAPI error: 'CONTAINER_RECORD_FAILED'].
                (entry value dbInterface linDeLin loadMethodFromRecord: record) = #loadSwapper:blobStart:
                    ifFalse: [dbAPI error: 'UNSUPPORTED_CONTAINER_DECODER'].
                cc := probeLoader loadFrom: (Array with: record) offset: record class blobStart.
                cc isNil ifTrue: [dbAPI error: 'CONTAINER_LOADER_FAILED'].
                probeLoadMs := probeLoadMs + (Time millisecondClockValue - began).`);
replace('        out contents', `        ${batchCleanup ? 'probeLoader probeFlushSegments.' : ''}
        row value: (OrderedCollection new add: '#LOADER_PHASES'; add: probeLoadMs printString;
            add: (probeStats at: #extract ifAbsent: [0]) printString; add: (probeStats at: #parse ifAbsent: [0]) printString;
            add: (probeStats at: #restore ifAbsent: [0]) printString; add: (probeStats at: #mutate ifAbsent: [0]) printString;
            add: (probeStats at: #delete ifAbsent: [0]) printString; add: ''; add: ''; add: ''; yourself).
        out contents`);
const file = join(directory, 'probe.st'), binary = join(directory, 'probe.exe');
await writeFile(file, source);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
  '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
  '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary, '/resource:' + file + ',snapshot.st',
  ...['state-source-reader.st,state-reader.st', 'graph-source-reader.st,graph-reader.st', 'bde-source-reader.st,bde-reader.st',
    'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st', 'bde-load-factory.st,bde-load-factory.st', 'native-transport.st,native-transport.st']
    .map(resource => '/resource:' + join(ROOT, resource)), join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const runFile = promisify(execFile);
const report: Record<string, unknown> = { status: 'running', directory, batch_cleanup: batchCleanup,
  boundary: 'Standalone anonymous native RBObjectLoader with phase clocks on saved Code Containers; no replacement of shared vendor loaders and no saved writes. Optional segment cleanup batches at most 64 segments within this request and completes before response, including failure cleanup.' };
const samples: unknown[] = [];
try {
  await runFile('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/stop.ps1'), '-Manifest', manifest], { windowsHide: true, timeout: 60_000 });
  await runFile('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/launch.ps1'), '-Manifest', manifest, '-Background'], { windowsHide: true, timeout: 60_000 });
  const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
  assert.ok(Number.isInteger(identity.pid) && Number.isInteger(instance.port));
  await runFile('pwsh', ['-NoProfile', '-Command', `$deadline = [DateTime]::UtcNow.AddSeconds(30)
    do {
      $listener = Get-NetTCPConnection -State Listen -LocalPort ${instance.port} -ErrorAction SilentlyContinue
      if ($listener.OwningProcess -eq ${identity.pid}) { exit 0 }
      Start-Sleep -Milliseconds 100
    } while ([DateTime]::UtcNow -lt $deadline)
    throw 'Isolated API endpoint did not become ready'`], { windowsHide: true, timeout: 35_000 });
  const host = spawn(join(dirname(dirname(manifest)), 'EndpointHost.exe'), [String(instance.port), join(instance.logs, 'container-loader-host'), instance.database, String(identity.pid)], { windowsHide: true });
  host.stdin.end('{"id":1,"op":"quit"}\n'); host.stdout.resume(); let errors = ''; host.stderr.on('data', data => errors += data);
  const timer = setTimeout(() => host.kill(), 45_000);
  try { assert.equal(await new Promise((resolve, reject) => { host.once('close', resolve); host.once('error', reject); }), 0, errors); }
  finally { clearTimeout(timer); }
  const bridge = new Bridge(30, { command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) } });
  try {
    await bridge.request({ mode: 'catalog' });
    const expected = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')).data;
    for (let round = 0; round < 3; round++) {
      const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
      assert.equal(raw.ascet_pid, identity.pid);
      const fields = raw.payload.split('|'), kept: string[] = []; let phases: string[] | undefined;
      for (let i = 0; i < fields.length - 1; i += 10) {
        const row = fields.slice(i, i + 10); if (row[0] === '#LOADER_PHASES') phases = row; else kept.push(...row);
      }
      const data = decodeResponse({ ...raw, payload: kept.join('|') + '|' });
      assert.deepEqual(data.errors, []); assert.equal(fingerprint(data), fingerprint(expected)); assert.deepEqual(data.diagrams, expected.diagrams);
      assert.ok(phases);
      samples.push({ round, timings: raw.timings, phases: Object.fromEntries(['total', 'extract', 'parse', 'restore', 'mutate', 'delete'].map((name, i) => [name, Number(phases![i + 1])])) });
    }
    Object.assign(report, { status: 'passed', pid: identity.pid, all_sources_and_graphs_equal: true });
  } finally { await bridge.close(); }
} catch (error) { report.status = 'failed'; report.error = String(error).slice(0, 5000); process.exitCode = 1; }
finally { Object.assign(report, { samples }); await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n'); console.log(JSON.stringify(report, null, 2)); }
