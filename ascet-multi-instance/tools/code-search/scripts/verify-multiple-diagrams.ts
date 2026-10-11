/** Serial live verification. Entry point must hold scripts/verify-paging.ps1's shared lock. */
import assert from 'node:assert/strict';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, ROOT } from '../src/bridge.js';
import { AgentSession } from '../src/agent-session.js';
import { decodeResponse } from '../src/protocol.js';
import type { AgentFindResponse, AgentCodeTarget, AgentBatchReadResponse, AgentSearchResponse } from '../src/agent-types.js';
import { verifyDetachedDiagrams } from './verify-detached-diagrams.js';

const directory = join(ROOT, 'experiments/multiple-diagrams', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const bridge = new Bridge(90), observations: unknown[] = [];
const report: Record<string, any> = { status: 'running', directory, started_utc: new Date().toISOString() };
const save = (name: string, value: unknown) => writeFile(join(directory, name + '.json'), JSON.stringify(value, null, 2) + '\n');
const agent = new AgentSession({ request: async request => {
  const start = performance.now(), raw = await bridge.request(request);
  observations.push({ request, elapsed_ms: performance.now() - start, decoded: decodeResponse(raw) }); return raw;
} });
try {
  const start = performance.now();
  const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
  const baseline = decodeResponse(raw); await save('baseline', { raw, decoded: baseline });
  assert.deepEqual(baseline.errors, []); assert.equal(baseline.diagram_scope_version, 1);
  report.database = raw.database; report.ascet_pid = raw.ascet_pid; report.initial_snapshot_ms = performance.now() - start;
  report.diagrams = baseline.diagrams!.length;
  report.visibility = Object.fromEntries(['public', 'private'].map(v => [v, baseline.diagrams!.filter(g => g.visibility === v).length]));
  const found = await agent.execute({ operation: 'find', target: 'diagrams', limit: 200, debug: true }) as AgentFindResponse;
  assert.equal(found.total_count, report.diagrams); assert.equal(found.has_more, false);
  const targets = found.results as AgentCodeTarget[];
  for (const visibility of ['public', 'private']) {
    const result = await agent.execute({ operation: 'find', target: 'diagrams', in: { visibility }, limit: 200 }) as AgentFindResponse;
    assert.equal(result.total_count, report.visibility[visibility]);
    assert.ok(result.results.every(r => 'visibility' in r && r.visibility === visibility));
  }
  const byComponent = new Map<string, AgentCodeTarget[]>();
  for (const target of targets) { const list = byComponent.get(target.component_path) ?? []; list.push(target); byComponent.set(target.component_path, list); }
  report.multiple_diagram_components = [...byComponent].filter(([, list]) => list.length > 1).map(([path, list]) => ({ path, diagrams: list }));
  report.selective_reads = [];
  for (const [path, list] of byComponent) {
    const before = observations.length;
    const result = await agent.execute({ operation: 'read', ref: list.map(t => t.ref), if_unchanged: true, debug: true }) as AgentBatchReadResponse;
    assert.equal(result.status, 'ok'); assert.equal(result.returned_count, list.length);
    const observed = observations.slice(before) as any[]; assert.equal(observed.length, 1);
    assert.equal(observed[0].decoded.coverage.native_diagrams_loaded, list.length);
    if (list.length > 1) {
      await agent.execute({ operation: 'read', ref: list[0].ref, if_unchanged: true });
      const one = observations.at(-1) as any; assert.equal(one.decoded.coverage.native_diagrams_loaded, 1);
      report.selective_reads.push({ component_path: path, available: list.length, loaded: 1, elapsed_ms: one.elapsed_ms });
      const named = await agent.execute({ operation: 'find', target: 'diagrams', diagram: list[0].diagram, match: 'exact', in: { component: list[0].ref }, debug: true }) as AgentFindResponse;
      assert.equal(named.total_count, list.filter(t => t.diagram === list[0].diagram).length);
      assert.equal((observations.at(-1) as any).decoded.coverage.native_diagrams_loaded, named.total_count);
    }
  }
  const chosen = [...byComponent.values()].slice(0, 2).map(list => list[0]);
  const scoped = await agent.execute({ query: '.', mode: 'regex', in: { diagram: chosen.map(t => t.ref) }, limit: 1, debug: true }) as AgentSearchResponse;
  assert.equal((observations.at(-1) as any).decoded.coverage.native_diagrams_loaded, chosen.length);
  assert.ok(scoped.searches.flatMap(q => q.results).every(r => chosen.some(t => t.component_path === r.component_path && t.diagram_oid === r.diagram_oid)));
  const multi = [...byComponent.values()].find(list => list.length > 1)!;
  const componentOID = baseline.diagrams!.find(g => g.source_oid === multi[0].diagram_oid)!.component_oid;
  const samples: { whole_ms: number; selected_ms: number }[] = [];
  for (let round = 0; round < 10; round++) {
    const times: Record<string, number> = {};
    for (const mode of round % 2 ? ['selected', 'whole'] : ['whole', 'selected']) {
      const begin = performance.now();
      const data = decodeResponse(await bridge.request({ mode: 'read_component', needle: componentOID, include_diagrams: true,
        ...(mode === 'selected' ? { read_diagram_ids: [componentOID + '/' + multi[0].diagram_oid], filters: { kinds: ['diagram'] } } : {}) }));
      assert.deepEqual(data.errors, []); assert.equal(data.coverage.native_diagrams_loaded, mode === 'selected' ? 1 : multi.length);
      times[mode] = performance.now() - begin;
    }
    samples.push({ whole_ms: times.whole, selected_ms: times.selected });
  }
  const median = (items: number[]) => { items.sort((a, b) => a - b); return (items[4] + items[5]) / 2; };
  report.benchmark = { component_path: multi[0].component_path, diagram: multi[0].diagram, rounds: 10,
    whole_median_ms: median(samples.map(s => s.whole_ms)), selected_median_ms: median(samples.map(s => s.selected_ms)), samples,
    boundary: 'Warm shared process; native bridge roundtrip plus decode, no Agent-model latency or cold-load guarantee.' };
  // The ASCET server accepts one Cebra connection: finish it before opening the detached harness.
  await bridge.close();
  report.detached = await verifyDetachedDiagrams(directory);
  const finalBridge = new Bridge(90);
  let after;
  try { after = decodeResponse(await finalBridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true })); }
  finally { await finalBridge.close(); }
  assert.deepEqual(after.errors, []);
  const revisions = (s: typeof after) => s.documents.map(d => [d.document_id, d.source_sha256]).sort();
  assert.deepEqual(revisions(after), revisions(baseline));
  report.source_revisions_stable = true; report.status = 'passed'; report.live_operations = observations.length;
  await save('agent-find-example', found); await save('after', after);
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { agent.close(); await bridge.close(); await save('observations', observations); await save('report', report); console.log(JSON.stringify(report, null, 2)); }
