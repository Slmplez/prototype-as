import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentSession } from '../src/agent-session.js';
import { decodeResponse } from '../src/protocol.js';
import { encode } from './fixtures.js';
import { graphResponse, generatedGraph } from './diagram-generality-support.js';
import type { AgentFindResponse, AgentReadResponse, AgentBatchReadResponse, AgentCodeTarget, AgentObjectTarget } from '../src/agent-types.js';
import type { NativeResponse, NativeRequest } from '../src/types.js';

const component = '00000000000000000000000000001', diagram = '00000000000000000000000000002';
const pad = (r: string[]) => [...r, ...Array(10 - r.length).fill('')];
function topologyRows(dense = 0): string[][] {
  const out = [pad(['#COMPONENT', component, 'Lib\\SM', '', '', '', '', 'SGSmClass']),
    pad(['#DIAGRAM_SCOPE', '1']), pad(['#STATE_TOPOLOGY', '1']), pad(['#STATE_DIAGRAM', component, diagram, 'Main', 'public'])];
  const add = (tag: string, ...fields: string[]) => out.push(pad([tag, component, diagram, ...fields]));
  const obj = (id: string, name: string, kind: string, pin?: string) => {
    add('#SM_OBJECT', diagram + id, name, kind, kind === 'transition' ? 'SGBezierConnectionGODB' : kind === 'junction' ? 'SGStateJunctionGODB' : 'SGStateGODB');
    if (pin) add('#SM_PIN', diagram + id, pin);
  };
  obj('/s1', 'Main/Same', 'hierarchy', '11');
  obj('/s2', 'Main/Same', 'hierarchy', '12');
  obj('/s1/s7', 'Main/Same/Same', 'state', '17');
  obj('/s2/s7', 'Main/Same/Same', 'state', '27');
  obj('/s3', 'Main/junction #3', 'junction', '3');
  obj('/t10', 'Main/Transition #10', 'transition');
  // Missing block identifiers are a real saved-storage layout, resolved through Pins.
  add('#SM_TRANSITION', diagram + '/t10', '', '', '17', '27', '2');
  obj('/s1/t11', 'Main/Same/Transition #11', 'transition');
  add('#SM_TRANSITION', diagram + '/s1/t11', '7', '7', '17', '17', '1');
  for (let i = 0; i < dense; i++) {
    obj('/t' + (20 + i), 'Main/Transition #' + (20 + i), 'transition');
    add('#SM_TRANSITION', diagram + '/t' + (20 + i), '', '', '17', '27', '1');
  }
  add('#SM_END', String(7 + dense));
  out.push(pad(['state_entry', component, 'Lib\\SM', '', 'ASDL', diagram + '/s1/s7', 'Main/Same/Same', 'esdl', 'value = 1;']));
  out.push(pad(['transition_condition', component, 'Lib\\SM', '', 'ASDL', diagram + '/t10', 'Main/Transition #10', 'esdl', 'value > 0']));
  out.push(pad(['#STATS', '1', '1', '0', '2', '20', '0']));
  return out;
}
const native = (r = topologyRows()): NativeResponse => ({ status: 'ok', database: 'db', ascet_pid: 1, observed_utc: 'now', timings: {}, payload: encode(r) });
async function findAll(s: AgentSession, input: unknown): Promise<AgentFindResponse[]> {
  const pages: AgentFindResponse[] = []; let p = await s.execute(input) as AgentFindResponse;
  do { pages.push(p); if (!p.has_more) break; p = await s.execute({ cursor: p.next_cursor }) as AgentFindResponse; assert.ok(pages.length < 10000); } while (true);
  return pages;
}

