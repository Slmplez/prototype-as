import test from 'node:test';
import assert from 'node:assert/strict';
import { projectTaskResponse, projectTaskModel } from '../src/task-tools.js';
import { renderAgentResult } from '../src/agent-result-view.js';

const context = { component_path: 'Library/Owner', component_type: 'SGClass', diagram: 'Main', diagram_oid: 'diagram-a',
  variant: 'ASDL', language: 'state_model', visibility: 'public' };
const state = { ...context, ref: 's1:d2', kind: 'state', state: 'Main/Idle', state_id: 0, native_type: 'SGStateGODB', state_kind: 'state' };
const binding = { ...context, ref: 's1:d3', kind: 'transition_trigger_binding', language: 'method_reference', transition: 'Main/Transition #1',
  transition_id: 1, method_binding: { method: 'tick', method_alias: 'alias', component_oid: 'bound-component' } };
const source = { ...context, ref: 's1:d1', kind: 'transition', status: 'ok', transition: 'Main/Transition #1', transition_id: 1,
  start_state: state, end_state: { ...state, ref: 's1:d4', state: 'Main/Junction', state_id: 2, state_kind: 'junction' },
  priority: 0, code_slots: [binding], has_more: false, next_cursor: null };

test('State presentation shares context without losing endpoint or binding evidence', () => {
  const structured = projectTaskResponse(source), original = structuredClone(structured);
  const model = JSON.parse(renderAgentResult(structured, 'task'));
  assert.deepEqual(structured, original, 'structured contract is unchanged');
  assert.equal(model.priority, 0); assert.equal(model.start_state.state_id, 0);
  assert.equal(model.start_state.component_path, undefined);
  assert.equal(model.code_slots[0].language, 'method_reference');
  assert.deepEqual(model.code_slots[0].method_binding, binding.method_binding);
  assert.equal(model.code_slots[0].code, undefined);
  assert.deepEqual(model.code_slots[0].next_call.arguments, { refs: [binding.ref] });
  assert.equal(model.next_call, undefined);
  for (const [actual, expected] of [[model.start_state, structured.start_state], [model.end_state, structured.end_state], [model.code_slots[0], structured.code_slots[0]]]) {
    for (const [key, fact] of Object.entries(expected)) {
      if (key === 'identity') assert.deepEqual({ ...model.identity, ...actual.identity }, fact);
      else assert.deepEqual(actual[key] ?? model[key], fact, `preserve ${key}`);
    }
  }
  assert.ok(Buffer.byteLength(renderAgentResult(source, 'task')) < Buffer.byteLength(JSON.stringify(structured, null, 2)) * .85);
  assert.deepEqual(projectTaskModel(model), model);
});

test('related State fields never inherit a different owner, Diagram or Variant', () => {
  const foreign = { ...state, component_path: 'Other/Owner', diagram: 'Private', diagram_oid: 'diagram-b', variant: 'C', implementation: 'different' };
  const model = JSON.parse(renderAgentResult({ ...source, end_state: foreign }, 'task'));
  for (const key of ['component_path', 'diagram', 'diagram_oid', 'variant', 'implementation'] as const)
    assert.equal(model.end_state[key], foreign[key]);
  assert.equal(model.end_state.identity.implementation, 'different');
});

test('partial, paged, unresolved and deferred State information stays explicit', () => {
  const partial = { ...source, status: 'partial', start_state: null, code_slots: [], has_more: true, next_cursor: 'cursor', issues: [{ code: 'READ_INCOMPLETE' }] };
  const model = JSON.parse(renderAgentResult(partial, 'task'));
  assert.equal(model.status, 'partial'); assert.equal(model.start_state, null);
  assert.equal(model.has_more, true); assert.equal(model.next_cursor, 'cursor');
  assert.deepEqual(model.issues, partial.issues); assert.deepEqual(model.code_slots, []);
  const deferred = { ref: source.ref, deferred: true, has_more: true, next_cursor: 'cursor' };
  assert.deepEqual(JSON.parse(renderAgentResult(deferred, 'task')), deferred);
});

test('compact BDE endpoints preserve unknown objects and differing native facts', () => {
  const own = { ref: 's1:n1', kind: 'element', name: 'Source' };
  const endpoint = { ...own, name: 'Different saved name', pin: '', pin_id: 0 };
  const unknown = { ref: 's1:n9', kind: 'unknown', name: 'Unknown', pin_id: 4, pin: 'input' };
  const model = JSON.parse(renderAgentResult({ scope: 'local', ref: own.ref, object: own, pins: [], nodes: [],
    connections: [{ from: endpoint, to: unknown }], boundaries: [], depth: 1, direction: 'outgoing' }, 'task'));
  assert.equal(model.connections[0].from.name, endpoint.name);
  assert.equal(model.connections[0].from.pin_id, 0); assert.equal(model.connections[0].from.pin, '');
  assert.equal(model.connections[0].to.name, unknown.name); assert.equal(model.connections[0].to.kind, 'unknown');
  assert.deepEqual(model.requested_object.pins, []);
});
