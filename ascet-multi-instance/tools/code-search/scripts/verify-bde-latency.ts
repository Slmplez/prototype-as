import assert from 'node:assert/strict';
import { execFile } from 'node:child_process';
import { promisify } from 'node:util';
import { mkdir, readFile, writeFile, appendFile } from 'node:fs/promises';
import { join, resolve } from 'node:path';
import { performance } from 'node:perf_hooks';
import { JsonLineClient, ROOT } from '../src/bridge.js';
import { assertSameRecords } from './bde-matrix-compare.js';

const runFile = promisify(execFile);
const roots = process.argv.slice(2).map(root => resolve(root));
if (!roots.length) roots.push(ROOT);
const rounds = Number(process.env.ASCET_BDE_LATENCY_ROUNDS ?? 7);
assert.ok(Number.isSafeInteger(rounds) && rounds >= 1 && rounds <= 30);
const directory = join(ROOT, 'experiments/bde-latency', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: '32631', ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0', ASCET_CODE_SEARCH_TRACE: '1' };
const cases = [{ name: 'identifier', query: { text: 'AEBLockTime', mode: 'identifier' } },
  { name: 'get', query: { text: 'get' } }, { name: 'set', query: { text: 'set' } },
  { name: 'regex', query: { text: '\\bAEBLockTime\\b', mode: 'regex' } },
  { name: 'absent_text', query: { text: '__BDE_MATRIX_ABSENT_84ab7__' } },
  { name: 'batch', query: [{ text: 'AEBLockTime', mode: 'identifier' }, { text: 'C_AEB_AXCDeadZonePos', mode: 'identifier' }] }];
const samples: any[] = [], signatures = new Map<string, unknown[]>();
const report: any = { status: 'running', directory, roots, rounds, samples,
  boundary: 'Serial JSONL CLI on isolated endpoint 32631. Every query reads live saved facts. Full result pages compared by model metadata; refs/cursors/expiry/debug excluded from equivalence. Root latency excludes continuation-page consumption. All measured calls include debug and native diagnostics.' };
const save = () => writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
const stable = (value: any): any => Array.isArray(value) ? value.map(stable) : value && typeof value === 'object'
  ? Object.fromEntries(Object.entries(value).filter(([key]) => !['ref', 'diagram_ref', 'expires_utc', 'next_cursor', 'debug'].includes(key))
    .map(([key, v]) => [key, stable(v)])) : value;
async function lifecycle(action: 'start' | 'finish') {
  const out = await runFile(process.execPath, [join(ROOT, 'dist/scripts/agent-evaluation-lifecycle.js'), action, directory],
    { env, windowsHide: true, timeout: 90_000 });
  await appendFile(join(directory, 'driver.log'), out.stdout + out.stderr);
}
let launched = false, index = 0;
async function call(client: JsonLineClient, request: any) {
  const started = performance.now(), response: any = await client.request(request), ms = performance.now() - started;
  await appendFile(join(directory, 'requests.jsonl'), JSON.stringify({ index: ++index, request, response, ms }) + '\n');
  assert.equal(response.status, 'ok');
  assert.ok(Buffer.byteLength(JSON.stringify(response)) <= 128 * 1024);
  return { response, ms };
}
try {
  await lifecycle('start'); launched = true;
  for (let round = 0; round < rounds; round++) {
    const phases = roots.map((root, phase) => ({ root, phase }));
    for (const { root, phase } of round % 2 ? phases.reverse() : phases) {
      const client = new JsonLineClient({ command: process.execPath, args: [join(root, 'dist/src/cli.js'), '--agent'], env, timeoutMs: 90_000 });
      try {
        await call(client, { query: cases.map(c => c.query).flat(), in: { kind: 'diagram' }, group_by: 'object', context: 0, limit: 20, debug: true });
        for (const item of round % 2 ? [...cases].reverse() : cases) {
          const rootRequest = await call(client, { query: item.query, in: { kind: 'diagram' }, group_by: 'object', context: 0, limit: 20, debug: true });
          let page = rootRequest.response;
          const values: unknown[] = [];
          for (;;) {
            for (const query of page.searches) for (const result of query.results) {
              const { hits, ...target } = stable(result);
              for (const hit of hits ?? []) values.push({ query: query.index, target, hit });
            }
            if (!page.has_more) break;
            page = (await call(client, { cursor: page.next_cursor })).response;
          }
          if (signatures.has(item.name)) assertSameRecords(values, signatures.get(item.name)!, item.name + ': complete search contents');
          else signatures.set(item.name, values);
          samples.push({ phase, round, name: item.name, ms: rootRequest.ms, total_hits: rootRequest.response.total_hits,
            timings: rootRequest.response.debug?.timings, coverage: rootRequest.response.debug?.coverage });
        }
      } finally { await client.close(); }
    }
    console.log(JSON.stringify({ directory, round: round + 1, rounds }));
    await save();
  }
  report.correctness_status = 'passed';
  report.metrics = roots.map((root, phase) => ({ root, cases: Object.fromEntries(cases.map(c => {
    const times = samples.filter(s => s.phase === phase && s.name === c.name).map(s => s.ms).sort((a, b) => a - b);
    return [c.name, { samples: times.length, median_ms: times[Math.floor(times.length / 2)], max_ms: times.at(-1), over_500ms: times.filter(t => t >= 500).length }];
  })) }));
  report.over_500ms = samples.filter(s => s.ms >= 500);
  const candidate = samples.filter(s => s.phase === roots.length - 1);
  report.performance = { goal_ms: 500, candidate_requests: candidate.length,
    over_goal: candidate.filter(s => s.ms >= 500).length, all_under_goal: candidate.every(s => s.ms < 500) };
  report.performance_status = report.performance.all_under_goal ? 'passed' : 'failed';
  if (!report.performance.all_under_goal) process.exitCode = 2;
} catch (error) { report.correctness_status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally {
  report.status = 'recorded'; await save();
  if (launched) {
    try { await lifecycle('finish'); report.closeout = JSON.parse(await readFile(join(directory, 'closeout.json'), 'utf8')); }
    catch (error) { report.cleanup_error = String(error); process.exitCode = 1; }
  }
  await save();
  console.log(JSON.stringify({ directory, correctness: report.correctness_status, metrics: report.metrics, cleanup: report.closeout?.status }, null, 2));
}
