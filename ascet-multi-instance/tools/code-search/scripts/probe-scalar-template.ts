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
const directory = join(ROOT, 'experiments/scalar-template', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const setup = `[ | seen counts scan |
 seen := IdentitySet new. counts := Dictionary new.
 scan := [:value |
  | name |
  ((value isNil or: [value isNumber]) or: [(value isKindOf: Symbol) or: [value == true or: [value == false]]]) ifFalse: [
   (seen includes: value) ifFalse: [
    seen add: value. name := value class name asString.
    counts at: name put: (counts at: name ifAbsent: [0]) + 1.
    ((value isKindOf: String) or: [value isKindOf: ByteArray]) ifFalse: [
     (value isKindOf: Dictionary) ifTrue: [value keysAndValuesDo: [:key :entry | scan value: key. scan value: entry]]
      ifFalse: [((value isKindOf: Array) or: [value isKindOf: OrderedCollection])
       ifTrue: [value do: [:entry | scan value: entry]]
       ifFalse: [1 to: value class instSize do: [:index | scan value: (value instVarAt: index)]]]
    ]
   ]
  ]
 ]. Array with: scan with: counts
] value`;
let factory = await readFile(join(ROOT, 'bde-load-factory.st'), 'utf8');
factory = factory.replace('createGraphic := [:represented :element :model |', 'createGraphic := [:scan | [:represented :element :model |');
factory = factory.replace('graphic\n            ] ifFalse:', 'graphic\n            ] ifFalse:');
const end = '] ifFalse: [nil]\n    ].';
factory = factory.replace(/\r\n/g, '\n');
assert.ok(factory.includes(end));
factory = factory.replace('| graphic positions |', '| graphic positions result | result := ');
factory = factory.replace(end, '] ifFalse: [nil]. result ifNotNil: [scan value: result]. result\n    ]].');
let reader = (await readFile(join(ROOT, 'bde-source-reader.st'), 'utf8')).replace(/\r\n/g, '\n');
reader = reader.replace('| bdeElementMetadata bdeReferencePaths |', `| bdeElementMetadata bdeReferencePaths templateScan templateCounts templateSetup templateCreator |
 templateSetup := (${setup}). templateScan := templateSetup first. templateCounts := templateSetup last.
 templateCreator := (bdeLoadFactory at: 2) value: templateScan.`);
reader = reader.replace('put: (bdeLoadFactory at: 2)', 'put: templateCreator');
reader = reader.replace('Array with: bdeCopyMs with: bdeLoadMs with: (Time millisecondClockValue - bdeStarted)',
 `templateCounts keysAndValuesDo: [:templateClassName :templateClassCount | bdeRecord value: '#TEMPLATE_CLASS' value: (Array with: templateClassName with: templateClassCount printString)].
  templateCounts removeAllKeys: templateCounts keys.
  Array with: bdeCopyMs with: bdeLoadMs with: (Time millisecondClockValue - bdeStarted)`);
await writeFile(join(directory, 'factory.st'), factory);
await writeFile(join(directory, 'reader.st'), reader);
const binary = join(directory, 'probe.exe');
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
 '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
 '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
 '/resource:' + join(directory, 'factory.st') + ',bde-load-factory.st', '/resource:' + join(directory, 'reader.st') + ',bde-reader.st',
 ...['native-snapshot.st,snapshot.st', 'state-source-reader.st,state-reader.st', 'graph-source-reader.st,graph-reader.st',
  'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st', 'native-transport.st,native-transport.st'].map(s => '/resource:' + join(ROOT, s)), join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const bridge = new Bridge(90, { command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) } });
const report: Record<string, unknown> = { status: 'running', directory };
try {
 const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
 assert.equal(raw.ascet_pid, identity.pid);
 const fields = raw.payload.split('|'), rows: string[][] = [], counts: Record<string, number> = {};
 for (let i = 0; i < fields.length - 1; i += 10) {
  const row = fields.slice(i, i + 10);
  if (row[0] === '#TEMPLATE_CLASS') counts[row[3]] = (counts[row[3]] ?? 0) + Number(row[4]);
  else rows.push(row);
 }
 // Remove profiling rows from each compact group and recompute its declared size.
 let start = -1;
 for (let i = 0; i < rows.length; i++) {
  if (rows[i][0] === '#BDE_CONTEXT') start = i;
  if (rows[i][0] === '#BDE_END') { rows[i][3] = String(i - start - 1); start = -1; }
 }
 const data = decodeResponse({ payload: rows.flat().join('|') + '|' }); assert.deepEqual(data.errors, []);
 const control = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T17-57-32-360Z/before-snapshot.json'), 'utf8')).data;
 assert.equal(fingerprint(data), fingerprint(control)); assert.deepEqual(data.diagrams, control.diagrams);
 Object.assign(report, { status: 'passed', counts });
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { await bridge.close(); await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n'); console.log(JSON.stringify(report, null, 2)); }
