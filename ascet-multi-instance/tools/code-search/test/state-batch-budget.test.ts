import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentSession } from '../src/agent-session.js';
import { AgentEvidence } from '../src/agent-evidence.js';
import { renderAgentResult } from '../src/agent-result-view.js';
import { validateToolOutput } from '../src/tool-contracts.js';
import { encode } from './fixtures.js';
import type { NativeRequest } from '../src/types.js';

process.env.ASCET_PI_TOOL_PROFILE = 'task';
const owner = '00000000000000000000000000001', diagram = '00000000000000000000000000002';
const component = 'Library\\LongLibraryFolder\\Saved_State_Machine_With_Transitions';
const pad = (r: string[]) => [...r, ...Array(10 - r.length).fill('')];
function fixture(request: NativeRequest, slots: number, endpointPadding = '') {
  const rows = [pad(['#COMPONENT', owner, component, '', '', '', '', 'SGSmClass']),
    pad(['#DIAGRAM_SCOPE', '1']), pad(['#BDE_ENABLED', '1']), pad(['#STATE_DIAGRAM', owner, diagram, 'Main', 'public'])];
  if (request.include_state_topology) {
    rows.push(pad(['#STATE_TOPOLOGY', '1']));
    for (let i = 0; i < 2; i++) rows.push(pad(['#SM_OBJECT', owner, diagram, diagram + '/s' + i, 'Main/State_' + i + endpointPadding, 'state', 'SGStateGODB']),
      pad(['#SM_PIN', owner, diagram, diagram + '/s' + i, String(i + 1)]));
    for (let i = 0; i < 8; i++) rows.push(pad(['#SM_OBJECT', owner, diagram, diagram + '/t' + i,
      'Main/Transition #' + i, 'transition', 'SGBezierConnectionGODB']),
      pad(['#SM_TRANSITION', owner, diagram, diagram + '/t' + i, '0', '1', '1', '2', String(i)]));
    rows.push(pad(['#SM_END', owner, diagram, '10']));
  }
  for (let i = 0; i < 8; i++) for (let n = 0; n < slots; n++)
    rows.push(pad([n === 0 ? 'transition_condition' : 'transition_action', owner, component, '', 'ASDL',
      diagram + '/t' + i, 'Main/Transition #' + i, 'esdl', n === 0 ? 'enabled' : 'value = 1;']));
  rows.push(pad(['#STATS', '1', '1', '0', '16', '20', '0']));
  return { status: 'ok' as const, database: 'db', ascet_pid: 1, observed_utc: 'now', timings: {}, payload: encode(rows) };
}
const call = (s: AgentSession, tool: string, args: any): Promise<any> => s.execute({ tool, arguments: args });
const strip = (v: any): any => Array.isArray(v) ? v.map(strip) : v && typeof v === 'object'
  ? Object.fromEntries(Object.entries(v).filter(([k]) => !['ref', 'next_call', 'read_evidence', 'expires_utc', 'next_cursor', 'has_more', 'status', 'task_tool'].includes(k)).map(([k, c]) => [k, strip(c)])) : v;

