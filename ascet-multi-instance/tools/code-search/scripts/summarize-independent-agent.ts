import assert from 'node:assert/strict';
import { readFile, writeFile } from 'node:fs/promises';
import { join, resolve } from 'node:path';
import { collectReturnedRefs as returnedRefs } from '../src/agent-evidence.js';

assert.ok(process.argv[2], 'Provide a completed independent evaluation directory');
const directory = resolve(process.argv[2]);
const report = JSON.parse(await readFile(join(directory, 'report.json'), 'utf8'));
const closeout = JSON.parse(await readFile(process.argv[3] ? resolve(process.argv[3]) : join(directory, 'closeout.json'), 'utf8'));
const assessments = JSON.parse(await readFile(join(directory, 'assessments.json'), 'utf8'));
const trace = (await readFile(join(directory, 'requests.jsonl'), 'utf8')).trim().split('\n').filter(Boolean).map(line => JSON.parse(line));
assert.equal(report.status, 'recorded');
assert.equal(closeout.status, 'passed');
if (process.argv[3]) assert.ok(closeout.audited_trace_paths?.includes(join(directory, 'requests.jsonl')));
assert.equal(trace.length, report.steps.length);
assert.equal(Object.keys(report.tasks).length, report.selected_tasks.length);

function metrics(rows: any[]) {
  const times = rows.map(row => row.ms).sort((a, b) => a - b);
  const quantile = (q: number) => times.length ? times[Math.ceil(times.length * q) - 1] : null;
  return { count: rows.length, median_ms: quantile(0.5), p95_ms: quantile(0.95), max_ms: times.at(-1) ?? null,
    above_500_ms: rows.filter(row => row.ms > 500).length };
}

const tasks = report.selected_tasks.map((id: string) => {
  const result = report.tasks[id], assessment = assessments.tasks[id];
  assert.ok(assessment && ['passed', 'partial', 'failed', 'unsupported_correctly'].includes(assessment.grade));
  const rows = trace.filter(row => row.task === id);
  assert.equal(rows.length, result.cli_requests);
  const refs = new Set(rows.flatMap(row => [...returnedRefs(row.response)]));
  let answer = result.parsed_answer;
  if (!answer) {
    const fenced = result.final_text?.match(/```json\s*([\s\S]*?)```/);
    if (fenced) { try { answer = JSON.parse(fenced[1]); } catch {} }
  }
  const validFormat = result.answer_validation ? result.answer_validation.valid : result.parsed_answer && ['located', 'partial', 'not_found', 'unsupported'].includes(answer.outcome) &&
    typeof answer.answer === 'string' && Array.isArray(answer.evidence_refs) &&
    answer.evidence_refs.every((ref: unknown) => typeof ref === 'string') &&
    Array.isArray(answer.missing_evidence) && answer.missing_evidence.every((item: unknown) => typeof item === 'string');
  return { id, type: result.type, grade: assessment.grade, notes: assessment.notes, evidence_steps: assessment.evidence_steps,
    model_outcome: answer?.outcome ?? null, answer_format_valid: Boolean(validFormat),
    answer_validation_errors: result.answer_validation?.errors ?? [],
    evidence_refs_checked: Array.isArray(answer?.evidence_refs),
    unseen_evidence_refs: answer?.evidence_refs?.filter((ref: string) => !refs.has(ref)) ?? [],
    requests: rows.length, request_budget: result.request_budget, exceeded_reference_budget: rows.length > result.request_budget,
    cli_errors: rows.filter(row => row.response.status === 'error').length,
    tool_errors: result.attempts.filter((attempt: any) => attempt.is_error).length,
    timed_out: result.timed_out, execution_error: result.execution_error ?? null, stop_reason: result.stop_reason,
    total_cli_ms: rows.reduce((sum, row) => sum + row.ms, 0), total_task_ms: result.total_task_ms,
    response_bytes: rows.reduce((sum, row) => sum + row.bytes, 0), usage: result.usage,
    completion_status: result.completion_status, answer_attempts: result.answer_attempts?.length,
    original_answer_valid: result.answer_attempts?.[0]?.validation.valid,
    repair_cli_requests: result.repair_cli_requests };
});

for (const row of trace) {
  assert.equal(row.bytes, Buffer.byteLength(JSON.stringify(row.response)));
  assert.ok(row.bytes <= 128 * 1024);
}
for (const task of tasks) for (const step of task.evidence_steps) assert.ok(trace.some(row => row.step === step && row.task === task.id));
const firstSteps = new Set(report.selected_tasks.map((id: string) => trace.find(row => row.task === id)?.step));
const hot = trace.filter(row => !firstSteps.has(row.step) && row.response.status !== 'error');
const summary = { evaluation_mode: report.evaluation_mode, model: report.model, package: report.packaged,
  prompt_sha256: report.prompt_sha256, package_files_verified: report.package_files_verified,
  boundary: 'One autonomous run per task with a fresh CLI process and conversation. Task grades are separate source/trace assessments by the current assistant. First-call latency includes CLI/Bridge startup. Tool latency excludes model reasoning and instance launch. No universal success-rate or performance claim.',
  tasks_completed: tasks.length,
  grades: Object.fromEntries(['passed', 'partial', 'failed', 'unsupported_correctly'].map(grade => [grade, tasks.filter((task: any) => task.grade === grade).length])),
  requests: trace.length, cli_errors: trace.filter(row => row.response.status === 'error').length,
  tool_errors: tasks.reduce((sum: number, task: any) => sum + task.tool_errors, 0),
  timeouts: tasks.filter((task: any) => task.timed_out).length,
  answer_format_errors: tasks.filter((task: any) => !task.answer_format_valid).map((task: any) => task.id),
  original_answer_errors: tasks.filter((task: any) => task.original_answer_valid === false).map((task: any) => task.id),
  rejected_answers: tasks.filter((task: any) => task.completion_status === 'rejected').map((task: any) => task.id),
  repair_cli_requests: tasks.reduce((sum: number, task: any) => sum + (task.repair_cli_requests ?? 0), 0),
  evidence_ref_unchecked_tasks: tasks.filter((task: any) => !task.evidence_refs_checked).map((task: any) => task.id),
  invented_evidence_refs: tasks.filter((task: any) => task.unseen_evidence_refs.length).map((task: any) => ({ id: task.id, refs: task.unseen_evidence_refs })),
  response_bytes: trace.reduce((sum, row) => sum + row.bytes, 0), max_response_bytes: Math.max(0, ...trace.map(row => row.bytes)),
  first_call_per_cli: metrics(trace.filter(row => firstSteps.has(row.step))), subsequent_successful_calls: metrics(hot),
  scoped_subsequent_calls: metrics(hot.filter(row => row.request.in?.component || row.request.in?.diagram)),
  read_subsequent_calls: metrics(hot.filter(row => row.request.operation === 'read')),
  total_cli_ms: trace.reduce((sum, row) => sum + row.ms, 0),
  total_task_ms: tasks.reduce((sum: number, task: any) => sum + task.total_task_ms, 0),
  tasks, source_audit: closeout };
await writeFile(join(directory, 'summary.json'), JSON.stringify(summary, null, 2) + '\n');
console.log(JSON.stringify({ ...summary, tasks: undefined, source_audit: undefined }, null, 2));
