import test from 'node:test';
import assert from 'node:assert/strict';
import { primaryCheck, scoreDimensions, validatePiEvalContract } from '../scripts/pi-eval-contract.js';
test('self-reported intent is auxiliary but observed wrong scope and tool errors still fail tasks', () => {
  assert.equal(primaryCheck({ name: 'intent_terms', passed: false }), false);
  assert.equal(primaryCheck({ name: 'intent_schema', passed: false }), false);
  for (const name of ['intent_read_scope', 'intent_call_errors', 'intent_no_speculative_tools', 'native_neighborhood', 'strict_json_format'])
    assert.equal(primaryCheck({ name, passed: false }), true);
  assert.deepEqual(scoreDimensions([{ name: 'intent_call_errors', passed: true }, { name: 'native_neighborhood', passed: false }, { name: 'strict_json_format', passed: true }]),
    { tool_behavior_passed: true, evidence_and_facts_passed: false, answer_contract_passed: true });
});
test('local-read rubric rejects an undeclared connection array before any model call', () => {
  const plan = { grading_version: 2, cases: [{ id: 'local', requirement: 'facts: name,kind,hierarchy,pin_ids,connection_count', rubric: { type: 'local' } }] };
  assert.deepEqual(validatePiEvalContract(plan), ['local: rubric requires undeclared facts.connections']);
  plan.cases[0].requirement += ', connections [{from_pin_id,to_pin_id}]';
  assert.deepEqual(validatePiEvalContract(plan), []);
  assert.deepEqual(validatePiEvalContract({ ...plan, intent_recording: 'final_only', answer_format: 'Before your first tool call emit intent' }),
    ['final_only conflicts with a pre-tool intent declaration']);
});
