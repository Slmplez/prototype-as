import assert from 'node:assert/strict';
import { execFile } from 'node:child_process';
import { promisify } from 'node:util';
import { appendFile, mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';
import { localOracle } from '../test/object-oracle.js';
import type { AgentDiagramEndpoint, AgentReadResponse, AgentSearchResponse, AgentFindResponse } from '../src/agent-types.js';
import type { Snapshot } from '../src/types.js';

const runFile = promisify(execFile);
const packaged = resolve(process.argv[2]);
const original = resolve(process.argv[3]);
const manifest = resolve(process.env.ASCET_AGENT_LATENCY_MANIFEST ?? join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json'));
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.equal(instance.port, 32631); assert.equal(identity.port, 32631);
assert.equal(resolve(instance.runtime), join(dirname(manifest), 'runtime'));
assert.equal(resolve(identity.runtime), resolve(instance.runtime));
const oracle: Snapshot = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')).data;
const trace = (await readFile(join(original, 'requests.jsonl'), 'utf8')).trim().split('\n').map(line => JSON.parse(line));
const directory = join(original, 'polish-verification');
await mkdir(directory, { recursive: true });
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: '32631', ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' };
const client = new JsonLineClient({ command: process.execPath, args: [join(packaged, 'dist/src/cli.js'), '--agent'], env, timeoutMs: 90_000 });
const report: any = { status: 'running', packaged, original, directory, started_utc: new Date().toISOString(), steps: [], comparisons: [],
  boundary: 'Patch regression through the packaged CLI at the isolated endpoint. Original usability requests were chosen interactively by the current assistant. This follow-up is scripted, not an independent Agent benchmark.' };
const save = () => writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
async function request<T = any>(name: string, input: unknown, status = 'ok'): Promise<T> {
  const start = performance.now(), output: any = await client.request(input), ms = performance.now() - start;
  const row = { name, input, output, ms, bytes: Buffer.byteLength(JSON.stringify(output)) };
  await appendFile(join(directory, 'requests.jsonl'), JSON.stringify(row) + '\n');
  report.steps.push({ name, status: output.status, ms, bytes: row.bytes });
  assert.equal(output.status, status, JSON.stringify(output).slice(0, 1000)); assert.ok(row.bytes <= 128 * 1024);
  return output;
}
async function protectedProcesses() {
  const { stdout } = await runFile('pwsh', ['-NoProfile', '-Command',
    'Get-CimInstance Win32_Process -Filter "ProcessId=21052 OR ProcessId=39168" | Select-Object ProcessId,CreationDate,ExecutablePath | Sort-Object ProcessId | ConvertTo-Json -Compress'],
    { windowsHide: true, timeout: 30_000 });
  const result = JSON.parse(stdout || '[]'); assert.equal(result.length, 2); return result;
}
const endpoint = (e: AgentDiagramEndpoint) => [e.hierarchy ?? 'root', e.kind, e.name, e.pin_id, e.pin];
const topology = (r: AgentReadResponse) => ({
  nodes: r.nodes!.map(n => [n.hierarchy ?? 'root', n.kind, n.name]),
  connections: r.connections!.map(c => [endpoint(c.from), endpoint(c.to)]),
  boundaries: r.boundaries!.map(b => [endpoint(b.outer), endpoint(b.inner)]),
});
try {
  report.protected_processes_before = await protectedProcesses();
  const invalid: any = await request('actionable-component-scope-error', { query: 'Signal', in: { component: 'Library\\Component' } }, 'error');
  assert.equal(invalid.code, 'INVALID_REQUEST'); assert.match(invalid.message, /same-session.*find.*name or path/);
  const samples = [
    { name: 'deactivation-or', component: 'AEB_light_class', query: '^\\|$', mode: 'regex', anchor: '|', old: 9 },
    { name: 'gradient-limiter', component: 'AEB_AxTarLim', query: 'AxCtrlLimGradAxMin', mode: 'identifier', anchor: 'AxCtrlLimGradAxMin', old: 19 },
    { name: 'state-init', component: 'AEB_State_Machine', query: 'AEBLockTime', mode: 'identifier', anchor: 'AEBLockTime', diagram: 'Init' },
  ];
  for (const sample of samples) {
    const found = await request<AgentFindResponse>(sample.name + '-find', { operation: 'find', target: 'diagrams', component: sample.component,
      diagram: sample.diagram ?? 'Main', match: 'exact', limit: 10 });
    assert.equal(found.total_count, 1);
    const diagram = found.results[0];
    const results = await request<AgentSearchResponse>(sample.name + '-search', { query: sample.query, mode: sample.mode,
      group_by: 'object', in: { diagram: diagram.ref }, limit: 20 });
    const hit = results.searches[0].results.flatMap(r => r.hits ?? []).find(h => h.name === sample.anchor)!; assert.ok(hit);
    const compact = await request<AgentReadResponse>(sample.name + '-compact', { operation: 'read', ref: hit.ref, depth: 1 });
    const raw = await request<AgentReadResponse>(sample.name + '-raw', { operation: 'read', ref: hit.ref, depth: 1, include_graph: true });
    assert.equal(compact.has_more, false); assert.equal(raw.has_more, false);
    assert.deepEqual(topology(compact), topology(raw));
    const keys = new Set([...compact.connections!.flatMap(c => [c.from, c.to]), ...compact.boundaries!.flatMap(b => [b.outer, b.inner])]
      .map(e => e.ref + ':' + e.pin_id));
    assert.deepEqual(compact.pins, raw.pins!.filter(p => p.object_ref === hit.ref || keys.has(p.object_ref + ':' + p.id)));
    const graph = oracle.diagrams!.find(g => g.source_oid === compact.diagram_oid &&
      oracle.components.some(c => c.oid === g.component_oid && c.path === compact.component_path))!; assert.ok(graph);
    const anchor = graph.nodes.find(n => n.name === sample.anchor && n.scope === 'root')!; assert.ok(anchor);
    const expected = localOracle(graph, 'root', anchor.id, 1, 'both');
    assert.deepEqual(raw.graph!.nodes.map(n => n.id).sort((a, b) => a - b), expected.nodes);
    assert.deepEqual(raw.graph!.connections.map(e => e.id).sort((a, b) => a - b), expected.edges);
    assert.deepEqual(raw.graph!.pins, graph.pins.filter(p => expected.nodes.includes(p.node_id) && p.scope === 'root'));
    assert.equal(compact.object!.component_path, anchor.component_path);
    let old: any;
    if (sample.old) old = trace.find(r => r.step === sample.old);
    else {
      const batch = trace.find(r => r.step === 26); const output = batch.response.results.find((r: any) => r.object?.name === sample.anchor);
      old = { response: output, bytes: Buffer.byteLength(JSON.stringify(output)) };
    }
    assert.deepEqual(topology(compact), topology(old.response));
    const bytes = Buffer.byteLength(JSON.stringify(compact));
    report.comparisons.push({ name: sample.name, before_bytes: old.bytes, after_bytes: bytes,
      before_pins: old.response.pins.length, after_pins: compact.pins!.length, topology_unchanged: true });
    if (sample.name === 'deactivation-or') {
      const neighbor = compact.nodes!.find(n => n.name === 'AEB_Core')!;
      assert.ok(neighbor.component_path);
      const full = await request<AgentReadResponse>('neighbor-full-interface', { operation: 'read', ref: neighbor.ref, depth: 0 });
      assert.ok(full.pins!.length > compact.pins!.filter(p => p.object_ref === neighbor.ref).length);
      const target = await request<AgentFindResponse>('referenced-component-by-local-path', { operation: 'find', target: 'components', component: neighbor.component_path, match: 'exact', limit: 10 });
      assert.equal(target.total_count, 1);
      const scoped = await request<AgentSearchResponse>('component-ref-scope-recovery', { query: 'AEB_IB_DeactByMonitoring', mode: 'identifier',
        in: { component: target.results[0].ref }, group_by: 'object', limit: 10 });
      assert.ok(scoped.total_hits > 0);
    }
    if (sample.name === 'gradient-limiter') {
      const methods = await request<AgentFindResponse>('referenced-limiter-method', { operation: 'find', component: compact.object!.component_path,
        member: 'calc', match: 'exact', limit: 10 }); assert.equal(methods.total_count, 1);
      const implementation: any = await request('referenced-limiter-code', { operation: 'read', ref: methods.results[0].ref, if_unchanged: true });
      assert.match(implementation.code, /dAxTarLim\*LDMdT/);
      const previous = trace.find(r => r.step === 22).response;
      assert.equal(implementation.code, previous.code);
    }
    if (sample.name === 'state-init') assert.ok(compact.connections!.some(c => c.from.name === '0.0' && c.to.name === 'AEBLockTime'));
  }
  await client.close();
  const audit = new Bridge(90, { env });
  try {
    const raw = await audit.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    assert.equal(raw.ascet_pid, identity.pid); assert.equal(raw.database, instance.database);
    const current = decodeResponse(raw); assert.deepEqual(current.errors, []);
    assert.equal(fingerprint(current), fingerprint(oracle)); assert.deepEqual(current.diagrams, oracle.diagrams);
    report.final_snapshot = { components: current.components.length, documents: current.documents.length,
      diagrams: current.diagrams!.length, fingerprint: fingerprint(current) };
    report.sources_and_graphs_unchanged = true;
    await writeFile(join(directory, 'audit.json'), JSON.stringify(report.final_snapshot, null, 2) + '\n');
  } finally { await audit.close(); }
  report.protected_processes_after = await protectedProcesses();
  assert.deepEqual(report.protected_processes_after, report.protected_processes_before);
  report.protected_processes_unchanged = true; report.status = 'passed';
} catch (error) { report.status = 'failed'; report.error = error instanceof Error ? error.stack : String(error); process.exitCode = 1; }
finally {
  await client.close(); report.completed_utc = new Date().toISOString(); await save();
  console.log(JSON.stringify({ ...report, steps: undefined, protected_processes_before: undefined, protected_processes_after: undefined }, null, 2));
}
