import assert from 'node:assert/strict';
import { spawn, execFile } from 'node:child_process';
import { promisify } from 'node:util';
import { readFile, writeFile, mkdir } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const manifest = resolve(process.env.ASCET_AGENT_LATENCY_MANIFEST ?? join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json'));
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const experiment = dirname(dirname(manifest));
await readFile(join(experiment, 'experiment.json'), 'utf8');
assert.ok(Number.isInteger(instance.port) && instance.port !== 32503, 'Only a manifested isolated endpoint can be restarted');
assert.equal(resolve(instance.runtime), join(dirname(manifest), 'runtime'));
assert.equal(resolve(instance.data), join(dirname(manifest), 'data'));
assert.ok(resolve(instance.database).startsWith(resolve(instance.data) + '\\'));
const directory = join(ROOT, 'experiments/cli-acceptance', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' };
const report: Record<string, any> = { status: 'running', directory, manifest,
  boundary: 'Persistent CLI JSONL only. Restart is limited to the process identity guarded by the copied-instance manifest. No main ASCET restart or model writes.' };
const traces: unknown[] = [];
const runFile = promisify(execFile);
const save = (name: string, value: unknown) => writeFile(join(directory, name + '.json'), JSON.stringify(value, null, 2) + '\n');
const client = () => new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), '--agent'], env, timeoutMs: 90_000 });

