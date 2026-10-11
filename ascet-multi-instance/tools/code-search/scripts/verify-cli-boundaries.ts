import assert from 'node:assert/strict';
import { execFile, spawn } from 'node:child_process';
import { promisify } from 'node:util';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';
import type { AgentSearchResponse } from '../src/agent-types.js';

const manifest = resolve(process.env.ASCET_AGENT_LATENCY_MANIFEST ?? join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json'));
const instance = JSON.parse(await readFile(manifest, 'utf8'));
assert.ok(Number.isInteger(instance.port) && instance.port !== 32503);
assert.equal(resolve(instance.runtime), join(dirname(manifest), 'runtime'));
assert.ok(resolve(instance.database).startsWith(resolve(instance.data) + '\\'));
await readFile(join(dirname(dirname(manifest)), 'experiment.json'));
const directory = join(ROOT, 'experiments/cli-boundaries', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const env: NodeJS.ProcessEnv = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' };
const trace = process.env.ASCET_BOUNDARY_TRACE === '1';
if (trace) env.ASCET_CODE_SEARCH_TRACE = '1';
const runFile = promisify(execFile);
const cycles = Number(process.env.ASCET_BOUNDARY_CYCLES ?? 3), rounds = Number(process.env.ASCET_BOUNDARY_ROUNDS ?? 10);
assert.ok(Number.isInteger(cycles) && cycles >= 1 && cycles <= 3);
assert.ok(Number.isInteger(rounds) && rounds >= 1 && rounds <= 50);
const processors = process.env.ASCET_BOUNDARY_PROCESSORS?.split(',').map(Number);
assert.ok(!processors || (processors.length === cycles && processors.every(value => Number.isInteger(value) && value >= -1 && value < 63)));
let affinityRestore: { pid: number; affinity: string; startTime: string } | undefined;
const profileFirst = process.env.ASCET_BOUNDARY_PROFILE_FIRST === '1';
const profileSamples = process.env.ASCET_BOUNDARY_PROFILE_SAMPLES === '1';
const report: Record<string, any> = { status: 'running', directory, manifest,
  cycles, rounds, processors, profile_first: profileFirst, profile_samples: profileSamples,
  boundary: 'Serial persistent JSONL CLI. Each isolated process restart is followed by catalog only, then a first broad search before any snapshot or source warmup. Cold means ASCET model caches after process restart, not operating-system disk-cache eviction. Default/maximum page sizes and occurrence/object modes are measured separately. No production process or model writes.' };
const samples: Record<string, any>[] = [], firstReads: Record<string, any>[] = [], profiles: unknown[] = [];
const signatures = new Map<string, string>();
const cases: { name: string; request: Record<string, unknown> }[] = [
  { name: 'default_set', request: { query: 'set' } },
  { name: 'default_object_set', request: { query: 'set', group_by: 'object' } },
  { name: 'maximum_set', request: { query: 'set', group_by: 'object', limit: 200 } },
  { name: 'maximum_occurrence_set', request: { query: 'set', limit: 200 } },
  { name: 'context25_set', request: { query: 'set', group_by: 'object', context: 25 } },
  { name: 'maximum_return', request: { query: 'return', limit: 200 } },
  { name: 'default_batch', request: { query: ['AEBLockTime', 'AEB_FxTarPT', 'C_AEB_AXCDeadZonePos'], mode: 'identifier' } },
  { name: 'regex_alternation', request: { query: '\\b(get|set)\\b', mode: 'regex', group_by: 'object', limit: 20 } },
];
const control = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8'));
const expectedFingerprint = fingerprint(control.data);

async function openDatabase(): Promise<number> {
  const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
  assert.equal(identity.port, instance.port); assert.equal(identity.runtime, instance.runtime);
  await runFile('pwsh', ['-NoProfile', '-Command', `$deadline = [DateTime]::UtcNow.AddSeconds(30)
    do {
      $listener = Get-NetTCPConnection -State Listen -LocalPort ${instance.port} -ErrorAction SilentlyContinue
      if ($listener.OwningProcess -eq ${identity.pid}) { exit 0 }
      Start-Sleep -Milliseconds 100
    } while ([DateTime]::UtcNow -lt $deadline)
    throw 'Isolated API endpoint did not become ready'`], { windowsHide: true, timeout: 35_000 });
  const host = spawn(join(dirname(dirname(manifest)), 'EndpointHost.exe'),
    [String(instance.port), join(instance.logs, 'cli-boundaries-host'), instance.database, String(identity.pid)], { windowsHide: true });
  host.stdin.end('{"id":1,"op":"quit"}\n');
  let output = '', errors = '';
  host.stdout.on('data', chunk => output += chunk); host.stderr.on('data', chunk => errors += chunk);
  const timer = setTimeout(() => host.kill(), 45_000);
  try {
    const code = await new Promise<number | null>((resolve, reject) => { host.once('error', reject); host.once('close', resolve); });
    assert.equal(code, 0, output + errors); return identity.pid;
  } finally { clearTimeout(timer); }
}

try {
  for (let cycle = 0; cycle < cycles; cycle++) {
    {
      await runFile('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/stop.ps1'), '-Manifest', manifest], { windowsHide: true, timeout: 60_000 });
      await runFile('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/launch.ps1'), '-Manifest', manifest, '-Background'], { windowsHide: true, timeout: 60_000 });
    }
    const pid = await openDatabase();
    const processor = processors?.[cycle] ?? -1;
    if (processor >= 0) {
      const { stdout } = await runFile('pwsh', ['-NoProfile', '-Command', `$process = Get-Process -Id ${pid}
        if (${processor} -ge [Environment]::ProcessorCount) { throw 'Processor is unavailable' }
        $identity = Get-Content -LiteralPath '${join(dirname(manifest), 'process.json').replaceAll("'", "''")}' -Raw | ConvertFrom-Json
        if ($process.Path -ne (Join-Path $identity.runtime 'ASCET.exe') -or $process.StartTime.ToUniversalTime() -ne ([DateTime]$identity.start_time_utc).ToUniversalTime()) { throw 'Isolated process identity mismatch' }
        $original = $process.ProcessorAffinity.ToInt64().ToString()
        $process.ProcessorAffinity = [IntPtr]([long]1 -shl ${processor})
        $original`], { windowsHide: true });
      const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
      affinityRestore = { pid, affinity: stdout.trim(), startTime: identity.start_time_utc };
      assert.match(affinityRestore.affinity, /^\d+$/);
    }
    const cli = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), '--agent'], env, timeoutMs: 90_000 });
    const traces: unknown[] = [];
    const takeTrace = async (previous: number) => {
      if (!trace) return undefined;
      const deadline = performance.now() + 1000;
      while (traces.length <= previous && performance.now() < deadline) await new Promise(resolve => setTimeout(resolve, 1));
      assert.equal(traces.length, previous + 1, 'Missing or unpaired native trace');
      return traces[previous];
    };
    try {
      const catalogStarted = performance.now();
      const catalog = await cli.request({ operation: 'find', target: 'components', limit: 1 }) as any;
      if (trace) {
        const child = (cli as unknown as { process: import('node:child_process').ChildProcessWithoutNullStreams }).process;
        let pendingTrace = '';
        child.stderr.on('data', chunk => {
          pendingTrace += chunk;
          for (let at; (at = pendingTrace.indexOf('\n')) >= 0;) {
            const line = pendingTrace.slice(0, at); pendingTrace = pendingTrace.slice(at + 1);
            try { const value = JSON.parse(line); if (value.event === 'ascet_native_read') traces.push(value); } catch { }
          }
        });
      }
      assert.equal(catalog.status, 'ok'); assert.equal(catalog.total_count, control.data.components.length);
      const startupMs = performance.now() - catalogStarted;
      const firstTraceCount = traces.length, firstStarted = performance.now();
      const firstRequest = { query: 'set', ...(profileFirst ? { group_by: 'object', debug: true } : {}) };
      const first = await cli.request(firstRequest) as AgentSearchResponse;
      const firstElapsed = performance.now() - firstStarted;
      assert.equal(first.status, 'ok', JSON.stringify(first.issues));
      const firstTrace = await takeTrace(firstTraceCount);
      firstReads.push({ cycle, pid, processor, startup_catalog_ms: startupMs, first_source_search_ms: firstElapsed,
        total_hits: first.total_hits, returned_hits: first.returned_hits, request: firstRequest, ...(profileFirst ? { debug: first.debug } : {}) });
      if (trace) firstReads.at(-1)!.native_trace = firstTrace;
      console.log(JSON.stringify({ first_source_search: firstReads.at(-1) }));
      for (let round = 0; round < rounds; round++) {
        for (const item of round % 2 ? [...cases].reverse() : cases) {
          const traceCount = traces.length, started = performance.now();
          const response = await cli.request({ ...item.request, ...(profileSamples ? { debug: true } : {}) }) as AgentSearchResponse;
          const elapsed = performance.now() - started;
          const nativeTrace = await takeTrace(traceCount);
          assert.equal(response.status, 'ok', JSON.stringify(response));
          const bytes = Buffer.byteLength(JSON.stringify(response)); assert.ok(bytes <= 128 * 1024);
          assert.ok(response.returned_hits <= Number(item.request.limit ?? 50));
          const signature = JSON.stringify(response.searches.map(value => [value.query, value.mode, value.total_hits]));
          assert.equal(signature, signatures.get(item.name) ?? signature); signatures.set(item.name, signature);
          samples.push({ cycle, pid, processor, round, name: item.name, request: item.request, elapsed_ms: elapsed,
            total_hits: response.total_hits, returned_hits: response.returned_hits, bytes,
            ...(profileSamples ? { debug: response.debug } : {}), ...(trace ? { native_trace: nativeTrace } : {}) });
        }
        console.log(JSON.stringify({ cycle: cycle + 1, cycles, round: round + 1, rounds }));
      }
      for (const item of cases) {
        const response = await cli.request({ ...item.request, debug: true }) as AgentSearchResponse;
        assert.equal(response.status, 'ok'); profiles.push({ cycle, name: item.name, debug: response.debug });
      }
    } finally { await cli.close(); }
    const bridge = new Bridge(90, { env });
    try {
      const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
      assert.equal(raw.ascet_pid, pid);
      const data = decodeResponse(raw); assert.deepEqual(data.errors, []);
      assert.equal(fingerprint(data), expectedFingerprint); assert.deepEqual(data.diagrams, control.data.diagrams);
    } finally { await bridge.close(); }
    await restoreAffinity();
  }
  const over = samples.filter(sample => sample.elapsed_ms >= 500);
  const coldOver = firstReads.filter(sample => sample.first_source_search_ms >= 500);
  Object.assign(report, { status: over.length || coldOver.length ? 'performance_failed' : 'passed',
    source_fingerprint: expectedFingerprint, full_graphs_and_sources_unchanged: true, query_count: samples.length,
    first_reads: firstReads, cold_over_500ms: coldOver.length, over_500ms: over.length,
    metrics: Object.fromEntries(cases.map(item => {
      const times = samples.filter(sample => sample.name === item.name).map(sample => sample.elapsed_ms).sort((a, b) => a - b);
      return [item.name, { count: times.length, median_ms: times[Math.floor(times.length / 2)], max_ms: times.at(-1), over_500ms: times.filter(ms => ms >= 500).length }];
    })), samples, profiles });
  if (over.length || coldOver.length) process.exitCode = 2;
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally {
  await restoreAffinity();
  if (!report.samples) Object.assign(report, { samples, first_reads: firstReads, profiles });
  await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
  console.log(JSON.stringify({ ...report, samples: undefined, profiles: undefined }, null, 2));
}

async function restoreAffinity() {
  if (!affinityRestore) return;
  const { pid, affinity, startTime } = affinityRestore;
  await runFile('pwsh', ['-NoProfile', '-Command', `$process = Get-Process -Id ${pid} -ErrorAction SilentlyContinue
    if ($process -and $process.Path -eq '${join(instance.runtime, 'ASCET.exe').replaceAll("'", "''")}' -and
      $process.StartTime.ToUniversalTime() -eq ([DateTime]'${startTime}').ToUniversalTime()) {
      $process.ProcessorAffinity = [IntPtr]${affinity}
    }`], { windowsHide: true });
  affinityRestore = undefined;
}
