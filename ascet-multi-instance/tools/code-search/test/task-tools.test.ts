import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentSession } from '../src/agent-session.js';
import { ToolError } from '../src/patterns.js';
import { TaskTools, validateTaskInput, canonicalTaskRequest, TaskToolError } from '../src/task-tools.js';
import { getToolContracts, validateToolOutput } from '../src/tool-contracts.js';
import { renderAgentResult } from '../src/agent-result-view.js';
import { validatePiFinalAnswer } from '../src/pi-answer-validation.js';
import { Fake, encode, rows, diagramRows } from './fixtures.js';
import type { NativeRequest } from '../src/types.js';
const oid = '00000000000000000000000000001';
const validRows = (text: string) => rows(text).map(row => row.map(value => value === 'oid1' ? oid : value));
class ScopedFake extends Fake {
  override async request(request: NativeRequest) {
    this.calls++; this.requested = request;
    return { status: 'ok' as const, database: 'db', ascet_pid: 1, observed_utc: 'now', payload: encode(validRows(this.text)), timings: {} };
  }
}
const call = (s: AgentSession, tool: string, args: any): Promise<any> => s.execute({ tool, arguments: args });
const fail = (code: string) => (e: any) => e.code === code;

test('task profile registers six bounded schemas with mutually separate read arguments', () => {
  const contracts = getToolContracts('task'); assert.equal(contracts.length, 6);
  assert.equal(new Set(contracts.map(c => c.name)).size, 6);
  for (const c of contracts) {
    assert.ok(c.guidelines.length <= 6);
    assert.ok(Buffer.byteLength(JSON.stringify(c.inputSchema)) < 10000);
  }
  validateTaskInput('ascet_search_code', { queries: [{ text: 'x', mode: 'identifier' }] });
  for (const [tool, args] of [
    ['ascet_read_code', { refs: ['sabc1:d1'], graph: true }],
    ['ascet_read_bde', { refs: ['sabc1:n1'], lines: { start: 1, end: 2 } }],
    ['ascet_read_bde', { refs: ['sabc1:n1'], graph: true }],
    ['ascet_inspect_state', { refs: ['sabc1:d1'], depth: 1 }],
    ['ascet_search_code', { queries: [] }],
    ['ascet_search_code', { query: 'x' }],
    ['ascet_search_code', { queries: [{ text: 'x' }], scope: { kinds: ['diagram'] } }],
    ['ascet_search_code', { queries: [{ text: 'x' }], scope: { kinds: ['state_static_binding'] } }],
    ['ascet_find', { target: 'members', member: 'calc' }],
    ['ascet_read_code', { refs: 'sabc1:d1' }],
    ['ascet_read_code', { refs: ['sabc1'] }],
    ['ascet_find', { target: 'members', scope: { components: [{ name: 'class', ref: 'sabc1:d1' }] } }],
  ] as const) assert.throws(() => validateTaskInput(tool, args), TaskToolError);
});

test('named component scope resolves and all requested predicates reach native search', async () => {
  const reader = new ScopedFake(), s = new AgentSession(reader);
  try {
    const result = await call(s, 'ascet_search_code', { queries: [{ text: 'foo', mode: 'identifier', case_sensitive: true }],
      scope: { components: [{ name: 'class' }], kinds: ['method'], variants: ['ASDL'], members: ['calc'] } });
    assert.equal(result.searches[0].total_hits, 1);
    assert.deepEqual(reader.requested?.filters?.component_oids, [oid]);
    assert.deepEqual(reader.requested?.filters?.kinds, ['method']);
    assert.deepEqual(result.applied_scope.variants, ['ASDL']);
    assert.equal(result.scope_identities[0].component_path, 'folder/class');
    validateToolOutput('ascet_search_code', result);
    const body = await call(s, 'ascet_read_code', { refs: [result.searches[0].results[0].ref] });
    assert.equal(body.code, reader.text); validateToolOutput('ascet_read_code', body);
    assert.equal(body.identity.implementation, ''); assert.equal(body.identity.member, 'calc');
    assert.equal(body.read_tool, 'ascet_read_code');
    assert.equal(result.searches[0].results[0].language, 'esdl');
    assert.equal(body.language, 'esdl');
  } finally { s.close(); }
});

