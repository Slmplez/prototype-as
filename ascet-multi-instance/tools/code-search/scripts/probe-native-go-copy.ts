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
const directory = join(ROOT, 'experiments/native-go-copy', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
let factory = await readFile(join(ROOT, 'bde-load-factory.st'), 'utf8');
factory = factory.replace('createGraphic := [:represented :element :model |', 'createGraphic := [:templates | [:represented :element :model |');
factory = factory.replace('| graphic positions |', '| graphic positions template key |\n key := Array with: represented with: (element isMethodParameter and: [element isReturn]).\n template := templates at: key ifAbsentPut: [');
factory = factory.replace('] ifFalse: [nil]\n    ].', '] ifFalse: [nil]].\n template isNil ifTrue: [nil] ifFalse: [template copyForChangeDisplayBasic]\n    ]].');
assert.ok(factory.includes('template copyForChangeDisplayBasic'));
let reader = await readFile(join(ROOT, 'bde-source-reader.st'), 'utf8');
reader = reader.replace('| bdeElementMetadata bdeReferencePaths |', '| bdeElementMetadata bdeReferencePaths bdeCopyFactory |\n bdeCopyFactory := (bdeLoadFactory at: 2) value: Dictionary new.');
reader = reader.replace('put: (bdeLoadFactory at: 2)', 'put: bdeCopyFactory');
const binary = join(directory, 'probe.exe');
await writeFile(join(directory, 'factory.st'), factory);
await writeFile(join(directory, 'reader.st'), reader);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
  '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
  '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
  '/resource:' + join(directory, 'reader.st') + ',bde-reader.st', '/resource:' + join(directory, 'factory.st') + ',bde-load-factory.st',
  ...['native-snapshot.st,snapshot.st', 'state-source-reader.st,state-reader.st', 'graph-source-reader.st,graph-reader.st',
    'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st'].map(s => '/resource:' + join(ROOT, s)), join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) };
const report: Record<string, unknown> = { status: 'running', directory, boundary: 'Fresh template dictionary per request; native GO copies, no retained model/source index.' };
const bridge = new Bridge(30, { command: binary, env });
try {
  const control = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T16-42-30-875Z/before-snapshot.json'), 'utf8')).data;
  const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
  assert.equal(raw.ascet_pid, identity.pid);
  const data = decodeResponse(raw); assert.deepEqual(data.errors, []);
  await writeFile(join(directory, 'candidate.json'), JSON.stringify({ raw, data }));
  assert.equal(fingerprint(data), fingerprint(control)); assert.deepEqual(data.diagrams, control.diagrams);
  const samples = [];
  for (let round = 0; round < 20; round++) {
    const sample = await bridge.request({ mode: 'search_insensitive', needle: 'set', include_diagrams: true });
    const decoded = decodeResponse(sample); assert.deepEqual(decoded.errors, []);
    samples.push({ timings: sample.timings, coverage: decoded.coverage });
  }
  Object.assign(report, { status: 'passed', samples });
} catch (error) { report.status = 'failed'; report.error = String(error).slice(0, 5000); process.exitCode = 1; }
finally { await bridge.close(); await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2)); console.log(JSON.stringify(report, null, 2)); }
