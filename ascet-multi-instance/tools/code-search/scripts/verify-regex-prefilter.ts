import assert from 'node:assert/strict';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';
import type { AgentSearchResponse } from '../src/agent-types.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.notEqual(instance.port, 32503);
const baseline = join(ROOT, '../../dist/ascet-code-search-cli-0.2.0-20261002T185921630Z');
const directory = join(ROOT, 'experiments/regex-prefilter', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' };
const cases: Record<string, unknown>[] = [
  { query: '\\b(get|set)\\b', mode: 'regex' },
  { query: '(?:AEBLockTime|AEB_FxTarPT)', mode: 'regex' },
  { query: '(AEBLockTime)', mode: 'regex' },
  { query: '^get|set$', mode: 'regex' },
  { query: 'set|get', mode: 'regex', case_sensitive: true },
  { query: '(return|calc)', mode: 'regex' },
  { query: '(?:get|set)?', mode: 'regex', in: { kind: 'method' } },
  { query: '(?:get|set)*', mode: 'regex', in: { kind: 'method' } },
  { query: 'foo|.*', mode: 'regex', in: { kind: 'method' } },
  { query: ['AEBLockTime', { text: '(?:return|set)', mode: 'regex' }], mode: 'identifier' },
  { query: ['AEBLockTime', { text: '(?:return|.*)', mode: 'regex' }], mode: 'identifier', in: { kind: 'method' } },
];
function stable(value: unknown): unknown {
  if (Array.isArray(value)) return value.map(stable);
  if (value && typeof value === 'object') return Object.fromEntries(Object.entries(value)
    .filter(([key]) => !['ref', 'diagram_ref', 'next_cursor', 'expires_utc', 'debug'].includes(key)).map(([key, item]) => [key, stable(item)]));
  return value;
}
const signatures = new Map<number, unknown>();
const samples: unknown[] = [], profiles: unknown[] = [];
const report: Record<string, unknown> = { status: 'running', directory, baseline,
  boundary: 'Read-only full first-page equality against the frozen CLI whose grouped/alternate regexes disable native filtering. Native whole snapshot/source audit before and after; unsupported/optional branches remain unfiltered.' };
async function snapshot() {
  const bridge = new Bridge(90, { env });
  try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    assert.equal(raw.ascet_pid, identity.pid); const data = decodeResponse(raw); assert.deepEqual(data.errors, []); return data;
  } finally { await bridge.close(); }
}
try {
  const before = await snapshot();
  for (let round = 0; round < 3; round++) {
    const phases = [{ name: 'baseline', root: baseline }, { name: 'candidate', root: ROOT }];
    for (const phase of round % 2 ? phases.reverse() : phases) {
      const client = new JsonLineClient({ command: process.execPath, args: [join(phase.root, 'dist/src/cli.js'), '--agent'], env, timeoutMs: 90_000 });
      try {
        assert.equal((await client.request({ operation: 'find', target: 'components', limit: 1 }) as any).status, 'ok');
        for (let index = 0; index < cases.length; index++) {
          const request = { ...cases[index], group_by: 'object', limit: 20 };
          const started = performance.now(), response = await client.request(request) as AgentSearchResponse;
          const elapsed = performance.now() - started;
          await writeFile(join(directory, `${phase.name}-${round}-${index}.json`), JSON.stringify(response, null, 2) + '\n');
          assert.equal(response.status, 'ok', JSON.stringify(response)); assert.ok(Buffer.byteLength(JSON.stringify(response)) <= 128 * 1024);
          assert.deepEqual(stable(response), signatures.get(index) ?? stable(response), phase.name + '/' + JSON.stringify(request));
          signatures.set(index, stable(response));
          samples.push({ phase: phase.name, round, request, elapsed_ms: elapsed, total_hits: response.total_hits });
        }
        const response = await client.request({ ...cases[0], group_by: 'object', limit: 20, debug: true }) as AgentSearchResponse;
        assert.equal(response.status, 'ok'); profiles.push({ phase: phase.name, round, debug: response.debug });
      } finally { await client.close(); }
    }
    console.log(JSON.stringify({ round: round + 1, rounds: 3 }));
  }
  const after = await snapshot();
  assert.equal(fingerprint(before), fingerprint(after)); assert.deepEqual(before.diagrams, after.diagrams);
  Object.assign(report, { status: 'passed', first_pages_equal: true, comparisons: cases.length * 6,
    full_snapshot_unchanged: true, source_fingerprint: fingerprint(after), samples, profiles });
} catch (error) { report.status = 'failed'; report.error = String(error).slice(0, 5000); process.exitCode = 1; }
finally {
  await writeFile(join(directory, 'report.json'), JSON.stringify({ ...report, samples, profiles }, null, 2) + '\n');
  console.log(JSON.stringify({ ...report, samples: undefined, profiles: undefined }, null, 2));
}
