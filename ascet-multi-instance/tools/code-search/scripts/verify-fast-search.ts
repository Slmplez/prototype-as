/** Serial native phase profiling and end-to-end Agent latency; run under verify-paging.ps1. */
import assert from 'node:assert/strict';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, ROOT } from '../src/bridge.js';
import { AgentSession } from '../src/agent-session.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const directory = join(ROOT, 'experiments/fast-search', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const bridge = new Bridge(90), observed: Record<string, unknown>[] = [];
const compare = process.env.ASCET_BENCHMARK_AB === '1'; let control = false;
const session = new AgentSession({ request: async request => {
  const start = performance.now(), raw = await bridge.request({ ...request, ...(control ? { disable_diagram_prefilter: true } : {}) }), decoded = decodeResponse(raw);
  observed.push({ request, elapsed_ms: performance.now() - start, timings: raw.timings, coverage: decoded.coverage }); return raw;
} });
const report: Record<string, unknown> = { status: 'running', directory };
try {
  const beforeRaw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true }), before = decodeResponse(beforeRaw);
  assert.deepEqual(before.errors, []); report.database = beforeRaw.database; report.ascet_pid = beforeRaw.ascet_pid;
  const scoped = before.components.find(c => c.path.split(/[/\\]/).at(-1) === 'AEB_State_Machine'); assert.ok(scoped);
  report.scoped_component = scoped;
  const cases: { name: string; query: string | string[]; mode?: string; in?: { component: string } }[] = [
    { name: 'identifier', query: 'AEBLockTime', mode: 'identifier' },
    { name: 'literal', query: 'return' },
    { name: 'absent', query: '__ASCET_ABSENT_FAST_9d103__' },
    { name: 'batch', query: ['AEBLockTime', 'AEB_FxTarPT', 'C_AEB_AXCDeadZonePos'], mode: 'identifier' },
    { name: 'regex', query: '\\bAEBLockTime\\b', mode: 'regex' },
    { name: 'broad', query: 'set' },
    { name: 'scoped_identifier', query: 'AEBLockTime', mode: 'identifier', in: { component: scoped.oid } },
  ];
  const samples: Record<string, unknown>[] = [];
  for (let round = 0; round < 7; round++) for (const item of round % 2 ? [...cases].reverse() : cases) for (const phase of compare ? (round % 2 ? ['full', 'optimized'] : ['optimized', 'full']) : ['optimized']) {
    control = phase === 'full';
    const { name, ...request } = item, start = performance.now();
    const result = await session.execute({ ...request, group_by: 'object', limit: 20, context: 0 }); assert.equal(result.status, 'ok');
    const bytes = Buffer.byteLength(JSON.stringify(result));
    samples.push({ name: compare ? phase + '_' + name : name, round, elapsed_ms: performance.now() - start, bytes, total_hits: 'total_hits' in result ? result.total_hits : 0,
      native: observed.at(-1) });
  }
  const names = cases.flatMap(({ name }) => compare ? ['full_' + name, 'optimized_' + name] : [name]);
  if (compare) for (const { name } of cases) assert.equal(new Set(samples.filter(s => s.name === 'full_' + name || s.name === 'optimized_' + name).map(s => s.total_hits)).size, 1, name);
  const metrics = Object.fromEntries(names.map(name => {
    const selected = samples.filter(s => s.name === name).sort((a,b)=>(a.elapsed_ms as number)-(b.elapsed_ms as number));
    const values = selected.map(s => s.elapsed_ms as number);
    return [name, { median_ms: values[3], p95_ms: values[6], samples: values.length, native: selected[3].native }];
  }));
  const after = decodeResponse(await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true }));
  assert.equal(fingerprint(after), fingerprint(before));
  Object.assign(report, { status: 'passed', metrics, samples, source_fingerprint_stable: true, boundary: 'Warm serial whole-database queries; no model writes/restart. Client-visible processing and serialization size measured; no Agent inference.' });
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { session.close(); await bridge.close(); await writeFile(join(directory, 'report.json'), JSON.stringify(report,null,2)+'\n'); console.log(JSON.stringify({...report,samples:undefined,metrics:report.metrics ? Object.fromEntries(Object.entries(report.metrics as any).map(([name,m])=>[name,{...(m as any),native:undefined}])) : undefined},null,2)); }
