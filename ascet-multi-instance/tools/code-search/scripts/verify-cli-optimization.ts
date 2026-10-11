import assert from 'node:assert/strict';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse, sha256 } from '../src/protocol.js';
import { fingerprint } from './oracle.js';
import type { AgentSearchRequest, AgentSearchResponse } from '../src/agent-types.js';

const manifest = resolve(process.env.ASCET_AGENT_LATENCY_MANIFEST ?? join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json'));
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.ok(Number.isInteger(instance.port) && instance.port !== 32503, 'An isolated, already opened database is required');
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' };
const beforeRoot = resolve(process.env.ASCET_CLI_BASELINE ?? join(ROOT, 'experiments/cli-baseline-20261002T1243'));
const afterRoot = resolve(process.env.ASCET_CLI_CANDIDATE ?? ROOT);
const phases = [{ name: 'before', root: beforeRoot }, { name: 'after', root: afterRoot }];
const directory = resolve(process.env.ASCET_CLI_OPTIMIZATION_REPORT_DIRECTORY ?? join(ROOT, 'experiments/cli-optimization', new Date().toISOString().replace(/[:.]/g, '-')));
await mkdir(directory, { recursive: true });
const report: Record<string, unknown> = { status: 'running', directory, manifest, before_root: beforeRoot, after_root: afterRoot,
  boundary: 'Frozen pre-optimization CLI versus current CLI, serial alternating phase order, default context=10, group_by=object, limit=20. Times include JSONL request through complete response parsing; startup/warmup and debug profiling excluded. No LLM reasoning or source index.' };
const samples: Record<string, unknown>[] = [], profiles: Record<string, unknown>[] = [], examples: Record<string, unknown>[] = [];
const signatures = new Map<string, string>();

function stable(value: unknown): unknown {
  if (Array.isArray(value)) return value.map(stable);
  if (value !== null && typeof value === 'object') return Object.fromEntries(Object.entries(value)
    .filter(([key]) => !['ref', 'diagram_ref', 'next_cursor', 'expires_utc', 'debug', 'component_type', 'referenced_component_path'].includes(key)).map(([key, entry]) => [key, stable(entry)]));
  return value;
}

async function snapshot(root: string) {
  const bridge = new Bridge(90, { command: join(root, 'CodeSearchBridge.exe'), env });
  try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    assert.equal(raw.ascet_pid, identity.pid);
    const data = decodeResponse(raw); assert.deepEqual(data.errors, []);
    return { raw, data };
  } finally { await bridge.close(); }
}

try {
  const old = await snapshot(beforeRoot), current = await snapshot(afterRoot);
  assert.equal(fingerprint(old.data), fingerprint(current.data), 'Full saved source must match the frozen reader');
  assert.deepEqual(old.data.diagrams, current.data.diagrams, 'Every Diagram structural field must match the frozen reader');
  const scoped = current.data.components.find(component => component.path.split(/[/\\]/).at(-1) === 'AEB_State_Machine');
  assert.ok(scoped);
  Object.assign(report, { database: current.raw.database, ascet_pid: current.raw.ascet_pid,
    full_snapshot_equivalent: true, diagram_count: current.data.diagrams?.length, source_fingerprint: fingerprint(current.data) });
  await writeFile(join(directory, 'before-snapshot.json'), JSON.stringify({ raw: old.raw, data: old.data }));
  const cases: { name: string; request: AgentSearchRequest }[] = [
    { name: 'identifier', request: { query: 'AEBLockTime', mode: 'identifier' } },
    { name: 'return', request: { query: 'return' } },
    { name: 'absent', request: { query: '__ASCET_ABSENT_FAST_9d103__' } },
    { name: 'batch', request: { query: ['AEBLockTime', 'AEB_FxTarPT', 'C_AEB_AXCDeadZonePos'], mode: 'identifier' } },
    { name: 'regex', request: { query: '\\bAEBLockTime\\b', mode: 'regex' } },
    { name: 'set', request: { query: 'set' } },
    { name: 'scoped', request: { query: 'AEBLockTime', mode: 'identifier', in: { component: scoped.oid } } },
  ];
  for (let round = 0; round < 7; round++) {
    for (const phase of round % 2 ? [...phases].reverse() : phases) {
      const client = new JsonLineClient({ command: process.execPath, args: [join(phase.root, 'dist/src/cli.js'), '--agent'], env, timeoutMs: 90_000 });
      try {
        const warmup = await client.request({ query: ['set', 'return', { text: '\\bAEBLockTime\\b', mode: 'regex' }], group_by: 'object', limit: 20 }) as AgentSearchResponse;
        assert.equal(warmup.status, 'ok', JSON.stringify(warmup));
        for (const item of round % 2 ? [...cases].reverse() : cases) {
          const request = { ...item.request, group_by: 'object', limit: 20 };
          const start = performance.now(), response = await client.request(request) as AgentSearchResponse, elapsed = performance.now() - start;
          assert.equal(response.status, 'ok', JSON.stringify(response));
          const bytes = Buffer.byteLength(JSON.stringify(response)); assert.ok(bytes <= 128 * 1024); assert.ok(response.returned_hits <= 20);
          const signature = sha256(JSON.stringify(stable(response)));
          assert.equal(signature, signatures.get(item.name) ?? signature, phase.name + '/' + item.name + ': page contents differ');
          signatures.set(item.name, signature);
          samples.push({ phase: phase.name, name: item.name, round, elapsed_ms: elapsed, bytes, total_hits: response.total_hits, returned_hits: response.returned_hits });
          if (round === 0) examples.push({ phase: phase.name, name: item.name, request, response });
        }
        if (round === 0 || round === 6) for (const query of ['set', 'return', 'AEBLockTime']) {
          const response = await client.request({ query, group_by: 'object', limit: 20, debug: true }) as AgentSearchResponse;
          assert.equal(response.status, 'ok'); profiles.push({ phase: phase.name, round, query, debug: response.debug });
        }
      } finally { await client.close(); }
    }
    console.log(JSON.stringify({ progress: round + 1, rounds: 7 }));
  }
  const final = await snapshot(afterRoot);
  assert.equal(fingerprint(current.data), fingerprint(final.data));
  assert.deepEqual(current.data.diagrams, final.data.diagrams);
  const metrics = Object.fromEntries(cases.map(({ name }) => [name, Object.fromEntries(phases.map(phase => {
    const selected = samples.filter(sample => sample.name === name && sample.phase === phase.name);
    const times = selected.map(sample => sample.elapsed_ms as number).sort((a, b) => a - b);
    return [phase.name, { median_ms: times[3], p95_ms: times[Math.ceil(times.length * .95) - 1], max_ms: times[6], over_500ms: times.filter(ms => ms >= 500).length, samples: times.length }];
  }))]));
  const measured = samples.filter(sample => sample.phase === 'after');
  const overGoal = measured.filter(sample => (sample.elapsed_ms as number) >= 500).length;
  Object.assign(report, { status: overGoal ? 'performance_failed' : 'passed', correctness_status: 'passed', query_count: samples.length, page_contents_equivalent: true,
    source_fingerprint_stable: true, metrics, profiles, samples,
    performance: { goal_ms: 500, measured_requests: measured.length,
      over_goal: overGoal, all_under_goal: overGoal === 0 } });
  if (overGoal) process.exitCode = 2;
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally {
  await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
  await writeFile(join(directory, 'examples.json'), JSON.stringify(examples, null, 2) + '\n');
  console.log(JSON.stringify({ ...report, profiles: undefined, samples: undefined }, null, 2));
}
