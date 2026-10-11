import test from 'node:test';
import assert from 'node:assert/strict';
import { assertSameRecords } from '../scripts/bde-matrix-compare.js';

test('matrix comparator ignores JSON key and record order', () => {
  assertSameRecords([{ ref: 'n1', hierarchy: 'root/h1', endpoint: { id: 4, name: 'input' } }, { ref: 'n2' }],
    [{ ref: 'n2' }, { endpoint: { name: 'input', id: 4 }, hierarchy: 'root/h1', ref: 'n1' }], 'same model facts');
});

test('matrix comparator detects missing and duplicated records', () => {
  const item = { ref: 'n1', name: 'same' };
  assert.throws(() => assertSameRecords([item, item], [item], 'duplicate'), assert.AssertionError);
  assert.throws(() => assertSameRecords([], [item], 'missing'), assert.AssertionError);
});

test('matrix comparator preserves identity, scope and connection direction', () => {
  for (const changed of [{ ref: 'n2', hierarchy: 'root/h1', from: 4, to: 5 },
    { ref: 'n1', hierarchy: 'root/h2', from: 4, to: 5 }, { ref: 'n1', hierarchy: 'root/h1', from: 5, to: 4 }]) {
    assert.throws(() => assertSameRecords([changed], [{ ref: 'n1', hierarchy: 'root/h1', from: 4, to: 5 }], 'changed fact'), assert.AssertionError);
  }
});

test('matrix comparator does not sort nested arrays or discard fields', () => {
  assert.throws(() => assertSameRecords([{ path: [1, 2] }], [{ path: [2, 1] }], 'different nested path'), assert.AssertionError);
  assert.throws(() => assertSameRecords([{ ref: 'n1', pin: 7 }], [{ ref: 'n1' }], 'extra field'), assert.AssertionError);
});
