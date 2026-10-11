import test from 'node:test';
import assert from 'node:assert/strict';
import { assessFullAcceptance, compareOptimizationReports, optimizationMetrics, type EvalReport } from '../scripts/pi-eval-metrics.js';

function report(passes: boolean[], count = 4): EvalReport {
  return { status: 'recorded', source_fingerprint: 'saved-corpus', pi_version: '1.0.2',
    scoring_artifact_sha256: 'grader',
    first_attempt_only: true, summary: { planned: passes.length }, artifact_sha256: { 'PI_AGENT_EVAL_CASES.json': 'plan',
      'dist/src/pi-extension.js': 'extension', 'dist/src/tool-contracts.js': 'contracts', 'dist/src/agent-result-view.js': 'renderer' },
    closeout: { status: 'passed', sources_and_graphs_unchanged: true, isolated_instance_stopped: true,
      protected_processes_unchanged: true, endpoint_closed: true },
    cases: passes.map((passed, i) => ({ id: 'task-' + i, repetition: 1, requirement: 'Requirement ' + i,
      model: { provider: 'fixture', model: 'fixture' }, execution_status: 'completed', total_ms: 10,
      calls: Array.from({ length: count }, (_, j) => ({ tool: 'read', args: { ref: String(j) }, is_error: false, ms: 1, model_bytes: 20 })),
      scoring: { passed, semantic_passed: passed, checks: [{ name: 'native_source_ref', passed: true }] } })) };
}

test('metrics retain model failures separately and exclude deliberately requested errors', () => {
  const data = report([true, false, false]);
  data.cases[0].calls[0] = { tool: 'search', args: {}, is_error: true, expected_error: true, ms: 1 };
  data.cases[1].calls[0].is_error = true;
  data.cases[2].execution_status = 'model_service_failed';
  const metrics = optimizationMetrics(data);
  assert.deepEqual(metrics.strict_acceptance, { numerator: 1, denominator: 2, rate: .5 });
  assert.deepEqual(metrics.unexpected_error_rate, { numerator: 1, denominator: 7, rate: 1 / 7 });
  assert.deepEqual(metrics.first_call_success, { numerator: 0, denominator: 1, rate: 0 });
  assert.equal(metrics.model_service_failures, 1);
  assert.equal(metrics.tasks_with_unexpected_errors, 1);
  assert.equal(metrics.native_source_checks.denominator, 2);
});

test('repeated arguments are canonicalized but different ref arrays remain distinct', () => {
  const data = report([true], 0);
  data.cases[0].calls = [
    { tool: 'search', args: { in: { kind: 'method', variant: 'ASDL' }, query: 'x' }, is_error: false, ms: 1 },
    { tool: 'search', args: { query: 'x', in: { variant: 'ASDL', kind: 'method' } }, is_error: false, ms: 1 },
    { tool: 'read', args: { ref: ['a', 'b'] }, is_error: false, ms: 1 },
    { tool: 'read', args: { ref: ['b', 'a'] }, is_error: false, ms: 1 },
  ];
  assert.equal(optimizationMetrics(data).identical_repeat_calls, 1);
});

test('reassessed error labels preserve original calls and count repeated failed recovery attempts', () => {
  const data = report([true], 3);
  data.cases[0].calls.forEach(c => { c.is_error = true; c.expected_error = false; });
  const rawCalls = structuredClone(data.cases[0].calls);
  data.cases[0].expected_error_call_indices = [0];
  const metrics = optimizationMetrics(data);
  assert.deepEqual(metrics.unexpected_error_rate, { numerator: 2, denominator: 2, rate: 1 });
  assert.equal(metrics.expected_error_calls, 1);
  assert.equal(metrics.first_call_success.denominator, 0);
  assert.deepEqual(data.cases[0].calls, rawCalls);
});

test('selection compares calls only among commonly successful tasks', () => {
  const baseline = report([true, true, true, true, true, false]);
  const candidate = report([true, true, true, true, true, false], 3);
  const result = compareOptimizationReports(baseline, candidate);
  assert.equal(result.status, 'validate_candidate');
  assert.deepEqual(result.common_successful_call_totals, { samples: 5, baseline: 20, candidate: 15 });
  candidate.cases[5].calls = [];
  assert.deepEqual(compareOptimizationReports(baseline, candidate).common_successful_call_totals, result.common_successful_call_totals);
  candidate.cases[0].scoring.passed = false;
  assert.equal(compareOptimizationReports(baseline, candidate).status, 'retain_baseline');
});

