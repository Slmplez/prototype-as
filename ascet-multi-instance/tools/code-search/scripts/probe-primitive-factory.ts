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
const directory = join(ROOT, 'experiments/primitive-factory', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
let reader = await readFile(join(ROOT, 'experiments/primitive-loader/2026-10-02T15-12-25-111Z/reader.st'), 'utf8');
reader = reader.replace('candidateClass := SGDataGODB shallowCopy.', `candidateClass := SGDataGODB class basicNew.
 1 to: SGDataGODB class instSize do: [:i | candidateClass instVarAt: i put: (SGDataGODB instVarAt: i)].
 candidateClass == SGDataGODB ifTrue: [bdeDiagram error: 'CLASS_COPY_IDENTITY'].`);
const setupBegin = reader.indexOf('    candidateClass :=');
const setupEnd = reader.indexOf(' bdeCopySource :=', setupBegin);
assert.ok(setupBegin >= 0 && setupEnd > setupBegin);
const setup = reader.slice(setupBegin, setupEnd).replaceAll('bdeDiagram error:', 'SGDataGODB error:');
reader = '[ | candidateClass candidateMethod |\n' + setup + '\n' + reader.slice(0, setupBegin).replace(' candidateClass candidateMethod |', ' |')
  + reader.slice(setupEnd) + '\n] value';
const source = join(directory, 'reader.st'), binary = join(directory, 'probe.exe');
await writeFile(source, reader);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
  '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
  '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
  '/resource:' + join(ROOT, 'native-snapshot.st') + ',snapshot.st', '/resource:' + source + ',bde-reader.st',
  ...['state-source-reader.st,state-reader.st', 'graph-source-reader.st,graph-reader.st', 'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st'].map(file => '/resource:' + join(ROOT, file)), join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const bridge = new Bridge(12, { command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) } });
const report: Record<string, unknown> = { status: 'running', directory };
try {
  const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
  assert.equal(raw.ascet_pid, identity.pid);
  const data = decodeResponse(raw);
  await writeFile(join(directory, 'candidate.json'), JSON.stringify({ raw, data }));
  assert.deepEqual(data.errors, []);
  const control = JSON.parse(await readFile(join(ROOT, 'experiments/primitive-loader/2026-10-02T15-12-25-111Z/control.json'), 'utf8')).data;
  assert.equal(fingerprint(control), fingerprint(data)); assert.deepEqual(control.diagrams, data.diagrams);
  const timings = [];
  for (let i = 0; i < 10; i++) {
    const found = await bridge.request({ mode: 'search_insensitive', needle: 'set', include_diagrams: true });
    const decoded = decodeResponse(found); assert.deepEqual(decoded.errors, []);
    timings.push({ native: found.timings, coverage: decoded.coverage });
  }
  report.timings = timings;
  report.status = 'passed';
} catch (error) { report.status = 'failed'; report.error = String(error).slice(0, 6000); process.exitCode = 1; }
finally { await bridge.close(); await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2)); console.log(JSON.stringify(report, null, 2)); }
