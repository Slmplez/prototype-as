/** Read-only live verification and complete JSONL roundtrip measurements. */
import assert from 'node:assert/strict';
import { createHash } from 'node:crypto';
import { readFile, writeFile } from 'node:fs/promises';
import { resolve, join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse, identity, TEXT_KINDS } from '../src/protocol.js';
import type { Query, QueryResult, SearchResponse, Snapshot, SourceDocument } from '../src/types.js';
import { actual, baseline, fingerprint } from './oracle.js';

const CASES: Query[] = [
  { query: 'P_AEBdT', mode: 'identifier_occurrence', case_sensitive: true },
  { query: 'p_aebdt' }, { query: 'return' }, { query: '__codex_absent_6d50b313__' },
  { query: 'a' }, { query: '_' }, { query: 'C_AEBdT', mode: 'identifier_occurrence' },
  { query: 'if (', case_sensitive: true }, { query: '*' },
  { query: 'AEBLockTime', mode: 'identifier_occurrence' },
  { query: 'Trigger_IB_From_Off', mode: 'identifier_occurrence' },
  { query: 'trigger', mode: 'identifier_occurrence' },
];
const args = process.argv.slice(2);
let output = join(ROOT, 'ts-live-validation-20261001.json'), repeats = 3;
for (let i = 0; i < args.length; i += 2) {
  if (args[i] === '--output' && args[i + 1]) output = resolve(args[i + 1]);
  else if (args[i] === '--repeats' && args[i + 1]) repeats = Number(args[i + 1]);
  else throw new Error('Usage: verify-live [--output path] [--repeats 3]');
}
if (!Number.isSafeInteger(repeats) || repeats < 1) throw new Error('repeats must be a positive integer');

interface Attempt { phase: string; request: unknown; elapsed_ms: number; status?: string; complete?: boolean; correct?: boolean; timings?: Record<string, number>; error?: string }
const attempts: Attempt[] = [];
const report: Record<string, unknown> = {
  started_utc: new Date().toISOString(), runtime: process.version, target_ms: 500,
  timing_boundary: 'Before lazy process startup/each request write through complete JSON read and JSON.parse; includes Node, C#, ASCET read, matching and transport',
  ascet_state: 'Already running; full oracle snapshot read first. Warm model, not a cold-load guarantee. No model edits or restart.',
  attempts,
};
const save = (): Promise<void> => writeFile(output, JSON.stringify(report, null, 2) + '\n', 'utf8');

async function fullRead(): Promise<{ snapshot: Snapshot; database: string; pid: number }> {
  const bridge = new Bridge();
  try {
    const raw = await bridge.request({ mode: 'snapshot' }), snapshot = decodeResponse(raw);
    assert.deepEqual(snapshot.errors, []);
    return { snapshot, database: raw.database, pid: raw.ascet_pid };
  } finally { await bridge.close(); }
}

function check(result: QueryResult, query: Query, documents: SourceDocument[], expectedHits: Map<string, string[]>): void {
  const key = JSON.stringify(query);
  let hits = expectedHits.get(key);
  if (!hits) { hits = baseline(documents, query); expectedHits.set(key, hits); }
  assert.deepEqual(actual(result), hits, 'missing/extra occurrence');
  const lookup = new Map(documents.map(d => [d.document_id, d]));
  let lines = 0;
  for (const d of result.results) {
    const original = lookup.get(d.document_id); assert.ok(original, 'unknown document identity');
    const { text: body, ...metadata } = original;
    const { matches: expanded, match_set: ref, ...returned } = d;
    assert.deepEqual(returned, metadata, 'metadata mismatch');
    const matches = expanded ?? result.match_sets![ref!];
    const sourceLines = body.replace(/\r\n?/g, '\n').split('\n');
    for (const m of matches) assert.equal(m.text, sourceLines[m.line - 1], 'source line mismatch');
    lines += matches.length;
  }
  assert.equal(result.total_occurrences, hits.length);
  assert.equal(result.matched_documents, result.results.length);
  assert.equal(result.matched_lines, lines);
}

function latency(values: number[]): Record<string, number> {
  values.sort((a, b) => a - b);
  const n = values.length;
  return { samples: n, min_ms: values[0], median_ms: n % 2 ? values[n >> 1] : (values[n / 2 - 1] + values[n / 2]) / 2,
    p95_ms: values[Math.ceil(n * .95) - 1], max_ms: values[n - 1], over_500ms: values.filter(v => v >= 500).length };
}