for (let seed = 1; seed <= 30; seed++) test('object directory native identity oracle ' + seed, async () => {
  const g = generatedGraph(seed, 20, 1); g.source_oid = diagram; g.visibility = seed % 2 ? 'public' : 'private';
  g.nodes.forEach((n, i) => { if (i % 3 === 0) n.name = ''; });
  const raw = graphResponse([g], rows => rows.unshift(pad(['#DIAGRAM_SCOPE', '1'])));
  let calls = 0;
  const s = new AgentSession({ request: async () => { calls++; return raw; } });
  try {
    const pages = await findAll(s, { operation: 'find', target: 'objects', limit: seed % 5 + 1, in: { object_kind: ['element', 'hierarchy'] } });
    const objects = pages.flatMap(p => p.results) as AgentObjectTarget[];
    assert.equal(calls, 1, 'continuations do not touch ASCET');
    assert.deepEqual(objects.map(o => [o.hierarchy ?? 'root', o.node_id, o.kind, o.name]),
      g.nodes.filter(n => ['element', 'hierarchy'].includes(n.kind)).map(n => [n.scope, n.id, n.kind, n.name]));
    assert.equal(new Set(objects.map(o => o.ref)).size, objects.length);
    if (objects.length) {
      const local = await s.execute({ operation: 'read', ref: objects[0].ref, depth: 0 }) as AgentReadResponse;
      assert.equal(local.object!.kind, objects[0].kind); assert.equal(local.diagram, g.name);
    }
  } finally { s.close(); }
});

test('States include empty slots, same names remain distinct, and related refs can be read', async () => {
  const requests: NativeRequest[] = [];
  const s = new AgentSession({ request: async r => { requests.push(r); return native(); } });
  try {
    const pages = await findAll(s, { operation: 'find', target: 'states', name: 'Same', limit: 1 });
    const states = pages.flatMap(p => p.results) as AgentCodeTarget[];
    assert.equal(states.length, 4); assert.equal(requests.length, 1); assert.equal(requests[0].include_state_topology, true);
    const a = states.find(r => r.state_hierarchy_ids?.[0] === 1)!;
    const b = states.find(r => r.state_hierarchy_ids?.[0] === 2)!;
    assert.equal(a.state, b.state); assert.notEqual(a.ref, b.ref);
    const read = await s.execute({ operation: 'read', ref: [a.ref, b.ref], if_unchanged: true }) as AgentBatchReadResponse;
    assert.equal(read.status, 'ok'); assert.equal(requests.length, 2, 'mixed states share a single component read');
    const [ra, rb] = read.results as AgentReadResponse[];
    assert.equal(ra.code_slots!.length, 1); assert.equal(rb.code_slots!.length, 0);
    assert.equal(ra.incoming!.length, 1); assert.equal(ra.outgoing!.length, 2); assert.equal(rb.incoming!.length, 1);
    const code = await s.execute({ operation: 'read', ref: ra.code_slots![0].ref }) as AgentReadResponse;
    assert.equal(code.code, 'value = 1;');
    const transition = await s.execute({ operation: 'read', ref: ra.outgoing!.find(t => t.transition_id === 10)!.ref }) as AgentReadResponse;
    assert.equal(transition.start_state!.state_hierarchy_ids![0], 1); assert.equal(transition.end_state!.state_hierarchy_ids![0], 2); assert.equal(transition.priority, 2);
    assert.equal((await s.execute({ operation: 'read', ref: transition.end_state!.ref })).status, 'ok');
  } finally { s.close(); }
});

test('self transitions return the same State endpoint ref and both direct directions', async () => {
  const s = new AgentSession({ request: async () => native() });
  try {
    const found = await s.execute({ operation: 'find', target: 'transitions', name: 'Transition #11', match: 'exact' }) as AgentFindResponse;
    const r = await s.execute({ operation: 'read', ref: found.results[0].ref }) as AgentReadResponse;
    assert.equal(r.start_state!.ref, r.end_state!.ref); assert.equal(r.code_slots!.length, 0);
    const state = await s.execute({ operation: 'read', ref: r.start_state!.ref }) as AgentReadResponse;
    assert.ok(state.incoming!.some(t => t.transition_id === 11)); assert.ok(state.outgoing!.some(t => t.transition_id === 11));
  } finally { s.close(); }
});

test('metadata edits invalidate refs even with unchanged saved code', async () => {
  let r = topologyRows(); const s = new AgentSession({ request: async () => native(r) });
  try {
    const found = await s.execute({ operation: 'find', target: 'transitions' }) as AgentFindResponse;
    r = structuredClone(r); r.find(row => row[0] === '#SM_TRANSITION')![8] = '9';
    await assert.rejects(s.execute({ operation: 'read', ref: found.results[0].ref }), { code: 'SOURCE_CHANGED' });
  } finally { s.close(); }
});