test('missing scope cannot silently become a global query; ambiguous names require a choice', async () => {
  const fake = new Fake(), s = new AgentSession(fake);
  try {
    await assert.rejects(call(s, 'ascet_search_code', { queries: [{ text: 'foo' }], scope: { components: [{ name: 'missing' }] } }), fail('SCOPE_NOT_FOUND'));
    assert.equal(fake.calls, 1);
  } finally { s.close(); }
  let calls = 0;
  const facade = new TaskTools({ resolve: () => ({ kind: 'component' }), execute: async () => {
    calls++; return { status: 'ok', total_count: 2, results: [{ ref: 's1:d1' }, { ref: 's1:d2' }] };
  } });
  await assert.rejects(facade.execute('ascet_search_code', { queries: [{ text: 'x' }], scope: { components: [{ name: 'Duplicate' }] } }), fail('AMBIGUOUS_SCOPE'));
  assert.equal(calls, 1);
});

test('partial scope catalog cannot establish a unique owner', async () => {
  const facade = new TaskTools({ resolve: () => ({ kind: 'component' }), execute: async () => ({ status: 'partial', total_count: 1, results: [{ ref: 's1:d1' }] }) });
  await assert.rejects(facade.execute('ascet_search_code', { queries: [{ text: 'x' }], scope: { components: [{ name: 'Owner' }] } }), fail('SCOPE_INCOMPLETE'));
});

test('scope resolution and search are atomic against parallel legacy calls', async () => {
  const events: string[] = [];
  const s = new AgentSession({ request: async request => { events.push(request.mode + ':' + JSON.stringify(request.filters ?? {}));
    await new Promise(r => setTimeout(r, 5)); return { status: 'ok', database: 'db', ascet_pid: 1, observed_utc: 'now', payload: encode(validRows('foo bar')), timings: {} }; } });
  try {
    await Promise.all([call(s, 'ascet_search_code', { queries: [{ text: 'foo' }], scope: { components: [{ name: 'class' }] } }),
      s.execute({ operation: 'search', query: 'bar' })]);
    assert.equal(events.length, 3);
    assert.equal(events[0].startsWith('catalog:'), true);
    assert.ok(events[1].includes('method')); assert.equal(events[2].includes('method'), false);
  } finally { s.close(); }
});

test('code/BDE searches remain separate and local graphs preserve factual Pins', async () => {
  const s = new AgentSession({ request: async () => ({ status: 'ok', database: 'db', ascet_pid: 1, observed_utc: 'now', payload: encode([...rows('AEBLockTime = 1;'), ...diagramRows()]), timings: {} }) });
  try {
    const code = await call(s, 'ascet_search_code', { queries: [{ text: 'AEBLockTime', mode: 'identifier' }] });
    assert.ok(code.searches[0].results.every((v: any) => v.kind !== 'diagram'));
    const bde = await call(s, 'ascet_search_bde', { queries: [{ text: 'AEBLockTime', mode: 'identifier' }] });
    assert.ok(bde.searches[0].results.every((v: any) => v.kind === 'diagram'));
    const object = bde.searches[0].results[0].hits[0].ref;
    const graph = await call(s, 'ascet_read_bde', { refs: [object], depth: 0 });
    assert.equal(graph.object.name, 'AEBLockTime'); assert.ok(graph.pins.length > 0);
    assert.equal(graph.object.hierarchy, 'root');
    await assert.rejects(call(s, 'ascet_read_code', { refs: [object] }), fail('WRONG_REF_TYPE'));
    await assert.rejects(call(s, 'ascet_inspect_state', { refs: [object] }), fail('WRONG_REF_TYPE'));
    await assert.rejects(call(s, 'ascet_read_bde', { refs: [code.searches[0].results[0].ref] }), fail('WRONG_REF_TYPE'));
  } finally { s.close(); }
});

