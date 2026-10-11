import assert from 'node:assert/strict';
import { spawn, execFileSync } from 'node:child_process';
import { readFile, writeFile, mkdir } from 'node:fs/promises';
import { join, resolve } from 'node:path';
import { Client } from '@modelcontextprotocol/sdk/client/index.js';
import { StdioClientTransport } from '@modelcontextprotocol/sdk/client/stdio.js';
import { Bridge, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const experiment = resolve(ROOT, '../../analysis/search-tools-acceptance/2026-10-02');
const manifest = join(experiment, 'agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const directory = join(ROOT, 'experiments/isolated-acceptance', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' };
const report: Record<string, any> = { status: 'running', directory, instance };
async function openDatabase() {
  const identity = JSON.parse(await readFile(join(experiment, 'agent-a/process.json'), 'utf8'));
  const child = spawn(join(experiment, 'EndpointHost.exe'), [String(instance.port), join(instance.logs, 'search-host'), instance.database, String(identity.pid)], { windowsHide: true });
  child.stdin.end('{"id":1,"op":"quit"}\n'); let output = '', error = '';
  child.stdout.on('data', c => output += c); child.stderr.on('data', c => error += c);
  const timer = setTimeout(() => child.kill(), 45000);
  const code = await new Promise(resolve => child.once('close', resolve)); clearTimeout(timer);
  assert.equal(code, 0, output + error); report.open_output = output; return identity.pid;
}
async function snapshot(name: string) {
  const bridge = new Bridge(90, { env });
  try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    const data = decodeResponse(raw); assert.deepEqual(data.errors, []);
    await writeFile(join(directory, name + '.json'), JSON.stringify({ raw, data })); return { raw, data };
  } finally { await bridge.close(); }
}
try {
  report.initial_pid = await openDatabase();
  const before = await snapshot('first-cold-read');
  assert.equal(before.raw.ascet_pid, report.initial_pid);
  const privateGraph = before.data.diagrams!.find(g => g.name === 'SearchToolsPrivateAcceptance');
  assert.ok(privateGraph, 'Run create-private-sample before private acceptance');
  assert.equal(privateGraph.visibility, 'private');
  assert.ok(privateGraph.comments.some(c => c.text === 'SearchToolsPrivateMarker_20261002'));
  assert.ok(privateGraph.nodes.some(n => n.kind === 'literal' && n.name === '987654.125'));
  report.private_diagram = { component_oid: privateGraph.component_oid, source_oid: privateGraph.source_oid, name: privateGraph.name };
  const bridge = new Bridge(90, { env });
  try {
    await assert.rejects(bridge.request({ mode: 'catalog', expected_database: 'wrong-db' }), /DATABASE_CHANGED/);
    assert.equal((await bridge.request({ mode: 'catalog' })).status, 'ok');
    await new Promise(resolve => setTimeout(resolve, 600));
    assert.equal((await bridge.request({ mode: 'catalog' })).status, 'ok');
    report.idle_reconnect = true;
  } finally { await bridge.close(); }
  const clients = [0, 1].map(() => new Client({ name: 'acceptance-agent', version: '1' }));
  const transports = clients.map(() => new StdioClientTransport({ command: process.execPath, args: [join(ROOT, 'dist/src/mcp.js')], env: Object.fromEntries(Object.entries(env).filter(([,v]) => v !== undefined)) as Record<string,string> }));
  try {
    await Promise.all(clients.map((c,i) => c.connect(transports[i])));
    const results = await Promise.all(clients.map(c => c.callTool({ name: 'ascet_code_find', arguments: { target: 'diagrams', limit: 200 } })));
    report.initial_parallel_outcomes = results.map(r => {
      const value = r.structuredContent as any;
      return value.status === 'ok' ? 'ok' : value.code;
    });
    assert.ok(results.some(r => (r.structuredContent as any).status === 'ok'), 'At least one concurrent client must make progress');
    for (const [index, result] of results.entries()) {
      const value = result.structuredContent as any;
      if (value.status === 'error') {
        assert.equal(value.code, 'ASCET_BUSY');
        await new Promise(resolve => setTimeout(resolve, 350));
        results[index] = await clients[index].callTool({ name: 'ascet_code_find', arguments: { target: 'diagrams', limit: 200 } });
        assert.equal((results[index].structuredContent as any).status, 'ok');
        report.busy_mcp_process_recovered = true;
      } else assert.equal(value.status, 'ok');
    }
    report.parallel_process_counts = results.map(r => (r.structuredContent as any).total_count);
    const ref = (results[0].structuredContent as any).results[0].ref;
    const read = await clients[0].callTool({ name: 'ascet_code_read', arguments: { ref } });
    assert.equal((read.structuredContent as any).status, 'ok');
    const foreign = await clients[1].callTool({ name: 'ascet_code_read', arguments: { ref } });
    assert.equal(foreign.isError, true);
    report.cross_session_ref_rejected = true;
    const privateFound = await clients[0].callTool({ name: 'ascet_code_find', arguments: { target: 'diagrams', diagram: 'SearchToolsPrivateAcceptance', match: 'exact', in: { visibility: 'private' } } });
    const target = (privateFound.structuredContent as any).results;
    assert.equal(target.length, 1); assert.equal(target[0].visibility, 'private');
    const privateRead = await clients[0].callTool({ name: 'ascet_code_read', arguments: { ref: target[0].ref } });
    assert.ok((privateRead.structuredContent as any).diagram_text.includes('987654.125'));
    const privateSearch = await clients[0].callTool({ name: 'ascet_code_search', arguments: { query: 'SearchToolsPrivateMarker_20261002', group_by: 'object', in: { visibility: 'private' } } });
    assert.equal((privateSearch.structuredContent as any).status, 'ok');
    assert.equal((privateSearch.structuredContent as any).total_hits, 1);
    await writeFile(join(directory, 'private-mcp.json'), JSON.stringify({ privateFound, privateRead, privateSearch }, null, 2));
    report.private_mcp_passed = true;
  } finally { await Promise.all(clients.map(c => c.close())); }
  const persistent = new Client({ name: 'restart-recovery-agent', version: '1' });
  const transport = new StdioClientTransport({ command: process.execPath, args: [join(ROOT, 'dist/src/mcp.js')],
    env: { ...Object.fromEntries(Object.entries(env).filter(([,v]) => v !== undefined)) as Record<string,string>, ASCET_CODE_SEARCH_IDLE_MS: '60000' } });
  try {
    await persistent.connect(transport);
    const found = await persistent.callTool({ name: 'ascet_code_find', arguments: { target: 'diagrams', diagram: privateGraph.name, match: 'exact' } });
    const oldRef = (found.structuredContent as any).results[0].ref;
    execFileSync('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/stop.ps1'), '-Manifest', manifest], { windowsHide: true });
    execFileSync('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/launch.ps1'), '-Manifest', manifest, '-Background'], { windowsHide: true });
    report.restarted_pid = await openDatabase(); assert.notEqual(report.restarted_pid, report.initial_pid);
    const failed = await persistent.callTool({ name: 'ascet_code_find', arguments: { target: 'components', limit: 1 } });
    assert.equal(failed.isError, true); assert.equal((failed.structuredContent as any).code, 'ASCET_RESTARTED');
    const recovered = await persistent.callTool({ name: 'ascet_code_find', arguments: { target: 'diagrams', diagram: privateGraph.name, match: 'exact' } });
    assert.equal((recovered.structuredContent as any).status, 'ok');
    const fresh = await persistent.callTool({ name: 'ascet_code_read', arguments: { ref: (recovered.structuredContent as any).results[0].ref } });
    assert.ok((fresh.structuredContent as any).diagram_text.includes('987654.125'));
    const stale = await persistent.callTool({ name: 'ascet_code_read', arguments: { ref: oldRef } });
    assert.equal(stale.isError, true); assert.equal((stale.structuredContent as any).code, 'ASCET_RESTARTED');
    report.same_mcp_process_recovered = true; report.old_process_ref_rejected = true;
    await writeFile(join(directory, 'restart-recovery-mcp.json'), JSON.stringify({ failed, recovered, fresh, stale }, null, 2));
  } finally { await persistent.close(); }
  const restarted = await snapshot('restarted-first-cold-read');
  assert.equal(fingerprint(before.data), fingerprint(restarted.data));
  report.cold_fingerprint_stable = true;
  report.status = 'passed';
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2)); console.log(JSON.stringify(report, null, 2)); }
