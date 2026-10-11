import assert from 'node:assert/strict';
import { createHash } from 'node:crypto';
import { readFile, writeFile, readdir } from 'node:fs/promises';
import { join, resolve } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import type { ErrorResponse, Query, ReadResponse, SearchResponse, SourceDocument } from '../src/types.js';
import { fingerprint } from './oracle.js';
import { checkAdvanced } from './advanced-oracle.js';

const args = process.argv.slice(2);
let output = join(ROOT, 'advanced-validation-20261001.json'), repeats = 3;
for (let i = 0; i < args.length; i += 2) {
  if (args[i] === '--output' && args[i + 1]) output = resolve(args[i + 1]);
  else if (args[i] === '--repeats' && args[i + 1]) repeats = Number(args[i + 1]);
  else throw new Error('Usage: verify-advanced [--output file] [--repeats 3]');
}
if (!Number.isInteger(repeats) || repeats < 1) throw new Error('repeats must be positive');
const attempts: Record<string, unknown>[] = [];
const report: Record<string, unknown> = { started_utc: new Date().toISOString(), runtime: process.version, target_ms: 500,
  timing_boundary: 'Before request write (including lazy process startup first time) until complete response JSON received and parsed',
  ascet_state: 'Already running; oracle full read before measurements. No restart or model writes; warm model only.', attempts };
