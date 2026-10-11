import test from 'node:test';
import assert from 'node:assert/strict';
import { readStateMachine } from '../src/read-state-machine.js';
import { execute } from '../src/read.js';
import { decodeResponse } from '../src/protocol.js';
import { encode, response, rows, stateRows } from './fixtures.js';
import type { NativeRequest, NativeResponse, Reader } from '../src/types.js';

const request = { operation: 'read_state_machine', component_oid: 'oid1', expected_database: 'db' };
function bundleRows(): string[][] {
  const state = stateRows();
  state.splice(1, 0,
    ['#STATE_COMPONENT', 'oid1', 'folder/class', '', '', '', '', '', '2', '1'],
    ['#STATE_METHOD', 'oid1', 'Main', 'SGSmSpecification', 'spec1', 'abcd', 'sm', 'EtasAPITrigger', 'trigger', 'false'],
    ['#STATE_METHOD', 'oid1', 'Init', 'SGBdSpecification', 'init1', 'cdef', 'init', 'EtasAPIDiscreteMethod', 'graphical', 'false']);
  return state;
}
class StateReader implements Reader {
  calls: NativeRequest[] = [];
  data = bundleRows();
  async request(input: NativeRequest): Promise<NativeResponse> {
    this.calls.push(input); return { ...response(), payload: encode(this.data) };
  }
}

test('one state bundle preserves complete slot text, nested identity and trigger-event relationships', async () => {
  const reader = new StateReader();
  reader.data.find(r => r[0] === 'state_entry')![8] = '🙂 foo\r\nbar\r';
  const result = await execute({ ...request, id: 'sample' }, reader);
  assert.ok('methods' in result);
  assert.deepEqual(reader.calls, [{ mode: 'read_state_machine', needle: 'oid1', expected_database: 'db' }]);
  assert.equal(result.source_read_complete, true);
  assert.equal(result.binding_resolution_complete, true);
  assert.equal(result.status, 'partial'); assert.equal(result.complete, false);
  assert.deepEqual(result.unread_method_bodies, [{ member_id: 'cdef', member_name: 'init', reason: 'graphical_not_supported' }]);
  assert.equal(result.methods[0].body_status, 'state_machine_event');
  assert.equal(result.methods[0].binding_document_ids.length, 1);
  assert.deepEqual(result.methods[0].source_document_ids, []);
  const doc = result.documents.find(d => d.kind === 'state_entry')!;
  assert.equal(doc.text, '🙂 foo\r\nbar\r'); assert.equal(doc.line_count, 3);
  assert.deepEqual(doc.location?.hierarchy_state_ids, [4]);
  assert.equal(result.diagrams[0].diagram_name, 'Main');
  assert.equal(result.id, 'sample');
});

test('bound text method links to every stored version without confusing duplicate names', async () => {
  const reader = new StateReader();
  const method = reader.data.find(r => r[0] === '#STATE_METHOD' && r[5] === 'abcd')!;
  method[3] = 'SGASDLSpecification'; method[7] = 'EtasAPIActionMethod'; method[8] = 'text';
  const other = reader.data.find(r => r[0] === '#STATE_METHOD' && r[5] === 'cdef')!;
  other[6] = 'sm';
  for (const variant of ['ASDL', 'PC']) reader.data.splice(-1, 0,
    ['method', 'oid1', 'folder/class', '', variant, 'abcd', 'sm', 'esdl', 'return foo;\r\n', '']);
  const result = await readStateMachine(request, reader);
  assert.equal(result.binding_resolution_complete, true);
  assert.equal(result.methods[0].body_status, 'text');
  assert.equal(result.methods[0].source_document_ids.length, 2);
  assert.equal(result.methods[1].binding_document_ids.length, 0);
  assert.equal(result.unread_method_bodies.length, 1);
});

