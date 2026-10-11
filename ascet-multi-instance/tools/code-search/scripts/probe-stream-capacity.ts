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
const directory = join(ROOT, 'experiments/stream-capacity', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const native = await readFile(join(ROOT, 'native-snapshot.st'), 'utf8');
const phases = [65536, 1048576].map(capacity => ({ capacity, binary: join(directory, capacity + '.exe') }));
for (const phase of phases) {
  const source = join(directory, phase.capacity + '.st');
  await writeFile(source, native.replace('String new: 65536', 'String new: ' + phase.capacity));
  execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
    '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
    '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + phase.binary,
    '/resource:' + source + ',snapshot.st',
    ...['bde-source-reader.st,bde-reader.st', 'bde-load-factory.st,bde-load-factory.st', 'state-source-reader.st,state-reader.st',
      'graph-source-reader.st,graph-reader.st', 'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st'].map(s => '/resource:' + join(ROOT, s)), join(ROOT, 'CodeSearchBridge.cs'),
  ], { windowsHide: true });
}
const report: Record<string, unknown> = { status: 'running', directory }, samples: unknown[] = [];
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) };
let control: ReturnType<typeof decodeResponse> | undefined;
try {
  for (let round = 0; round < 6; round++) {
    for (const phase of round % 2 ? [...phases].reverse() : phases) {
      const bridge = new Bridge(30, { command: phase.binary, env });
      try {
        const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true });
        assert.equal(raw.ascet_pid, identity.pid);
        const data = decodeResponse(raw); assert.deepEqual(data.errors, []);
        control ??= data;
        assert.equal(fingerprint(data), fingerprint(control)); assert.deepEqual(data.diagrams, control.diagrams);
        for (let i = 0; i < 5; i++) {
          const found = await bridge.request({ mode: 'search_insensitive', needle: 'set', include_diagrams: true });
          const decoded = decodeResponse(found); assert.deepEqual(decoded.errors, []);
          samples.push({ round, capacity: phase.capacity, timings: found.timings, coverage: decoded.coverage });
        }
      } finally { await bridge.close(); }
    }
  }
  report.status = 'passed'; report.samples = samples;
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2)); console.log(JSON.stringify(report, null, 2)); }
