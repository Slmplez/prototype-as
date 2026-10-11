import test from 'node:test';
import assert from 'node:assert/strict';
import { decodeGraphicalBodies, graphicalStatements, graphicalText } from '../src/graphical.js';
import { decodeResponse } from '../src/protocol.js';
import { search } from '../src/search.js';
import { readDocument } from '../src/read.js';
import { readStateMachine } from '../src/read-state-machine.js';
import { encode, graphRows, response, stateRows } from './fixtures.js';
import type { NativeRequest, Reader } from '../src/types.js';

const decode = (rows = graphRows()) => decodeGraphicalBodies(rows)[0];
const statements = (rows = graphRows(), alias = 'cdef') => graphicalStatements(decode(rows), alias).map(s => s.text);
function bundle() {
  return [...stateRows(), ...graphRows(),
    ['#STATE_COMPONENT', 'oid1', 'folder/class', '', '', '', '', '', '2', '1'],
    ['#STATE_METHOD', 'oid1', 'Main', 'SGSmSpecification', 'spec1', 'abcd', 'sm', 'EtasAPITrigger', 'trigger', 'false'],
    ['#STATE_METHOD', 'oid1', 'Init', 'SGBdSpecification', 'init1', 'cdef', 'init', 'EtasAPIDiscreteMethod', 'graphical', 'false']];
}
function reader(data = bundle()): Reader & { calls: NativeRequest[] } {
  return { calls: [], async request(request) { this.calls.push(request); return { ...response(), payload: encode(data) }; } };
}

test('real Init storage preserves getter output, setter input, literal, alias, wire and execution order', () => {
  const graph = decode();
  assert.equal(graph.complete, true);
  assert.deepEqual(graph.issues, []);
  assert.equal(graph.nodes.find(n => n.id === 6)!.element_alias, 'abcd01');
  assert.deepEqual(graph.ports.map(p => [p.id, p.direction, p.operation]), [[5, 'return', 'literal'], [7, 'selector', 'set'], [8, 'return', 'get']]);
  assert.deepEqual(graph.connections.map(e => [e.from_port, e.to_port]), [[5, 7]]);
  assert.deepEqual(graph.sequences.map(s => [s.method_alias, s.number]), [['cdef', 10]]);
  assert.deepEqual(statements(), ['AEBLockTime = 0.0;']);
  assert.match(graphicalText(graph, 'cdef'), /not handwritten ESDL or generated C/);
});

test('Init participates in bundle completion, global search, context and stable full read', async () => {
  const bridge = reader();
  const state = await readStateMachine({ operation: 'read_state_machine', component_oid: 'oid1', expected_database: 'db' }, bridge);
  assert.equal(state.complete, true); assert.equal(state.status, 'ok');
  assert.deepEqual(state.unread_method_bodies, []);
  assert.equal(state.methods.find(m => m.member_name === 'init')!.body_status, 'graphical');
  assert.equal(state.graphical_bodies.length, 1);
  const found = await search({ query: 'AEBLockTime = 0.0;', context_before: 1, context_after: 1 }, bridge);
  assert.ok('results' in found);
  assert.equal(found.results.length, 1);
  const hit = found.results[0];
  assert.equal(hit.kind, 'graphical_method'); assert.equal(hit.member_id, 'cdef');
  assert.equal(hit.variant, 'BD'); assert.equal(hit.representation, 'graphical_model');
  assert.ok(hit.context![0].lines.includes('// sequence 10'));
  const read = await readDocument({ operation: 'read', target: { component_oid: 'oid1', document_id: hit.document_id },
    expected_source_sha256: hit.source_sha256, expected_database: 'db' }, bridge);
  const { line_count, ...document } = state.documents.find(d => d.kind === 'graphical_method')!;
  assert.deepEqual(read.document, document); assert.equal(read.line_count, line_count);
  assert.equal(bridge.calls.length, 3);
});

test('graph edits change the source hash but preserve method identity and reject stale reads', async () => {
  const data = bundle(), bridge = reader(data);
  const before = decodeResponse({ payload: encode(data) }).documents.find(d => d.kind === 'graphical_method')!;
  data.find(r => r[0] === '#GRAPH_NODE' && r[5] === 'SGLiteralGODB')![8] = '2.0';
  const after = decodeResponse({ payload: encode(data) }).documents.find(d => d.kind === 'graphical_method')!;
  assert.equal(before.document_id, after.document_id); assert.notEqual(before.source_sha256, after.source_sha256);
  await assert.rejects(readDocument({ operation: 'read', target: { component_oid: 'oid1', document_id: before.document_id },
    expected_source_sha256: before.source_sha256, expected_database: 'db' }, bridge), { code: 'SOURCE_CHANGED' });
  assert.match(after.text, /AEBLockTime = 2.0;/);
});

