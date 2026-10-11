/** Sequential A/B live checks. Run through verify-paging.ps1 -Script verify-optimization. */
import assert from 'node:assert/strict';
import { mkdir, writeFile, readFile } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { createHash } from 'node:crypto';
import { Bridge, JsonLineClient, ROOT, validateNativeResponse } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { checkAdvanced } from './advanced-oracle.js';
import { fingerprint } from './oracle.js';
import type { Query, QueryResult, ReadResponse, ReadStateMachineResponse, SearchFilters, SearchRequest, SearchResponse, SourceDocument } from '../src/types.js';
import type { SearchPageResponse } from '../src/paging-types.js';

const directory = join(ROOT, 'experiments/search-optimization'), baseline = join(directory, 'baseline');
await mkdir(directory, { recursive: true });
const stamp = new Date().toISOString().replace(/[:.]/g, '-'), reportPath = join(directory, 'validation-' + stamp + '.json');
type Observation = { engine: string; name: string; round: number; elapsed_ms: number; bytes: number;
  occurrences?: number; coverage?: Record<string, number>; timings?: Record<string, number> };
const observations: Observation[] = [];
const report: Record<string, unknown> = { started_utc: new Date().toISOString(), observations,
  timing_boundary: 'Persistent serial Node JSONL request write through complete response parsing; includes bridge, matching and serialization. Loaded ASCET; no cold-database claim.',
  order: ['baseline', 'optimized', 'optimized', 'baseline'], rounds_per_session: 3,
  scope_comparison: 'Baseline has no scope filters, so scoped cases measure the previous full-database request. Optimized scoped results are checked against an independently filtered full native snapshot. Direct read compares identical targets.',
};
const save = () => writeFile(reportPath, JSON.stringify(report, null, 2) + '\n');
const batch: Query[] = [{ query: 'AEB_FxTarPT', mode: 'text' }, { query: 'AEBLockTime', mode: 'identifier_occurrence' },
  { query: 'AEB_EngTrqRedActive[A-Za-z_0-9]*', mode: 'regex' }];
const oid = '040qm00100001m8714ag81ugur0dk';
function scoped(documents: SourceDocument[], filters?: SearchFilters) {
  // Intentionally independent of production filterDocuments/field mapping.
  return documents.filter(d => (!filters?.component_oids || filters.component_oids.includes(d.component_oid)) &&
    (!filters?.member_ids || filters.member_ids.includes(d.member_id)) &&
    (!filters?.member_names || filters.member_names.includes(d.member_name)) &&
    (!filters?.kinds || filters.kinds.includes(d.kind)) &&
    (!filters?.implementation_oids || filters.implementation_oids.includes(d.implementation_oid)) &&
    (!filters?.variants || filters.variants.includes(d.variant)));
}
const keys = (queries: QueryResult[]) => queries.flatMap((q, qi) => q.results.flatMap(d =>
  (d.matches ?? q.match_sets![d.match_set!]).flatMap(m => m.columns.map((c, i) => JSON.stringify([qi, d.document_id, m.line, c, m.ranges?.[i] ?? null]))))).sort();
const pageKeys = (page: SearchPageResponse) => page.searches.flatMap(q => q.results.flatMap(d =>
  (d.matches ?? q.match_sets![d.match_set!]).flatMap(m => m.columns.map((c, i) => JSON.stringify([q.query_index, d.document_id, m.line, c, m.ranges?.[i] ?? null])))));
