import fs from 'node:fs';
import crypto from 'node:crypto';
import assert from 'node:assert/strict';

// Summarize new attempts; never rescore or rewrite their raw reports.
const prefix = process.argv[2] ?? 'experiments/pi-agent-eval/2026-10-11-polish-d';
const offlinePath = process.argv[3] ?? 'experiments/2026-10-11-polish-d-offline-02.log';
const output = process.argv[4] ?? 'TASK_POLISH_METRICS.json';
const sha = raw => crypto.createHash('sha256').update(raw).digest('hex');
const read = file => {
  const raw = fs.readFileSync(file);
  return { source: file, sha256: sha(raw), data: JSON.parse(raw) };
};
const first = read(prefix + '-first/candidate-pi-01/report.json');
const guarded = read(prefix + '-guarded/guarded-pi-01/report.json');
const native = read(prefix + '-live/report.json');
const offline = fs.readFileSync(offlinePath, 'utf8');
const count = key => Number(offline.match(new RegExp('(?:^|\\n).*?\\b' + key + ' (\\d+)\\r?(?:\\n|$)'))?.[1]);
assert.equal(count('fail'), 0); assert.equal(count('pass'), count('tests'));
assert.equal(native.data.status, 'passed');
assert.equal(first.data.first_attempt_only, true);
assert.equal(guarded.data.guarded_completion, true);
const summarize = record => {
  const { source, sha256, data } = record;
  assert.equal(data.closeout.status, 'passed');
  const cases = data.cases;
  const dimension = key => {
    const eligible = cases.filter(c => typeof c.scoring.dimensions?.[key] === 'boolean');
    return { passed: eligible.filter(c => c.scoring.dimensions[key]).length, total: eligible.length };
  };
  const calls = cases.flatMap(c => c.calls);
  const checks = cases.flatMap(c => c.scoring.checks);
  const sourceChecks = checks.filter(c => c.name.startsWith('native_source_'));
  return { source, sha256, summary: data.summary,
    completion: { planned: data.summary.planned, attempted: data.summary.attempted,
      not_attempted: (data.skipped_cases ?? []).length, completed: data.summary.completed_cases,
      full_plan_completed: data.summary.attempted === data.summary.planned && data.summary.completed_cases === data.summary.planned,
      stopped_reason: data.stopped_reason ?? null,
      skipped_cases: data.skipped_cases ?? [],
      service_errors: cases.filter(c => c.execution_status === 'model_service_failed').map(c => ({ id: c.id, message: c.model_error })) },
    call_accuracy: data.call_accuracy,
    native_source_checks: { passed: sourceChecks.filter(c => c.passed).length, total: sourceChecks.length },
    scoring_errors: checks.filter(c => c.name === 'scoring_error').length,
    dimensions: Object.fromEntries(['tool_behavior_passed', 'evidence_and_facts_passed', 'answer_contract_passed'].map(key => [key, dimension(key)])),
    intent_recognition: { passed: cases.filter(c => c.scoring.intent_metrics?.recognition_passed).length,
      total: cases.filter(c => c.scoring.intent_metrics).length },
    tool_errors: { total: calls.filter(c => c.is_error).length, unexpected: calls.filter(c => c.is_error && !c.expected_error).length },
    final_guard_accepted: cases.filter(c => c.final_guard_events?.at(-1)?.entry?.data?.status === 'accepted').length,
    repair_events: cases.reduce((n, c) => n + (c.final_guard_events ?? []).filter(e => e.entry.type === 'custom_message' && !e.entry.display).length, 0),
    failed_cases: cases.filter(c => !c.scoring.passed).map(c => ({ id: c.id, checks: c.scoring.checks.filter(x => !x.passed) })),
    auxiliary_failed_checks: cases.filter(c => c.scoring.passed && c.scoring.checks.some(x => !x.passed)).map(c => ({ id: c.id, checks: c.scoring.checks.filter(x => !x.passed) })),
    closeout: data.closeout };
};
const result = { date: '2026-10-11',
  boundary: 'Saved-code/BDE regression on an existing database, not an independent holdout. Prompt protocol alignment changed in guarded runs; do not attribute score differences solely to the model or tools. Guards validate facts/refs, not arbitrary prose. All original failures and auxiliary intent failures remain in reports.',
  offline: { source: offlinePath, sha256: sha(offline), tests: count('tests'), passed: count('pass'), failed: count('fail') },
  live_sdk: { source: native.source, sha256: native.sha256, passed: native.data.checks.filter(c => c.passed).length,
    total: native.data.checks.length, sources_and_graphs_unchanged: native.data.sources_and_graphs_unchanged, instance_retained: native.data.instance_retained },
  first_attempt: summarize(first), guarded: summarize(guarded) };
fs.writeFileSync(output, JSON.stringify(result, null, 2) + '\n');
console.log(JSON.stringify({ offline: result.offline.passed, live: result.live_sdk.passed,
  first: result.first_attempt.summary, guarded: result.guarded.summary }));