test('shared graphical specification does not attribute another method assignment to Init', () => {
  const rows = graphRows();
  rows.push(['#GRAPH_METHOD', 'oid1', 'init1', 'eeee', 'other', 'false', '', '', '', '']);
  rows.find(r => r[0] === '#GRAPH_SPEC')![8] = '2';
  rows.find(r => r[0] === '#GRAPH_SEQUENCE')![6] = 'eeee';
  const graph = decode(rows);
  assert.equal(graph.complete, true);
  assert.deepEqual(graphicalStatements(graph, 'cdef'), []);
  assert.doesNotMatch(graphicalText(graph, 'cdef'), /AEBLockTime|eeee|other/);
  assert.match(graphicalText(graph, 'eeee'), /AEBLockTime = 0.0;/);
});

test('direct data getter RHS uses the element name, never the setter port', () => {
  const rows = graphRows();
  const source = rows.find(r => r[0] === '#GRAPH_NODE' && r[4] === '4')!;
  source.splice(5, 5, 'SGDataGODB', 'beef', 'StartTime', '', 'SGParameter');
  const port = rows.find(r => r[0] === '#GRAPH_PORT' && r[4] === '4')!;
  port[7] = 'get'; port[9] = 'true/false/false';
  assert.deepEqual(statements(rows), ['AEBLockTime = StartTime;']);
  port[6] = 'selector';
  assert.equal(decode(rows).complete, false); assert.deepEqual(statements(rows), []);
});

for (const [name, mutate] of [
  ['unknown node', (r: string[][]) => { r.find(r => r[0] === '#GRAPH_NODE' && r[4] === '4')![5] = 'SGOperatorGODB'; }],
  ['unresolved element', (r: string[][]) => { r.find(r => r[0] === '#GRAPH_NODE' && r[4] === '6')![7] = ''; }],
  ['dangling connector', (r: string[][]) => { r.find(r => r[0] === '#GRAPH_EDGE')![5] = '999'; }],
  ['nil connector', (r: string[][]) => { r.find(r => r[0] === '#GRAPH_EDGE')![5] = 'nil'; }],
  ['unknown method alias', (r: string[][]) => { r.find(r => r[0] === '#GRAPH_SEQUENCE')![6] = 'beef'; }],
  ['unsupported execution flags', (r: string[][]) => { r.find(r => r[0] === '#GRAPH_SEQUENCE')![9] = 'nil/true'; }],
  ['unsupported port flags', (r: string[][]) => { r.find(r => r[0] === '#GRAPH_PORT' && r[5] === '7')![9] = 'true/false/true'; }],
  ['nested hierarchy', (r: string[][]) => { for (const row of r) if (row[3] === 'root') row[3] = 'root/h2'; }],
  ['native diagnostic', (r: string[][]) => { r.push(['#GRAPH_ISSUE', 'oid1', 'init1', 'root', '6', 'Unsupported object', '', '', '', '']); }],
] as const) test(`${name} preserves partial graph evidence and never fabricates an assignment`, async () => {
  const data = bundle(); mutate(data);
  const state = await readStateMachine({ operation: 'read_state_machine', component_oid: 'oid1', expected_database: 'db' }, reader(data));
  assert.equal(state.complete, false); assert.equal(state.status, 'partial');
  assert.ok(state.errors.length); assert.equal(state.graphical_bodies[0].complete, false);
  assert.deepEqual(graphicalStatements(state.graphical_bodies[0], 'cdef'), []);
  assert.equal(state.methods.find(m => m.member_name === 'init')!.body_status, 'graphical_not_supported');
});

test('ambiguous multiple inputs and tied execution orders are explicitly partial', () => {
  const rows = graphRows();
  const duplicateEdge = [...rows.find(r => r[0] === '#GRAPH_EDGE')!]; duplicateEdge[4] = '2'; rows.push(duplicateEdge);
  rows.find(r => r[0] === '#GRAPH_SPEC')![7] = '2';
  assert.equal(decode(rows).complete, false); assert.deepEqual(statements(rows), []);
  const tied = graphRows(), seq = [...tied.find(r => r[0] === '#GRAPH_SEQUENCE')!]; seq[5] = '12'; tied.push(seq);
  tied.find(r => r[0] === '#GRAPH_SPEC')![6] = '2';
  assert.ok(decode(tied).issues.some(i => i.includes('Ambiguous execution order')));
});

test('corrupt graph transport rejects missing headers, counts, duplicate IDs and orphan ports', () => {
  assert.throws(() => decode(graphRows().filter(r => r[0] !== '#GRAPH_SPEC')), /header/);
  assert.throws(() => decode(graphRows().filter(r => !(r[0] === '#GRAPH_NODE' && r[4] === '4'))), /Incomplete/);
  const duplicate = graphRows(); duplicate.filter(r => r[0] === '#GRAPH_NODE')[1][4] = '-1';
  assert.throws(() => decode(duplicate), /Duplicate graphical node/);
  const orphan = graphRows(); orphan.find(r => r[0] === '#GRAPH_PORT')![4] = '999';
  assert.throws(() => decode(orphan), /orphan graphical port/);
  const otherSpec = graphRows().map(r => { const c = [...r]; c[2] = 'init2'; return c; });
  assert.throws(() => decodeResponse({ payload: encode([...bundle(), ...otherSpec]) }), /Duplicate graphical document/);
});

test('graph record ordering does not change identity, text or hashes', () => {
  assert.deepEqual(decode(graphRows().reverse()), decode());
});