test('whole batch ref types are checked before any native read', async () => {
  let native = 0;
  const facade = new TaskTools({ resolve: ref => ({ kind: ref.endsWith('d1') ? 'method' : 'diagram' }), execute: async () => { native++; return {}; } });
  await assert.rejects(facade.execute('ascet_read_code', { refs: ['s1:d1', 's1:d2'] }), fail('WRONG_REF_TYPE'));
  assert.equal(native, 0);
});

test('state and binding inspectors keep relationships distinct from bodies', async () => {
  const sent: any[] = [];
  const facade = new TaskTools({ resolve: ref => ({ kind: ref.endsWith('d1') ? 'state' : ref.endsWith('d2') ? 'transition_trigger_binding' : 'state_static' }),
    execute: async input => { sent.push(input); return { status: 'ok' }; } });
  await facade.execute('ascet_inspect_state', { refs: ['s1:d1', 's1:d2'] });
  assert.deepEqual(sent[0].arguments.ref, ['s1:d1', 's1:d2']);
  await assert.rejects(facade.execute('ascet_read_code', { refs: ['s1:d2'] }), fail('WRONG_REF_TYPE'));
  await facade.execute('ascet_read_code', { refs: ['s1:d3'] });
  assert.equal(sent[1].arguments.ref, 's1:d3');
});

test('task continuation stays on originating facade and retains applied scope without live reads', async () => {
  const fake = new Fake('foo foo foo'), s = new AgentSession(fake);
  try {
    const page = await call(s, 'ascet_search_code', { queries: [{ text: 'foo' }], limit: 1 });
    assert.equal(page.has_more, true);
    const calls = fake.calls;
    await assert.rejects(call(s, 'ascet_search_bde', { target: 'objects', cursor: page.next_cursor }), fail('CURSOR_TOOL_MISMATCH'));
    const next = await call(s, 'ascet_search_code', { cursor: page.next_cursor });
    assert.deepEqual(next.applied_scope, page.applied_scope); assert.equal(fake.calls, calls);
    assert.equal(next.task_tool, 'ascet_search_code');
  } finally { s.close(); }
});

test('short task cursor forwards the exact backend cursor, survives replay, and never mutates a backend response', async () => {
  const raw = { status: 'ok', target: 'components', total_count: 2, results: [], has_more: true, next_cursor: 'encoded-backend-cursor-with-integrity-signature' };
  const requests: any[] = [];
  const facade = new TaskTools({ resolve: () => ({ kind: 'component' }), execute: async request => { requests.push(request); return raw; } });
  const first = await facade.execute('ascet_find', { target: 'components' });
  assert.match(first.next_cursor, /^p-[A-Za-z0-9_-]+-[0-9a-z]+$/); assert.ok(first.next_cursor.length < 32);
  assert.equal(raw.next_cursor, 'encoded-backend-cursor-with-integrity-signature');
  const next = await facade.execute('ascet_find', { cursor: first.next_cursor });
  assert.equal(requests[1].arguments.cursor, raw.next_cursor); assert.equal(next.next_cursor, first.next_cursor);
  assert.deepEqual(next, await facade.execute('ascet_find', { cursor: first.next_cursor }));
  await assert.rejects(facade.execute('ascet_search_code', { cursor: first.next_cursor }), (e: any) => {
    assert.equal(e.next_calls[0].arguments.cursor, first.next_cursor); return e.code === 'CURSOR_TOOL_MISMATCH';
  });
  await assert.rejects(facade.execute('ascet_find', { cursor: raw.next_cursor }), fail('CURSOR_EXPIRED'));
});

test('task cursor handles expire, clear, and cannot cross sessions', async () => {
  let now = 0;
  const backend = { resolve: () => ({ kind: 'component' }), execute: async () => ({ status: 'ok', has_more: true, next_cursor: 'raw', results: [] }) };
  const first = new TaskTools(backend, () => now), second = new TaskTools(backend, () => now);
  const page = await first.execute('ascet_find', { target: 'components' });
  await assert.rejects(second.execute('ascet_find', { cursor: page.next_cursor }), fail('CURSOR_EXPIRED'));
  now = 300_001;
  await assert.rejects(first.execute('ascet_find', { cursor: page.next_cursor }), fail('CURSOR_EXPIRED'));
  const next = await first.execute('ascet_find', { target: 'components' }); assert.notEqual(next.next_cursor, page.next_cursor);
  first.clear(); await assert.rejects(first.execute('ascet_find', { cursor: next.next_cursor }), fail('CURSOR_EXPIRED'));
});

