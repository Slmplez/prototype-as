/** Read-only, serial comparison against actual ASCET Find functions, without UI timing. */
import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { readFile, writeFile, mkdir } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { createInterface } from 'node:readline';
import { createHash } from 'node:crypto';
import { fileURLToPath } from 'node:url';
import { Bridge, JsonLineClient, ROOT, validateNativeResponse } from '../src/bridge.js';
import { decodeResponse, identity, sha256, TEXT_KINDS } from '../src/protocol.js';
import { search } from '../src/search.js';
import type { LineMatch, NativeRequest, SearchResponse, Snapshot, SourceDocument } from '../src/types.js';
import { actual, baseline, fingerprint } from './oracle.js';

const queries = ['P_AEBdT', 'C_AEBdT', 'AEBLockTime', 'Trigger_IB_From_Off', 'return', 'if (', 'a', '_', '__codex_absent_6d50b313__'];
const engines = ['native_find', 'optimized_text', 'current_full'] as const;
type Engine = typeof engines[number];
const orders: Engine[][] = [[engines[0], engines[1], engines[2]], [engines[1], engines[2], engines[0]],
  [engines[2], engines[0], engines[1]], [engines[0], engines[2], engines[1]], [engines[2], engines[1], engines[0]], [engines[1], engines[0], engines[2]]];
const lineHits = (docs: SourceDocument[], query: string) => docs.filter(d => TEXT_KINDS.has(d.kind))
  .flatMap(d => d.text.split('\r\n').flatMap((line, i) => line.toLowerCase().includes(query.toLowerCase())
    ? [JSON.stringify([...identity(d), i + 1, line])] : [])).sort();

interface Result {
  status: 'ok' | 'partial' | 'error'; database?: string; ascet_pid?: number; message?: string;
  hits?: string[]; full?: SearchResponse; snapshot?: Snapshot; coverage?: Record<string, number>;
  timings?: Record<string, number>; errors?: unknown[];
}

async function worker(executable: string): Promise<void> {
  const wire = new JsonLineClient({ command: executable });
  const reader = { request: async (r: NativeRequest) => validateNativeResponse(await wire.request(r)) };
  try {
    for await (const line of createInterface({ input: process.stdin, crlfDelay: Infinity })) {
      let result: Result;
      try {
        const r = JSON.parse(line) as { engine: Engine | 'snapshot'; query: string; database?: string };
        if (r.engine === 'current_full') {
          const full = await search({ query: r.query, expected_database: r.database, result_format: 'shared' }, reader);
          result = { status: full.status, database: full.database, ascet_pid: full.ascet_pid, full, timings: full.timings };
        } else {
          assert.ok(r.engine === 'snapshot' || r.engine === 'native_find' || r.engine === 'optimized_text');
          const raw = await reader.request({ mode: r.engine === 'snapshot' ? 'snapshot' : r.engine === 'native_find' ? 'reference' : 'search_sensitive',
            needle: r.engine === 'snapshot' ? '' : r.query.toLowerCase(), expected_database: r.database });
          const snapshot = decodeResponse(raw);
          result = { status: snapshot.errors.length ? 'partial' : 'ok', database: raw.database, ascet_pid: raw.ascet_pid,
            coverage: snapshot.coverage, errors: snapshot.errors, timings: raw.timings };
          if (r.engine === 'snapshot') result.snapshot = snapshot;
          else result.hits = r.engine === 'native_find'
            ? snapshot.references.map(d => JSON.stringify([d.kind.slice(5), ...identity(d).slice(1), d.line, d.text])).sort()
            : lineHits(snapshot.documents, r.query);
        }
      } catch (error) { result = { status: 'error', message: String(error) }; }
      process.stdout.write(JSON.stringify(result) + '\n');
    }
  } finally { await wire.close(); }
}