const save = (): Promise<void> => writeFile(output, JSON.stringify(report, null, 2) + '\n', 'utf8');
async function snapshot() {
  const bridge = new Bridge();
  try {
    const raw = await bridge.request({ mode: 'snapshot' }), decoded = decodeResponse(raw);
    assert.deepEqual(decoded.errors, []);
    return { raw, decoded };
  } finally { await bridge.close(); }
}
function stats(numbers: number[]) {
  const values = [...numbers].sort((a, b) => a - b), n = values.length;
  return { samples: n, median_ms: n % 2 ? values[n >> 1] : (values[n / 2 - 1] + values[n / 2]) / 2,
    p95_ms: values[Math.ceil(n * .95) - 1], max_ms: values[n - 1], over_500ms: values.filter(v => v >= 500).length };
}
try {
  const names = [...(await readdir(join(ROOT, 'src'))).filter(n => n.endsWith('.ts')).map(n => 'src/' + n),
    'native-snapshot.st', 'state-source-reader.st', 'CodeSearchBridge.cs', 'CodeSearchBridge.exe',
    'scripts/verify-advanced.ts', 'scripts/advanced-oracle.ts', 'agent-tool-definition.json', 'agent-read-tool-definition.json'];
  report.source_hashes = Object.fromEntries(await Promise.all(names.map(async name => [name, createHash('sha256').update(await readFile(join(ROOT, name))).digest('hex')])));
  const before = await snapshot(), documents = before.decoded.documents;
  report.database = before.raw.database; report.ascet_pid = before.raw.ascet_pid; report.coverage = before.decoded.coverage;
  const sample = documents.find(d => d.kind === 'method' && d.text.includes('C_AEBdT')) ?? documents.find(d => d.kind === 'method' && d.text.includes('\n'));
  assert.ok(sample, 'Need a real multiline method fixture');
  const lines = sample.text.replace(/\r\n?/g, '\n').split('\n');
  const pair = lines.slice(0, 2).join('\n');
  assert.ok(pair.includes('\n') && pair.length <= 1024);
  const escape = (s: string): string => s.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
  const cases: { label: string; query: Query; before?: number; after?: number }[] = [
    { label: 'regex_names', query: { query: '\\b[PC]_AEB[A-Za-z_0-9]*\\b', mode: 'regex' }, before: 2, after: 2 },
    { label: 'regex_statement', query: { query: '\\bif\\s*\\(', mode: 'regex', case_sensitive: true } },
    { label: 'literal_multiline', query: { query: pair, multiline: true, case_sensitive: true }, before: 1, after: 2 },
    { label: 'regex_multiline', query: { query: escape(lines[0]) + '\\n' + escape(lines[1]), mode: 'regex', multiline: true }, before: 1 },
    { label: 'regex_dotall', query: { query: '\\bif\\b.*?\\breturn\\b', mode: 'regex', multiline: true, dotall: true } },
    { label: 'context', query: { query: 'return' }, before: 3, after: 3 },
    { label: 'state_context', query: { query: 'AEBLockTime', mode: 'identifier_occurrence' }, before: 2, after: 2 },
    { label: 'zero_width', query: { query: '(?=C_AEBdT)', mode: 'regex' }, before: 1, after: 1 },
  ];
  const client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js')], timeoutMs: 40_000 });
  let first = true;
  async function measure(request: object, group: string, verify: (r: SearchResponse | ReadResponse | ErrorResponse) => void, expectedStatus = 'ok') {
    const attempt: Record<string, unknown> = { group, first_process_request: first, request, expected_status: expectedStatus };
    first = false; const started = performance.now();
    try {
      const r = await client.request(request) as SearchResponse | ReadResponse | ErrorResponse;
      attempt.elapsed_ms = performance.now() - started; attempt.status = r.status;
      if ('timings' in r) attempt.timings = r.timings;
      assert.equal(r.status, expectedStatus, JSON.stringify(r));
      if (r.status !== 'error') {
        assert.equal(r.complete, true); assert.equal(r.database, before.raw.database); assert.equal(r.ascet_pid, before.raw.ascet_pid);
      }
      verify(r); attempt.correct = true;
    } catch (error) {
      attempt.elapsed_ms ??= performance.now() - started; attempt.correct = false; attempt.error = String(error); throw error;
    } finally { attempts.push(attempt); await save(); }
  }
  try {
    for (let repeat = 0; repeat < repeats; repeat++) {
      for (const format of ['shared', 'expanded']) for (const c of cases) {
        await measure({ ...c.query, result_format: format, context_before: c.before ?? 0, context_after: c.after ?? 0,
          expected_database: before.raw.database }, c.label + '_' + format, r => {
          assert.ok('results' in r); checkAdvanced(r, documents, c.query, c.before, c.after);
        });
      }
      const queries = cases.map(c => c.query);
      await measure({ queries, result_format: 'shared', context_before: 2, context_after: 2, expected_database: before.raw.database }, 'mixed_batch', r => {
        assert.ok('searches' in r); assert.equal(r.query_count, queries.length);
        r.searches.forEach((s, i) => checkAdvanced(s, documents, queries[i], 2, 2));
      });
    }

    // Every live state/binding source plus text kinds and multiple versions of a
    // method. Empty external C/H still exercise identity and complete reads.
    const targets = new Map<string, SourceDocument>();
    for (const d of documents) if (d.location) targets.set(d.document_id, d);
    for (const kind of ['method', 'header', 'external_c', 'external_h']) {
      const d = documents.find(d => d.kind === kind); if (d) targets.set(d.document_id, d);
    }
    const version = documents.find(d => d.kind === 'method' && d.implementation_oid);
    if (version) for (const d of documents.filter(d => d.component_oid === version.component_oid && d.member_id === version.member_id && d.kind === version.kind)) targets.set(d.document_id, d);
    targets.set(sample.document_id, sample);
    report.read_targets = targets.size;
    for (const d of targets.values()) {
      await measure({ operation: 'read', target: { component_oid: d.component_oid, document_id: d.document_id },
        expected_database: before.raw.database, expected_source_sha256: d.source_sha256 }, 'read_document', r => {
        assert.ok('document' in r); assert.deepEqual(r.document, d); assert.equal(r.coverage.components, 1);
        assert.equal(r.line_count, d.text.replace(/\r\n?/g, '\n').split('\n').length);
      });
    }
    const read = { operation: 'read', target: { component_oid: sample.component_oid, document_id: sample.document_id }, expected_database: before.raw.database };
    await measure({ ...read, expected_source_sha256: '0'.repeat(64) }, 'stale_hash_error', r => {
      assert.ok(r.status === 'error'); assert.equal(r.code, 'SOURCE_CHANGED');
    }, 'error');
    await measure({ ...read, target: { component_oid: sample.component_oid, document_id: '0'.repeat(64) } }, 'missing_document_error', r => {
      assert.ok(r.status === 'error'); assert.equal(r.code, 'DOCUMENT_NOT_FOUND');
    }, 'error');
    await measure({ query: '[', mode: 'regex' }, 'invalid_regex_error', r => {
      assert.ok(r.status === 'error'); assert.match(r.message, /Invalid regular expression/);
    }, 'error');
    await measure(read, 'read_after_errors', r => { assert.ok('document' in r); assert.deepEqual(r.document, sample); });
  } finally { await client.close(); }

  const after = await snapshot();
  report.fingerprint_before = fingerprint(before.decoded); report.fingerprint_after = fingerprint(after.decoded);
  assert.equal(after.raw.database, before.raw.database); assert.equal(after.raw.ascet_pid, before.raw.ascet_pid);
  assert.equal(report.fingerprint_before, report.fingerprint_after, 'Model changed during validation');
  report.model_stable = true; report.correctness_passed = true;
  const successful = attempts.filter(a => a.expected_status === 'ok');
  report.latency = Object.fromEntries([...new Set(successful.map(a => a.group))].map(group => [group,
    stats(successful.filter(a => a.group === group).map(a => a.elapsed_ms as number))]));
  report.resident_target_passed = successful.filter(a => !a.first_process_request).every(a => (a.elapsed_ms as number) < 500);
} catch (error) {
  report.fatal_error = String(error); report.correctness_passed = false; report.resident_target_passed = false;
} finally { report.finished_utc = new Date().toISOString(); await save(); }
process.stdout.write(JSON.stringify({ output, attempts: attempts.length, correct: report.correctness_passed, resident_target_passed: report.resident_target_passed,
  latency: report.latency, fatal_error: report.fatal_error }, null, 2) + '\n');
process.exitCode = report.correctness_passed ? report.resident_target_passed ? 0 : 2 : 1;