test('pass gains require nonincreasing unexpected errors', () => {
  const baseline = report([false]), candidate = report([true]);
  assert.equal(compareOptimizationReports(baseline, candidate).status, 'validate_candidate');
  candidate.cases[0].calls[0].is_error = true;
  assert.equal(compareOptimizationReports(baseline, candidate).status, 'retain_baseline');
});

test('provenance, complete attempts, protected processes and native source are selection gates', () => {
  const baseline = report([false]), valid = report([true]);
  for (const corrupt of [
    (r: EvalReport) => { r.source_fingerprint = 'changed'; },
    (r: EvalReport) => { r.scoring_artifact_sha256 = 'different-grader'; },
    (r: EvalReport) => { delete r.scoring_artifact_sha256; },
    (r: EvalReport) => { r.cases[0].model!.model = 'another'; },
    (r: EvalReport) => { r.cases[0].requirement = 'Different task'; },
    (r: EvalReport) => { r.artifact_sha256!['PI_AGENT_EVAL_CASES.json'] = 'changed'; },
    (r: EvalReport) => { r.closeout!.protected_processes_unchanged = false; },
    (r: EvalReport) => { r.summary!.planned++; },
    (r: EvalReport) => { r.cases[0].scoring.checks[0].passed = false; },
    (r: EvalReport) => { r.cases.push(structuredClone(r.cases[0])); },
    (r: EvalReport) => { r.cases[0].execution_status = 'model_service_failed'; },
  ]) {
    const candidate = structuredClone(valid); corrupt(candidate);
    assert.equal(compareOptimizationReports(baseline, candidate).status, 'incomparable');
  }
});

test('complete acceptance cannot promote artifacts or a model different from selected development', () => {
  const development = report(Array(5).fill(true)), acceptance = report(Array(10).fill(true));
  const ids = acceptance.cases.map(c => c.id);
  assert.equal(assessFullAcceptance(acceptance, ids, 'validate_candidate', development).accepted, true);
  for (const corrupt of [
    (r: EvalReport) => { r.artifact_sha256!['dist/src/tool-contracts.js'] = 'new-unvalidated-tools'; },
    (r: EvalReport) => { r.artifact_sha256!['dist/src/agent-result-view.js'] = ''; },
    (r: EvalReport) => { r.source_fingerprint = 'another-corpus'; },
    (r: EvalReport) => { r.cases[0].model!.model = 'another-model'; },
    (r: EvalReport) => { r.cases[0].requirement = 'easier-task'; },
  ]) {
    const changed = structuredClone(acceptance); corrupt(changed);
    assert.equal(assessFullAcceptance(changed, ids, 'validate_candidate', development).accepted, false);
  }
});

test('full acceptance requires exact native inventory, original quality goals and a development gain', () => {
  const data = report(Array(10).fill(true));
  const ids = data.cases.map(c => c.id);
  assert.equal(assessFullAcceptance(data, ids, 'validate_candidate').accepted, true);
  assert.equal(assessFullAcceptance(data, ids, 'retain_baseline').accepted, false);
  assert.equal(assessFullAcceptance(data, [...ids, 'missing-native-diagram'], 'validate_candidate').accepted, false);
  assert.equal(assessFullAcceptance(data, [...ids.slice(0, -1), 'another-diagram'], 'validate_candidate').accepted, false);
  data.cases[0].scoring.passed = false; data.cases[1].scoring.passed = false;
  assert.equal(assessFullAcceptance(data, ids, 'validate_candidate').accepted, false);
  data.cases[1].scoring.passed = true;
  assert.equal(assessFullAcceptance(data, ids, 'validate_candidate').accepted, true);
  data.cases[0].calls[0].is_error = true;
  assert.equal(assessFullAcceptance(data, ids, 'validate_candidate').accepted, false);
  data.cases[0].calls[0].is_error = false;
  data.cases[0].execution_status = 'budget_exceeded';
  assert.equal(assessFullAcceptance(data, ids, 'validate_candidate').accepted, false);
});
