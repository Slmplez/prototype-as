import assert from 'node:assert/strict';
import { execFile, spawn } from 'node:child_process';
import { promisify } from 'node:util';
import { readFile, writeFile, mkdir, appendFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { Bridge, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';
import { retainAgentInstance, verifyRunningAgentInstance } from './agent-instance-retention.js';

const runFile = promisify(execFile), action = process.argv[2];
assert.ok(['start', 'finish'].includes(action)); assert.ok(process.argv[3], 'Provide an evaluation directory');
const directory = resolve(process.argv[3]); await mkdir(directory, { recursive: true });
const manifest = resolve(process.env.ASCET_AGENT_LATENCY_MANIFEST ?? join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json'));
const instance = JSON.parse(await readFile(manifest, 'utf8'));
assert.equal(instance.port, 32631); assert.equal(resolve(instance.runtime), join(dirname(manifest), 'runtime'));
assert.equal(resolve(instance.data), join(dirname(manifest), 'data'));
assert.ok(resolve(instance.database).startsWith(resolve(instance.data) + '\\'));
await readFile(join(dirname(dirname(manifest)), 'experiment.json'));
const setupPath = join(directory, 'setup.json');
async function processes() {
  const { stdout } = await runFile('pwsh', ['-NoProfile', '-Command',
    'Get-CimInstance Win32_Process -Filter "Name=\'ASCET.exe\'" | Select-Object ProcessId,CreationDate,ExecutablePath | Sort-Object ProcessId | ConvertTo-Json -Compress'],
    { windowsHide: true, timeout: 30_000 });
  const data = JSON.parse(stdout || '[]'); return Array.isArray(data) ? data : [data];
}
async function lifecycle(operation: 'stop' | 'launch') {
  const args = ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/' + operation + '.ps1'), '-Manifest', manifest];
  if (operation === 'launch') args.push('-Background');
  const { stdout, stderr } = await runFile('pwsh', args, { windowsHide: true, timeout: 60_000 });
  await appendFile(join(directory, 'lifecycle.log'), operation + '\n' + stdout + stderr);
}
if (action === 'start') {
  const before = await processes();
  const existing = before.find(p => p.ExecutablePath === join(instance.runtime, 'ASCET.exe'));
  const setup: any = { status: 'starting', manifest, started_utc: new Date().toISOString(), protected_processes_before: before };
  await writeFile(setupPath, JSON.stringify(setup, null, 2) + '\n');
  let launched = false;
  try {
    if (!existing) { await lifecycle('launch'); launched = true; }
    const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
    assert.equal(identity.runtime, instance.runtime); assert.equal(identity.port, 32631);
    if (existing) {
      assert.equal(existing.ProcessId, identity.pid); await verifyRunningAgentInstance(identity);
      const probe = new Bridge(90, { env: { ...process.env, ASCET_CODE_SEARCH_PORT: '32631', ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' } });
      try {
        const raw = await probe.request({ mode: 'snapshot' });
        assert.equal(raw.ascet_pid, identity.pid); assert.equal(raw.database, instance.database);
      } finally { await probe.close(); }
      setup.reused_instance = true;
    } else {
    await runFile('pwsh', ['-NoProfile', '-Command', `$deadline = [DateTime]::UtcNow.AddSeconds(30)
      do {
        $listener = Get-NetTCPConnection -State Listen -LocalPort 32631 -ErrorAction SilentlyContinue
        if ($listener.OwningProcess -eq ${identity.pid}) { exit 0 }
        Start-Sleep -Milliseconds 100
      } while ([DateTime]::UtcNow -lt $deadline)
      throw 'Isolated endpoint did not become ready'`], { windowsHide: true, timeout: 35_000 });
    const host = spawn(join(dirname(dirname(manifest)), 'EndpointHost.exe'),
      ['32631', join(instance.logs, 'agent-evaluation-host'), instance.database, String(identity.pid)], { windowsHide: true });
    let output = ''; host.stdout.on('data', c => output += c); host.stderr.on('data', c => output += c);
    const ended = new Promise<number | null>((accept, reject) => { host.once('error', reject); host.once('close', accept); });
    const timer = setTimeout(() => host.kill(), 45_000); host.stdin.end('{"id":1,"op":"quit"}\n');
    try { assert.equal(await ended, 0, output); }
    finally { clearTimeout(timer); await appendFile(join(directory, 'lifecycle.log'), output); }
    }
    setup.status = 'ready'; setup.identity = identity;
  } catch (error) {
    setup.status = 'failed'; setup.error = String(error); if (launched) await lifecycle('stop'); process.exitCode = 1;
  }
  await writeFile(setupPath, JSON.stringify(setup, null, 2) + '\n'); console.log(JSON.stringify(setup, null, 2));
} else {
  const setup = JSON.parse(await readFile(setupPath, 'utf8'));
  const report: any = { status: 'running', started_utc: new Date().toISOString() };
  const audit = new Bridge(90, { env: { ...process.env, ASCET_CODE_SEARCH_PORT: '32631', ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' } });
  try {
    assert.equal(setup.status, 'ready');
    const recorded = JSON.parse(await readFile(join(directory, 'report.json'), 'utf8'));
    assert.equal(recorded.status, 'recorded');
    const expected = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')).data;
    const raw = await audit.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    assert.equal(raw.ascet_pid, setup.identity.pid); assert.equal(raw.database, instance.database);
    const current = decodeResponse(raw); assert.deepEqual(current.errors, []);
    assert.equal(fingerprint(current), fingerprint(expected)); assert.deepEqual(current.diagrams, expected.diagrams);
    const tracePaths = [join(directory, 'requests.jsonl'), ...(process.env.ASCET_AGENT_AUDIT_TRACE ? [resolve(process.env.ASCET_AGENT_AUDIT_TRACE)] : [])];
    const trace = (await Promise.all(tracePaths.map(async path => (await readFile(path, 'utf8')).trim().split('\n').filter(Boolean).map(line => JSON.parse(line))))).flat();
    report.audited_trace_paths = tracePaths;
    report.full_text_reads_checked = 0;
    for (const row of trace.filter(row => row.request.operation === 'read' && row.response.status !== 'error')) {
      const results = row.response.results ?? [row.response];
      for (const r of results) if (!r.error && r.ref && r.kind && typeof r.code === 'string' && !r.code_range) {
        const doc = expected.documents.find((d: any) => d.component_path === r.component_path && d.kind === r.kind && d.variant === r.variant &&
          d.implementation_oid === (r.implementation ?? '') && d.member_name === (r.method ?? r.process ?? r.state ?? r.transition ?? '') &&
          (!r.diagram_oid || d.location?.diagram_source_oid === r.diagram_oid));
        assert.ok(doc, 'Full read must resolve to frozen source identity: ' + JSON.stringify(r));
        assert.equal(r.code, doc.text); report.full_text_reads_checked++;
      }
    }
    report.sources_and_graphs_unchanged = true;
    report.final_snapshot = { components: current.components.length, documents: current.documents.length,
      diagrams: current.diagrams!.length, fingerprint: fingerprint(current) }; report.status = 'passed';
  } catch (error) { report.status = 'failed'; report.error = error instanceof Error ? error.stack : String(error); }
  finally {
    await audit.close();
    try {
      const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
      assert.equal(identity.pid, setup.identity.pid); assert.equal(identity.start_time_utc, setup.identity.start_time_utc);
      const retained = await retainAgentInstance(manifest, identity);
      if (retained) await verifyRunningAgentInstance(identity); else await lifecycle('stop');
      const after = await processes(), protectedIDs = new Set(setup.protected_processes_before.map((p: any) => p.ProcessId));
      assert.deepEqual(after.filter(p => protectedIDs.has(p.ProcessId)), setup.protected_processes_before);
      if (retained) {
        report.isolated_instance_retained = true; report.endpoint_open = true; report.protected_processes_unchanged = true;
      } else {
      assert.ok(!after.some(p => p.ExecutablePath === join(instance.runtime, 'ASCET.exe')));
      await runFile('pwsh', ['-NoProfile', '-Command',
        "if (Get-NetTCPConnection -State Listen -LocalPort 32631 -ErrorAction SilentlyContinue) { throw 'Isolated endpoint still listening' }"],
        { windowsHide: true, timeout: 30_000 });
      report.isolated_instance_stopped = true; report.isolated_endpoint_closed = true; report.protected_processes_unchanged = true;
      }
    } catch (error) { report.status = 'failed'; report.cleanup_error = String(error); }
    report.completed_utc = new Date().toISOString(); await writeFile(join(directory, 'closeout.json'), JSON.stringify(report, null, 2) + '\n');
    console.log(JSON.stringify(report, null, 2)); if (report.status !== 'passed') process.exitCode = 1;
  }
}
