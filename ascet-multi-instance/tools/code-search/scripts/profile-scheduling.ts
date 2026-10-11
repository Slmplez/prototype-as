import assert from 'node:assert/strict';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { JsonLineClient, ROOT } from '../src/bridge.js';
import type { AgentSearchResponse } from '../src/agent-types.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.ok(Number.isInteger(instance.port) && instance.port !== 32503);
const directory = join(ROOT, 'experiments/scheduling', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), '--agent'],
  env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) }, timeoutMs: 90_000 });
const samples: unknown[] = [];
const rounds = Number(process.env.ASCET_SCHEDULING_ROUNDS ?? 20);
try {
  const catalog = await client.request({ operation: 'find', target: 'components', limit: 1, debug: true }) as AgentSearchResponse;
  assert.equal(catalog.status, 'ok');
  for (let round = -1; round < rounds; round++) {
    for (const query of ['set', 'return', 'AEBLockTime']) {
      const began = performance.now();
      const response = await client.request({ query, group_by: 'object', limit: 20, debug: true }) as AgentSearchResponse;
      assert.equal(response.status, 'ok');
      const sample = { round, query, elapsed_ms: performance.now() - began, total_hits: response.total_hits, debug: response.debug };
      samples.push(sample);
      console.log(JSON.stringify(sample));
    }
  }
} finally {
  await client.close();
  await writeFile(join(directory, 'report.json'), JSON.stringify({ manifest, pid: identity.pid, samples }, null, 2) + '\n');
  console.log(directory);
}
