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
const directory = join(ROOT, 'experiments/literal-storage', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const literal = await readFile(join(ROOT, 'experiments/literal-source-reader.st'), 'utf8');
let reader = await readFile(join(ROOT, '../../dist/ascet-code-search-cli-0.2.0-20261002T185921630Z/bde-source-reader.st'), 'utf8');
const marker = '    bdeCopySource := [:source |';
assert.ok(reader.includes(marker));
reader = reader.replace('bdeNativePins bdeMethodNames |', 'bdeNativePins bdeMethodNames bdeLiteralRows |');
reader = reader.replace(marker, `    bdeStarted := Time millisecondClockValue.
    bdeLiteralRows := (${literal}) valueWithArguments: (Array with: bdeSavedSource with: bdeComponent with: bdeSpec with: bdeHex).
    bdeLiteralRows ifNotNil: [bdeLiteralRows do: [:record | bdeEmit value: record].
        Array with: 0 with: 0 with: (Time millisecondClockValue - bdeStarted)] ifNil: [
${marker}`);
reader = reader.replace('Array with: bdeCopyMs with: bdeLoadMs with: (Time millisecondClockValue - bdeStarted)',
 'Array with: bdeCopyMs with: bdeLoadMs with: (Time millisecondClockValue - bdeStarted)\n    ]');
const source = join(directory, 'candidate-reader.st'), binary = join(directory, 'candidate.exe');
await writeFile(source, reader);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
 '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
 '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
 '/resource:' + source + ',bde-reader.st',
 ...['native-snapshot.st,snapshot.st', 'state-source-reader.st,state-reader.st', 'graph-source-reader.st,graph-reader.st',
 'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st', 'bde-load-factory.st,bde-load-factory.st',
 'native-transport.st,native-transport.st'].map(file => '/resource:' + join(ROOT, file)), join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) };
const report: Record<string, any> = { status: 'running', directory }, samples: unknown[] = [];
try {
 const control = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')).data;
 let bridge = new Bridge(90, { command: binary, env });
 try {
  const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
  assert.equal(raw.ascet_pid, identity.pid);
  const data = decodeResponse(raw);
  await writeFile(join(directory, 'snapshot.json'), JSON.stringify({ raw, data }));
  assert.deepEqual(data.errors, []); assert.equal(fingerprint(data), fingerprint(control)); assert.deepEqual(data.diagrams, control.diagrams);
  for (let round = 0; round < 5; round++) for (const needle of ['', 'set', 'get\net', '0.0']) {
   const request = { mode: 'search_many' as const, needle, include_diagrams: true, audit_diagrams: true };
   const response = await bridge.request(request); const decoded = decodeResponse(response);
   await bridge.close();
   assert.deepEqual(decoded.errors, []);
   const baseline = new Bridge(90, { env });
   try {
    const reference = decodeResponse(await baseline.request(request));
    assert.equal(fingerprint(decoded), fingerprint(reference)); assert.deepEqual(decoded.diagrams, reference.diagrams);
   } finally { await baseline.close(); }
   bridge = new Bridge(90, { command: binary, env });
   samples.push({ round, needle, timings: response.timings, coverage: decoded.coverage });
  }
 } finally { await bridge.close(); }
 report.status = 'passed'; report.source_fingerprint = fingerprint(control); report.full_graphs_equal = true;
} catch (error) { report.status = 'failed'; report.error = String(error).slice(0, 6000); process.exitCode = 1; }
finally { await writeFile(join(directory, 'report.json'), JSON.stringify({ ...report, samples }, null, 2)); console.log(JSON.stringify({ ...report, samples }, null, 2)); }
