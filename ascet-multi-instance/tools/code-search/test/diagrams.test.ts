import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentSession } from '../src/agent-session.js';
import { decodeResponse } from '../src/protocol.js';
import { matchDocuments } from '../src/matcher.js';
import { encode, response } from './fixtures.js';
import type { AgentFindResponse, AgentSearchResponse, AgentReadResponse, AgentBatchReadResponse } from '../src/agent-types.js';

const oid = '040qm00100001m8714ag81ugur0dk';
const pad = (r: string[]) => [...r, ...Array(10 - r.length).fill('')];
function fixture() {
  const records = [
    ['#BDE_DIAGRAM', 'Main'], ['#BDE_MEMBER', 'aabb', 'calc', 'false'], ['#BDE_MEMBER', 'ccdd', 'init', 'false'],
    ['#BDE_SCOPE', 'root', 'Main'],
    ['#BDE_NODE', 'root', '4', 'literal', '0.0'], ['#BDE_PIN', 'root', '4', '5', '', 'false', 'true'],
    ['#BDE_NODE', 'root', '6', 'element', 'AEBLockTime', 'aaaa', 'SGVariable'],
    ['#BDE_PIN', 'root', '6', '7', 'set.aValue', 'true', 'false'], ['#BDE_SEQUENCE', 'root', '7', '10', 'init'],
    ['#BDE_EDGE', 'root', '1', '5', '7', '0'],
    ['#BDE_NODE', 'root', '10', 'operator', 'Add'], ['#BDE_NODE', 'root', '11', 'control', 'If'],
    ['#BDE_NODE', 'root', '12', 'element', 'Controller', 'bbbb', 'SGClass', 'Library\\Controller'],
    ['#BDE_PIN', 'root', '12', '13', 'calc.target', 'true', 'false'],
    ['#BDE_NODE', 'root', '14', 'hierarchy', 'Layer'], ['#BDE_PIN', 'root', '14', '15', 'input', 'true', 'false'],
    ['#BDE_BOUNDARY', 'root', '14', '15', 'root/h14', '4', '5'],
    ['#BDE_SCOPE', 'root/h14', 'Layer'], ['#BDE_NODE', 'root/h14', '4', 'hierarchy_pin', ''],
    ['#BDE_PIN', 'root/h14', '4', '5', 'input', 'false', 'true'],
    ['#BDE_COMMENT', 'root/h14', '🙂 中文\r\nsecond line'],
  ].map(r => pad([r[0], oid, 'source', ...r.slice(1)]));
  const payload = () => encode([pad(['#BDE_ENABLED', '1']), pad(['#COMPONENT', oid, 'folder/Class', '', '', '', '', 'SGClass']),
    ...records, pad(['#BDE_END', oid, 'source', String(records.length)]), pad(['#STATS', '1', '1', '0', '0', '0', '0'])]);
  const native = () => ({ ...response(), payload: payload() });
  const session = new AgentSession({ request: async r => { assert.equal(r.include_diagrams, true); return native(); } });
  return { records, native, session };
}

test('generic Diagram handles operators, controls, calls and scoped hierarchy identities', async () => {
  const f = fixture();
  try {
    const found = await f.session.execute({ operation: 'find', member: 'init', match: 'exact' }) as AgentFindResponse;
    assert.equal(found.total_count, 1);
    const read = await f.session.execute({ operation: 'read', ref: found.results[0].ref, include_graph: true, if_unchanged: true }) as AgentReadResponse;
    assert.equal(read.kind, 'diagram'); assert.equal(read.method, undefined); assert.equal(read.code, undefined);
    assert.deepEqual(read.diagram_methods, [{ name: 'calc', kind: 'method' }, { name: 'init', kind: 'method' }]);
    assert.equal(read.graph!.scope, 'diagram');
    assert.match(read.diagram_text!, /operator: Add/); assert.match(read.diagram_text!, /control: If/);
    assert.match(read.diagram_text!, /Library\\Controller/); assert.match(read.diagram_text!, /root\/h14\/p5/);
    assert.doesNotMatch(read.diagram_text!, /AEBLockTime =/);
    assert.equal(read.graph!.nodes.filter(n => n.id === 4).length, 2);
  } finally { f.session.close(); }
});

test('actual values are searchable; synthetic keys, IDs and guessed code produce no hits', async () => {
  const f = fixture();
  try {
    const r = await f.session.execute({ query: ['AEBLockTime', 'Add', 'If', 'calc.target', 'Library\\Controller', 'element', 'n6', 'type 0', 'AEBLockTime = 0.0;'], context: 0 }) as AgentSearchResponse;
    assert.deepEqual(r.searches.map(q => q.total_hits), [1, 1, 1, 1, 1, 0, 0, 0, 0]);
    const hit = r.searches[0].results[0];
    assert.equal(hit.snippets![0].text, 'n6 element: AEBLockTime');
    assert.deepEqual(hit.snippets![0].matches[0].columns, [13]);
    assert.equal('search_spans' in hit, false);
  } finally { f.session.close(); }
});

test('multiline and Unicode matches stay inside one model field with original listing coordinates', () => {
  const f = fixture(); f.session.close();
  const d = decodeResponse(f.native()).documents;
  const r = matchDocuments(d, '中文\nsecond', 'text', true, 'expanded', undefined, { multiline: true });
  assert.equal(r.total_occurrences, 1); assert.equal(r.results[0].matches![0].columns[0], 12);
  const regex = matchDocuments(d, '^🙂.*line$', 'regex', true, 'expanded', undefined, { multiline: true, dotall: true });
  assert.equal(regex.total_occurrences, 1);
  const cross = matchDocuments(d, 'AEBLockTime.*set', 'regex', false, 'expanded', undefined, { multiline: true, dotall: true });
  assert.equal(cross.total_occurrences, 0);
});

