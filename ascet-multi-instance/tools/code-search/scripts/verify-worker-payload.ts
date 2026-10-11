import assert from 'node:assert/strict';
import { Worker } from 'node:worker_threads';
import { performance } from 'node:perf_hooks';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { ROOT } from '../src/bridge.js';
import { MatchExecutor, matchQueries, packMatchJob, type MatchJob } from '../src/match-queries.js';
import { validateSearch } from '../src/validation.js';
import type { QueryResult, Snapshot } from '../src/types.js';

const directory = join(ROOT, 'experiments/worker-payload', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const { data } = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')) as { data: Snapshot };
const moduleUrl = new URL('../src/match-queries.js', import.meta.url).href;
// The control reproduces the previous worker's full-job transport.
const control = new Worker(`const {parentPort}=require('node:worker_threads');
const ready=import(${JSON.stringify(moduleUrl)});
parentPort.on('message',async job=>{const {matchQueries}=await ready;parentPort.postMessage(matchQueries(job));});`, { eval: true });
const executor = new MatchExecutor();
const report: Record<string, unknown> = { status: 'running', directory, boundary: 'Offline immutable real corpus; alternating raw-job and packed-job workers. No live ASCET access.' };
const samples: { round: number; raw_ms: number; packed_ms: number }[] = [];
const job: MatchJob = { documents: data.documents, request: validateSearch({ query: '\\b(get|set)\\b', mode: 'regex', result_format: 'shared' }), deferContext: true, trackFields: true };
const expected = matchQueries(job);
const baseline = () => new Promise<QueryResult[]>((resolve, reject) => {
  const cleanup = () => { control.off('message', message); control.off('error', error); };
  const message = (value: QueryResult[]) => { cleanup(); resolve(value); };
  const error = (value: Error) => { cleanup(); reject(value); };
  control.once('message', message); control.once('error', error); control.postMessage(job);
});
try {
  assert.deepEqual(await baseline(), expected); assert.deepEqual(await executor.run(job), expected);
  for (let round = 0; round < 60; round++) {
    const times: Record<string, number> = {};
    for (const name of round % 2 ? ['packed', 'raw'] : ['raw', 'packed']) {
      const start = performance.now(), result = await (name === 'raw' ? baseline() : executor.run(job));
      times[name] = performance.now() - start; assert.deepEqual(result, expected);
    }
    samples.push({ round, raw_ms: times.raw, packed_ms: times.packed });
  }
  const packed = packMatchJob(job);
  const stats = (name: 'raw_ms' | 'packed_ms') => {
    const times = samples.map(sample => sample[name]).sort((a, b) => a - b);
    return { median_ms: times[times.length / 2], p95_ms: times[Math.floor(times.length * .95)], max_ms: times.at(-1) };
  };
  Object.assign(report, { status: 'passed', documents: job.documents.length, unique_sources: packed.texts.length,
    original_characters: job.documents.reduce((n, doc) => n + doc.text.length, 0), unique_characters: packed.texts.reduce((n, text) => n + text.length, 0),
    raw: stats('raw_ms'), packed: stats('packed_ms'), all_results_equal: true, samples });
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally {
  executor.close(); await control.terminate();
  await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
  console.log(JSON.stringify({ ...report, samples: undefined }, null, 2));
}
