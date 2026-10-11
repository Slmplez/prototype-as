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
let identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.notEqual(instance.port, 32503);
const directory = join(ROOT, 'experiments/headless-qpc', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
let factory = (await readFile(join(ROOT, 'bde-load-factory.st'), 'utf8')).replace(/\r\n/g, '\n');
factory = factory.replace('ownedClass instSize: SGDataGODB instSize + 1', 'ownedClass instSize: SGDataGODB instSize + 2');
factory = factory.replace('| element represented go |', '| element represented go probe began |\n        probe := self instVarAt: self class instSize - 1. began := probe value: #now.');
const checkpoints = [
 ['        go := (self instVarAt:', 'guard'],
 ['        go resetAllIdentifiers.', 'construct'],
 ['        self updateSequencesWith:', 'modifications'],
 ['        table addIdentifierFor:', 'sequences'],
 ['        go updateGOForElement:', 'identifiers'],
 ['        self adjustActualNameGOFor:', 'model_update'],
 ['        ^go', 'drawing'],
] as const;
for (const [position, name] of checkpoints) factory = factory.replace(position,
 `        probe value: (Array with: #${name} with: (probe value: #now) - began). began := probe value: #now.\n${position}`);
let reader = (await readFile(join(ROOT, 'bde-source-reader.st'), 'utf8')).replace(/\r\n/g, '\n');
const setup = `probeClock := PlatformFunction callingConvention: 'C' function: 'QueryPerformanceCounter' library: 'kernel32.dll'
        parameterTypes: #('pointer') returnType: 'bool'.
    probeClockBuffer := ByteArray new: 8.
    (PlatformFunction callingConvention: 'C' function: 'QueryPerformanceFrequency' library: 'kernel32.dll'
        parameterTypes: #('pointer') returnType: 'bool') callWith: probeClockBuffer.
    probeFrequency := probeClockBuffer int64At: 0.
    probeNow := [probeClock callWith: probeClockBuffer. (probeClockBuffer int64At: 0) asFloat * 1000 / probeFrequency].
    probeCosts := Dictionary new.
    probeMeasure := [:metric | metric == #now ifTrue: [probeNow value] ifFalse: [
        probeCosts at: metric first put: (probeCosts at: metric first ifAbsent: [0]) + metric last]].`;
reader = reader.replace('| bdeElementMetadata bdeReferencePaths bdeTemplateCreator |', `| bdeElementMetadata bdeReferencePaths bdeTemplateCreator probeClock probeClockBuffer probeNow probeFrequency probeCosts probeMeasure codeProfileClass codeProfileMethod codeProbe |
    ${setup}`);
reader = reader.replace('put: bdeTemplateCreator].', `put: bdeTemplateCreator.
                            copied instVarAt: copied class instSize - 1 put: probeMeasure].`);
reader = reader.replace('    bdeElementMetadata :=', `    codeProfileClass := SGCodeGODB class basicNew.
    1 to: SGCodeGODB class instSize do: [:i | codeProfileClass instVarAt: i put: (SGCodeGODB instVarAt: i)].
    codeProfileClass superclass: SGCodeGODB. codeProfileClass initializeMethodDictionary.
    codeProfileClass instSize: SGCodeGODB instSize + 1.
    codeProfileMethod := EsCompiler compile: 'graphicObject: hierarchy datamodelManager: model tableBuilder: table manager: parent
        | metric result began | metric := self instVarAt: self class instSize. began := metric value: #now.
        result := super graphicObject: hierarchy datamodelManager: model tableBuilder: table manager: parent.
        metric value: (Array with: #code_constructor with: (metric value: #now) - began). ^result'
        inClass: codeProfileClass ifFail: [:failure | SGCodeGODB error: failure printString].
    codeProfileClass addSelector: codeProfileMethod selector withMethod: codeProfileMethod.
    bdeElementMetadata :=`);
reader = reader.replace('ifTrue: [(bdeLoadFactory at: 1) basicNew] ifFalse: [value shallowCopy].',
    'ifTrue: [(bdeLoadFactory at: 1) basicNew] ifFalse: [value class == SGCodeGODB ifTrue: [codeProfileClass basicNew] ifFalse: [value shallowCopy]].\n                        value class == SGCodeGODB ifTrue: [copied instVarAt: copied class instSize put: probeMeasure].');
reader = reader.replaceAll('Time millisecondClockValue', 'probeNow value');
reader = reader.replace('Array with: 0 with: 0 with: (probeNow value - bdeStarted)',
    'Array with: 0 with: 0 with: (probeNow value - bdeStarted) rounded');
reader = reader.replace('Array with: bdeCopyMs with: bdeLoadMs with: (probeNow value - bdeStarted)',
 `bdeRecord value: '#QPC_PHASE' value: (Array with: bdeCopyMs printString with: bdeLoadMs printString with: (probeNow value - bdeStarted) printString).
    probeCosts keysAndValuesDo: [:probeName :probeCost | bdeRecord value: '#QPC_DATA' value: (Array with: probeName asString with: probeCost printString)].
    probeCosts removeAllKeys: probeCosts keys.
    Array with: bdeCopyMs rounded with: bdeLoadMs rounded with: (probeNow value - bdeStarted) rounded`);
await writeFile(join(directory, 'factory.st'), factory);
await writeFile(join(directory, 'reader.st'), reader);
const binary = join(directory, 'probe.exe');
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
 '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
 '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
 '/resource:' + join(directory, 'factory.st') + ',bde-load-factory.st', '/resource:' + join(directory, 'reader.st') + ',bde-reader.st',
 ...['native-snapshot.st,snapshot.st', 'state-source-reader.st,state-reader.st', 'graph-source-reader.st,graph-reader.st',
  'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st', 'native-transport.st,native-transport.st',
  'container-source-reader.st,container-source-reader.st', 'saved-container-reader.st,saved-container-reader.st'].map(s => '/resource:' + join(ROOT, s)), join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const bridge = new Bridge(90, { command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) } });
