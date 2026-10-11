/** Real Agent discovery/read tasks. Run through verify-paging.ps1's shared ASCET lock. */
import assert from 'node:assert/strict';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';
import { linesOf, matchesOf } from '../test/agent-output.js';
import type { AgentFindResponse, AgentCodeTarget, AgentSearchResponse, AgentReadResponse, AgentBatchReadResponse } from '../src/agent-types.js';

const started = new Date().toISOString();
const directory = join(ROOT, 'experiments/agent-polish', started.replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const records: { name: string; request: unknown; response: any; elapsed_ms: number; response_bytes: number }[] = [];
const report: Record<string, any> = { started_utc: started,
  timing_boundary: 'Persistent Agent JSONL request through complete JSON parsing. Serial live reads under the shared ASCET lock; startup separately measured. Database already loaded; no LLM reasoning or file writes included.',
  directory };
const json = (p: string) => readFile(p, 'utf8').then(JSON.parse);
const save = (p: string, v: unknown) => writeFile(p, JSON.stringify(v, null, 2) + '\n');
const bytes = (v: unknown) => Buffer.byteLength(JSON.stringify(v));
const identity = (d: AgentCodeTarget) => JSON.stringify([d.component_path, d.method, d.process, d.state, d.transition, d.kind, d.variant, d.implementation, d.diagram_oid, d.state_id, d.transition_id]);
async function snapshot() {
  const bridge = new Bridge();
  try {
    const raw = await bridge.request({ mode: 'snapshot' }), decoded = decodeResponse(raw);
    assert.deepEqual(decoded.errors, []);
    return { raw, decoded };
  } finally { await bridge.close(); }
}
const client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), '--agent'] });
async function request<T>(name: string, input: unknown): Promise<T> {
  const start = performance.now(), response: any = await client.request(input), elapsed_ms = performance.now() - start;
  const record = { name, request: input, response, elapsed_ms, response_bytes: bytes(response) };
  records.push(record);
  await save(join(directory, String(records.length).padStart(2, '0') + '-' + name + '.json'), record);
  assert.equal(response.status, 'ok', JSON.stringify(response));
  return response;
}
const find = (name: string, value: object) => request<AgentFindResponse>(name, { operation: 'find', ...value });
const search = (name: string, value: object) => request<AgentSearchResponse>(name, value);
const read = (name: string, value: object) => request<AgentReadResponse>(name, { operation: 'read', ...value });
const statePath = 'PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Private\\AEB_Core\\AEB_State_Machine';
try {
  const before = await snapshot();
  Object.assign(report, { database: before.raw.database, ascet_pid: before.raw.ascet_pid, source_fingerprint: fingerprint(before.decoded) });
  const startup = await find('startup-components', { target: 'components', component: 'AEB' });
  assert.ok(startup.total_count > 0);
  const body = await search('known-name-body-search', { query: 'calc_pre', in: { kind: 'method' } });
  assert.equal(body.total_hits, 0);
  const calcRequest = { component: 'AEB_AxCtrlConfigFF_Modify', member: 'calc_pre', match: 'exact' };
  const method = await find('find-known-method', calcRequest);
  assert.equal(method.total_count, 1);
  const calc = await read('read-known-method', { ref: method.results[0].ref, if_unchanged: true });
  assert.equal(calc.method, 'calc_pre'); assert.equal(calc.line_count, 21);
  assert.equal(calc.component_path.split('\\').at(-1), calcRequest.component);
  const variants = await find('find-similar-components', { target: 'components', component: 'AEB_Trigger_BA_From_IB' });
  assert.ok(variants.results.some(d => d.component_path.endsWith('\\AEB_Trigger_BA_From_IB')));
  assert.ok(variants.results.some(d => d.component_path.endsWith('\\AEB_Trigger_BA_From_IB_AIGEN')));
  assert.equal(new Set(variants.results.map(d => d.component_path)).size, variants.total_count);
  const components = await find('find-method-component', { target: 'components', component: 'AEB_AxCtrlConfigFF_Modify', match: 'exact' });
  assert.equal(components.total_count, 1);
  assert.equal(new Set(components.results.map(d => d.component_path)).size, components.total_count);
  const original = components.results.find(d => d.component_path === calc.component_path)!;
  assert.ok(original);
  const scoped = await find('members-by-component-ref', { in: { component: original.ref } });
  assert.ok(scoped.results.every(d => d.component_path === original.component_path));
  assert.ok(scoped.results.some(d => 'method' in d && d.method === 'calc_pre'));
  const missing = await find('unknown-component', { component: '__AGENT_NO_COMPONENT_928331__' });
  assert.equal(missing.total_count, 0);
  const stateComponent = await find('find-state-component', { target: 'components', component: statePath, match: 'exact' });
  assert.equal(stateComponent.total_count, 1);
  const stateRef = stateComponent.results[0].ref;
  const directoryRequest = { in: { component: stateRef }, limit: 7 };
  let page = await find('state-member-directory', directoryRequest);
  assert.equal(page.total_count, 25);
  const stateMembers: AgentCodeTarget[] = [];
  while (true) {
    assert.equal(page.target, 'members'); assert.ok(page.returned_count <= 7);
    for (const d of page.results) {
      assert.ok('kind' in d); assert.equal('snippets' in d, false); assert.equal('code' in d, false);
      stateMembers.push(d as AgentCodeTarget);
    }
    if (!page.has_more) break;
    page = await request<AgentFindResponse>('state-directory-next', { cursor: page.next_cursor });
  }
  assert.equal(stateMembers.length, 25); assert.equal(new Set(stateMembers.map(identity)).size, 25);
  const batchRequest = { operation: 'read', ref: stateMembers.map(d => d.ref), if_unchanged: true };
  const batch = await request<AgentBatchReadResponse>('state-batch-read', batchRequest);
  assert.equal(batch.returned_count, 25); assert.ok(batch.results.every(d => !('status' in d) && !('error' in d)));
  const init = stateMembers.find(d => d.kind === 'diagram' && d.diagram === 'Init')!;
  assert.ok(init);
  const initRead = await read('init-logic', { ref: init.ref, if_unchanged: true });
  assert.match(initRead.diagram_text!, /AEBLockTime/); assert.doesNotMatch(initRead.diagram_text!, /AEBLockTime = 0.0;/); assert.equal(initRead.line_count, 6); assert.equal(initRead.graph, undefined);
  const detailed = await read('init-graph-evidence', { ref: init.ref, include_graph: true, if_unchanged: true });
  assert.equal(detailed.diagram_text, initRead.diagram_text); assert.equal(detailed.graph!.scope, 'diagram');
  assert.equal(detailed.graph!.connections.length, 1); assert.equal('complete' in detailed.graph!, false);
  const initSearch = await search('init-search', { query: 'AEBLockTime', mode: 'identifier', in: { component: stateRef, member: 'init', kind: 'diagram' } });
  assert.equal(initSearch.total_hits, 1);
  assert.equal(matchesOf(initSearch.searches[0].results[0]).length, 1); assert.match(matchesOf(initSearch.searches[0].results[0])[0].text, /AEBLockTime/);
  const metadata = await search('graph-metadata-noise', { query: 'element_name', in: { component: stateRef, kind: 'diagram' } });
  assert.equal(metadata.total_hits, 0);

  // Read the same supported state code as the earlier real Agent task. Validate
  // saved content before attributing smaller output to this presentation change.
  const baselineDir = join(ROOT, 'experiments/agent-field-analysis-20261002');
  const baselineState = await json(join(baselineDir, '07-read-state-machine.json'));
  const oldState = new Map<string, any>(baselineState.response.results.map((d: any) => [identity(d), d]));
  for (const current of batch.results) {
    assert.ok(!('error' in current));
    assert.ok(!('deferred' in current), 'This small saved-code batch must fit without deferring State content');
    const old = current.kind === 'diagram' ? baselineState.response.results.find((d: any) => d.kind === 'graphical_method' && d.method === 'init') : oldState.get(identity(current)); assert.ok(old);
    if (current.kind !== 'diagram') {
      assert.equal(current.code, old.code); assert.deepEqual(current.method_binding, old.method_binding);
    } else {
      const rawGraphDoc = before.decoded.documents.find(d => d.component_path === current.component_path && d.kind === 'graphical_method' && d.member_name === 'init')!;
      assert.equal(old.diagram_text, rawGraphDoc.text);
    }
  }
  const comparisons: any[] = [{ name: 'state-batch-read', before_bytes: bytes(baselineState.response), after_bytes: bytes(batch), saved_content_verified: true }];
  for (const filename of ['04-trace-trigger-and-force-uses.json', '08-lock-time-and-entry-conditions.json']) {
    const old = await json(join(baselineDir, filename));
    const migrated = JSON.parse(JSON.stringify(old.request).replaceAll('graphical_method', 'diagram'));
    const fresh = await search('replay-' + old.label, migrated);
    assert.ok(fresh.returned_hits <= old.request.limit);
    const sourceMap = new Map<string, any>(batch.results.map(d => [identity(d as AgentCodeTarget), d]));
    for (const q of fresh.searches) for (const d of q.results) {
      const lines = linesOf(d);
      assert.equal(new Set(lines.map(l => l.line)).size, lines.length, 'No physical line duplicated within a result');
      assert.equal('matches' in d, false); assert.equal('context' in d, false);
      const source = sourceMap.get(identity(d));
      if (source?.code) for (const l of lines) assert.equal(l.text, source.code.replace(/\r\n?/g, '\n').split('\n')[l.line - 1]);
    }
    comparisons.push({ name: old.label, request: old.request, before_bytes: bytes(old.response), after_bytes: bytes(fresh), before_hits: old.response.total_hits, after_hits: fresh.total_hits,
      before_returned_hits: old.response.returned_hits, after_returned_hits: fresh.returned_hits, before_has_more: old.response.has_more, after_has_more: fresh.has_more });
  }
  report.comparisons = comparisons.map(c => ({ ...c, reduction_percent: (1 - c.after_bytes / c.before_bytes) * 100 }));
  report.init = { before_lines: baselineState.response.results.find((d: any) => d.kind === 'graphical_method' && d.method === 'init').line_count, after_lines: initRead.line_count,
    before_text_bytes: Buffer.byteLength(baselineState.response.results.find((d: any) => d.kind === 'graphical_method' && d.method === 'init').diagram_text), after_text_bytes: Buffer.byteLength(initRead.diagram_text!) };

  // Repeat only the new discovery paths to establish their warm end-to-end cost.
  for (let i = 0; i < 5; i++) {
    const freshMethod = await find('warm-find-known-method', calcRequest);
    const freshComponents = await find('warm-find-components', { target: 'components', component: 'AEB', limit: 200 });
    const freshState = freshComponents.results.find(d => d.component_path === statePath)!;
    assert.ok(freshState);
    await find('warm-member-directory', { in: { component: freshState.ref } });
    await read('warm-read-known-method', { ref: freshMethod.results[0].ref, if_unchanged: true });
  }
  await client.close();
  const after = await snapshot();
  assert.equal(after.raw.ascet_pid, before.raw.ascet_pid); assert.equal(after.raw.database, before.raw.database);
  assert.equal(fingerprint(after.decoded), fingerprint(before.decoded));
  report.model_stable = true;
  report.jsonl_requests = records.length;
  report.timings = Object.fromEntries([...new Set(records.map(r => r.name))].filter(n => n.startsWith('warm-') || n.startsWith('startup-')).map(name => {
    const samples = records.filter(r => r.name === name).map(r => r.elapsed_ms).sort((a, b) => a - b);
    return [name, { count: samples.length, min_ms: samples[0], median_ms: samples[Math.floor(samples.length / 2)], max_ms: samples.at(-1) }];
  }));
  report.status = 'passed';
  await save(join(directory, 'report.json'), report);
  await save(join(ROOT, 'experiments/agent-polish/latest.json'), report);
  const examples = records.filter(r => !r.name.startsWith('warm-') && !r.name.startsWith('startup-')).map(r => ({ scenario: r.name,
    tool: (r.request as any).operation === 'find' || r.name === 'state-directory-next' ? 'ascet_code_find' : (r.request as any).operation === 'read' ? 'ascet_code_read' : 'ascet_code_search',
    request: r.request, response: r.response }));
  await save(join(directory, 'examples.json'), { recorded_at_utc: started, session_note: 'Complete live request/response records; refs/cursors belonged to this now-closed session.', examples });
  await save(join(directory, 'state-machine-example.json'), { recorded_at_utc: started, database: before.raw.database,
    component_path: statePath, note: 'Member discovery followed by a 25-item live batch read. Only supported saved code/bindings; not a complete declaration or topology catalog. Session is closed; create fresh refs before calling.',
    request: batchRequest, response: batch });
  console.log(JSON.stringify(report, null, 2));
} catch (error) {
  report.status = 'failed'; report.error = String(error); await save(join(directory, 'report.json'), report); throw error;
} finally { await client.close(); }