async function call(cli: JsonLineClient, name: string, input: unknown): Promise<any> {
  const start = performance.now(), response = await cli.request(input);
  traces.push({ name, input, response, elapsed_ms: performance.now() - start });
  return response;
}
async function openDatabase() {
  const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
  assert.equal(identity.port, instance.port); assert.equal(identity.runtime, instance.runtime);
  const child = spawn(join(experiment, 'EndpointHost.exe'), [String(instance.port), join(instance.logs, 'cli-acceptance-host'), instance.database, String(identity.pid)], { windowsHide: true });
  child.stdin.end('{"id":1,"op":"quit"}\n'); let output = '', error = '';
  child.stdout.on('data', c => output += c); child.stderr.on('data', c => error += c);
  const timer = setTimeout(() => child.kill(), 45_000);
  try {
    const code = await new Promise<number | null>((resolve, reject) => { child.once('error', reject); child.once('close', resolve); });
    assert.equal(code, 0, output + error); report.open_output = output; return identity.pid;
  } finally { clearTimeout(timer); }
}
async function snapshot(name: string, pid: number) {
  const bridge = new Bridge(90, { env });
  try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    assert.equal(raw.ascet_pid, pid);
    const data = decodeResponse(raw); assert.deepEqual(data.errors, []);
    await save(name, { raw, data }); return { raw, data };
  } finally { await bridge.close(); }
}
try {
  report.initial_pid = await openDatabase();
  const before = await snapshot('before', report.initial_pid);
  const privateGraph = before.data.diagrams!.find(g => g.name === 'SearchToolsPrivateAcceptance');
  assert.ok(privateGraph, 'Create the saved Private Diagram acceptance fixture first');
  assert.equal(privateGraph.visibility, 'private');
  assert.ok(privateGraph.comments.some(c => c.text === 'SearchToolsPrivateMarker_20261002'));
  assert.ok(privateGraph.nodes.some(n => n.kind === 'literal' && n.name === '987654.125'));
  const bridge = new Bridge(90, { env });
  try {
    await assert.rejects(bridge.request({ mode: 'catalog', expected_database: 'wrong-db' }), /DATABASE_CHANGED/);
    assert.equal((await bridge.request({ mode: 'catalog' })).status, 'ok');
    await new Promise(resolve => setTimeout(resolve, 600));
    assert.equal((await bridge.request({ mode: 'catalog' })).status, 'ok');
    report.database_mismatch_and_idle_recovery = true;
  } finally { await bridge.close(); }
  const clients = [client(), client()];
  try {
    const results = await Promise.all(clients.map((cli, i) => call(cli, 'parallel_find_' + i, { operation: 'find', target: 'diagrams', limit: 200 })));
    report.initial_parallel_outcomes = results.map(value => value.status === 'ok' ? 'ok' : value.code);
    assert.ok(results.some(value => value.status === 'ok'));
    for (const [i, value] of results.entries()) {
      if (value.status === 'error') {
        assert.equal(value.code, 'ASCET_BUSY');
        await new Promise(resolve => setTimeout(resolve, 350));
        results[i] = await call(clients[i], 'busy_retry_' + i, { operation: 'find', target: 'diagrams', limit: 200 });
        assert.equal(results[i].status, 'ok'); report.busy_same_cli_recovered = true;
      } else assert.equal(value.status, 'ok');
    }
    assert.equal(results[0].total_count, results[1].total_count);
    const ref = results[0].results[0].ref;
    assert.equal((await call(clients[0], 'own_ref', { operation: 'read', ref })).status, 'ok');
    const foreign = await call(clients[1], 'foreign_ref', { operation: 'read', ref });
    assert.equal(foreign.status, 'error'); assert.equal(foreign.code, 'REF_EXPIRED');
    report.cross_session_ref_rejected = true;
    const found = await call(clients[0], 'private_find', { operation: 'find', target: 'diagrams', diagram: privateGraph.name, match: 'exact', in: { visibility: 'private' } });
    assert.equal(found.status, 'ok'); assert.equal(found.total_count, 1); assert.equal(found.results[0].visibility, 'private');
    const read = await call(clients[0], 'private_read', { operation: 'read', ref: found.results[0].ref });
    assert.equal(read.status, 'ok'); assert.ok(read.diagram_text.includes('987654.125'));
    const search = await call(clients[0], 'private_search', { query: 'SearchToolsPrivateMarker_20261002', group_by: 'object', in: { visibility: 'private' } });
    assert.equal(search.status, 'ok'); assert.equal(search.total_hits, 1); report.private_cli_passed = true;
    const mismatch = await call(clients[0], 'database_mismatch', { operation: 'find', target: 'components', database: 'wrong-db', limit: 1 });
    assert.equal(mismatch.code, 'DATABASE_CHANGED');
    assert.equal((await call(clients[0], 'database_mismatch_recovery', { operation: 'find', target: 'components', limit: 1 })).status, 'ok');
    report.same_cli_database_recovered = true;
  } finally { await Promise.all(clients.map(cli => cli.close())); }
  const holder = new Bridge(90, { env: { ...env, ASCET_CODE_SEARCH_IDLE_MS: '60000' } });
  const busyClient = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), '--agent'],
    env: { ...env, ASCET_CODE_SEARCH_LOCK_WAIT_MS: '0' }, timeoutMs: 90_000 });
  try {
    assert.equal((await holder.request({ mode: 'catalog' })).status, 'ok');
    const busy = await call(busyClient, 'held_lock_busy', { operation: 'find', target: 'components', limit: 1 });
    assert.equal(busy.status, 'error'); assert.equal(busy.code, 'ASCET_BUSY');
    await holder.close();
    const retry = await call(busyClient, 'held_lock_recovery', { operation: 'find', target: 'components', limit: 1 });
    assert.equal(retry.status, 'ok'); report.busy_same_cli_recovered = true;
  } finally { await holder.close(); await busyClient.close(); }
  const persistent = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), '--agent'],
    env: { ...env, ASCET_CODE_SEARCH_IDLE_MS: '60000' }, timeoutMs: 90_000 });
  try {
    const found = await call(persistent, 'before_restart', { operation: 'find', target: 'diagrams', diagram: privateGraph.name, match: 'exact' });
    assert.equal(found.status, 'ok'); const oldRef = found.results[0].ref;
    await runFile('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/stop.ps1'), '-Manifest', manifest], { windowsHide: true, timeout: 60_000 });
    await runFile('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/launch.ps1'), '-Manifest', manifest, '-Background'], { windowsHide: true, timeout: 60_000 });
    report.restarted_pid = await openDatabase(); assert.notEqual(report.restarted_pid, report.initial_pid);
    const failed = await call(persistent, 'restart_detected', { operation: 'find', target: 'components', limit: 1 });
    assert.equal(failed.status, 'error'); assert.equal(failed.code, 'ASCET_RESTARTED');
    const recovered = await call(persistent, 'restart_recovered', { operation: 'find', target: 'diagrams', diagram: privateGraph.name, match: 'exact' });
    assert.equal(recovered.status, 'ok');
    const fresh = await call(persistent, 'new_ref', { operation: 'read', ref: recovered.results[0].ref });
    assert.equal(fresh.status, 'ok'); assert.ok(fresh.diagram_text.includes('987654.125'));
    const stale = await call(persistent, 'old_ref', { operation: 'read', ref: oldRef });
    assert.equal(stale.status, 'error'); assert.equal(stale.code, 'ASCET_RESTARTED');
    report.same_cli_restart_recovered = true; report.old_process_ref_rejected = true;
  } finally { await persistent.close(); }
  const after = await snapshot('after-restart', report.restarted_pid);
  assert.equal(fingerprint(before.data), fingerprint(after.data));
  assert.deepEqual(before.data.diagrams, after.data.diagrams);
  report.source_fingerprint = fingerprint(after.data); report.full_snapshot_stable = true; report.status = 'passed';
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { await save('traces', traces); await save('report', report); console.log(JSON.stringify(report, null, 2)); }