test('task cursor registry evicts both directions together without retaining unbounded handles', async () => {
  let sequence = 0;
  const facade = new TaskTools({ resolve: () => ({ kind: 'component' }), execute: async () => ({ status: 'ok', has_more: true, next_cursor: 'raw-' + (++sequence), results: [] }) });
  const old = await facade.execute('ascet_find', { target: 'components' });
  let last: any;
  for (let i = 0; i < 1024; i++) last = await facade.execute('ascet_find', { target: 'components' });
  await assert.rejects(facade.execute('ascet_find', { cursor: old.next_cursor }), fail('CURSOR_EXPIRED'));
  assert.equal((await facade.execute('ascet_find', { cursor: last.next_cursor })).status, 'ok');
});

test('code ranges and duplicate batch order survive task canonicalization', () => {
  const request = canonicalTaskRequest('ascet_read_code', { refs: ['s1:d1', 's1:d2', 's1:d1'], lines: { start: 2, end: 4 } });
  assert.deepEqual(request.ref, ['s1:d1', 's1:d2', 's1:d1']); assert.deepEqual(request.lines, { start: 2, end: 4 });
});

test('task JSON model output preserves source exactly, including tool-like text', () => {
  const value = { status: 'ok', code: 'ascet_code_read\r\nsearch_scope: "x"\n\\n', variant: " 'PC'_Physical Experiment" };
  assert.deepEqual(JSON.parse(renderAgentResult(value, 'task')), value);
});

test('task model exposes an executable continuation and copy-only citation whitelist', () => {
  const model = JSON.parse(renderAgentResult({ task_tool: 'ascet_search_code', status: 'ok', has_more: true,
    next_cursor: 'p-abc-1', searches: [{ results: [{ ref: 'sabc:d1' }] }] }, 'task'));
  assert.equal(model.continuation_required, true);
  assert.deepEqual(model.continuation_call, { tool: 'ascet_search_code', arguments: { cursor: 'p-abc-1' } });
  assert.deepEqual(model.citable_refs, ['sabc:d1']);
});

test('final task answer validation rejects fabricated refs and accepts returned refs', () => {
  const base = { outcome: 'located', answer: 'ok', missing_evidence: [], facts: { name: 'x' } };
  const bad = validatePiFinalAnswer(JSON.stringify({ ...base, evidence_refs: ['sabc:d999'] }), new Set(['sabc:d1']));
  assert.equal(bad.valid, false); assert.match(bad.errors.join('\n'), /not returned/);
  const good = validatePiFinalAnswer(JSON.stringify({ ...base, evidence_refs: ['sabc:d1'] }), new Set(['sabc:d1']));
  assert.equal(good.valid, true);
});

test('BDE model view distinguishes the requested object from wire destination and preserves source/structure', () => {
  const requested = { ref: 's1:n1', kind: 'element', name: 'Source' };
  const neighbor = { ref: 's1:n2', kind: 'element', name: 'Destination', hierarchy: 'root/10' };
  const value = { status: 'ok', scope: 'local', ref: requested.ref, object: requested, nodes: [neighbor, requested],
    pins: [{ object_ref: neighbor.ref, id: 32 }, { object_ref: requested.ref, id: 56 }],
    connections: [{ from: requested, to: neighbor }], has_more: true, code: 'pins: "literal";\r\nobject.ref' };
  const original = structuredClone(value);
  const model = JSON.parse(renderAgentResult(value, 'task'));
  assert.equal(model.requested_object.name, 'Source'); assert.equal(model.requested_object.hierarchy, 'root');
  assert.equal(model.connections[0].to.ref, neighbor.ref);
  assert.equal(model.neighbors.find((n: any) => n.ref === model.connections[0].to.ref).hierarchy, 'root/10');
  assert.deepEqual(model.requested_object.pins, [{ object_ref: requested.ref, id: 56 }]);
  assert.deepEqual(model.requested_object.pin_ids_on_page, [56]);
  assert.deepEqual(model.facts_mapping, { requested_object_ref: requested.ref, facts_pin_ids: 'requested_object.pin_ids_on_page',
    facts_pin_ids_complete: 'requested_object.pin_ids_complete', neighbor_pin_ids: 'neighbors[].endpoint_pins[].id (connection context only)' });
  assert.deepEqual(model.neighbors[0].endpoint_pins, [{ object_ref: neighbor.ref, id: 32 }]);
  assert.equal(model.pins, undefined); assert.equal(model.object, undefined);
  assert.equal(model.code, value.code); assert.equal(model.has_more, true);
  assert.match(model.pin_coverage, /Consume all pages/);
  assert.deepEqual(value, original);
});

