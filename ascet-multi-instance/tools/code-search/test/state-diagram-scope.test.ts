import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentSession } from '../src/agent-session.js';
import { encode } from './fixtures.js';
import { validateToolOutput } from '../src/tool-contracts.js';
import type { NativeRequest } from '../src/types.js';

const owner = '00000000000000000000000000001', main = '00000000000000000000000000002';
const privateID = '00000000000000000000000000003', empty = '00000000000000000000000000004';
const pad = (r: string[]) => [...r, ...Array(10 - r.length).fill('')];
const call = (s: AgentSession, tool: string, args: any): Promise<any> => s.execute({ tool, arguments: args });
function fixture(request: NativeRequest) {
  const rows = [pad(['#COMPONENT', owner, 'Lib\\SM', '', '', '', '', 'SGSmClass']), pad(['#DIAGRAM_SCOPE', '1']), pad(['#BDE_ENABLED', '1'])];
  if (request.include_state_topology) rows.push(pad(['#STATE_TOPOLOGY', '1']));
  // Respect native filters: a BDE-only request cannot return State Diagrams.
  if (!request.filters?.kinds || request.filters.kinds.some(k => k.startsWith('state_') || k.startsWith('transition_')) || request.include_state_topology) {
    for (const [id, name, visibility] of [[main, 'Main', 'public'], [privateID, 'Private', 'private'], [empty, 'Empty', 'public']]) {
      if (request.diagram_name && request.diagram_name.text !== name || request.filters?.diagram_ids && !request.filters.diagram_ids.includes(owner + '/' + id) ||
          request.filters?.diagram_visibilities && !request.filters.diagram_visibilities.includes(visibility)) continue;
      rows.push(pad(['#STATE_DIAGRAM', owner, id, name, visibility]));
      if (request.include_state_topology) {
        if (id !== empty) {
          rows.push(pad(['#SM_OBJECT', owner, id, id + '/s0', name + '/Off', 'state', 'SGStateGODB']));
          rows.push(pad(['#SM_PIN', owner, id, id + '/s0', '5']));
          rows.push(pad(['#SM_OBJECT', owner, id, id + '/t1', name + '/Transition #1', 'transition', 'SGBezierConnectionGODB']));
          rows.push(pad(['#SM_TRANSITION', owner, id, id + '/t1', '0', '0', '5', '5', '1']));
        }
        rows.push(pad(['#SM_END', owner, id, id === empty ? '0' : '2']));
      }
      if (id !== empty) rows.push(pad(['state_static', owner, 'Lib\\SM', '', 'ASDL', id + '/s0', name + '/Off', 'esdl', 'value = 0;']));
    }
  }
  rows.push(pad(['#STATS', '1', '1', '0', '2', '20', '0']));
  return { status: 'ok' as const, database: 'db', ascet_pid: 1, observed_utc: 'now', timings: {}, payload: encode(rows) };
}

test('State Diagram directory includes empty/public/private scopes and stable paged identities', async () => {
  const requests: NativeRequest[] = [], s = new AgentSession({ request: async r => { requests.push(r); return fixture(r); } });
  try {
    let page = await call(s, 'ascet_find', { target: 'diagrams', scope: { components: [{ name: 'SM' }] }, limit: 1 });
    const entries = [...page.results];
    while (page.has_more) { page = await call(s, 'ascet_find', { cursor: page.next_cursor }); entries.push(...page.results); }
    assert.equal(requests.length, 2); assert.equal(entries.length, 3);
    assert.deepEqual(entries.map(e => e.diagram), ['Main', 'Private', 'Empty']);
    assert.ok(entries.every(e => e.diagram_type === 'state_machine' && e.scope_only && !e.read_tool));
    for (const entry of entries) {
      validateToolOutput('ascet_find', page);
      const states = await call(s, 'ascet_find', { target: 'states', scope: { diagrams: [{ ref: entry.ref }] } });
      assert.equal(states.total_count, entry.diagram === 'Empty' ? 0 : 1);
      assert.ok(states.results.every((r: any) => r.diagram_oid === entry.diagram_oid));
    }
  } finally { s.close(); }
});

for (const target of ['states', 'transitions'] as const) test('named Main scope preserves owner/Diagram for ' + target, async () => {
  const requests: NativeRequest[] = [], s = new AgentSession({ request: async r => { requests.push(r); return fixture(r); } });
  try {
    const found = await call(s, 'ascet_find', { target, scope: { components: [{ name: 'SM' }], diagrams: [{ name: 'Main' }] } });
    assert.equal(found.total_count, 1); assert.equal(found.results[0].diagram, 'Main');
    assert.deepEqual(requests.at(-1)!.filters?.diagram_ids, [owner + '/' + main]);
    const read = await call(s, 'ascet_inspect_state', { refs: [found.results[0].ref] });
    assert.equal(read.status, 'ok');
    if (target === 'states') {
      const code = await call(s, 'ascet_read_code', { refs: [read.code_slots[0].ref] });
      assert.equal(code.code, 'value = 0;');
    } else assert.equal(read.start_state.ref, read.end_state.ref);
  } finally { s.close(); }
});

test('State Diagram scope-only refs reject BDE reads with directly callable discovery alternatives', async () => {
  let calls = 0; const s = new AgentSession({ request: async r => { calls++; return fixture(r); } });
  try {
    const found = await call(s, 'ascet_find', { target: 'diagrams', name: 'Main' });
    const before = calls;
    await assert.rejects(call(s, 'ascet_read_bde', { refs: [found.results[0].ref] }), (e: any) => {
      assert.equal(e.code, 'WRONG_REF_TYPE'); assert.equal(e.next_calls[0].arguments.target, 'states'); return true;
    });
    assert.equal(calls, before);
    const recipe = found.results[0].next_calls[1];
    assert.equal((await call(s, recipe.tool, recipe.arguments)).total_count, 1);
  } finally { s.close(); }
});

test('State Diagram name scopes also constrain code search without adding Method kinds', async () => {
  const s = new AgentSession({ request: async r => fixture(r) });
  try {
    const result = await call(s, 'ascet_search_code', { queries: [{ text: 'value', mode: 'identifier' }],
      scope: { components: [{ name: 'SM' }], diagrams: [{ name: 'Private' }], visibility: ['private'] } });
    assert.equal(result.searches[0].total_hits, 1);
    assert.equal(result.searches[0].results[0].diagram, 'Private');
    assert.equal(result.searches[0].results[0].visibility, 'private');
    assert.ok(result.applied_scope.kinds.every((k: string) => k.startsWith('state_') || k.startsWith('transition_')));
  } finally { s.close(); }
});
