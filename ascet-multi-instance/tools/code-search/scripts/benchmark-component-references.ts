/** Read-only direct component-reference prototype; not part of the public search schema. */
import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { createHash } from 'node:crypto';
import { readFile, writeFile, mkdir } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { JsonLineClient, ROOT, validateNativeResponse } from '../src/bridge.js';

type Engine = 'bulk' | 'public_api';
interface Reference { element: string; scope: string; target_oid: string; target_path: string; target_name: string; relation: string }
interface Component { oid: string; path: string; name: string; native_class: string }
interface ModelRead { component: Component; references: Reference[] }
interface Observation { engine: Engine | 'catalog'; phase: string; oid?: string; elapsed_ms: number; bytes: number; timings: Record<string, number>; count?: number }

const directory = join(ROOT, 'experiments/component-references-20261001');
const sourcePath = join(directory, 'component-references.st');
const reportPath = join(directory, 'latest.json');
const observations: Observation[] = [];
const report: Record<string, unknown> = {
  started_utc: new Date().toISOString(), runtime: process.version,
  scope: 'Direct complex-element-to-component references only; not semantic code usage, recursive dependency closure, all model relationship kinds or the native search UI.',
  timing_boundary: 'Resident TypeScript client request through C# / ASCET, complete JSON parsing, payload decoding and result construction; process/connection startup reported separately.',
  state: 'Existing running database; catalog reads metadata before first target read. No restart, model edits, change listeners or cross-request result/source cache. First target read is not a cold database test.',
  observations,
};
const digest = (value: unknown) => createHash('sha256').update(JSON.stringify(value)).digest('hex');
function decode(payload: string): string[][] {
  const fields = payload.split('|');
  assert.equal(fields.pop(), ''); assert.equal(fields.length % 7, 0);
  const decoded = fields.map(v => v.replace(/%(\d+);/g, (_, digits: string) => String.fromCodePoint(Number(digits))));
  return Array.from({ length: decoded.length / 7 }, (_, i) => decoded.slice(i * 7, i * 7 + 7));
}
function component(row: string[]): Component { return { oid: row[1], path: row[2], name: row[3], native_class: row[4] }; }
function model(rows: string[][]): ModelRead {
  assert.equal(rows.filter(r => r[0] === '#COMPONENT').length, 1);
  assert.equal(rows.filter(r => r[0] === '#STATS').length, 1);
  assert.ok(rows.every(r => ['#COMPONENT', '#REFERENCE', '#STATS'].includes(r[0])));
  const references = rows.filter(r => r[0] === '#REFERENCE').map(r => ({ element: r[1], scope: r[2], target_oid: r[3], target_path: r[4], target_name: r[5], relation: r[6] }))
    .sort((a, b) => JSON.stringify(a).localeCompare(JSON.stringify(b)));
  assert.equal(references.length, Number(rows.find(r => r[0] === '#STATS')![1]));
  assert.ok(references.every(r => /^[a-z0-9]{29}$/i.test(r.target_oid) && r.element && r.target_path && r.target_name));
  return { component: component(rows.find(r => r[0] === '#COMPONENT')!), references };
}
function statistics(values: number[]) {
  const sorted = [...values].sort((a, b) => a - b), n = sorted.length;
  assert.ok(n > 0);
  return { samples: n, min_ms: sorted[0], median_ms: n % 2 ? sorted[n >> 1] : (sorted[n / 2 - 1] + sorted[n / 2]) / 2,
    p95_ms: sorted[Math.ceil(n * .95) - 1], max_ms: sorted.at(-1), over_500ms: sorted.filter(v => v >= 500).length };
}
async function main() {
  await mkdir(directory, { recursive: true });
  const bridgeSource = await readFile(join(ROOT, 'CodeSearchBridge.cs'), 'utf8');
  const original = 'string payload = Call(block, "value:value:value:", db, mode, FilterText(request) + "\\n" + needle).ResultString;';
  assert.equal(bridgeSource.split(original).length, 2);
  const adapted = bridgeSource.replace(original, 'string payload = mode == "reference" ? PublicApiReferenceReader.Read(db, needle) : Call(block, "value:value:value:", db, mode, FilterText(request) + "\\n" + needle).ResultString;');
  const bridgePath = join(directory, 'ReferenceBenchmarkBridge.cs'), executable = join(directory, 'ReferenceBenchmarkBridge.exe');
  await writeFile(bridgePath, adapted);
  execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
    '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
    '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'),
    '/out:' + executable, '/resource:' + sourcePath + ',snapshot.st', bridgePath, join(directory, 'PublicApiReferenceReader.cs'),
  ], { windowsHide: true, stdio: 'inherit' });
  report.source_hashes = Object.fromEntries(await Promise.all(['CodeSearchBridge.cs', 'scripts/benchmark-component-references.ts',
    'experiments/component-references-20261001/component-references.st', 'experiments/component-references-20261001/PublicApiReferenceReader.cs']
    .map(async path => [path, createHash('sha256').update(await readFile(join(ROOT, path))).digest('hex')])));
  const client = new JsonLineClient({ command: executable, timeoutMs: 60_000 });
  let database: string | undefined, pid: number | undefined;
  async function request(engine: Engine | 'catalog', oid: string | undefined, phase: string): Promise<string[][]> {
    const start = performance.now();
    const raw = validateNativeResponse(await client.request({ mode: engine === 'catalog' ? 'catalog' : engine === 'bulk' ? 'snapshot' : 'reference',
      needle: oid ?? '', ...(database ? { expected_database: database } : {}) }));
    if (database) { assert.equal(raw.database, database); assert.equal(raw.ascet_pid, pid); }
    else { database = raw.database; pid = raw.ascet_pid; report.database = database; report.ascet_pid = pid; }
    const rows = decode(raw.payload);
    const built = engine === 'catalog' ? undefined : model(rows);
    observations.push({ engine, phase, ...(oid ? { oid } : {}), elapsed_ms: performance.now() - start,
      bytes: Buffer.byteLength(JSON.stringify(raw)), timings: raw.timings, ...(built ? { count: built.references.length } : {}) });
    return rows;
  }
  try {
    const catalog = (await request('catalog', undefined, 'startup')).map(component);
    await writeFile(join(directory, 'catalog.json'), JSON.stringify(catalog, null, 2) + '\n');
    const names = ['AEB_Core', 'AEB_State_Machine', 'AEB_AutomaticEmergencyBrake'];
    const targets = catalog.filter(c => names.includes(c.name));
    report.catalog_count = catalog.length;
    report.targets = targets;
    console.log(JSON.stringify({ phase: 'catalog', count: catalog.length, targets }));
    assert.ok(targets.length >= 2, 'Need at least two real samples; inspect catalog.json');
    assert.ok(targets.length <= 6, 'Ambiguous sample names; select explicit OIDs');
    const baseline = new Map<string, ModelRead>();
    for (const target of targets) {
      const first = model(await request('bulk', target.oid, 'first_target_read'));
      assert.equal(first.component.oid, target.oid);
      assert.equal(first.component.path, target.path);
      baseline.set(target.oid, first);
      const publicRead = model(await request('public_api', target.oid, 'first_target_read'));
      assert.deepEqual(publicRead, first, 'Public API and bulk must return the same direct references');
      console.log(JSON.stringify({ phase: 'first_target_read', name: target.name, references: first.references.length,
        distinct_components: new Set(first.references.map(r => r.target_oid)).size, timings: observations.slice(-2).map(o => ({ engine: o.engine, elapsed_ms: o.elapsed_ms })) }));
    }
    assert.ok([...baseline.values()].some(r => r.references.length > 0), 'Need a nonempty component-reference sample');
    for (let round = 0; round < 20; round++) {
      const order: Engine[] = round % 2 ? ['public_api', 'bulk'] : ['bulk', 'public_api'];
      for (const target of targets) for (const engine of order) {
        const value = model(await request(engine, target.oid, 'warm'));
        assert.deepEqual(value, baseline.get(target.oid), 'Reference relation changed or reader mismatch');
      }
      if (round % 5 === 4) console.log(JSON.stringify({ phase: 'warm', rounds_complete: round + 1 }));
    }
    report.results = targets.map(target => {
      const result = baseline.get(target.oid)!;
      return { ...target, reference_count: result.references.length, distinct_target_components: new Set(result.references.map(r => r.target_oid)).size,
        references: result.references, fingerprint: digest(result),
        engines: Object.fromEntries((['bulk', 'public_api'] as const).map(engine => [engine,
          statistics(observations.filter(o => o.phase === 'warm' && o.oid === target.oid && o.engine === engine).map(o => o.elapsed_ms))])) };
    });
    // Release the sole live connection before testing a fresh bridge process.
    // The ASCET model remains loaded: this measures tool startup, not database cold load.
    await client.close();
    const startupTarget = targets.find(t => baseline.get(t.oid)!.references.length > 0)!;
    const freshStarts: { elapsed_ms: number; timings: Record<string, number> }[] = [];
    for (let attempt = 0; attempt < 3; attempt++) {
      const fresh = new JsonLineClient({ command: executable, timeoutMs: 60_000 });
      try {
        const start = performance.now();
        const raw = validateNativeResponse(await fresh.request({ mode: 'snapshot', needle: startupTarget.oid, expected_database: database }));
        assert.equal(raw.database, database); assert.equal(raw.ascet_pid, pid); assert.equal(raw.first_connection, true);
        const value = model(decode(raw.payload));
        const elapsed_ms = performance.now() - start;
        assert.deepEqual(value, baseline.get(startupTarget.oid));
        freshStarts.push({ elapsed_ms, timings: raw.timings });
      } finally { await fresh.close(); }
    }
    report.fresh_bridge_startup = { target: startupTarget.name, oid: startupTarget.oid,
      note: 'New bridge process, connect and compile fixed query block, fetch references and decode response; already-loaded ASCET database. Executable build excluded.',
      samples: freshStarts, summary: statistics(freshStarts.map(s => s.elapsed_ms)) };
    report.validation = { public_api_equal: true, every_repeated_result_equal: true, direct_reference_fingerprints_stable: true,
      model_write_operations: 0, semantic_usage_claim: false, true_cold_start_measured: false };
    report.status = 'passed';
  } catch (error) { report.status = 'failed'; report.error = String(error); throw error; }
  finally {
    await client.close();
    report.finished_utc = new Date().toISOString();
    await writeFile(reportPath, JSON.stringify(report, null, 2) + '\n');
    console.log(JSON.stringify({ report: reportPath, status: report.status, observations: observations.length, results: report.results }));
  }
}
main().catch(error => { console.error(error); process.exitCode = 1; });
