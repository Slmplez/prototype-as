import test from 'node:test';
import assert from 'node:assert/strict';
import { argumentStreams, diagnoseAttempt, diagnoseError, eventFileStem } from '../scripts/pi-eval-diagnostics.js';

test('event paths preserve the first repetition suffix in a repeated evaluation', () => {
  assert.equal(eventFileStem({ id: 'case', repetition: 1, execution_id: 'case-r1' }, 2), 'case-r1');
  assert.equal(eventFileStem({ id: 'case', repetition: 2, execution_id: 'case-r2' }, 2), 'case-r2');
  assert.equal(eventFileStem({ id: 'case', repetition: 1, execution_id: 'case' }, 1), 'case');
  assert.throws(() => eventFileStem({ id: 'case', repetition: 1, execution_id: 'unrelated' }, 2), /execution ID/);
});

test('raw parallel argument streams follow completion order and invalid syntax is kept verbatim', () => {
  const update = (assistantMessageEvent: any) => ({ type: 'message_update', assistantMessageEvent });
  const events = [update({ type: 'toolcall_start', contentIndex: 0, id: 'a' }), update({ type: 'toolcall_start', contentIndex: 1, id: 'b' }),
    update({ type: 'toolcall_delta', contentIndex: 0, delta: '{"query": symbol}' }), update({ type: 'toolcall_delta', contentIndex: 1, delta: '{"query":"symbol"}' }),
    update({ type: 'toolcall_end', contentIndex: 0, toolCall: { id: 'a' } }), update({ type: 'toolcall_end', contentIndex: 1, toolCall: { id: 'b' } }),
    { type: 'tool_execution_end', toolCallId: 'b' }, { type: 'tool_execution_end', toolCallId: 'a' }];
  const captured = argumentStreams(events, 2);
  assert.equal(captured.complete, true);
  assert.deepEqual(captured.calls.map(c => c.tool_call_id), ['b', 'a']);
  assert.equal(captured.calls[1].raw_arguments, '{"query": symbol}');
  assert.equal(diagnoseError({ tool: 'search', args: {}, is_error: true, ms: 1 }, captured.calls[1].raw_arguments), 'json_syntax');
  assert.equal(diagnoseError({ tool: 'search', args: {}, is_error: true, ms: 1 }), 'empty_arguments_unresolved');
  assert.deepEqual(argumentStreams(events.slice(0, -1), 2), { complete: false, calls: [] });
});

test('diagnostics exclude deliberate error indices without rewriting labels or removing repeated failures', () => {
  const attempt = { id: 'case', execution_status: 'completed', total_ms: 1,
    calls: [{ tool: 'read', args: { ref: '["a","b"]' }, is_error: true, ms: 1, expected_error: false },
      { tool: 'read', args: { ref: '["a","b"]' }, is_error: true, ms: 1, expected_error: false }],
    expected_error_call_indices: [0], scoring: { passed: false, checks: [{ name: 'required_read', passed: false }] } };
  const before = structuredClone(attempt), diagnosis = diagnoseAttempt(attempt);
  assert.equal(diagnosis.errors.length, 1);
  assert.equal(diagnosis.errors[0].call_index, 1);
  assert.equal(diagnosis.errors[0].category, 'encoded_ref_array');
  assert.deepEqual(attempt, before);
});