test('batched BDE projection keeps each requested-object Pin identity independent', () => {
  const values = ['s1:n1', 's1:n2'].map((ref, i) => ({ scope: 'local', ref,
    object: { ref, kind: 'literal', name: 'value' + i, hierarchy: 'root/7' },
    pins: [{ object_ref: ref, id: i }, { object_ref: 's1:n3', id: 9 }], has_more: false }));
  const result = JSON.parse(renderAgentResult({ results: values }, 'task'));
  assert.deepEqual(result.results.map((v: any) => v.requested_object.ref), ['s1:n1', 's1:n2']);
  assert.deepEqual(result.results.map((v: any) => v.requested_object.pins[0].id), [0, 1]);
  assert.deepEqual(result.results.map((v: any) => v.unassigned_endpoint_pins[0].id), [9, 9]);
});

test('local object view keeps owning Diagram distinct from reference target and tracking IDs out of citations', () => {
  const value = { scope: 'local', ref: 's1:n1', diagram_ref: 's1:d2', component_path: 'Library/Owner', kind: 'diagram', variant: 'BD',
    diagram: 'Main', diagram_oid: 'oid', read_evidence: { id: 'read-internal', requested: { refs: ['s1:n1'], depth: 0, direction: 'both' } },
    object: { ref: 's1:n1', kind: 'element', name: 'Instance', referenced_component_path: 'Library/Target' },
    nodes: [], pins: [], connections: [], boundaries: [], has_more: false, depth: 0 };
  const model = JSON.parse(renderAgentResult(value, 'task'));
  assert.equal(model.ref, 's1:n1'); assert.equal(model.kind, undefined); assert.equal(model.identity, undefined);
  assert.equal(model.diagram_context.ref, 's1:d2'); assert.equal(model.diagram_context.component_path, 'Library/Owner');
  assert.equal(model.diagram_context.kind, 'diagram'); assert.equal(model.requested_object.kind, 'element');
  assert.equal(model.requested_object.referenced_component_path, 'Library/Target');
  assert.equal(model.read_evidence, undefined); assert.deepEqual(model.read_scope, value.read_evidence.requested);
  assert.deepEqual(model.requested_object.pin_ids_on_page, []); assert.deepEqual(model.connections, []);
  assert.match(model.connections_not_read, /depth is 0/);
  assert.match(model.connections_not_read, /Keep depth 0/);
  assert.deepEqual(value.connections, [], 'structured output preserves the original contract');
  assert.deepEqual(model.neighbors, []);
  assert.equal(value.read_evidence.id, 'read-internal');
});

test('a depth-one read with no wires preserves verified empty connections in the model view', () => {
  const model = JSON.parse(renderAgentResult({ scope: 'local', ref: 's1:n1', depth: 1, direction: 'outgoing',
    object: { ref: 's1:n1', kind: 'element', name: 'End' }, nodes: [], pins: [], connections: [], has_more: false }, 'task'));
  assert.deepEqual(model.connections, []);
  assert.equal(model.connections_not_read, undefined);
  assert.equal(model.direction, 'outgoing');
});

