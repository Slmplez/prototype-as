export interface EvalCall { tool: string; args: unknown; is_error: boolean; expected_error?: boolean; ms: number; model_bytes?: number; details?: Record<string, number> }
export interface EvalAttempt {
  id: string; group?: string; repetition?: number; execution_status: string; total_ms: number; calls: EvalCall[];
  model?: { provider: string; model: string };
  requirement?: string;
  expected_error_call_indices?: number[];
  scoring: { passed: boolean; semantic_passed?: boolean; checks: { name: string; passed: boolean }[] };
}
export interface EvalReport { status: string; source_fingerprint?: string; pi_version?: string; cases: EvalAttempt[];
  scoring_artifact_sha256?: string;
  artifact_sha256?: Record<string, string>; summary?: { planned: number }; first_attempt_only?: boolean;
  closeout?: { status: string; sources_and_graphs_unchanged?: boolean; isolated_instance_stopped?: boolean;
    protected_processes_unchanged?: boolean; endpoint_closed?: boolean }; }
function distribution(values: number[]) {
  const ordered = values.filter(Number.isFinite).sort((a, b) => a - b);
  if (!ordered.length) return { samples: 0 };
  return { samples: ordered.length, p50: ordered[Math.ceil(ordered.length * .5) - 1],
    p95: ordered[Math.ceil(ordered.length * .95) - 1], max: ordered.at(-1) };
}
const ratio = (numerator: number, denominator: number) => ({ numerator, denominator, rate: denominator ? numerator / denominator : null });
function stable(value: unknown): string {
  if (Array.isArray(value)) return '[' + value.map(stable).join(',') + ']';
  if (value && typeof value === 'object') return '{' + Object.entries(value).sort(([a], [b]) => a.localeCompare(b))
    .map(([key, item]) => JSON.stringify(key) + ':' + stable(item)).join(',') + '}';
  return JSON.stringify(value) ?? 'undefined';
}

/** These diagnostics never change the original acceptance rubric. */
export function optimizationMetrics(report: EvalReport) {
  const eligible = report.cases.filter(c => c.execution_status !== 'model_service_failed');
  const classified = (c: EvalAttempt) => c.calls.map((call, i) => c.expected_error_call_indices
    ? { ...call, expected_error: c.expected_error_call_indices.includes(i) } : call);
  const calls = eligible.flatMap(classified), positiveCalls = calls.filter(c => !c.expected_error);
  const first = eligible.map(c => classified(c)[0]).filter(c => c && !c.expected_error);
  const unexpected = calls.filter(c => c.is_error && !c.expected_error);
  const affected = eligible.filter(c => classified(c).some(t => t.is_error && !t.expected_error));
  const checks = eligible.flatMap(c => c.scoring.checks);
  const source = checks.filter(c => c.name.startsWith('native_source_'));
  const passed = eligible.filter(c => c.scoring.passed);
  let repeated = 0;
  for (const attempt of eligible) {
    const seen = new Set<string>();
    for (const call of attempt.calls) {
      const key = call.tool + stable(call.args);
      if (seen.has(key)) repeated++;
      seen.add(key);
    }
  }
  return {
    strict_acceptance: ratio(passed.length, eligible.length),
    evidence_fact_acceptance: ratio(eligible.filter(c => c.scoring.semantic_passed).length, eligible.length),
    first_call_success: ratio(first.filter(c => !c.is_error).length, first.length),
    unexpected_error_rate: ratio(unexpected.length, positiveCalls.length),
    tasks_with_unexpected_errors: affected.length,
    task_acceptance_after_unexpected_error: ratio(affected.filter(c => c.scoring.passed).length, affected.length),
    expected_error_calls: calls.filter(c => c.is_error && c.expected_error).length,
    native_source_checks: ratio(source.filter(c => c.passed).length, source.length),
    model_service_failures: report.cases.length - eligible.length,
    timeouts: eligible.filter(c => c.execution_status === 'timeout').length,
    budget_exceeded: eligible.filter(c => c.execution_status === 'budget_exceeded').length,
    calls_per_task: distribution(eligible.map(c => c.calls.length)),
    calls_per_successful_task: distribution(passed.map(c => c.calls.length)),
    returned_model_bytes_per_task: distribution(eligible.map(c => c.calls.reduce((n, t) => n + (t.model_bytes ?? 0), 0))),
    identical_repeat_calls: repeated,
    tool_queue_ms: distribution(calls.filter(c => !c.is_error).map(c => c.details?.queue_ms ?? NaN)),
    tool_execution_ms: distribution(calls.filter(c => !c.is_error).map(c => c.details?.execution_ms ?? NaN)),
    task_latency_ms: distribution(eligible.map(c => c.total_ms)),
  };
}