const report: Record<string, unknown> = { status: 'running', directory }, samples: unknown[] = [];
function unpack(payload: string) {
 const fields = payload.split('|'), rows: string[][] = [], costs: Record<string, number> = {}, diagrams: unknown[] = [];
 let start = -1;
 for (let i = 0; i < fields.length - 1; i += 10) {
  const row = fields.slice(i, i + 10);
  if (row[0] === '#QPC_PHASE') diagrams.push({ copy_ms: Number(row[3]), load_ms: Number(row[4]), walk_ms: Number(row[5]) });
  else if (row[0] === '#QPC_DATA') costs[row[3]] = (costs[row[3]] ?? 0) + Number(row[4]);
  else {
   if (row[0] === '#BDE_CONTEXT') start = rows.length;
   if (row[0] === '#BDE_END') row[3] = String(rows.length - start - 1);
   rows.push(row);
  }
 }
 return { data: decodeResponse({ payload: rows.flat().join('|') + '|' }), costs, diagrams };
}
try {
 const runFile = promisify(execFile);
 await runFile('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/stop.ps1'), '-Manifest', manifest], { windowsHide: true, timeout: 60_000 });
 await runFile('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/launch.ps1'), '-Manifest', manifest, '-Background'], { windowsHide: true, timeout: 60_000 });
 identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
 await runFile('pwsh', ['-NoProfile', '-Command', `$deadline = [DateTime]::UtcNow.AddSeconds(30)
  do { $listener = Get-NetTCPConnection -State Listen -LocalPort ${instance.port} -ErrorAction SilentlyContinue
   if ($listener.OwningProcess -eq ${identity.pid}) { exit 0 }; Start-Sleep -Milliseconds 100
  } while ([DateTime]::UtcNow -lt $deadline); throw 'Isolated endpoint not ready'`], { windowsHide: true, timeout: 35_000 });
 const host = spawn(join(dirname(dirname(manifest)), 'EndpointHost.exe'), [String(instance.port), join(instance.logs, 'headless-profile-host'), instance.database, String(identity.pid)], { windowsHide: true });
 host.stdin.end('{"id":1,"op":"quit"}\n'); host.stdout.resume(); let errors = ''; host.stderr.on('data', d => errors += d);
 const timer = setTimeout(() => host.kill(), 45_000);
 try { assert.equal(await new Promise((ok, fail) => { host.once('error', fail); host.once('close', ok); }), 0, errors); }
 finally { clearTimeout(timer); }
 await bridge.request({ mode: 'catalog' });
 for (let i = 0; i < 8; i++) {
  const result = await bridge.request({ mode: 'search_insensitive', needle: 'set', include_diagrams: true });
  if (i === 0) await writeFile(join(directory, 'first-response.json'), JSON.stringify(result));
  const sample = unpack(result.payload); assert.deepEqual(sample.data.errors, []);
  samples.push({ timings: result.timings, costs: sample.costs, diagrams: sample.diagrams });
 }
 const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
 assert.equal(raw.ascet_pid, identity.pid);
 const initial = unpack(raw.payload); assert.deepEqual(initial.data.errors, []);
 const control = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')).data;
 assert.equal(fingerprint(initial.data), fingerprint(control)); assert.deepEqual(initial.data.diagrams, control.diagrams);
 Object.assign(report, { status: 'passed', full_snapshot_equivalent: true, samples });
} catch (error) { report.status = 'failed'; report.error = String(error).slice(0, 3000); process.exitCode = 1; }
finally { await bridge.close(); await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n'); console.log(JSON.stringify({ ...report, samples: undefined }, null, 2)); }