try {
  report.source_hashes = Object.fromEntries(await Promise.all([
    'CodeSearchBridge.cs', 'CodeSearchBridge.exe', 'native-snapshot.st', 'state-source-reader.st', 'graph-source-reader.st', 'src/graphical.ts',
    'src/bridge.ts', 'src/protocol.ts', 'src/matcher.ts', 'src/search.ts', 'src/cli.ts', 'src/validation.ts',
  ].map(async name => [name, createHash('sha256').update(await readFile(join(ROOT, name))).digest('hex')])));
  const before = await fullRead();
  report.database = before.database; report.ascet_pid = before.pid; report.coverage = before.snapshot.coverage;
  report.document_kinds = before.snapshot.documents.reduce<Record<string, number>>((counts, d) => { counts[d.kind] = (counts[d.kind] ?? 0) + 1; return counts; }, {});
  const expected = new Map<string, string[]>();
  const client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js')], timeoutMs: 40_000 });
  let first = true;
  async function measure(request: Record<string, unknown>, queries: Query[], phase: string): Promise<void> {
    const input = { ...request, expected_database: before.database };
    const row: Attempt = { phase: first ? 'new_process_warm_ascet' : phase, request: input, elapsed_ms: 0 };
    first = false;
    const started = performance.now();
    try {
      const result = await client.request(input) as SearchResponse;
      row.elapsed_ms = performance.now() - started;
      row.status = result.status; row.complete = result.complete; row.timings = result.timings;
      assert.equal(result.status, 'ok'); assert.equal(result.complete, true);
      assert.equal(result.database, before.database); assert.equal(result.ascet_pid, before.pid);
      const results = 'searches' in result ? result.searches : [result];
      assert.equal(results.length, queries.length);
      for (let i = 0; i < queries.length; i++) check(results[i], queries[i], before.snapshot.documents, expected);
      row.correct = true;
    } catch (error) {
      row.elapsed_ms ||= performance.now() - started;
      row.error = String(error); row.correct = false; throw error;
    } finally { attempts.push(row); await save(); }
  }
  try {
    for (let repeat = 0; repeat < repeats; repeat++) {
      for (const result_format of ['shared', 'expanded']) {
        for (const q of CASES) await measure({ ...q, result_format }, [q], 'resident_' + result_format);
      }
      await measure({ queries: CASES, result_format: 'shared' }, CASES, 'batch_12_shared');
      const mixed = Array.from({ length: 64 }, (_, i): Query => i === 63 ? { query: '中文' } : { ...CASES[i % CASES.length], id: i });
      await measure({ queries: mixed, result_format: 'shared' }, mixed, 'batch_64_shared_unicode');
    }
    const invalid = await client.request({ id: 'invalid', queries: [{ query: 'foo' }, { query: 'bad\n' }] }) as Record<string, unknown>;
    assert.equal(invalid.status, 'error'); assert.equal(invalid.id, 'invalid');
    await measure({ query: 'return', result_format: 'shared' }, [{ query: 'return' }], 'resident_shared_after_invalid');
    report.invalid_then_valid_passed = true;
  } finally { await client.close(); }

  const native = new Bridge();
  try {
    const comparisons = [];
    for (const query of ['P_AEBdT', 'return', 'a']) {
      const raw = await native.request({ mode: 'reference', needle: query, expected_database: before.database });
      assert.equal(raw.ascet_pid, before.pid);
      const snapshot = decodeResponse(raw); assert.deepEqual(snapshot.errors, []);
      const expectedLines = before.snapshot.documents.filter(d => TEXT_KINDS.has(d.kind))
        .flatMap(d => d.text.split('\r\n').flatMap((line, i) => line.toLowerCase().includes(query.toLowerCase()) ?
          [JSON.stringify([...identity(d), i + 1, line])] : [])).sort();
      const got = snapshot.references.map(d => JSON.stringify([d.kind.slice(5), ...identity(d).slice(1), d.line, d.text])).sort();
      assert.deepEqual(got, expectedLines);
      comparisons.push({ query, equal: true, lines: got.length, scope: 'native text component Find only; CRLF line semantics' });
    }
    report.native_comparisons = comparisons;
  } finally { await native.close(); }

  const after = await fullRead();
  report.source_fingerprint_before = fingerprint(before.snapshot);
  report.source_fingerprint_after = fingerprint(after.snapshot);
  assert.equal(after.database, before.database); assert.equal(after.pid, before.pid);
  assert.equal(report.source_fingerprint_before, report.source_fingerprint_after, 'model changed during verification');
  report.model_stable = true;
  const phases = [...new Set(attempts.map(a => a.phase))];
  report.latency = Object.fromEntries(phases.map(phase => [phase, latency(attempts.filter(a => a.phase === phase).map(a => a.elapsed_ms))]));
  report.correctness_passed = attempts.every(a => a.correct);
  report.resident_target_passed = attempts.filter(a => a.phase !== 'new_process_warm_ascet').every(a => a.correct && a.elapsed_ms < 500);
} catch (error) {
  report.fatal_error = String(error); report.correctness_passed = false; report.resident_target_passed = false;
} finally { report.finished_utc = new Date().toISOString(); await save(); }
process.stdout.write(JSON.stringify({ output, correctness_passed: report.correctness_passed, resident_target_passed: report.resident_target_passed,
  latency: report.latency, fatal_error: report.fatal_error }, null, 2) + '\n');
if (!report.correctness_passed) process.exitCode = 1;
else if (!report.resident_target_passed) process.exitCode = 2;
