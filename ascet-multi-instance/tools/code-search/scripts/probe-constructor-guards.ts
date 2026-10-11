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
assert.ok(Number.isInteger(instance.port) && instance.port !== 32503);
const directory = join(ROOT, 'experiments/constructor-guards', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const baseline = (await readFile(join(ROOT, 'bde-load-factory.st'), 'utf8')).replaceAll('\r\n', '\n');
let candidate = baseline.replace('createGraphic := [:templates | [:represented :element :model |',
  'createGraphic := [:templates | | ownerCache | ownerCache := IdentityDictionary new. [:represented :element :model |');
candidate = candidate.replace('| graphic positions isReturn template key |', '| graphic positions isReturn template key owners |');
const begin = candidate.indexOf('        (represented goClass == SGDataGO and: [');
const end = candidate.indexOf('            key := Array with:', begin);
assert.ok(begin >= 0 && end > begin);
candidate = candidate.slice(0, begin) + `        owners := ownerCache at: represented class ifAbsentPut: [
            Array with: ((represented class whichClassIncludesSelector: #internalSetMethod) == SGModelDataType and: [
                (represented class whichClassIncludesSelector: #internalGetMethod) == SGModelDataType and: [
                (represented class whichClassIncludesSelector: #methods) == SGModelDataType and: [
                (represented class whichClassIncludesSelector: #methodPositions) == SGModelDataType]]])
                with: ((represented class whichClassIncludesSelector: #graphicObject) == SGModelDataType)
        ].
        (represented goClass == SGDataGO and: [owners first and: [isReturn or: [owners last]]]) ifTrue: [
` + candidate.slice(end);
assert.ok(candidate.includes('ownerCache at:'));
const phases = ['baseline', 'candidate'].map(name => ({ name, binary: join(directory, name + '.exe') }));
for (const phase of phases) {
  const factory = join(directory, phase.name + '-factory.st');
  await writeFile(factory, phase.name === 'baseline' ? baseline : candidate);
  execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
    '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
    '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + phase.binary,
    '/resource:' + factory + ',bde-load-factory.st',
    ...['native-snapshot.st,snapshot.st', 'state-source-reader.st,state-reader.st', 'graph-source-reader.st,graph-reader.st',
      'bde-source-reader.st,bde-reader.st', 'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st',
      'native-transport.st,native-transport.st'].map(file => '/resource:' + join(ROOT, file)), join(ROOT, 'CodeSearchBridge.cs'),
  ], { windowsHide: true });
}
const samples: Record<string, any>[] = [];
const report: Record<string, any> = { status: 'running', directory, manifest, pid: identity.pid,
  boundary: 'Alternating native reads with constructor owner checks shared only inside a read request. Instance guards, native model updates and mutable copies are unchanged.' };
const controls = new Map<string, ReturnType<typeof decodeResponse>>();
try {
  for (let round = 0; round < 6; round++) {
    for (const phase of round % 2 ? [...phases].reverse() : phases) {
      const bridge = new Bridge(90, { command: phase.binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) } });
      try {
        const snapshot = decodeResponse(await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true }));
        const expected = controls.get('snapshot') ?? snapshot; controls.set('snapshot', expected);
        assert.deepEqual(snapshot.errors, []); assert.equal(fingerprint(snapshot), fingerprint(expected));
        assert.deepEqual(snapshot.diagrams, expected.diagrams);
        for (const needle of ['set', 'get\net', 'set', 'get\net', 'set']) {
          const raw = await bridge.request({ mode: 'search_many', needle, include_diagrams: true });
          assert.equal(raw.ascet_pid, identity.pid);
          const data = decodeResponse(raw), reference = controls.get(needle) ?? data; controls.set(needle, reference);
          assert.deepEqual(data.errors, []); assert.equal(fingerprint(data), fingerprint(reference));
          assert.deepEqual(data.diagrams, reference.diagrams);
          samples.push({ phase: phase.name, round, needle, timings: raw.timings, coverage: data.coverage });
        }
      } finally { await bridge.close(); }
    }
    console.log(JSON.stringify({ round: round + 1, rounds: 6 }));
  }
  Object.assign(report, { status: 'passed', snapshots_and_searches_equal: true,
    metrics: Object.fromEntries(['set', 'get\net'].map(needle => [needle, Object.fromEntries(phases.map(phase => {
      const times = samples.filter(s => s.phase === phase.name && s.needle === needle)
        .map(s => s.timings.native_read_transport_ms).sort((a, b) => a - b);
      return [phase.name, { count: times.length, median_ms: times[Math.floor(times.length / 2)], max_ms: times.at(-1) }];
    }))])) });
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { await writeFile(join(directory, 'report.json'), JSON.stringify({ ...report, samples }, null, 2) + '\n'); console.log(JSON.stringify(report, null, 2)); }
