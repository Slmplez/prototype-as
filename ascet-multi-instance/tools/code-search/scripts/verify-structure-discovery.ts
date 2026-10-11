import assert from 'node:assert/strict';
import { performance } from 'node:perf_hooks';
import { readFile, writeFile, appendFile } from 'node:fs/promises';
import { join, resolve } from 'node:path';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';
import type { NativeResponse } from '../src/types.js';

const directory = resolve(process.argv[2] ?? join(ROOT, 'experiments/structure-discovery/2026-10-03'));
const setup = JSON.parse(await readFile(join(directory, 'setup.json'), 'utf8'));
assert.equal(setup.status, 'ready'); assert.equal(setup.identity.port, 32631);
const expected = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')).data;
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: '32631', ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' };
const openClient = () => new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), '--agent'], env, timeoutMs: 90_000 });
let client = openClient();
const report: any = { status: 'running', started_utc: new Date().toISOString(), checks: [], timings: [] };
let calls = 0;
async function call(name: string, request: unknown): Promise<any> {
  const start = performance.now(), response: any = await client.request(request), ms = performance.now() - start;
  calls++; report.timings.push({ name, ms, bytes: Buffer.byteLength(JSON.stringify(response)) });
  await appendFile(join(directory, 'requests.jsonl'), JSON.stringify({ name, request, response, ms }) + '\n');
  assert.equal(response.status, 'ok', JSON.stringify(response)); assert.ok(Buffer.byteLength(JSON.stringify(response)) <= 128 * 1024);
  return response;
}
async function all(name: string, request: unknown): Promise<any[]> {
  const results: any[] = []; let p = await call(name, request);
  do { results.push(...p.results); if (!p.has_more) break; p = await call(name + ':page', { cursor: p.next_cursor }); } while (true);
  return results;
}
async function audit() {
  const b = new Bridge(90, { env });
  try {
    const raw = await b.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    assert.equal(raw.ascet_pid, setup.identity.pid); const current = decodeResponse(raw);
    assert.deepEqual(current.errors, []); assert.equal(fingerprint(current), fingerprint(expected)); assert.deepEqual(current.diagrams, expected.diagrams);
  } finally { await b.close(); }
}
try {
  // First CLI request is measured before any broad source/graph audit in this run.
  const first = await call('first_structural_find', { operation: 'find', target: 'transitions', component: 'AEB_State_Machine', match: 'exact', limit: 20 });
  assert.equal(first.total_count, 8);
  await client.close(); await audit(); client = openClient();
  const states = await all('all_states', { operation: 'find', target: 'states', limit: 3 });
  const transitions = await all('all_transitions', { operation: 'find', target: 'transitions', limit: 2 });
  const nativeBridge = new Bridge(90, { env });
  let raw: NativeResponse;
  await client.close();
  try { raw = await nativeBridge.request({ mode: 'snapshot', include_state_topology: true, filters: { kinds: ['state_entry'] } }); }
  finally { await nativeBridge.close(); }
  const snapshot = decodeResponse(raw!);
  assert.deepEqual(snapshot.errors, []);
  assert.equal(states.length, snapshot.state_objects!.filter(o => o.kind === 'state').length);
  assert.equal(transitions.length, snapshot.state_objects!.filter(o => o.kind === 'transition').length);
  report.saved_state_objects = states.length; report.saved_transitions = transitions.length;
  client = openClient();
  // Reacquire session refs after closing the connection for the independent native snapshot.
  const allTargets = [...await all('readable_states', { operation: 'find', target: 'states', limit: 200 }),
    ...await all('readable_transitions', { operation: 'find', target: 'transitions', limit: 200 })];
  const codeSlots: any[] = [], readResults: any[] = [];
  for (let offset = 0; offset < allTargets.length; offset += 20) {
    const targets = allTargets.slice(offset, offset + 20);
    const read = await call('state_relation_batch', { operation: 'read', ref: targets.map(r => r.ref), if_unchanged: true });
    for (const r of read.results) {
      assert.equal(r.has_more, false); codeSlots.push(...r.code_slots); readResults.push(r);
      const native = snapshot.state_objects!.find(o => o.component_oid === snapshot.components.find(c => c.path === r.component_path)!.oid &&
        o.diagram_source_oid === r.diagram_oid && o.identity.endsWith('/' + (r.kind === 'state' ? 's' + r.state_id : 't' + r.transition_id)) &&
        o.name === (r.state ?? r.transition))!;
      assert.ok(native);
      if (r.kind === 'transition') {
        assert.equal(r.priority, native.priority); assert.equal(r.start_state?.state ?? null, snapshot.state_objects!.find(o => o.component_oid === native.component_oid && o.identity === native.start)?.name ?? null);
        assert.equal(r.end_state?.state ?? null, snapshot.state_objects!.find(o => o.component_oid === native.component_oid && o.identity === native.end)?.name ?? null);
      } else {
        assert.equal(r.incoming.length, snapshot.state_objects!.filter(o => o.component_oid === native.component_oid && o.end === native.identity).length);
        assert.equal(r.outgoing.length, snapshot.state_objects!.filter(o => o.component_oid === native.component_oid && o.start === native.identity).length);
      }
    }
  }
  // Independent known stored model evidence: junction 3 -> Off; Off -> IB and BA.
  const core = readResults.filter(r => r.component_path.endsWith('\\AEB_State_Machine'));
  const t20 = core.find(r => r.transition_id === 20); assert.equal(t20.start_state.state_id, 3); assert.equal(t20.start_state.state_kind, 'junction');
  assert.equal(t20.end_state.state, 'Main/AEB_State_Off'); assert.equal(t20.priority, 1);
  const off = core.find(r => r.state_id === 0); assert.ok(off.outgoing.some((t: any) => t.transition_id === 26)); assert.ok(off.outgoing.some((t: any) => t.transition_id === 27));
  for (let offset = 0; offset < codeSlots.length; offset += 20) {
    const read = await call('code_slots_batch', { operation: 'read', ref: codeSlots.slice(offset, offset + 20).map(r => r.ref), if_unchanged: true });
    for (const r of read.results) if (r.code !== undefined) {
      const original = expected.documents.find((d: any) => d.component_path === r.component_path && d.kind === r.kind && d.member_name === (r.state ?? r.transition) && d.location?.diagram_source_oid === r.diagram_oid);
      assert.ok(original); assert.equal(r.code, original.text);
    }
  }
  report.code_slots_read = codeSlots.length;
  const objects = await all('all_bde_objects', { operation: 'find', target: 'objects', limit: 200 });
  const expectedNodes = expected.diagrams.flatMap((g: any) => g.nodes.map((n: any) => [expected.components.find((c: any) => c.oid === g.component_oid).path, g.source_oid, n.scope, n.id, n.kind, n.name]));
  assert.deepEqual(objects.map(o => [o.component_path, o.diagram_oid, o.hierarchy ?? 'root', o.node_id, o.kind, o.name]), expectedNodes);
  report.bde_objects = objects.length; report.object_kinds = [...new Set(objects.map(o => o.kind))];
  for (const kind of report.object_kinds) {
    const sample = objects.find(o => o.kind === kind);
    const found = await call('scoped_object_kind:' + kind, { operation: 'find', target: 'objects',
      in: { component: sample.ref, object_kind: kind }, limit: 20 });
    assert.ok(found.results.length); assert.ok(found.results.every((o: any) => o.kind === kind && o.component_path === sample.component_path));
    const read = await call('local_object_read:' + kind, { operation: 'read', ref: found.results[0].ref, depth: 0 });
    assert.equal(read.object.kind, kind); assert.equal(read.scope, 'local');
  }
  // Scoped hot latency includes JSONL serialization and client parsing.
  for (let i = 0; i < 30; i++) {
    await call('hot_transition_find', { operation: 'find', target: 'transitions', component: 'AEB_State_Machine', match: 'exact', limit: 20 });
    await call('hot_object_find', { operation: 'find', target: 'objects', component: 'AEB_State_Machine', match: 'exact', in: { object_kind: 'element' }, limit: 20 });
  }
  await client.close(); await audit();
  report.checks = ['all_saved_state_objects', 'all_transition_endpoints_priorities', 'junction_and_direct_relations', 'all_code_slots', 'all_bde_node_identities', 'every_present_bde_kind_local_read', 'immutable_source_and_graph_audit'];
  report.status = 'recorded'; report.validation = 'passed';
} catch (error) { report.status = 'failed'; report.error = error instanceof Error ? error.stack : String(error); process.exitCode = 1; }
finally {
  await client.close(); report.calls = calls; report.completed_utc = new Date().toISOString();
  for (const name of ['hot_transition_find', 'hot_object_find']) {
    const times = report.timings.filter((t: any) => t.name === name).map((t: any) => t.ms).sort((a: number, b: number) => a - b);
    if (times.length) report[name] = { n: times.length, median_ms: times[Math.floor(times.length / 2)], p95_ms: times[Math.ceil(times.length * .95) - 1], max_ms: times.at(-1) };
  }
  await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
  console.log(JSON.stringify({ ...report, timings: undefined }, null, 2));
}