async function snapshot(old = false) {
  const wire = old ? new JsonLineClient({ command: join(baseline, 'CodeSearchBridge.exe') }) : new Bridge();
  try {
    const raw = validateNativeResponse(await wire.request({ mode: 'snapshot' })), decoded = decodeResponse(raw);
    assert.deepEqual(decoded.errors, []); return { raw, decoded };
  } finally { await wire.close(); }
}
function stats(values: number[]) {
  const sorted = [...values].sort((a, b) => a - b), n = sorted.length;
  return { samples: n, median_ms: (sorted[Math.floor((n - 1) / 2)] + sorted[Math.floor(n / 2)]) / 2,
    max_ms: sorted.at(-1), p95_ms: sorted[Math.ceil(n * .95) - 1] };
}
try {
  const old = await snapshot(true), before = await snapshot();
  assert.equal(fingerprint(old.decoded), fingerprint(before.decoded));
  report.source_fingerprint = fingerprint(before.decoded); report.database = before.raw.database;
  report.ascet_pid = before.raw.ascet_pid; report.coverage = before.decoded.coverage;
  const sources = before.decoded.documents;
  const init = sources.find(d => d.component_oid === oid && d.kind === 'graphical_method' && d.member_name === 'init')!;
  assert.ok(init, 'real graphical Init required');
  const textDoc = sources.find(d => d.kind === 'method' && d.text.includes('AEB') && d.implementation_oid) ??
    sources.find(d => d.kind === 'method' && d.text.includes('AEB'))!;
  assert.ok(textDoc, 'real text method sample required');
  report.has_custom_implementation_sample = Boolean(textDoc.implementation_oid);
  const cases: { name: string; request: SearchRequest }[] = [
    { name: 'text-return', request: { query: 'return' } },
    { name: 'regex-prefix', request: { query: '\\b[PC]_AEB[A-Za-z_0-9]*\\b', mode: 'regex' } },
    { name: 'regex-fallback', request: { query: '(?=AEBLockTime)', mode: 'regex', multiline: true } },
    { name: 'multiline-regex', request: { query: 'AEB_FxTarPT = 250000;.*?LDMSelectedController_None;', mode: 'regex', multiline: true, dotall: true } },
    { name: 'batch-3', request: { queries: batch, context_before: 1, context_after: 1, result_format: 'shared' } },
    { name: 'batch-64', request: { queries: Array.from({ length: 64 }, (_, i) => ({ ...batch[i % batch.length], id: i })), result_format: 'shared' } },
    { name: 'scoped-component', request: { query: 'AEBLockTime', filters: { component_oids: [oid] } } },
    { name: 'scoped-batch', request: { queries: batch, filters: { component_oids: [oid, textDoc.component_oid] }, context_before: 1 } },
    { name: 'scoped-init', request: { query: 'AEBLockTime', filters: { component_oids: [oid], member_names: ['init'], kinds: ['graphical_method'], implementation_oids: [''], variants: ['BD'] } } },
    { name: 'scoped-all-fields', request: { query: 'AEB', filters: { component_oids: [textDoc.component_oid], member_ids: [textDoc.member_id], member_names: [textDoc.member_name], kinds: [textDoc.kind], implementation_oids: [textDoc.implementation_oid], variants: [textDoc.variant] } } },
    { name: 'scoped-state-slots', request: { query: 'AEB', filters: { kinds: ['transition_condition', 'state_entry', 'transition_trigger_binding'], variants: ['ASDL'], implementation_oids: [''] } } },
    { name: 'scoped-method-name', request: { query: 'AEB', filters: { member_names: ['init'], kinds: ['method', 'process', 'graphical_method'] } } },
  ];
  report.cases = cases;
  for (const engine of ['baseline', 'optimized', 'optimized', 'baseline']) {
    const client = new JsonLineClient({ command: process.execPath,
      args: [join(engine === 'baseline' ? baseline : ROOT, 'dist/src/cli.js')], timeoutMs: 40_000 });
    const request = async (value: unknown, name: string, round: number) => {
      const start = performance.now(), result = await client.request(value) as SearchResponse | SearchPageResponse | ReadResponse | ReadStateMachineResponse;
      const elapsed_ms = performance.now() - start;
      assert.equal(result.status, 'ok', JSON.stringify(result));
      assert.equal(result.database, before.raw.database); assert.equal(result.ascet_pid, before.raw.ascet_pid);
      observations.push({ engine, name, round, elapsed_ms, bytes: Buffer.byteLength(JSON.stringify(result)),
        coverage: result.coverage, timings: result.timings,
        occurrences: 'total_occurrences' in result ? result.total_occurrences : 'searches' in result ? result.searches.reduce((n, q) => n + q.total_occurrences, 0) : undefined });
      return result;
    };
    try {
      await request({ query: 'AEBLockTime' }, 'startup', -1);
      for (let round = 0; round < 3; round++) {
        for (const item of round % 2 ? [...cases].reverse() : cases) {
          const { filters, ...unscoped } = item.request;
          const common = { ...(engine === 'baseline' ? unscoped : item.request), expected_database: before.raw.database };
          const full = await request(common, item.name, round) as SearchResponse;
          const queries = 'searches' in full ? full.searches : [full];
          const expected = scoped(sources, engine === 'baseline' ? undefined : filters);
          const patterns = item.request.queries ?? [item.request as Query];
          queries.forEach((q, i) => checkAdvanced(q, expected, patterns[i], item.request.context_before ?? 0, item.request.context_after ?? 0));
          if (engine === 'optimized' && filters?.component_oids) assert.equal(full.coverage.candidate_objects, filters.component_oids.length);
          if (item.name === 'batch-3' || item.name === 'scoped-batch' || item.name === 'text-return') {
            let page = await request({ ...common, operation: 'search_page', limit: 17 }, item.name + '-page1', round) as SearchPageResponse;
            const got: string[] = [];
            while (true) {
              got.push(...pageKeys(page));
              assert.ok(page.returned_occurrences <= 17); assert.ok(Buffer.byteLength(JSON.stringify(page)) <= 128 * 1024);
              if (!page.has_more) break;
              page = await request({ cursor: page.next_cursor }, item.name + '-next', round) as SearchPageResponse;
            }
            assert.deepEqual(got.sort(), keys(queries));
          }
        }
        const read = await request({ operation: 'read', target: { component_oid: init.component_oid, document_id: init.document_id },
          expected_database: before.raw.database, expected_source_sha256: init.source_sha256 }, 'read-init', round) as ReadResponse;
        assert.deepEqual(read.document, init);
        const state = await request({ operation: 'read_state_machine', component_oid: oid, expected_database: before.raw.database }, 'read-state-machine', round) as ReadStateMachineResponse;
        assert.ok(state.complete);
        let sum = 0;
        for (const q of batch) {
          const start = performance.now(); await request(q, 'separate-query', round); sum += performance.now() - start;
        }
        observations.push({ engine, name: 'three-separate-requests', round, elapsed_ms: sum, bytes: 0 });
      }
    } finally { await client.close(); }
  }
  const after = await snapshot();
  assert.equal(fingerprint(after.decoded), report.source_fingerprint, 'live model changed during comparison');
  report.model_stable = true; report.status = 'passed';
  report.summary = [...new Set(observations.filter(o => o.round >= 0).map(o => o.name))].map(name => ({ name,
    ...Object.fromEntries(['baseline', 'optimized'].map(engine => [engine, stats(observations.filter(o => o.name === name && o.engine === engine).map(o => o.elapsed_ms))])) }));
  report.source_hashes = Object.fromEntries(await Promise.all(['CodeSearchBridge.cs', 'CodeSearchBridge.exe', 'native-snapshot.st', 'src/prefilter.ts', 'src/search-session.ts', 'src/match-queries.ts', 'scripts/verify-optimization.ts'].map(async file => [file, createHash('sha256').update(await readFile(join(ROOT, file))).digest('hex')])));
  await save(); await writeFile(join(directory, 'latest.json'), JSON.stringify(report, null, 2) + '\n');
  console.log(JSON.stringify({ report: reportPath, jsonl_requests: observations.filter(o => o.name !== 'three-separate-requests').length, summary: report.summary }, null, 2));
} catch (error) { report.status = 'failed'; report.error = String(error); await save(); throw error; }
