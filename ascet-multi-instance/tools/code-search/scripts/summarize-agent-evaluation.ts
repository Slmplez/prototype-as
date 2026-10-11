import assert from 'node:assert/strict';
import { readFile, writeFile } from 'node:fs/promises';
import { join, resolve } from 'node:path';
import { ROOT } from '../src/bridge.js';

assert.ok(process.argv[2], 'Provide the completed evaluation directory');
const directory = resolve(process.argv[2]);
const report = JSON.parse(await readFile(join(directory, 'report.json'), 'utf8'));
const closeout = JSON.parse(await readFile(join(directory, 'closeout.json'), 'utf8'));
const definitions = JSON.parse(await readFile(join(ROOT, 'AGENT_EVALUATION_TASKS.json'), 'utf8')).tasks;
const trace = (await readFile(join(directory, 'requests.jsonl'), 'utf8')).trim().split('\n').map(line => JSON.parse(line));
assert.equal(report.status, 'recorded'); assert.equal(closeout.status, 'passed');
assert.equal(trace.length, report.steps.length); assert.equal(Object.keys(report.tasks).length, definitions.length);
const tasks = definitions.map((definition: any) => {
  const result = report.tasks[definition.id]; assert.ok(result);
  const steps = trace.filter(row => row.task === definition.id);
  assert.equal(steps.length, result.cli_requests);
  for (const evidence of result.evidence_steps) assert.ok(steps.some(row => row.step === evidence));
  return { id: definition.id, type: definition.type, assessment: result.recorded_outcome,
    requests: steps.length, request_budget: definition.request_budget, exceeded_budget: steps.length > definition.request_budget,
    errors: steps.filter(row => row.response.status === 'error').length,
    total_cli_ms: steps.reduce((sum, row) => sum + row.ms, 0),
    response_bytes: steps.reduce((sum, row) => sum + row.bytes, 0),
    evidence_steps: result.evidence_steps, missing_evidence: result.missing_evidence };
});
for (const row of trace) {
  assert.equal(row.bytes, Buffer.byteLength(JSON.stringify(row.response)));
  assert.ok(row.bytes <= 128 * 1024);
}
const successful = trace.slice(1).filter(row => row.response.status !== 'error');
const times = successful.map(row => row.ms).sort((a, b) => a - b);
const quantile = (q: number) => times[Math.ceil(times.length * q) - 1];
const summary = { evaluation_mode: report.evaluation_mode,
  boundary: 'Task assessments are made by the current assistant. Request budgets are reference goals, not enforced limits. Timing excludes assistant reasoning and ASCET launch/open. The first request includes CLI/Bridge startup. This is not an independent-model, blind, concurrency or repeated performance benchmark.',
  requests: trace.length, invalid_requests: trace.filter(row => row.response.status === 'error').length,
  response_bytes: trace.reduce((sum, row) => sum + row.bytes, 0), max_response_bytes: Math.max(...trace.map(row => row.bytes)),
  retrieval: { total: tasks.filter((task: any) => task.type === 'retrieval').length,
    located: tasks.filter((task: any) => task.type === 'retrieval' && task.assessment === 'located').length,
    partial: tasks.filter((task: any) => task.type === 'retrieval' && task.assessment === 'partial').length },
  boundary_tasks: tasks.filter((task: any) => task.type === 'boundary'),
  first_request_ms: trace[0].ms,
  subsequent_successful: { count: times.length, median_ms: quantile(0.5), p95_ms: quantile(0.95), max_ms: times.at(-1),
    above_500_ms: successful.filter(row => row.ms > 500).map(row => ({ step: row.step, task: row.task, ms: row.ms })) },
  tasks, source_audit: closeout,
  record_corrections: ['The recorded module-process observation says eight requests; the actual ledger has seven. Metrics here use the request ledger.'] };
await writeFile(join(directory, 'summary.json'), JSON.stringify(summary, null, 2) + '\n');
console.log(JSON.stringify(summary, null, 2));