test('target-specific discovery schemas reject Method filters on objects and States before reading', () => {
  for (const target of ['objects', 'states', 'transitions']) {
    assert.throws(() => validateTaskInput('ascet_find', { target, name: 'Stage', scope: { members: ['Stage'] } }), TaskToolError);
    validateTaskInput('ascet_find', { target, name: 'Stage', scope: { components: [{ name: 'Owner' }], diagrams: [{ name: 'Main' }] } });
  }
  validateTaskInput('ascet_find', { target: 'objects', name: 'Stage', scope: { object_kinds: ['hierarchy'] } });
  assert.throws(() => validateTaskInput('ascet_find', { target: 'members', scope: { object_kinds: ['hierarchy'] } }), TaskToolError);
});

test('code_ref pins member ID, Variant and base Implementation and rejects contradictory scopes', async () => {
  const reader = new ScopedFake(), s = new AgentSession(reader);
  try {
    const found = await call(s, 'ascet_find', { target: 'members', name: 'calc', scope: { components: [{ name: 'class' }] } });
    const source = found.results[0];
    assert.deepEqual(source.search_scope, { code_ref: source.ref });
    const result = await call(s, 'ascet_search_code', { queries: [{ text: 'foo', mode: 'identifier', case_sensitive: true }], scope: source.search_scope });
    assert.equal(result.searches[0].total_hits, 1);
    assert.deepEqual(reader.requested?.filters?.member_ids, ['abc']);
    assert.deepEqual(reader.requested?.filters?.implementation_oids, ['']);
    assert.deepEqual(result.applied_scope.members, ['calc']);
    assert.deepEqual(result.applied_scope.variants, ['ASDL']);
    validateToolOutput('ascet_search_code', result);
    await assert.rejects(call(s, 'ascet_search_code', { queries: [{ text: 'foo' }], scope: { ...source.search_scope, members: ['init'] } }), fail('INVALID_REQUEST'));
    await assert.rejects(call(s, 'ascet_search_bde', { queries: [{ text: 'foo' }], scope: source.search_scope }), fail('INVALID_REQUEST'));
  } finally { s.close(); }
});

test('code_ref never includes same-named members with another ID or Variant', async () => {
  const data = [
    ...validRows('needle;'),
    ['method', oid, 'folder/class', '', 'ASDL', 'second-id', 'calc', 'esdl', 'needle; needle;', ''],
    ['method', oid, 'folder/class', '', 'C', 'abc', 'calc', 'c', 'needle; needle; needle;', ''],
  ];
  const s = new AgentSession({ request: async () => ({ status: 'ok', database: 'db', ascet_pid: 1, observed_utc: 'now', payload: encode(data), timings: {} }) });
  try {
    const found = await call(s, 'ascet_find', { target: 'members', name: 'calc' });
    const original = found.results.find((v: any) => v.variant === 'ASDL');
    const result = await call(s, 'ascet_search_code', { queries: [{ text: 'needle', mode: 'identifier' }], scope: original.search_scope });
    assert.equal(result.searches[0].results.length, 1); assert.equal(result.searches[0].total_hits, 1);
  } finally { s.close(); }
});

test('mixed local/Diagram reads produce valid partition suggestions without reading or losing duplicates', async () => {
  let native = 0;
  const facade = new TaskTools({ resolve: ref => ({ kind: 'diagram', ...(ref.endsWith('n1') ? { node: {} } : {}) }), execute: async () => { native++; return {}; } });
  let error: any;
  try { await facade.execute('ascet_read_bde', { refs: ['s1:n1', 's1:d1', 's1:n1'], depth: 0, direction: 'both' }); } catch (e) { error = e; }
  assert.equal(error.code, 'INVALID_REQUEST'); assert.equal(native, 0);
  assert.deepEqual(error.next_calls, [
    { tool: 'ascet_read_bde', arguments: { depth: 0, direction: 'both', refs: ['s1:n1', 's1:n1'] } },
    { tool: 'ascet_read_bde', arguments: { refs: ['s1:d1'] } },
  ]);
  for (const suggestion of error.next_calls) validateTaskInput(suggestion.tool, suggestion.arguments);
});