test('trigger-only bundle can be source-complete; reread uses current storage, not cached text', async () => {
  const reader = new StateReader();
  reader.data = reader.data.filter(r => !(r[0] === '#STATE_METHOD' && r[5] === 'cdef'));
  reader.data[1][8] = '1';
  const before = await readStateMachine(request, reader);
  assert.equal(before.complete, true); assert.equal(before.status, 'ok');
  reader.data.find(r => r[0] === 'state_entry')![8] = 'changed';
  const after = await readStateMachine(request, reader);
  assert.notEqual(before.documents[0].source_sha256, after.documents[0].source_sha256);
  assert.equal(after.documents[0].text, 'changed'); assert.equal(reader.calls.length, 2);
});

test('unavailable bound sources and graphical bindings never claim resolution', async () => {
  for (const category of ['text', 'graphical', 'unknown', 'trigger']) {
    const reader = new StateReader();
    const method = reader.data.find(r => r[0] === '#STATE_METHOD' && r[5] === 'abcd')!;
    method[8] = category; method[4] = 'unavailable-diagram';
    const result = await readStateMachine(request, reader);
    assert.equal(result.complete, false); assert.equal(result.binding_resolution_complete, false);
    assert.equal(result.source_read_complete, true);
    assert.ok(result.unread_method_bodies.some(m => m.member_id === 'abcd'));
  }
});

test('missing or inconsistent method inventory and read errors produce explicit partial results', async () => {
  for (const damage of ['missing', 'renamed', 'read-failed']) {
    const reader = new StateReader();
    if (damage === 'missing') {
      reader.data = reader.data.filter(r => !(r[0] === '#STATE_METHOD' && r[5] === 'abcd'));
      reader.data[1][8] = '1';
    }
    if (damage === 'renamed') reader.data.find(r => r[0] === '#STATE_METHOD')![6] = 'wrong';
    if (damage === 'read-failed') reader.data.splice(-1, 0, ['#ERROR', 'oid1', 'folder/class', '', '', '', '', '', 'state source', 'failed']);
    const result = await readStateMachine(request, reader);
    assert.equal(result.status, 'partial'); assert.equal(result.complete, false);
    assert.equal(result.source_read_complete, false); assert.equal(result.binding_resolution_complete, false);
    assert.ok(result.errors.length);
  }
});

test('invalid state bundle requests perform no live read', async () => {
  const reader = new StateReader();
  for (const input of [null, {}, { ...request, component_oid: '' }, { ...request, component_oid: 'a\nb' },
    { ...request, component_oid: 'a\0b' }, { ...request, expected_database: '' }, { ...request, extra: true },
    { ...request, operation: 'read' }]) await assert.rejects(readStateMachine(input, reader));
  assert.equal(reader.calls.length, 0);
});

test('absent component, wrong kind and old native protocol have distinct errors', async () => {
  const reader = new StateReader();
  reader.data = [['#STATS', '0', '0', '0', '0', '0', '0', '', '', '']];
  await assert.rejects(readStateMachine(request, reader), { code: 'COMPONENT_NOT_FOUND' });
  reader.data = rows();
  await assert.rejects(readStateMachine(request, reader), { code: 'NOT_A_STATE_MACHINE' });
  reader.data = stateRows();
  await assert.rejects(readStateMachine(request, reader), { code: 'UNSUPPORTED_READER_PROTOCOL' });
});

test('malformed state metadata rejects duplicate aliases, cross-component records and bad protocol versions', () => {
  const duplicate = bundleRows(); duplicate.splice(2, 0, duplicate[2]);
  assert.throws(() => decodeResponse({ payload: encode(duplicate) }), /duplicate state method/);
  const other = bundleRows(); other.find(r => r[0] === '#STATE_METHOD')![1] = 'other-component';
  assert.throws(() => decodeResponse({ payload: encode(other) }), /another component/);
  const version = bundleRows(); version[1][9] = '2';
  assert.throws(() => decodeResponse({ payload: encode(version) }), /bundle version/);
  const orphan = bundleRows().filter(r => r[0] !== '#STATE_COMPONENT');
  assert.throws(() => decodeResponse({ payload: encode(orphan) }), /without bundle identity/);
  const truncated = bundleRows().filter(r => !(r[0] === '#STATE_METHOD' && r[5] === 'cdef'));
  assert.throws(() => decodeResponse({ payload: encode(truncated) }), /Incomplete state method inventory/);
});
