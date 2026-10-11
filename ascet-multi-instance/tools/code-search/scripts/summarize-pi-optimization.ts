import assert from 'node:assert/strict';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { ROOT } from '../src/bridge.js';
import type { Snapshot } from '../src/types.js';
import { fingerprint } from './oracle.js';
import { corpusPiEvalCases, normalizePiEvalCases } from './pi-eval-plan.js';
import { assessFullAcceptance, compareOptimizationReports, optimizationMetrics, type EvalReport } from './pi-eval-metrics.js';
import { applyReassessment, assertPlanProvenance, gradingFingerprint, reportSHA } from './pi-eval-score-provenance.js';

// Offline only: preserve all original report files and emit a new, comparable review.
const [outputArg, baselineArg, ...candidateArgs] = process.argv.slice(2);
assert.ok(outputArg && baselineArg && candidateArgs.length, 'Usage: summarize-pi-optimization <new-output-prefix> <baseline-dir> <candidate-root>...');
const output = resolve(outputArg), planRaw = await readFile(join(ROOT, 'PI_AGENT_EVAL_CASES.json'), 'utf8');
const plan = JSON.parse(planRaw), grader = await gradingFingerprint();
const percent = (rate: number | null) => rate === null ? 'n/a' : (rate * 100).toFixed(1) + '%';

async function load(directory: string) {
  directory = resolve(directory);
  const raw = await readFile(join(directory, 'report.json'), 'utf8'), original = JSON.parse(raw) as EvalReport;
  assertPlanProvenance(original, planRaw);
  let effective = original, assessment: string | undefined;
  if (original.scoring_artifact_sha256 !== grader) {
    assessment = join(directory, 'reassessment.json');
    const review = JSON.parse(await readFile(assessment, 'utf8'));
    assert.equal(review.scoring_artifact_sha256, grader, 'Reassess all input reports with the current grader first');
    effective = applyReassessment(raw, review);
  }
  const byGroup = Object.fromEntries([...new Set(effective.cases.map(c => c.group ?? 'unknown'))].map(group => {
    const cases = effective.cases.filter(c => (c.group ?? 'unknown') === group);
    return [group, { attempted: cases.length, passed: cases.filter(c => c.scoring.passed).length,
      evidence_fact_passed: cases.filter(c => c.scoring.semantic_passed).length, calls: cases.reduce((n, c) => n + c.calls.length, 0) }];
  }));
  const failures = effective.cases.filter(c => !c.scoring.passed).map(c => ({ id: c.id, repetition: c.repetition ?? 1, group: c.group,
    execution_status: c.execution_status, failed_checks: c.scoring.checks.filter(x => !x.passed).map(x => x.name) }));
  const failedCheckCounts: Record<string, number> = {};
  for (const failure of failures) for (const check of failure.failed_checks) failedCheckCounts[check] = (failedCheckCounts[check] ?? 0) + 1;
  return { report: effective, summary: { directory, original_report_sha256: reportSHA(raw), reassessment: assessment,
    tool_artifacts: original.artifact_sha256, source_fingerprint: original.source_fingerprint, pi_version: original.pi_version,
    original_strict: original.cases.filter(c => c.scoring.passed).length,
    original_evidence_fact: original.cases.filter(c => c.scoring.semantic_passed).length,
    original_metrics: optimizationMetrics(original),
    attempted: effective.cases.length, total_calls: effective.cases.reduce((n, c) => n + c.calls.length, 0),
    metrics: optimizationMetrics(effective), by_group: byGroup, failures,
    failed_check_counts: Object.fromEntries(Object.entries(failedCheckCounts).sort((a, b) => b[1] - a[1])), closeout: original.closeout } };
}

const baseline = await load(baselineArg);
interface CandidateSummary {
  directory: string; original_decision: string;
  development: Awaited<ReturnType<typeof load>>['summary'];
  comparison: ReturnType<typeof compareOptimizationReports>;
  acceptance: Awaited<ReturnType<typeof load>>['summary'];
  complete_gate: ReturnType<typeof assessFullAcceptance>;
}
const candidates: CandidateSummary[] = [];
const completeReports: EvalReport[] = [];
for (const candidateArg of candidateArgs) {
  const directory = resolve(candidateArg), development = await load(join(directory, 'candidate'));
  const acceptance = await load(join(directory, 'acceptance'));
  const oracle = JSON.parse(await readFile(join(directory, 'acceptance/oracle-snapshot.json'), 'utf8')) as Snapshot;
  assert.equal(fingerprint(oracle), acceptance.report.source_fingerprint, 'Acceptance oracle no longer matches the original report');
  const comparison = compareOptimizationReports(baseline.report, development.report);
  const ids = [...normalizePiEvalCases(plan), ...corpusPiEvalCases(oracle)].map(c => c.id);
  const gate = assessFullAcceptance(acceptance.report, ids, comparison.status, development.report);
  const originalDecision = JSON.parse(await readFile(join(directory, 'optimization.json'), 'utf8'));
  candidates.push({ directory, original_decision: originalDecision.status, development: development.summary,
    comparison, acceptance: acceptance.summary, complete_gate: gate });
  completeReports.push(acceptance.report);
}
const accepted = candidates.filter(c => c.complete_gate.accepted);
const recommended = accepted.at(-1);
const summary = { reviewed_utc: new Date().toISOString(), scoring_artifact_sha256: grader,
  original_reports_preserved: true, additional_model_calls: 0, baseline: baseline.summary, candidates,
  complete_suite_comparisons: completeReports.slice(1).map((report, i) => ({ baseline_candidate: candidates[i].directory,
    next_candidate: candidates[i + 1].directory, comparison: compareOptimizationReports(completeReports[i], report) })),
  recommended_profile: recommended ? 'optimized' : 'baseline', recommended_candidate: recommended?.directory,
  default_profile: 'baseline',
  interpretation: 'Independent first attempts. Development and complete suites have different inventories. Historical samples are not unseen generalization data. Mixed initialization/queue timings are not a warm-search benchmark. No stable or causal gain is established by one trial.' };
