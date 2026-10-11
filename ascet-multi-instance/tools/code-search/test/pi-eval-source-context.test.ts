import test from 'node:test';
import assert from 'node:assert/strict';
import { namedStateObjects, assertFrozenSourceErrors } from '../scripts/pi-eval-source-context.js';
import type { Snapshot, ReadError } from '../src/types.js';

test('independent State Machine fixtures do not require an AEB owner', () => {
  const source = { components: [{ oid: 'light', path: 'Tutorial\\Light' }],
    state_objects: [{ component_oid: 'light', kind: 'state', identity: 'main/s0' }] } as Snapshot;
  assert.deepEqual(namedStateObjects(source, 'AEB_State_Machine'), []);
  assert.deepEqual(namedStateObjects(source, 'Light'), source.state_objects);
});

test('named state fixtures do not include states from a different owner', () => {
  const source = { components: [{ oid: 'aeb', path: 'Model\\AEB_State_Machine' }],
    state_objects: [{ component_oid: 'other', identity: 'main/s0' }, { component_oid: 'aeb', identity: 'main/s1' }] } as Snapshot;
  assert.deepEqual(namedStateObjects(source, 'AEB_State_Machine'), [source.state_objects![1]]);
});

test('coverage remains strict unless the exact native errors were frozen explicitly', () => {
  const error = { component_oid: 'owner', component_path: 'Library\\Class', stage: 'container', message: 'Unsupported source' } as ReadError;
  assert.doesNotThrow(() => assertFrozenSourceErrors([], undefined));
  assert.throws(() => assertFrozenSourceErrors([error], undefined), /coverage changed/);
  assert.doesNotThrow(() => assertFrozenSourceErrors([error], [{ ...error }]));
  assert.throws(() => assertFrozenSourceErrors([{ ...error, message: 'Different failure' }], [error]), /coverage changed/);
  assert.throws(() => assertFrozenSourceErrors([error, error], [error]), /coverage changed/);
  assert.throws(() => assertFrozenSourceErrors([], [error]), /coverage changed/);
});
