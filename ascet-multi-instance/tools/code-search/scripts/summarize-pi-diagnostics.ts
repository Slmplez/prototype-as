import assert from 'node:assert/strict';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { ROOT } from '../src/bridge.js';
import { applyReassessment, assertPlanProvenance, gradingFingerprint, reportSHA } from './pi-eval-score-provenance.js';
import type { EvalReport } from './pi-eval-metrics.js';
import { diagnoseAttempt, eventFileStem } from './pi-eval-diagnostics.js';

const [outputArg, ...directories] = process.argv.slice(2);
assert.ok(outputArg && directories.length, 'Usage: summarize-pi-diagnostics <new-output-prefix> <report-directory>...');
const output = resolve(outputArg), grader = await gradingFingerprint();
const planRaw = await readFile(join(ROOT, 'PI_AGENT_EVAL_CASES.json'), 'utf8');
const runs = [];
for (const input of directories) {
  const directory = resolve(input), raw = await readFile(join(directory, 'report.json'), 'utf8');
  let report = JSON.parse(raw) as EvalReport;
  assert.equal(report.status, 'recorded', 'Diagnostics require a completed recorded evaluation');
  assertPlanProvenance(report, planRaw);
  if (report.scoring_artifact_sha256 !== grader) {
    const review = JSON.parse(await readFile(join(directory, 'reassessment.json'), 'utf8'));
    assert.equal(review.scoring_artifact_sha256, grader, 'Review all reports with the current grader first');
    report = applyReassessment(raw, review);
  }
  const cases = [];
  for (const attempt of report.cases) {
    const stem = eventFileStem(attempt, (report as EvalReport & { repetitions?: number }).repetitions ?? 1);
    const text = await readFile(join(directory, stem + '.events.jsonl'), 'utf8');
    const events = text.trim().split(/\r?\n/).filter(Boolean).map(line => JSON.parse(line));
    cases.push(diagnoseAttempt(attempt, events));
  }
  const errors = cases.flatMap(c => c.errors), counts: Record<string, number> = {};
  for (const error of errors) counts[error.category] = (counts[error.category] ?? 0) + 1;
  runs.push({ directory, original_report_sha256: reportSHA(raw), event_inventory_mismatches: cases.filter(c => !c.event_inventory_matches).length,
    unexpected_error_count: errors.length, categories: counts, cases: cases.filter(c => !c.strict_passed || c.errors.length) });
}
await mkdir(dirname(output), { recursive: true });
await writeFile(output + '.json', JSON.stringify({ reviewed_utc: new Date().toISOString(), scoring_artifact_sha256: grader,
  boundary: 'Offline diagnostics only. Original events, calls, answers, scores and intentional-error labels are preserved. No model or ASCET calls.', runs }, null, 2) + '\n', { flag: 'wx' });
const md = ['# Pi 原始调用失败诊断', '', '从原始 Pi 参数流与已复核报告归类；不补参数、不重试、不改分数。', '',
  ...runs.flatMap(run => [`## ${run.directory.split(/[\\/]/).slice(-2).join('/')}`, '',
    `非预期错误：${run.unexpected_error_count}；事件/调用数量不一致：${run.event_inventory_mismatches}。`, '',
    '| 类型 | 次数 |', '|---|---:|', ...Object.entries(run.categories).map(([key, value]) => `| ${key} | ${value} |`), '',
    '| 场景 | 严格通过 | 调用 | 失败检查 | 非预期错误类型 |', '|---|---|---:|---|---|',
    ...run.cases.map(c => `| ${c.id} | ${c.strict_passed} | ${c.tool_calls} | ${c.failed_checks.join(', ')} | ${c.errors.map(e => e.category).join(', ')} |`), ''])].join('\n');
await writeFile(output + '.md', md + '\n', { flag: 'wx' });
console.log(JSON.stringify({ output, runs: runs.map(r => ({ directory: r.directory, errors: r.unexpected_error_count, categories: r.categories })) }));
