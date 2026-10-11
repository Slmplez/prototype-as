import test from 'node:test';
import assert from 'node:assert/strict';
import { applyReassessment, assertPlanProvenance, reportSHA, scoreSafely, type Reassessment } from '../scripts/pi-eval-score-provenance.js';

test('malformed answer types fail one attempt while live and offline batch grading continue', () => {
  const answers = [{ statements: [{ code: 'x=0;' }] }, { statements: ['x=0;'] }];
  const scores = answers.map(answer => scoreSafely(() => {
    const statements = answer.statements.map(s => (s as string).replace(/\s+/g, ''));
    return { passed: statements[0] === 'x=0;', semantic_passed: true, checks: [] };
  }));
  assert.equal(scores[0].passed, false);
  assert.equal(scores[0].semantic_passed, false);
  assert.deepEqual(scores[0].checks.map(c => c.name), ['scoring_error']);
  assert.equal(scores[1].passed, true);
  assert.deepEqual(answers[0], { statements: [{ code: 'x=0;' }] });
  const passing = { passed: true, checks: [] };
  assert.equal(scoreSafely(() => passing), passing);
});

test('reassessment preserves original calls, requirements and answers and refuses a changed source report', () => {
  const original = { cases: [{ id: 'case', repetition: 1, requirement: 'original requirement', calls: [{ tool: 'find', args: { name: 'Class' } }],
    final_text: 'original raw answer', execution_status: 'completed', scoring: { passed: false, checks: [] } }] };
  const raw = JSON.stringify(original);
  const review: Reassessment = { source_report_sha256: reportSHA(raw), scoring_artifact_sha256: 'grader',
    cases: [{ id: 'case', repetition: 1, execution_status: 'completed', scoring: { passed: true, checks: [] } }] };
  const updated = applyReassessment(raw, review);
  assert.deepEqual(updated.cases[0].calls, original.cases[0].calls);
  assert.equal(updated.cases[0].requirement, original.cases[0].requirement);
  assert.equal((updated.cases[0] as any).final_text, original.cases[0].final_text);
  assert.equal(updated.cases[0].scoring.passed, true);
  assert.throws(() => applyReassessment(raw + ' ', review), /original report/);
  assert.throws(() => applyReassessment(raw, { ...review, cases: [] }), /inventory/);
});

test('reassessment rejects a duplicate original inventory even if all keys have scores', () => {
  const original = { cases: [{ id: 'a' }, { id: 'a' }] };
  const raw = JSON.stringify(original);
  assert.throws(() => applyReassessment(raw, { source_report_sha256: reportSHA(raw), scoring_artifact_sha256: 'grader',
    cases: ['a', 'b'].map(id => ({ id, execution_status: 'completed', scoring: { passed: true, checks: [] } })) }), /duplicates/);
});

test('offline reassessment requires the original evaluation plan bytes', () => {
  const planRaw = '{"tasks":[]}\n';
  const report = { status: 'recorded', cases: [], artifact_sha256: { 'PI_AGENT_EVAL_CASES.json': reportSHA(planRaw) } };
  assert.doesNotThrow(() => assertPlanProvenance(report, planRaw));
  assert.throws(() => assertPlanProvenance(report, planRaw + ' '), /Evaluation plan/);
  assert.throws(() => assertPlanProvenance({ ...report, artifact_sha256: {} }, planRaw), /Evaluation plan/);
});

test('reassessed intentional-error indices do not rewrite raw calls and must address actual errors', () => {
  const original = { cases: [{ id: 'a', calls: [{ tool: 'read', args: {}, is_error: true, expected_error: false },
    { tool: 'read', args: {}, is_error: false }], execution_status: 'completed', scoring: { passed: false, checks: [] } }] };
  const raw = JSON.stringify(original);
  const review: Reassessment = { source_report_sha256: reportSHA(raw), scoring_artifact_sha256: 'grader',
    cases: [{ id: 'a', execution_status: 'completed', expected_error_call_indices: [0], scoring: { passed: true, checks: [] } }] };
  assert.deepEqual(applyReassessment(raw, review).cases[0].calls, original.cases[0].calls);
  for (const indices of [[1], [2], [-1], [0, 0]]) assert.throws(() => applyReassessment(raw,
    { ...review, cases: [{ ...review.cases[0], expected_error_call_indices: indices }] }), /expected-error/);
});
