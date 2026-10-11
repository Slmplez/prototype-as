import test from 'node:test';
import assert from 'node:assert/strict';
import { TaskBdeEvidence } from '../src/task-bde-evidence.js';

const refs = new Set(['sabc:n1', 'sabc:n2']);
const page = (pins = [56], more = false, read = 'read-one', depth = 1, direction = 'outgoing') => ({
  status: 'ok', ref: 'sabc:n1', scope: 'local', object: { ref: 'sabc:n1', name: 'Source', kind: 'element', pin_count: 1 },
  read_evidence: { id: read }, depth, direction, has_more: more,
  pins: [...pins.map(id => ({ object_ref: 'sabc:n1', id })), { object_ref: 'sabc:n2', id: 32 }],
});
const facts = { name: 'Source', kind: 'element', hierarchy: 'root', pin_ids: [56], depth: 1, direction: 'outgoing' };

test('final BDE facts are verified against the requested object rather than neighboring endpoints', () => {
  const evidence = new TaskBdeEvidence(); evidence.record(page(), refs);
  assert.deepEqual(evidence.validate(facts, ['sabc:n1'], 'located', refs), []);
  assert.ok(evidence.validate({ ...facts, pin_ids: [32] }, ['sabc:n1'], 'located', refs).length);
  assert.ok(evidence.validate({ ...facts, name: 'Destination' }, ['sabc:n1'], 'located', refs).length);
  for (const changed of [{ depth: 2 }, { direction: 'incoming' }, { hierarchy: 'root/8' }, { kind: 'operator' }])
    assert.ok(evidence.validate({ ...facts, ...changed }, ['sabc:n1'], 'located', refs).length);
});

test('BDE Pin completeness requires every inspected subject Pin and the original read chain', () => {
  const evidence = new TaskBdeEvidence();
  const first = page([56], true); first.object.pin_count = 2;
  evidence.record(first, refs);
  assert.ok(evidence.validate(facts, ['sabc:n1'], 'located', refs).length);
  assert.deepEqual(evidence.validate(facts, ['sabc:n1'], 'partial', refs), []);
  const last = page([57]); last.object.pin_count = 2;
  evidence.record(last, refs); evidence.record(first, refs);
  assert.deepEqual(evidence.validate({ ...facts, pin_ids: [56, 57] }, ['sabc:n1'], 'located', refs), []);
  const replacement = page([56], true, 'new-read'); replacement.object.pin_count = 2;
  evidence.record(replacement, refs);
  assert.ok(evidence.validate({ ...facts, pin_ids: [56, 57] }, ['sabc:n1'], 'located', refs).length);
});

test('expired/changed BDE refs cannot reuse Pin evidence and batch subjects stay independent', () => {
  const evidence = new TaskBdeEvidence(); evidence.record(page(), refs);
  assert.ok(evidence.validate(facts, ['sabc:n1'], 'located', new Set()).length);
  evidence.record({ status: 'error', code: 'DATABASE_CHANGED' }, new Set());
  assert.ok(evidence.validate(facts, ['sabc:n1'], 'located', refs).length);
  evidence.record({ status: 'ok', read_evidence: { id: 'batch' }, results: [page(), {
    ...page([32]), ref: 'sabc:n2', object: { ref: 'sabc:n2', name: 'Destination', kind: 'element', pin_count: 1 },
    pins: [{ object_ref: 'sabc:n2', id: 32 }],
  }] }, refs);
  assert.deepEqual(evidence.validate(facts, [...refs], 'located', refs), []);
  assert.ok(evidence.validate({ pin_ids: [32] }, [...refs], 'located', refs).length);
  assert.deepEqual(evidence.validate({ requested_object_ref: 'sabc:n2', pin_ids: [32] }, [...refs], 'located', refs), []);
  evidence.record({ status: 'partial', read_evidence: { id: 'mixed' }, results: [page(), { ref: 'sabc:n2', error: { code: 'SOURCE_CHANGED' } }] }, refs);
  assert.deepEqual(evidence.validate(facts, ['sabc:n1'], 'located', refs), [], 'An unrelated failed batch item does not invalidate a complete subject');
});
