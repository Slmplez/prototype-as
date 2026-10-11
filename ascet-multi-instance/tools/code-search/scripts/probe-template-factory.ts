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
const directory = join(ROOT, 'experiments/template-factory', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const factory = await readFile(join(ROOT, 'experiments', process.env.ASCET_FACTORY_FILE ?? (process.env.ASCET_PRIMITIVE_LOADER === 'storage'
  ? 'primitive-storage-factory.st' : 'primitive-template-factory.st')), 'utf8');
let reader = await readFile(join(ROOT, 'bde-source-reader.st'), 'utf8');
reader = reader.replace('copied := value shallowCopy.', `copied := value class == SGDataGODB ifTrue: [bdeFactoryClass basicNew] ifFalse: [value shallowCopy].
    value class == SGDataGODB ifTrue: [copied instVarAt: bdeFactoryClass instSize put: bdeFactoryCopy.
        bdeFactoryTemplates at: #copies put: (bdeFactoryTemplates at: #copies ifAbsent: [0]) + 1].`);
reader = reader.replace('with: (Time millisecondClockValue - bdeStarted)', `with: (Time millisecondClockValue - bdeStarted)
    with: bdeFactoryTemplates printString`);
const setup = `bdeFactorySetup := (${factory}). bdeFactoryClass := bdeFactorySetup at: 1. bdeFactoryCopy := bdeFactorySetup at: 2. bdeFactoryTemplates := bdeFactorySetup at: 3.`;
const locals = '| bdeFactorySetup bdeFactoryClass bdeFactoryCopy bdeFactoryTemplates |';
if (process.env.ASCET_FACTORY_ONCE !== '1') reader = `[ ${locals} ${setup}\n${reader}\n] value`;
let snapshot = await readFile(join(ROOT, 'native-snapshot.st'), 'utf8');
if (process.env.ASCET_FACTORY_ONCE === '1') snapshot = `[ ${locals} ${setup}\n${snapshot}\n] value`;
snapshot = snapshot.replace('totalBdeCopyMs := totalBdeCopyMs +', `row value: (OrderedCollection new add: '#FACTORY'; add: path; add: spec specificationName; add: (diagramPhases at: 4) printString; add: ''; add: ''; add: ''; add: ''; add: ''; add: ''; yourself).
 totalBdeCopyMs := totalBdeCopyMs +`);
const source = join(directory, 'reader.st'), binary = join(directory, 'probe.exe');
await writeFile(source, reader);
await writeFile(join(directory, 'snapshot.st'), snapshot);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
  '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
  '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
  '/resource:' + join(directory, 'snapshot.st') + ',snapshot.st', '/resource:' + source + ',bde-reader.st',
  ...['state-source-reader.st,state-reader.st', 'graph-source-reader.st,graph-reader.st', 'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st'].map(file => '/resource:' + join(ROOT, file)), join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const bridge = new Bridge(15, { command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) } });
const report: Record<string, unknown> = { status: 'running', directory };
function unpack(raw: { payload: string }) {
  const fields = raw.payload.split('|'), rows: string[][] = [], stats: string[][] = [];
  for (let i = 0; i < fields.length - 1; i += 10) {
    const row = fields.slice(i, i + 10); (row[0] === '#FACTORY' ? stats : rows).push(row);
  }
  report.factory_stats = stats;
  return decodeResponse({ payload: rows.flat().join('|') + '|' });
}
try {
  const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
  assert.equal(raw.ascet_pid, identity.pid);
  const data = unpack(raw);
  await writeFile(join(directory, 'candidate.json'), JSON.stringify({ raw, data }));
  assert.deepEqual(data.errors, []);
  const control = JSON.parse(await readFile(join(ROOT, 'experiments/primitive-loader/2026-10-02T15-12-25-111Z/control.json'), 'utf8')).data;
  assert.equal(fingerprint(control), fingerprint(data)); assert.deepEqual(control.diagrams, data.diagrams);
  const timings = [];
  for (let i = 0; i < 10; i++) {
    const found = await bridge.request({ mode: 'search_insensitive', needle: 'set', include_diagrams: true });
    const decoded = unpack(found); assert.deepEqual(decoded.errors, []);
    timings.push({ native: found.timings, coverage: decoded.coverage, factory_stats: report.factory_stats });
  }
  report.timings = timings; report.status = 'passed';
} catch (error) { report.status = 'failed'; report.error = String(error).slice(0, 4000); process.exitCode = 1; }
finally { await bridge.close(); await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2)); console.log(JSON.stringify(report, null, 2)); }