export function compareOptimizationReports(baseline: EvalReport, candidate: EvalReport) {
  const reasons: string[] = [];
  const key = (c: EvalAttempt) => c.id + ':' + (c.repetition ?? 1);
  const a = new Map(baseline.cases.map(c => [key(c), c])), b = new Map(candidate.cases.map(c => [key(c), c]));
  if (!baseline.source_fingerprint || baseline.source_fingerprint !== candidate.source_fingerprint) reasons.push('Native corpus fingerprints differ');
  if (!baseline.pi_version || baseline.pi_version !== candidate.pi_version) reasons.push('Pi versions differ or are missing');
  if (!baseline.scoring_artifact_sha256 || baseline.scoring_artifact_sha256 !== candidate.scoring_artifact_sha256) reasons.push('Scoring provenance differs or is missing; reassess both original reports with the same grader');
  if (!baseline.artifact_sha256?.['PI_AGENT_EVAL_CASES.json'] || baseline.artifact_sha256['PI_AGENT_EVAL_CASES.json'] !== candidate.artifact_sha256?.['PI_AGENT_EVAL_CASES.json']) reasons.push('Evaluation plan provenance differs or is missing');
  if (a.size !== baseline.cases.length || b.size !== candidate.cases.length || a.size !== b.size || [...a.keys()].some(id => !b.has(id))) reasons.push('Case/repetition inventories differ or contain duplicates');
  for (const report of [baseline, candidate]) {
    if (!report.cases.length || report.summary?.planned !== report.cases.length || report.first_attempt_only !== true) reasons.push('Planned first attempts were not fully recorded');
    if (report.status !== 'recorded' || report.closeout?.status !== 'passed' ||
      ['sources_and_graphs_unchanged', 'isolated_instance_stopped', 'protected_processes_unchanged', 'endpoint_closed']
        .some(field => report.closeout?.[field as keyof NonNullable<EvalReport['closeout']>] !== true)) reasons.push('Evaluation or read-only closeout did not complete');
    if (report.cases.some(c => c.execution_status === 'model_service_failed')) reasons.push('Model service failure prevents selection');
    if (report.cases.some(c => c.scoring.checks.some(x => x.name.startsWith('native_source_') && !x.passed))) reasons.push('Returned native source mismatch');
  }
  for (const [id, attempt] of a) if (b.has(id)) {
    if (!attempt.model?.provider || !attempt.model.model || stable(attempt.model) !== stable(b.get(id)!.model)) reasons.push('Model differs or is missing for ' + id);
    if (!attempt.requirement || attempt.requirement !== b.get(id)!.requirement) reasons.push('Task requirement differs or is missing for ' + id);
  }
  const common = [...a].filter(([id, attempt]) => attempt.scoring.passed && b.get(id)?.scoring.passed);
  const callTotals = { samples: common.length, baseline: common.reduce((n, [,c]) => n + c.calls.length, 0),
    candidate: common.reduce((n, [id]) => n + b.get(id)!.calls.length, 0) };
  const am = optimizationMetrics(baseline), bm = optimizationMetrics(candidate);
  const gained = [...b].filter(([id, c]) => c.scoring.passed && a.get(id)?.scoring.passed === false).map(([id]) => id);
  const lost = [...a].filter(([id, c]) => c.scoring.passed && b.get(id)?.scoring.passed === false).map(([id]) => id);
  const improve = gained.length > lost.length || (gained.length === lost.length && common.length >= 5 && callTotals.candidate <= callTotals.baseline * .9);
  const errorsOK = bm.unexpected_error_rate.rate !== null && am.unexpected_error_rate.rate !== null && bm.unexpected_error_rate.rate <= am.unexpected_error_rate.rate;
  return { status: reasons.length ? 'incomparable' : improve && errorsOK ? 'validate_candidate' : 'retain_baseline',
    reasons, baseline: am, candidate: bm, gained, lost, common_successful_call_totals: callTotals,
    interpretation: 'Independent first attempts, not causal proof. Validate a selected candidate on the complete suite before promotion.' };
}

/** A development gain alone never authorizes replacing the delivered profile. */
export function assessFullAcceptance(report: EvalReport, expectedIDs: string[], developmentStatus: string, development?: EvalReport) {
  const metrics = optimizationMetrics(report), reasons = [...compareOptimizationReports(report, report).reasons];
  if (development) {
    if (report.source_fingerprint !== development.source_fingerprint || report.pi_version !== development.pi_version ||
      report.scoring_artifact_sha256 !== development.scoring_artifact_sha256) reasons.push('Complete acceptance provenance differs from the selected development run');
    for (const file of ['dist/src/pi-extension.js', 'dist/src/tool-contracts.js', 'dist/src/agent-result-view.js', 'PI_AGENT_EVAL_CASES.json']) {
      if (!development.artifact_sha256?.[file] || development.artifact_sha256[file] !== report.artifact_sha256?.[file]) reasons.push('Selected tool/plan artifact differs or is missing: ' + file);
    }
    for (const task of development.cases) {
      const other = report.cases.find(c => c.id === task.id && (c.repetition ?? 1) === (task.repetition ?? 1));
      if (!other || !task.requirement || task.requirement !== other.requirement || !task.model?.provider || !task.model.model ||
        stable(task.model) !== stable(other.model)) reasons.push('Selected task/model provenance differs: ' + task.id);
    }
  }
  const expected = new Set(expectedIDs), actual = report.cases.map(c => c.id);
  const complete = expected.size === expectedIDs.length && expected.size > 0 && actual.length === expected.size &&
    new Set(actual).size === actual.length && actual.every(id => expected.has(id));
  if (!complete) reasons.push('Complete fixed/native Diagram inventory was not attempted exactly once');
  if (developmentStatus !== 'validate_candidate') reasons.push('Development selection did not accept the candidate');
  if ((metrics.strict_acceptance.rate ?? 0) < .9) reasons.push('Strict acceptance is below 90 percent');
  if ((metrics.unexpected_error_rate.rate ?? 1) > .01) reasons.push('Unexpected tool errors exceed 1 percent');
  if (!metrics.native_source_checks.denominator || metrics.native_source_checks.numerator !== metrics.native_source_checks.denominator) reasons.push('Native source equality was not established');
  if (metrics.timeouts || metrics.budget_exceeded) reasons.push('Task timeout or tool-call budget was exceeded');
  return { accepted: !reasons.length, complete_inventory: complete, metrics, reasons: [...new Set(reasons)] };
}