test('binding errors carry a directly callable inspector recipe', async () => {
  const facade = new TaskTools({ resolve: () => ({ kind: 'transition_trigger_binding' }), execute: async () => { throw new Error('No reads allowed'); } });
  await assert.rejects(facade.execute('ascet_read_bde', { refs: ['s1:d1'] }), (e: any) => {
    assert.deepEqual(e.next_calls, [{ tool: 'ascet_inspect_state', arguments: { refs: ['s1:d1'] } }]); return e.code === 'WRONG_REF_TYPE';
  });
});

test('read evidence survives continuation and separates different reads of the same ref', async () => {
  const reader = new ScopedFake('foo\n'.repeat(5000)), s = new AgentSession(reader, { maxPageBytes: 8192 });
  try {
    const found = await call(s, 'ascet_find', { target: 'members', name: 'calc' });
    const ref = found.results[0].ref;
    const first = await call(s, 'ascet_read_code', { refs: [ref] });
    assert.equal(first.has_more, true);
    const next = await call(s, 'ascet_read_code', { cursor: first.next_cursor });
    assert.deepEqual(next.read_evidence, first.read_evidence);
    const ranged = await call(s, 'ascet_read_code', { refs: [ref], lines: { start: 2, end: 3 } });
    assert.notEqual(ranged.read_evidence.id, first.read_evidence.id);
    assert.deepEqual(ranged.read_evidence.requested, { refs: [ref], lines: { start: 2, end: 3 } });
  } finally { s.close(); }
});

test('BDE budget recovery preserves options, order and duplicates without executing retries', async () => {
  let calls = 0;
  const facade = new TaskTools({ resolve: () => ({ kind: 'diagram', node: {} }), execute: async () => {
    calls++; throw new ToolError('PAGE_TOO_LARGE', 'Batch metadata exceeds page budget');
  } });
  await assert.rejects(facade.execute('ascet_read_bde', { refs: ['s1:n1', 's1:n2', 's1:n1'], depth: 2, direction: 'incoming' }), (e: any) => {
    assert.equal(e.code, 'PAGE_TOO_LARGE');
    assert.deepEqual(e.next_calls.map((c: any) => c.arguments), [
      { refs: ['s1:n1'], depth: 2, direction: 'incoming' }, { refs: ['s1:n2'], depth: 2, direction: 'incoming' },
      { refs: ['s1:n1'], depth: 2, direction: 'incoming' }]);
    e.next_calls.forEach((c: any) => validateTaskInput(c.tool, c.arguments)); return true;
  });
  assert.equal(calls, 1);
});

test('item budget failures suggest only failed items and retain inclusive line selection', async () => {
  const facade = new TaskTools({ resolve: () => ({ kind: 'method' }), execute: async () => ({ status: 'partial', results: [
    { ref: 's1:d1', code: 'x;' }, { ref: 's1:d2', error: { code: 'PAGE_TOO_LARGE', message: 'metadata' } } ] }) });
  const result = await facade.execute('ascet_read_code', { refs: ['s1:d1', 's1:d2'], lines: { start: 2, end: 5 }, if_unchanged: true });
  assert.deepEqual(result.next_calls, [{ tool: 'ascet_read_code', arguments: { refs: ['s1:d2'], lines: { start: 2, end: 5 }, if_unchanged: true } }]);
});

test('misplaced filters get lossless declared-parameter recipes; missing target is never guessed', () => {
  assert.throws(() => validateTaskInput('ascet_find', { target: 'members', kinds: ['header'], scope: { variants: ['PC'] } }), (e: any) => {
    assert.equal(e.code, 'INVALID_REQUEST'); assert.deepEqual(e.next_calls[0].arguments,
      { target: 'members', scope: { variants: ['PC'], kinds: ['header'] } }); return true;
  });
  assert.throws(() => validateTaskInput('ascet_find', { name: 'Init' }), (e: any) => {
    assert.equal(e.code, 'INVALID_REQUEST'); assert.match(e.message, /target is required/); assert.equal(e.next_calls, undefined); return true;
  });
});