for (const change of ['missing', 'ambiguous', 'mismatch', 'priority']) test('incomplete Transition metadata: ' + change, async () => {
  const rows = topologyRows(), edge = rows.find(r => r[0] === '#SM_TRANSITION')!;
  if (change === 'missing') edge[6] = '999';
  if (change === 'ambiguous') { const p = pad(['#SM_PIN', component, diagram, diagram + '/s2/s7', '17']); rows.splice(rows.findIndex(r => r[0] === '#SM_END'), 0, p); }
  if (change === 'mismatch') edge[4] = '888';
  if (change === 'priority') edge[8] = 'unknown';
  const s = new AgentSession({ request: async () => native(rows) });
  try {
    const found = await s.execute({ operation: 'find', target: 'transitions' }) as AgentFindResponse;
    const read = await s.execute({ operation: 'read', ref: found.results[0].ref }) as AgentReadResponse;
    assert.equal(read.status, 'partial'); assert.ok(read.issues!.length);
    if (change !== 'priority') assert.equal(read.start_state, null); else assert.equal(read.priority, null);
    if (change !== 'priority') {
      const states = await s.execute({ operation: 'find', target: 'states' }) as AgentFindResponse;
      const stateRead = await s.execute({ operation: 'read', ref: states.results[0].ref }) as AgentReadResponse;
      assert.equal(stateRead.status, 'partial', 'an unresolved endpoint cannot prove a complete direct relationship directory');
    }
  } finally { s.close(); }
});

test('dense State relations paginate within byte/ref caps and reuse one frozen read', async () => {
  let calls = 0; const s = new AgentSession({ request: async () => { calls++; return native(topologyRows(400)); } }, { maxPageBytes: 12 * 1024 });
  try {
    const found = await s.execute({ operation: 'find', target: 'states', name: 'Main/Same/Same', match: 'exact' }) as AgentFindResponse;
    let read = await s.execute({ operation: 'read', ref: found.results[0].ref }) as AgentReadResponse;
    assert.equal(calls, 2); let outgoing = 0, incoming = 0, slots = 0, pages = 0;
    do {
      pages++; assert.ok(pages < 100); assert.ok(Buffer.byteLength(JSON.stringify(read)) <= 12 * 1024);
      outgoing += read.outgoing!.length; incoming += read.incoming!.length; slots += read.code_slots!.length;
      if (!read.has_more) break; read = await s.execute({ cursor: read.next_cursor }) as AgentReadResponse;
    } while (true);
    assert.ok(pages > 1); assert.equal(calls, 2); assert.equal(outgoing, 402); assert.equal(incoming, 1); assert.equal(slots, 1);
  } finally { s.close(); }
});

test('malformed topology transport is rejected rather than treated as zero hits', () => {
  for (const mutate of [
    (r: string[][]) => r.filter(row => row[0] !== '#STATE_TOPOLOGY'),
    (r: string[][]) => r.filter(row => row[0] !== '#SM_END'),
    (r: string[][]) => [...r.slice(0, -1), r.find(row => row[0] === '#SM_OBJECT')!, r.at(-1)!],
    (r: string[][]) => r.map(row => row[0] === '#SM_END' ? [...row.slice(0, 3), '99', ...row.slice(4)] : row),
    (r: string[][]) => r.filter(row => !(row[0] === '#SM_OBJECT' && row[3] === diagram + '/s1')),
  ]) assert.throws(() => decodeResponse(native(mutate(topologyRows()))));
});

test('directory validation, no-match Component, database/PID guards, and incompatible read options', async () => {
  const s = new AgentSession({ request: async () => native() });
  try {
    for (const input of [
      { operation: 'find', target: 'objects', in: { object_kind: '*' } },
      { operation: 'find', target: 'states', in: { object_kind: 'state' } },
      { operation: 'find', target: 'objects', member: 'name' },
      { operation: 'find', target: 'states', in: { variant: 'DefaultC' } },
      { operation: 'find', target: 'states', name: '\n' },
    ]) await assert.rejects(s.execute(input), { code: 'INVALID_REQUEST' });
    const zero = await s.execute({ operation: 'find', target: 'states', component: 'NoSuchComponent' }) as AgentFindResponse;
    assert.equal(zero.total_count, 0);
    const f = await s.execute({ operation: 'find', target: 'states' }) as AgentFindResponse;
    for (const options of [{ include_graph: true }, { lines: { start: 1, end: 2 } }, { depth: 1 }]) await assert.rejects(s.execute({ operation: 'read', ref: f.results[0].ref, ...options }), { code: 'INVALID_REQUEST' });
  } finally { s.close(); }
});
