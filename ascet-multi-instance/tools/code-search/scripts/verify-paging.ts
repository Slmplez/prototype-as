/** Read-only, serial live verification and client-visible paging timings. */
import assert from 'node:assert/strict';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse, sha256 } from '../src/protocol.js';
import type { ErrorResponse, Query, QueryResult, SearchRequest, SearchResponse, SourceDocument } from '../src/types.js';
import type { PageQueryResult, SearchPageResponse, SourcePreview } from '../src/paging-types.js';
import { checkAdvanced } from './advanced-oracle.js';
import { fingerprint } from './oracle.js';

const cases: { name: string; limit: number; request: SearchRequest }[] = [
  { name: 'text-many', limit: 50, request: { query: 'return', mode: 'text', result_format: 'expanded' } },
  { name: 'identifier-state-init', limit: 3, request: { query: 'AEBLockTime', mode: 'identifier_occurrence', context_before: 1, context_after: 1, result_format: 'shared' } },
  { name: 'regex-prefix', limit: 20, request: { query: '\\b[PC]_AEB[A-Za-z_0-9]*\\b', mode: 'regex', result_format: 'shared' } },
  { name: 'multiline-text', limit: 1, request: { query: 'AEB_FxTarPT = 250000;\nAEB_LDMSelectedControllerPT = LDMSelectedController_None;', multiline: true } },
  { name: 'multiline-regex', limit: 1, request: { query: 'AEB_FxTarPT = 250000;.*?LDMSelectedController_None;', mode: 'regex', multiline: true, dotall: true } },
  { name: 'zero-width', limit: 2, request: { query: '(?=AEBLockTime)', mode: 'regex', multiline: true } },
  { name: 'batch', limit: 3, request: { queries: [
    { id: 'same', query: 'AEB_FxTarPT', mode: 'text' },
    { id: 'same', query: 'AEBLockTime', mode: 'identifier_occurrence' },
    { query: 'AEB_EngTrqRedActive[A-Za-z_0-9]*', mode: 'regex' },
  ], result_format: 'shared', context_before: 1, context_after: 1 } },
  { name: 'no-match', limit: 50, request: { query: '__ASCET_PAGING_ABSENT_91a79c__' } },
];
const directory = join(ROOT, 'experiments', 'pagination');
await mkdir(directory, { recursive: true });
const observations: Record<string, unknown>[] = [];
const requests: { case: string; kind: string; elapsed_ms: number; bytes: number }[] = [];
const report: Record<string, unknown> = {
  started_utc: new Date().toISOString(),
  timing_boundary: 'Persistent Node JSONL client request through full response parsed, including serialization/transport; loaded live ASCET. Client/connection startup reported separately. No cold database claim.',
  rounds: 3, observations, requests,
};
const stamped = join(directory, 'validation-' + new Date().toISOString().replace(/[:.]/g, '-') + '.json');
const save = () => writeFile(stamped, JSON.stringify(report, null, 2) + '\n');
async function snapshot() {
  const bridge = new Bridge();
  try {
    const raw = await bridge.request({ mode: 'snapshot' }), decoded = decodeResponse(raw);
    assert.deepEqual(decoded.errors, []); return { raw, decoded };
  } finally { await bridge.close(); }
}
function fullKeys(queries: QueryResult[]): string[] {
  return queries.flatMap((q, i) => q.results.flatMap(d => (d.matches ?? q.match_sets![d.match_set!]).flatMap(m =>
    m.columns.map((c, n) => JSON.stringify([i, d.document_id, d.source_sha256, m.line, c, m.ranges?.[n] ?? null]))))).sort();
}
function checkPreview(actual: SourcePreview, source: string) {
  const chars = [...source], length = [...actual.text].length;
  assert.equal(actual.text, chars.slice(actual.start_column - 1, actual.start_column - 1 + length).join(''));
  assert.equal(actual.truncated_before, actual.start_column > 1);
  assert.equal(actual.truncated_after, actual.start_column - 1 + length < chars.length);
}
function checkPage(p: SearchPageResponse, documents: Map<string, SourceDocument>): string[] {
  const keys: string[] = [];
  for (const q of p.searches) {
    let count = 0;
    for (const d of q.results) {
      const source = documents.get(d.document_id); assert.ok(source);
      const { matches: _m, match_set: _s, context: _c, ...meta } = d;
      const { text: _text, ...wanted } = source;
      assert.deepEqual(meta, wanted);
      const lines = source.text.replace(/\r\n?/g, '\n').split('\n');
      const matches = d.matches ?? q.match_sets![d.match_set!];
      const expectedContext = new Set<number>();
      for (const m of matches) {
        checkPreview(m.preview, lines[m.line - 1]);
        if (m.ranges) assert.equal(m.columns.length, m.ranges.length);
        for (let i = 0; i < m.columns.length; i++) {
          keys.push(JSON.stringify([q.query_index, d.document_id, d.source_sha256, m.line, m.columns[i], m.ranges?.[i] ?? null])); count++;
        }
      }
      const context = d.context ?? q.context_sets?.[d.match_set!];
      if (context) {
        for (const l of context.lines) { assert.ok(!expectedContext.has(l.line)); expectedContext.add(l.line); checkPreview(l.preview, lines[l.line - 1]); }
        assert.ok(context.omitted_lines >= 0);
      }
    }
    assert.equal(count, q.returned_occurrences);
  }
  assert.equal(keys.length, p.returned_occurrences); assert.ok(keys.length <= p.limit);
  assert.equal(p.has_more, p.searches.some(q => q.has_more));
  assert.equal(p.has_more, p.next_cursor !== null);
  assert.equal(p.freshness, 'query_snapshot'); assert.equal(p.source_read_complete, true);
  return keys;
}
function stats(values: number[]) {
  const sorted = [...values].sort((a, b) => a - b), n = sorted.length;
  return { n, median_ms: n ? (sorted[Math.floor((n - 1) / 2)] + sorted[Math.floor(n / 2)]) / 2 : null,
    p95_ms: n ? sorted[Math.ceil(n * 0.95) - 1] : null, max_ms: n ? sorted[n - 1] : null };
}

