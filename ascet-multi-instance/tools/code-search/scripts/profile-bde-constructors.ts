import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { Bridge, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.notEqual(instance.port, 32503);
const directory = join(ROOT, 'experiments/bde-constructors', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const setup = `[ | classes stats |
 classes := IdentityDictionary new. stats := Dictionary new.
 #(SGDataGODB SGCodeGODB SGLiteralGODB SGOperatorGODB SGConnectionGODB) do: [:className |
  | native owned method measure |
  stats at: className asString put: (Array with: 0 with: 0).
  native := Smalltalk at: className. owned := native class basicNew.
  native == owned ifTrue: [native error: 'PROFILE_CLASS_IDENTITY'].
  1 to: native class instSize do: [:i | owned instVarAt: i put: (native instVarAt: i)].
  owned superclass: native. owned initializeMethodDictionary. owned instSize: native instSize + 1.
  method := EsCompiler compile: 'graphicObject: hierarchy datamodelManager: model tableBuilder: table manager: parent
   | started go | started := Time millisecondClockValue.
   go := super graphicObject: hierarchy datamodelManager: model tableBuilder: table manager: parent.
   (self instVarAt: self class instSize) value: (Time millisecondClockValue - started).
   ^go' inClass: owned ifFail: [:failure | native error: failure printString].
  owned addSelector: method selector withMethod: method.
  measure := [:ms | | ctorRow | ctorRow := stats at: className asString ifAbsentPut: [Array with: 0 with: 0].
   ctorRow at: 1 put: (ctorRow at: 1) + 1. ctorRow at: 2 put: (ctorRow at: 2) + ms].
  classes at: native put: (Array with: owned with: measure)
 ]. Array with: classes with: stats
] value`;
let reader = await readFile(join(ROOT, 'bde-source-reader.st'), 'utf8');
reader = reader.replace('copied := value shallowCopy.', `copied := (ctorClasses at: value class ifAbsent: [nil])
 ifNil: [value shallowCopy] ifNotNil: [:entry | | result | result := entry first basicNew.
  result instVarAt: entry first instSize put: entry last. result].`);
reader = `[ | ctorSetup ctorClasses ctorStats | ctorSetup := (${setup}). ctorClasses := ctorSetup first. ctorStats := ctorSetup last.
 ${reader}
] value`;
// Expose only aggregate profiling rows, leaving all production graph rows untouched.
reader = reader.replace('Array with: bdeCopyMs with: bdeLoadMs with: (Time millisecondClockValue - bdeStarted)',
 `ctorStats keysAndValuesDo: [:name :values | bdeRecord value: '#BDE_CTOR' value: (Array with: name with: values first printString with: values last printString).
    values at: 1 put: 0. values at: 2 put: 0].
 Array with: bdeCopyMs with: bdeLoadMs with: (Time millisecondClockValue - bdeStarted)`);
const source = join(directory, 'reader.st'), binary = join(directory, 'probe.exe');
await writeFile(source, reader);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
 '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
 '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
 '/resource:' + join(ROOT, 'native-snapshot.st') + ',snapshot.st', '/resource:' + source + ',bde-reader.st',
 ...['state-source-reader.st,state-reader.st', 'graph-source-reader.st,graph-reader.st', 'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st'].map(file => '/resource:' + join(ROOT, file)), join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const bridge = new Bridge(30, { command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) } });
const report: Record<string, unknown> = { status: 'running', directory }, samples: unknown[] = [];
function unpack(raw: { payload: string }) {
 const fields = raw.payload.split('|'), rows: string[][] = [], costs: Record<string, number[]> = {};
 for (let i = 0; i < fields.length - 1; i += 10) {
  const row = fields.slice(i, i + 10);
  if (row[0] === '#BDE_CTOR') { const c = costs[row[3]] ??= [0, 0]; c[0] += Number(row[4]); c[1] += Number(row[5]); }
  else { if (row[0] === '#BDE_END') row[3] = String(Number(row[3]) - 5); rows.push(row); }
 }
 return { costs, data: decodeResponse({ payload: rows.flat().join('|') + '|' }) };
}
try {
 const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true });
 assert.equal(raw.ascet_pid, identity.pid);
 const { data, costs } = unpack(raw); assert.deepEqual(data.errors, []);
 const control = JSON.parse(await readFile(join(ROOT, 'experiments/primitive-loader/2026-10-02T15-12-25-111Z/control.json'), 'utf8')).data;
 assert.equal(fingerprint(data), fingerprint(control)); assert.deepEqual(data.diagrams, control.diagrams);
 report.snapshot_costs = costs;
 for (let i = 0; i < 8; i++) {
  const result = await bridge.request({ mode: 'search_insensitive', needle: 'set', include_diagrams: true });
  const sample = unpack(result); assert.deepEqual(sample.data.errors, []);
  samples.push({ native: result.timings, costs: sample.costs, coverage: sample.data.coverage });
 }
 report.status = 'passed'; report.samples = samples;
} catch (error) { report.status = 'failed'; report.error = String(error).slice(0, 4000); process.exitCode = 1; }
finally { await bridge.close(); await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2)); console.log(JSON.stringify(report, null, 2)); }