test('Method and alias filters select one owning Diagram without duplicating shared contents', async () => {
  const f = fixture();
  try {
    for (const scope of [{ member: 'calc' }, { member: 'init' }, { member_id: 'ccdd' }, { member: ['calc', 'init'] }]) {
      const r = await f.session.execute({ query: 'AEBLockTime', in: { ...scope, kind: 'diagram' } }) as AgentSearchResponse;
      assert.equal(r.total_hits, 1); assert.equal(r.searches[0].results.length, 1);
    }
    assert.equal((await f.session.execute({ query: 'AEBLockTime', in: { member: 'missing' } }) as AgentSearchResponse).total_hits, 0);
  } finally { f.session.close(); }
});

test('sequence, topology and Class pin changes invalidate refs even when searched labels remain', async () => {
  for (const mutate of [
    (r: string[][]) => { r.find(r => r[0] === '#BDE_SEQUENCE')![5] = '20'; },
    (r: string[][]) => { r.find(r => r[0] === '#BDE_EDGE')![7] = '3'; },
    (r: string[][]) => { r.find(r => r[0] === '#BDE_PIN' && r[5] === '13')![6] = 'calc.newArgument'; },
  ]) {
    const f = fixture();
    try {
      const found = await f.session.execute({ query: 'AEBLockTime' }) as AgentSearchResponse;
      const ref = found.searches[0].results[0].ref; mutate(f.records);
      await assert.rejects(f.session.execute({ operation: 'read', ref, if_unchanged: true }), { code: 'SOURCE_CHANGED' });
      const current = await f.session.execute({ operation: 'read', ref }) as AgentReadResponse;
      assert.equal(current.status, 'changed');
    } finally { f.session.close(); }
  }
});

test('wrapper iteration order and unstored edge ordinals do not change a Diagram revision', () => {
  const f = fixture(); f.session.close();
  const before = decodeResponse(f.native()).documents[0];
  f.records.find(r => r[0] === '#BDE_EDGE')![4] = '99';
  const head = f.records.shift()!; f.records.reverse(); f.records.unshift(head);
  assert.equal(decodeResponse(f.native()).documents[0].source_sha256, before.source_sha256);
});

test('unknown node makes the response partial without discarding searchable known model facts', async () => {
  const f = fixture();
  f.records.find(r => r[0] === '#BDE_NODE' && r[4] === '10')![5] = 'vendor_extension';
  try {
    const r = await f.session.execute({ query: 'AEBLockTime' }) as AgentSearchResponse;
    assert.equal(r.status, 'partial'); assert.equal(r.total_hits, 1); assert.ok(r.issues?.length);
    const read = await f.session.execute({ operation: 'read', ref: r.searches[0].results[0].ref, include_graph: true }) as AgentReadResponse;
    assert.equal(read.status, 'partial'); assert.equal(read.graph?.scope, 'diagram'); assert.ok(read.issues?.length);
  } finally { f.session.close(); }
});

test('dangling endpoints, wrong boundaries, unstored pins and duplicate identities fail closed', () => {
  for (const mutate of [
    (r: string[][]) => { r.find(r => r[0] === '#BDE_EDGE')![6] = '999'; },
    (r: string[][]) => { r.find(r => r[0] === '#BDE_BOUNDARY')![8] = '999'; },
    (r: string[][]) => { r.find(r => r[0] === '#BDE_PIN')![5] = '-1'; },
    (r: string[][]) => { r.push(r.find(r => r[0] === '#BDE_PIN')!); },
    (r: string[][]) => { r.push(r.find(r => r[0] === '#BDE_MEMBER')!); },
    (r: string[][]) => { r.splice(r.findIndex(r => r[0] === '#BDE_SCOPE' && r[3] !== 'root'), 1); },
  ]) { const f = fixture(); f.session.close(); mutate(f.records); assert.throws(() => decodeResponse(f.native())); }
});

test('batch reads and pagination keep the Diagram identity and optional structural evidence', async () => {
  const f = fixture();
  try {
    const first = await f.session.execute({ query: ['AEBLockTime', 'Add'], limit: 1 }) as AgentSearchResponse;
    assert.equal(first.has_more, true);
    const next = await f.session.execute({ cursor: first.next_cursor }) as AgentSearchResponse;
    const refs = [...first.searches, ...next.searches].flatMap(q => q.results.map(d => d.ref));
    assert.equal(refs[0], refs[1]);
    const read = await f.session.execute({ operation: 'read', ref: refs, if_unchanged: true }) as AgentBatchReadResponse;
    assert.equal(read.status, 'ok'); assert.equal(read.returned_count, 2);
    assert.ok(read.results.every(r => !('graph' in r) && !('status' in r)));
  } finally { f.session.close(); }
});

test('missing end marker or lost otherwise-valid row rejects an incomplete graphical transport', () => {
  const f = fixture(); f.session.close();
  const raw = f.native(), fields = raw.payload.split('|');
  for (const tag of ['#BDE_END', '#BDE_EDGE']) {
    const damaged = [...fields], at = damaged.indexOf(tag);
    assert.ok(at >= 0); damaged.splice(at, 10);
    assert.throws(() => decodeResponse({ payload: damaged.join('|') }), /BDE.*(?:count|marker)/);
  }
});

test('retired graphical_method filter provides an explicit migration error', async () => {
  const f = fixture();
  try {
    await assert.rejects(f.session.execute({ query: 'x', in: { kind: 'graphical_method' } }),
      (error: any) => error.code === 'INVALID_REQUEST' && error.message.includes('in.kind:diagram'));
  } finally { f.session.close(); }
});