try {
  const before = await snapshot(), sources = new Map(before.decoded.documents.map(d => [d.document_id, d]));
  report.database = before.raw.database; report.ascet_pid = before.raw.ascet_pid;
  report.coverage = before.decoded.coverage; report.source_fingerprint = fingerprint(before.decoded);
  const client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js')], timeoutMs: 40_000 });
  async function request(value: unknown, name: string, kind: string) {
    const start = performance.now(), result = await client.request(value) as SearchResponse | SearchPageResponse | ErrorResponse;
    const elapsed_ms = performance.now() - start, bytes = Buffer.byteLength(JSON.stringify(result), 'utf8');
    requests.push({ case: name, kind, elapsed_ms, bytes });
    assert.equal(result.status, 'ok', JSON.stringify(result));
    assert.equal(result.database, before.raw.database); assert.equal(result.ascet_pid, before.raw.ascet_pid);
    return { value: result as SearchResponse | SearchPageResponse, elapsed_ms, bytes };
  }
  try {
    report.client_startup = await request({ operation: 'search_page', query: 'AEBLockTime', limit: 3, expected_database: before.raw.database }, 'startup', 'startup');
    for (let round = 0; round < 3; round++) for (const item of cases) {
      const common = { ...item.request, expected_database: before.raw.database };
      let full, first;
      // Alternate ordering so the paged request is not always the warmed second request.
      if (round % 2 === 0) {
        full = await request(common, item.name, 'full');
        first = await request({ ...common, operation: 'search_page', limit: item.limit }, item.name, 'first_page');
      } else {
        first = await request({ ...common, operation: 'search_page', limit: item.limit }, item.name, 'first_page');
        full = await request(common, item.name, 'full');
      }
      assert.equal(full.value.schema_version, 1); assert.equal(first.value.schema_version, 2);
      const fullValue = full.value as SearchResponse, p1 = first.value as SearchPageResponse;
      const fullQueries = 'searches' in fullValue ? fullValue.searches : [fullValue];
      const patterns: Query[] = item.request.queries ?? [item.request as Query];
      fullQueries.forEach((q, i) => checkAdvanced(q, before.decoded.documents, patterns[i], item.request.context_before ?? 0, item.request.context_after ?? 0));
      const expected = fullKeys(fullQueries), got: string[] = [];
      let current = p1, pages = 0, allBytes = 0;
      while (true) {
        assert.equal(current.snapshot_id, p1.snapshot_id); assert.equal(current.observed_utc, p1.observed_utc);
        assert.equal(current.total_occurrences, expected.length);
        current.searches.forEach((q, i) => {
          assert.equal(q.total_occurrences, fullQueries[i].total_occurrences);
          assert.equal(q.total_matched_documents, fullQueries[i].matched_documents);
        });
        got.push(...checkPage(current, sources)); pages++;
        const pageBytes = Buffer.byteLength(JSON.stringify(current), 'utf8');
        assert.ok(pageBytes <= 128 * 1024); allBytes += pageBytes;
        if (!current.has_more) break;
        assert.ok(current.returned_occurrences > 0); assert.ok(pages < 10000);
        const token = current.next_cursor!;
        const next = (await request({ cursor: token }, item.name, 'continuation')).value as SearchPageResponse;
        if (pages === 1 && round === 0) {
          const replay = (await request({ cursor: token }, item.name, 'replay')).value as SearchPageResponse;
          assert.deepEqual({ ...replay, timings: null }, { ...next, timings: null });
        }
        current = next;
      }
      assert.deepEqual(got.sort(), expected, 'missing/extra/duplicate paged positions: ' + item.name);
      assert.equal(new Set(got).size, got.length);
      observations.push({ case: item.name, round, request: common, limit: item.limit, occurrences: got.length, pages,
        first_page_ms: first.elapsed_ms, full_ms: full.elapsed_ms, first_page_bytes: first.bytes, full_bytes: full.bytes,
        all_pages_bytes: allBytes, positions_sha256: sha256(JSON.stringify(got)), correct: true });
      if (round === 0) await writeFile(join(directory, item.name + '-first-page.json'), JSON.stringify(p1, null, 2) + '\n');
      await save();
    }
  } finally { await client.close(); }
  const after = await snapshot();
  assert.equal(after.raw.database, before.raw.database); assert.equal(after.raw.ascet_pid, before.raw.ascet_pid);
  assert.equal(fingerprint(after.decoded), fingerprint(before.decoded));
  report.model_stable = true; report.correctness_passed = true;
  report.timing_summary = Object.fromEntries(['full', 'first_page', 'continuation', 'replay'].map(kind =>
    [kind, stats(requests.filter(r => r.kind === kind).map(r => r.elapsed_ms))]));
  report.per_case = cases.map(item => ({ name: item.name,
    full: stats(requests.filter(r => r.case === item.name && r.kind === 'full').map(r => r.elapsed_ms)),
    first_page: stats(requests.filter(r => r.case === item.name && r.kind === 'first_page').map(r => r.elapsed_ms)),
    continuation: stats(requests.filter(r => r.case === item.name && r.kind === 'continuation').map(r => r.elapsed_ms)),
  }));
  report.finished_utc = new Date().toISOString();
  await save(); await writeFile(join(directory, 'latest.json'), JSON.stringify(report, null, 2) + '\n');
  process.stdout.write(JSON.stringify({ report: stamped, observations: observations.length,
    live_requests: requests.length, model_stable: true, timing_summary: report.timing_summary, per_case: report.per_case }, null, 2) + '\n');
} catch (error) {
  report.failure = error instanceof Error ? error.stack : String(error); await save();
  throw error;
}