for (const slots of [0, 2]) for (const count of [8, 32]) for (const budget of [16384, 32768])
test(`State batch ${count}, ${slots} slots, ${budget} bytes: immutable independent delivery and evidence`, async () => {
  let reads = 0, now = 1000;
  const s = new AgentSession({ request: async r => { reads++; return fixture(r, slots); } },
    { maxPageBytes: budget, maxModelBytes: budget, now: () => now });
  const e = new AgentEvidence(() => now);
  try {
    let page = await call(s, 'ascet_find', { target: 'transitions' });
    const targets = [...page.results];
    e.record({ operation: 'find', target: 'transitions' }, page);
    while (page.has_more) { page = await call(s, 'ascet_find', { cursor: page.next_cursor }); targets.push(...page.results); }
    assert.equal(targets.length, 8);
    const order = Array.from({ length: count }, (_, i) => targets[i % 8].ref);
    const before = reads, result = await call(s, 'ascet_inspect_state', { refs: order });
    validateToolOutput('ascet_inspect_state', result);
    assert.equal(result.status, 'ok'); assert.equal(result.returned_count, count);
    assert.deepEqual(result.results.map((r: any) => r.ref), order);
    assert.equal(reads - before, 1, 'one native owner read for the whole batch');
    const fits = (v: any) => {
      assert.ok(Buffer.byteLength(JSON.stringify(v)) <= budget);
      assert.ok(Buffer.byteLength(renderAgentResult(v, 'task')) <= budget);
    };
    fits(result);
    const deferred = result.results.filter((r: any) => r.deferred);
    if (count === 32 || budget === 16384) assert.ok(deferred.length, 'large metadata must use independent delivery');
    e.record({ operation: 'read', ref: order }, result);
    for (const first of result.results) if (first.deferred) {
      assert.equal(e.get(first.ref)?.read, false, 'stub must not assert inspected source');
      assert.equal(first.code_slots, undefined, 'stub must not assert empty slots');
      assert.equal(first.start_state, undefined, 'stub must not assert absent endpoints');
    }
    const afterBatch = reads, completed: any[] = [];
    for (const first of result.results) {
      const pages: any[] = first.deferred ? [] : [first]; let item = first;
      while (item.has_more) {
        assert.ok(pages.length < 50);
        const cursor = item.next_cursor;
        item = await call(s, 'ascet_inspect_state', { cursor });
        validateToolOutput('ascet_inspect_state', item); fits(item);
        assert.deepEqual(await call(s, 'ascet_inspect_state', { cursor }), item);
        e.record({ cursor }, item); pages.push(item);
      }
      assert.ok(pages.length > 0); assert.equal(e.get(first.ref)?.read, true);
      assert.equal(pages[0].start_state.state_id, 0); assert.equal(pages[0].end_state.state_id, 1);
      assert.equal(pages.flatMap(p => p.code_slots).length, slots);
      completed.push(pages);
    }
    assert.equal(reads, afterBatch, 'continuation and replay do not read ASCET');
    for (let i = 0; i < count; i++) {
      const full = await call(s, 'ascet_inspect_state', { refs: [order[i]] });
      assert.equal(full.has_more, false);
      assert.deepEqual(strip({ ...completed[i][0], code_slots: completed[i].flatMap((p: any) => p.code_slots) }), strip(full));
    }
    if (deferred.length) {
      const cursor = deferred[0].next_cursor;
      await assert.rejects(call(s, 'ascet_read_code', { cursor }), (x: any) => x.code === 'CURSOR_TOOL_MISMATCH');
      now += 300_001;
      await assert.rejects(call(s, 'ascet_inspect_state', { cursor }), (x: any) => x.code === 'CURSOR_EXPIRED');
    }
  } finally { s.close(); }
});

test('a State that cannot fit a standalone page fails honestly instead of issuing a dead continuation', async () => {
  // Distinct endpoint names cannot be removed as repeated owner context.
  const s = new AgentSession({ request: async r => fixture(r, 2, 'x'.repeat(4096)) }, { maxPageBytes: 4096, maxModelBytes: 4096 });
  try {
    const found = await call(s, 'ascet_find', { target: 'transitions', name: 'Transition #0', match: 'contains' });
    assert.equal(found.total_count, 1);
    const refs = Array(8).fill(found.results[0].ref);
    const batch = await call(s, 'ascet_inspect_state', { refs });
    assert.equal(batch.status, 'error');
    assert.ok(batch.results.every((r: any) => r.error.code === 'PAGE_TOO_LARGE' && !r.next_cursor && !r.deferred));
    assert.equal(batch.next_calls.length, 8);
  } finally { s.close(); }
});

test('deferred continuation inherits read operation without claiming unreturned endpoints were read', () => {
  const e = new AgentEvidence(), expires_utc = '2099-01-01T00:00:00Z';
  e.record({ operation: 'read', ref: ['t1', 't2'] }, { status: 'ok', results: [
    { ref: 't1', deferred: true, has_more: true, next_cursor: 'p1', expires_utc },
    { ref: 't2', deferred: true, has_more: true, next_cursor: 'p2', expires_utc }] });
  assert.equal(e.get('t1')?.read, false); assert.equal(e.get('t2')?.read, false);
  e.record({ cursor: 'p1' }, { status: 'ok', ref: 't1', code_slots: [], start_state: { ref: 's1' },
    end_state: { ref: 's2' }, has_more: false, expires_utc });
  assert.equal(e.get('t1')?.read, true); assert.equal(e.get('t2')?.read, false);
  assert.equal(e.get('s1')?.read, false); assert.equal(e.get('s2')?.read, false);
  e.record({ cursor: 'p2' }, { status: 'partial', ref: 't2', code_slots: [], issues: [{ code: 'READ_INCOMPLETE' }] });
  assert.equal(e.get('t2')?.read, false);
});
