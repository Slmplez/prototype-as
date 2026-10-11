import assert from 'node:assert/strict';
import { createInterface } from 'node:readline';
import { appendFile, mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { performance } from 'node:perf_hooks';
import { JsonLineClient, ROOT } from '../src/bridge.js';

assert.ok(process.argv[2], 'Provide the verified CLI package directory');
const packaged = resolve(process.argv[2]);
const manifest = resolve(process.env.ASCET_AGENT_LATENCY_MANIFEST ?? join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json'));
const instance = JSON.parse(await readFile(manifest, 'utf8'));
assert.equal(instance.port, 32631); assert.equal(resolve(instance.runtime), join(dirname(manifest), 'runtime'));
const directory = process.argv[3] ? resolve(process.argv[3]) : join(ROOT, 'experiments/agent-usability', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const cli = new JsonLineClient({ command: process.execPath, args: [join(packaged, 'dist/src/cli.js'), '--agent'], timeoutMs: 90_000,
  env: { ...process.env, ASCET_CODE_SEARCH_PORT: '32631', ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' } });
const report: any = { status: 'running', directory, packaged, manifest, started_utc: new Date().toISOString(),
  evaluation_mode: 'Current assistant as the Agent, choosing requests between responses. This is not a separate-model or blind benchmark.',
  tasks: {}, steps: [] };
const save = () => writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
const input = createInterface({ input: process.stdin, crlfDelay: Infinity });
console.log(JSON.stringify({ ready: true, directory }));
try {
  for await (const line of input) {
    const value = JSON.parse(line);
    if (value.control === 'quit') break;
    assert.equal(typeof value.task, 'string');
    if (value.control === 'conclude') {
      assert.equal(typeof value.answer, 'string');
      if (value.outcome !== undefined) assert.ok(['located', 'partial', 'not_found', 'unsupported'].includes(value.outcome));
      const steps = report.steps.filter((step: any) => step.task === value.task);
      for (const step of value.evidence_steps ?? []) assert.ok(steps.some((entry: any) => entry.step === step), 'Evidence must come from this task');
      report.tasks[value.task] = { answer: value.answer, evidence_steps: value.evidence_steps ?? [], observations: value.observations ?? [],
        ...(value.outcome ? { recorded_outcome: value.outcome } : {}),
        missing_evidence: value.missing_evidence ?? [], cli_requests: steps.length,
        cli_errors: steps.filter((step: any) => step.status === 'error').length,
        total_cli_ms: steps.reduce((sum: number, step: any) => sum + step.ms, 0),
        total_response_bytes: steps.reduce((sum: number, step: any) => sum + step.bytes, 0),
        recorded_utc: new Date().toISOString() };
      await save(); console.log(JSON.stringify({ recorded: value.task })); continue;
    }
    assert.ok(value.request && typeof value.request === 'object');
    const start = performance.now(), response: any = await cli.request(value.request), ms = performance.now() - start;
    const step = report.steps.length + 1;
    const row = { step, task: value.task, request: value.request, response, ms, bytes: Buffer.byteLength(JSON.stringify(response)) };
    await appendFile(join(directory, 'requests.jsonl'), JSON.stringify(row) + '\n');
    report.steps.push({ step, task: value.task, request: value.request, status: response.status, code: response.code, ms, bytes: row.bytes });
    assert.ok(row.bytes <= 128 * 1024); await save();
    console.log(JSON.stringify({ step, ms, response }, null, 2));
  }
  report.status = 'recorded';
} catch (error) { report.status = 'failed'; report.error = error instanceof Error ? error.stack : String(error); process.exitCode = 1; }
finally { input.close(); await cli.close(); report.completed_utc = new Date().toISOString(); await save(); }
