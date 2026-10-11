import assert from 'node:assert/strict';
import { createHash } from 'node:crypto';
import { readFile } from 'node:fs/promises';
import { join } from 'node:path';
import { ROOT } from '../src/bridge.js';
import type { EvalAttempt, EvalReport } from './pi-eval-metrics.js';

export const reportSHA = (raw: string) => createHash('sha256').update(raw).digest('hex');
/** Bad model answer types must fail that attempt, without aborting a live/offline batch. */
export function scoreSafely<T>(grade: () => T): T | { passed: false; semantic_passed: false; checks: { name: string; passed: false; detail: string }[] } {
  try { return grade(); }
  catch (error) { return { passed: false, semantic_passed: false,
    checks: [{ name: 'scoring_error', passed: false, detail: String(error) }] }; }
}
export function assertPlanProvenance(report: EvalReport, planRaw: string, filename = 'PI_AGENT_EVAL_CASES.json'): void {
  assert.equal(report.artifact_sha256?.[filename], reportSHA(planRaw),
    'Evaluation plan changed or its recorded provenance is missing; reassessment requires the original plan');
}
export async function gradingFingerprint(): Promise<string> {
  const files = ['dist/scripts/verify-pi-agent-eval.js', 'dist/scripts/pi-eval-matrix.js', 'dist/scripts/pi-eval-plan.js', 'dist/scripts/pi-eval-metrics.js',
    'dist/scripts/pi-intent-eval.js', 'dist/scripts/pi-intent-turns.js', 'dist/scripts/pi-call-accuracy.js', 'dist/scripts/pi-eval-contract.js', 'dist/scripts/pi-eval-source-context.js', 'dist/scripts/pi-eval-answer.js', 'dist/scripts/oracle.js', 'dist/scripts/pi-eval-score-provenance.js', 'dist/src/agent-answer.js', 'dist/src/agent-evidence.js'];
  const hashes = await Promise.all(files.map(async file => [file, reportSHA(await readFile(join(ROOT, file), 'utf8'))]));
  return reportSHA(JSON.stringify(hashes));
}
export interface Reassessment {
  scoring_artifact_sha256: string; source_report_sha256: string;
  cases: Pick<EvalAttempt, 'id' | 'repetition' | 'scoring' | 'execution_status' | 'expected_error_call_indices'>[];
}
export function applyReassessment(raw: string, review: Reassessment): EvalReport {
  assert.equal(review.source_report_sha256, reportSHA(raw), 'Reassessment does not match the original report');
  const original = JSON.parse(raw) as EvalReport;
  const key = (c: { id: string; repetition?: number }) => c.id + ':' + (c.repetition ?? 1);
  assert.ok(new Set(original.cases.map(key)).size === original.cases.length, 'Original report inventory contains duplicates');
  const scores = new Map(review.cases.map(c => [key(c), c]));
  assert.ok(scores.size === review.cases.length && scores.size === original.cases.length && original.cases.every(c => scores.has(key(c))), 'Reassessment inventory mismatch');
  for (const c of original.cases) {
    const indices = scores.get(key(c))!.expected_error_call_indices;
    if (indices) assert.ok(new Set(indices).size === indices.length && indices.every(i => Number.isInteger(i) && i >= 0 && i < c.calls.length && c.calls[i].is_error), 'Invalid reassessed expected-error call indices');
  }
  return { ...original, scoring_artifact_sha256: review.scoring_artifact_sha256,
    cases: original.cases.map(c => ({ ...c, scoring: scores.get(key(c))!.scoring, execution_status: scores.get(key(c))!.execution_status,
      ...(scores.get(key(c))!.expected_error_call_indices === undefined ? {} : { expected_error_call_indices: scores.get(key(c))!.expected_error_call_indices }) })) };
}
