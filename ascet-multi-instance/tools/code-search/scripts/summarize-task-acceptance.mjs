import fs from 'node:fs';
import crypto from 'node:crypto';
import assert from 'node:assert/strict';

const sha = raw => crypto.createHash('sha256').update(raw).digest('hex');
const read = file => {
  const raw = fs.readFileSync(file);
  return { file, sha256: sha(raw), report: JSON.parse(raw) };
};
const primary = read('experiments/pi-agent-eval/2026-10-11-tasks-01/candidate-pi-01/report.json');
const native = read('experiments/pi-agent-eval/2026-10-11-tasks-01/live-sdk-final-02/report.json');
const groups = ['01', '02'].map(n => read(`experiments/pi-agent-eval/2026-10-11-tasks-guarded-${n}/guarded-pi-01/report.json`));
const offlinePath = 'experiments/2026-10-11-task-offline-build-c-final.log';
const offline = fs.readFileSync(offlinePath, 'utf8');
const count = key => Number(offline.match(new RegExp('(?:^|\\n).*?\\b' + key + ' (\\d+)\\r?(?:\\n|$)'))?.[1]);
assert.equal(primary.report.first_attempt_only, true);
assert.equal(native.report.status, 'passed');
assert.equal(primary.report.closeout.status, 'passed');
const result = {
  date: '2026-10-11', boundary: 'Saved code/BDE task regression. Parameter acceptance is not semantic precision. Guarded repairs never replace first-attempt results. Not an independent database generalization benchmark.',
  offline: { source_log: offlinePath, sha256: sha(offline), tests: count('tests'), passed: count('pass'), failed: count('fail') },
  live_sdk: { source: native.file, sha256: native.sha256, passed: native.report.checks.filter(c => c.passed).length, total: native.report.checks.length,
    sources_and_graphs_unchanged: native.report.sources_and_graphs_unchanged, instance_retained: native.report.instance_retained },
  first_attempt: { source: primary.file, sha256: primary.sha256, summary: primary.report.summary, call_accuracy: primary.report.call_accuracy,
    closeout: primary.report.closeout, failed_cases: primary.report.cases.filter(c => !c.scoring.passed).map(c => c.id) },
  guarded_groups: groups.map(({ file, sha256, report }) => ({ source: file, sha256, original_summary: report.summary,
    final_guard_accepted: report.cases.filter(c => c.final_guard_events.at(-1)?.entry.data?.status === 'accepted').length,
    repair_events: report.cases.reduce((n, c) => n + c.final_guard_events.filter(e => e.entry.type === 'custom_message' && !e.entry.display).length, 0),
    failed_cases: report.cases.filter(c => !c.scoring.passed).map(c => ({ id: c.id, failed_checks: c.scoring.checks.filter(check => !check.passed) })),
    closeout: report.closeout })),
};
assert.equal(result.offline.failed, 0); assert.equal(result.offline.tests, result.offline.passed);
fs.writeFileSync(process.argv[2] ?? 'TASK_ACCEPTANCE_METRICS.json', JSON.stringify(result, null, 2) + '\n');
console.log(JSON.stringify({ offline: result.offline.passed, native: result.live_sdk.passed, first_attempt: result.first_attempt.summary.passed,
  guarded: result.guarded_groups.map(g => ({ passed: g.original_summary.passed, total: g.original_summary.attempted, final_accepted: g.final_guard_accepted })) }));
