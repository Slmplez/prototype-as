import assert from 'node:assert/strict';
import type { Snapshot, ReadError } from '../src/types.js';

/** A generic rubric must work in a database that contains no AEB fixture. */
export function namedStateObjects(source: Snapshot, componentName: string) {
  const owner = source.components.find(c => c.path.split('\\').at(-1) === componentName);
  return owner ? source.state_objects?.filter(o => o.component_oid === owner.oid) ?? [] : [];
}

/** Partial native inventories are explicit frozen coverage gaps, never complete evidence. */
export function assertFrozenSourceErrors(actual: ReadError[], expected: ReadError[] | undefined): void {
  assert.deepEqual(actual, expected ?? [], 'Native source coverage changed from the frozen evaluation plan');
}
