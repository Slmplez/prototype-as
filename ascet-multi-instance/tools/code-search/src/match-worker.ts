import { parentPort } from 'node:worker_threads';
import { performance } from 'node:perf_hooks';
import { matchQueries, unpackMatchJob, type PackedMatchJob } from './match-queries.js';

parentPort!.on('message', ({ id, job }: { id: number; job: PackedMatchJob }) => {
  const start = performance.now();
  try { parentPort!.postMessage({ id, results: matchQueries(unpackMatchJob(job)), compute_ms: performance.now() - start }); }
  catch (error) { parentPort!.postMessage({ id, error: error instanceof Error ? error.message : String(error) }); }
});