const metricRow = (label: string, data: typeof baseline.summary) => {
  const m = data.metrics;
  return `| ${label} | ${data.original_strict}/${data.attempted} | ${m.strict_acceptance.numerator}/${data.attempted} (${percent(m.strict_acceptance.rate)}) | ${m.evidence_fact_acceptance.numerator}/${data.attempted} | ${data.total_calls} | ${m.unexpected_error_rate.numerator}/${m.unexpected_error_rate.denominator} (${percent(m.unexpected_error_rate.rate)}) | ${m.budget_exceeded} |`;
};
const md = ['# Pi Tools 自动优化评测结果', '',
  '本次统一使用相同评分器复核原始回答、请求和原生快照。原始报告不变，没有额外模型调用，也没有回答修补。', '',
  '| 运行 | 原始严格通过 | 统一复核严格通过 | 证据/事实通过 | 工具调用 | 非预期错误/非故意负例调用 | 调用预算超限 |',
  '|---|---:|---:|---:|---:|---:|---:|', metricRow('基线开发集', baseline.summary),
  ...candidates.flatMap((c, i) => [metricRow(`候选 ${i + 1} 开发集`, c.development), metricRow(`候选 ${i + 1} 完整验收`, c.acceptance)]), '',
  '开发集为 27 场景；完整验收为 72 固定场景加当前快照的全部 Diagram。二者分母不同，不合并为同一成功率。', '',
  ...candidates.flatMap((c, i) => {
    const common = c.comparison.common_successful_call_totals;
    return [`## 候选 ${i + 1}`, '',
      `开发选择：${c.comparison.status}。共同成功的 ${common.samples} 个任务调用总数：${common.baseline} → ${common.candidate}。`, '',
      `完整验收：${c.complete_gate.accepted ? '通过' : '未达自动采用门槛'}。门槛：严格通过 ≥90%，非预期工具错误 ≤1%，无超时/调用预算耗尽，证据与实例审计通过。`, '',
      ...c.complete_gate.reasons.map(reason => '- ' + reason), '',
      '| 分组 | 场景 | 严格通过 | 证据/事实通过 | 调用 |', '|---|---:|---:|---:|---:|',
      ...Object.entries(c.acceptance.by_group).map(([group, count]) => `| ${group} | ${count.attempted} | ${count.passed} | ${count.evidence_fact_passed} | ${count.calls} |`), '',
      '失败检查频次（同一任务可能同时失败多个检查）：', '',
      ...Object.entries(c.acceptance.failed_check_counts).slice(0, 12).map(([name, count]) => `- ${name}: ${count}`), '',
      `保存证据与实例关闭审计：${c.acceptance.closeout?.status}。原始自动决定：${c.original_decision}。原始报告目录：${c.directory}。`, ''];
  }),
  '## 决策与解释边界', '', `推荐 profile：${summary.recommended_profile}；交付默认仍为 baseline。`, '',
  ...summary.complete_suite_comparisons.flatMap(pair => {
    const comparison = pair.comparison, common = comparison.common_successful_call_totals;
    return [`完整候选轮间比较：${comparison.status}；共同成功 ${common.samples} 场景的调用数 ${common.baseline} → ${common.candidate}，新增通过 ${comparison.gained.length}，丢失通过 ${comparison.lost.length}。该比较描述候选间差异，不替代基线开发选择或完整采用门槛。`, ''];
  }),
  '只有相同任务、模型、Pi、原生快照、计划、评分器可比的开发记录用于选择；完整验收还必须与入选开发轮使用相同工具构建。', '',
  '记录了得分改善和退步，未把失败时的提前终止作为调用优化。共同成功任务的调用数与所有任务总调用数分别报告。一次独立试验不证明稳定或因果收益。', '',
  '格式、Scope、源码标点、Variant 空白、State/Junction 类型以及分页完整性要求没有放宽。评分器修复识别合法的批量查询、whole Diagram ref 的 owner 范围、单一 exact in.member、同一 owner 的多个成员 refs，以及 Pi 提前返回的明确 read/ref 校验错误；各轮一致复核。未知/错误 owner 和更宽 member 数组仍拒绝。故意入参错误只排除第一次，重复失败仍计入。错误回答类型记为该场景失败，live 与离线复核均继续后续场景。', '',
  '后续工具耗时包含首次目录初始化与并发队列，不能据此认定纯暖态搜索达到了或未达到 0.5 秒。', ''].join('\n');
await mkdir(dirname(output), { recursive: true });
await writeFile(output + '.json', JSON.stringify(summary, null, 2) + '\n', { flag: 'wx' });
await writeFile(output + '.md', md, { flag: 'wx' });
console.log(JSON.stringify({ output, recommended_profile: summary.recommended_profile,
  candidates: candidates.map(c => ({ directory: c.directory, strict: c.acceptance.metrics.strict_acceptance,
    unexpected_errors: c.acceptance.metrics.unexpected_error_rate, accepted: c.complete_gate.accepted })) }));