const summary = (values: number[]) => {
  const sorted = [...values].sort((a, b) => a - b), n = sorted.length;
  return { samples: n, median_ms: n % 2 ? sorted[n >> 1] : (sorted[n / 2 - 1] + sorted[n / 2]) / 2,
    p95_ms: sorted[Math.ceil(n * .95) - 1], max_ms: sorted.at(-1), over_500ms: sorted.filter(v => v >= 500).length };
};

async function main(): Promise<void> {
  const dir = join(ROOT, 'experiments/native-comparison-ts-20261001');
  await mkdir(dir, { recursive: true });
  const reportPath = join(dir, 'comparison-' + new Date().toISOString().replace(/[:.]/g, '-') + '.json');
  const attempts: { round: number; engine: Engine; query: string; elapsed_ms: number; status?: string; correct?: boolean; error?: string; timings?: Record<string, number> }[] = [];
  const report: Record<string, unknown> = { started_utc: new Date().toISOString(), runtime: process.version,
    timing_boundary: 'Client request write through complete JSON received and parsed; one resident serial Node/C# connection',
    comparison: 'Actual ASCET Find functions vs optimized reader with identical C/ESDL hit-line output and Windows CRLF semantics. current_full has broader state/Init scope and full positions, reported separately.',
    exclusions: ['native UI sorting/rendering/garbage collection', 'native state-machine semantic search', 'cold database loading'],
    ascet_state: 'Already running and loaded; no model writes, no restart, no cross-request source cache',
    order_control: 'Six permutations of the three engines; deterministic query rotation each round', attempts };
  const save = () => writeFile(reportPath, JSON.stringify(report, null, 2) + '\n');
  const files = ['CodeSearchBridge.cs', 'CodeSearchBridge.exe', 'native-snapshot.st', 'state-source-reader.st', 'graph-source-reader.st',
    'src/bridge.ts', 'src/protocol.ts', 'src/graphical.ts', 'src/search.ts', 'src/matcher.ts', 'src/match-queries.ts', 'scripts/benchmark-native.ts'];
  const hashes = async () => Object.fromEntries(await Promise.all(files.map(async f => [f, createHash('sha256').update(await readFile(join(ROOT, f))).digest('hex')])));
  let client: JsonLineClient | undefined;
  try {
    report.source_hashes = await hashes();
    let source = await readFile(join(ROOT, 'native-snapshot.st'), 'utf8');
    const replaceOne = (old: string, next: string) => { assert.equal(source.split(old).length, 2, 'Benchmark adapter no longer matches production'); source = source.replace(old, next); };
    // Isolated test mode only. Production executable and public request options stay unchanged.
    replaceOne('targetOids needle |', 'targetOids needle benchmarkTextOnly |');
    replaceOne('        out := WriteStream on:', "        benchmarkTextOnly := mode = 'search_sensitive'.\n        out := WriteStream on:");
    replaceOne("(mode = 'search_sensitive' ifTrue: [source] ifFalse: [source asLowercase]) includesSubstring: needle", 'source asLowercase includesSubstring: needle');
    replaceOne('                    component isSmClass ifTrue: [', '                    (component isSmClass and: [benchmarkTextOnly not]) ifTrue: [');
    const sourcePath = join(dir, 'comparison-reader.st'), executable = join(dir, 'ComparisonBridge.exe');
    await writeFile(sourcePath, source);
    execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), ['/nologo', '/target:exe', '/platform:x86',
      '/r:System.Core.dll', '/r:System.Web.Extensions.dll', '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'),
      '/out:' + executable, '/resource:' + sourcePath + ',snapshot.st', '/resource:' + join(ROOT, 'state-source-reader.st') + ',state-reader.st',
      '/resource:' + join(ROOT, 'graph-source-reader.st') + ',graph-reader.st', join(ROOT, 'CodeSearchBridge.cs')], { windowsHide: true });
    report.adapter_sha256 = sha256(source);
    report.adapter_exe_sha256 = createHash('sha256').update(await readFile(executable)).digest('hex');
    const production = new Bridge();
    let before: Snapshot, database: string, pid: number;
    try {
      const raw = await production.request({ mode: 'snapshot' });
      before = decodeResponse(raw); database = raw.database; pid = raw.ascet_pid;
      assert.deepEqual(before.errors, []);
    } finally { await production.close(); }
    report.database = database; report.ascet_pid = pid; report.production_coverage = before.coverage;
    const expected = new Map(queries.map(q => [q, lineHits(before.documents, q)]));
    const positions = new Map(queries.map(q => [q, baseline(before.documents, { query: q })]));
    client = new JsonLineClient({ command: process.execPath, args: [fileURLToPath(import.meta.url), '--worker', executable], timeoutMs: 40_000 });
    const read = async () => {
      const r = await client!.request({ engine: 'snapshot', database }) as Result;
      assert.equal(r.status, 'ok', r.message); assert.equal(r.database, database); assert.equal(r.ascet_pid, pid);
      return r.snapshot!;
    };
    assert.equal(fingerprint(await read()), fingerprint(before));
    report.adapter_matches_production = true;
    const sourceByID = new Map(before.documents.map(d => [d.document_id, d]));
    for (let round = 0; round < orders.length; round++) {
      const orderedQueries = [...queries.slice(round), ...queries.slice(0, round)];
      for (const query of orderedQueries) for (const engine of orders[round]) {
        const attempt: typeof attempts[number] = { round, engine, query, elapsed_ms: 0 };
        const started = performance.now();
        try {
          const value = await client.request({ engine, query, database }) as Result;
          attempt.elapsed_ms = performance.now() - started; attempt.status = value.status; attempt.timings = value.timings;
          assert.equal(value.status, 'ok', value.message); assert.equal(value.database, database); assert.equal(value.ascet_pid, pid);
          if (engine !== 'current_full') assert.deepEqual(value.hits, expected.get(query));
          else {
            assert.ok(value.full && 'results' in value.full); assert.equal(value.full.complete, true);
            assert.deepEqual(actual(value.full), positions.get(query));
            for (const hit of value.full.results) {
              const doc = sourceByID.get(hit.document_id)!;
              const { text, ...metadata } = doc, { match_set, matches, ...returned } = hit;
              assert.deepEqual(returned, metadata);
              const lines = text.replace(/\r\n?/g, '\n').split('\n');
              const sourceMatches: LineMatch[] = matches ?? value.full.match_sets![match_set!];
              for (const lineMatch of sourceMatches) assert.equal(lineMatch.text, lines[lineMatch.line - 1]);
            }
          }
          attempt.correct = true;
        } catch (error) { attempt.elapsed_ms ||= performance.now() - started; attempt.correct = false; attempt.error = String(error); throw error; }
        finally { attempts.push(attempt); await save(); }
      }
    }
    assert.equal(fingerprint(await read()), fingerprint(before)); report.model_stable = true;
    assert.deepEqual(await hashes(), report.source_hashes); report.production_unchanged = true;
    report.summary = Object.fromEntries(engines.map(e => [e, summary(attempts.filter(a => a.engine === e).map(a => a.elapsed_ms))]));
    report.by_query = queries.map(query => {
      const stats = Object.fromEntries(engines.map(e => [e, summary(attempts.filter(a => a.engine === e && a.query === query).map(a => a.elapsed_ms))]));
      return { query, ...stats, native_over_optimized: stats.native_find.median_ms / stats.optimized_text.median_ms };
    });
    report.correctness_passed = attempts.every(a => a.correct); report.finished_utc = new Date().toISOString();
  } catch (error) { report.correctness_passed = false; report.error = String(error); process.exitCode = 1; }
  finally { if (client) await client.close(); await save(); }
  if (report.correctness_passed) await writeFile(join(dir, 'latest.json'), JSON.stringify(report, null, 2) + '\n');
  console.log(JSON.stringify({ report: reportPath, correctness_passed: report.correctness_passed, error: report.error,
    summary: report.summary, by_query: report.by_query }, null, 2));
}

if (process.argv[2] === '--worker') await worker(process.argv[3]); else await main();
