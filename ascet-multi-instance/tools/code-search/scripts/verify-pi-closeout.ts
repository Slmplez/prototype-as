import assert from 'node:assert/strict';
import { execFile } from 'node:child_process';
import { promisify } from 'node:util';
import { readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { Bridge, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

assert.ok(process.argv[2] && process.argv[3], 'Provide the live report and lifecycle setup directories');
const directory = resolve(process.argv[2]), setupDirectory = resolve(process.argv[3]);
const setup = JSON.parse(await readFile(join(setupDirectory, 'setup.json'), 'utf8'));
const measured = JSON.parse(await readFile(join(directory, 'report.json'), 'utf8'));
assert.equal(setup.status, 'ready');
assert.ok(['passed', 'performance_failed'].includes(measured.status));
assert.equal(measured.correctness_status, 'passed');
const manifest = setup.manifest;
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.equal(identity.pid, setup.identity.pid); assert.equal(identity.start_time_utc, setup.identity.start_time_utc);
assert.equal(identity.pid, measured.ascet_pid);
const instance = JSON.parse(await readFile(manifest, 'utf8'));
assert.equal(instance.port, 32631);
const runFile = promisify(execFile);
const report: Record<string, unknown> = { status: 'running', measurement_status: measured.status, isolated_pid: identity.pid, manifest };
const bridge = new Bridge(90, { env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' } });
try {
  const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
  assert.equal(raw.ascet_pid, identity.pid); assert.equal(raw.database, measured.database);
  const data = decodeResponse(raw); assert.deepEqual(data.errors, []);
  assert.equal(fingerprint(data), measured.source_fingerprint);
  report.final_saved_source_fingerprint = fingerprint(data);
  report.sources_unchanged_after_package_and_owner_tests = true;
} catch (error) { report.error = String(error); process.exitCode = 1; }
finally {
  await bridge.close();
  try {
    await runFile('pwsh', ['-NoProfile', '-File', join(ROOT, '../multi-instance/stop.ps1'), '-Manifest', manifest], { windowsHide: true, timeout: 15_000 });
    const { stdout } = await runFile('pwsh', ['-NoProfile', '-Command',
      `Get-CimInstance Win32_Process -Filter "Name='ASCET.exe'" | Select-Object ProcessId,CreationDate,ExecutablePath | Sort-Object ProcessId | ConvertTo-Json -Compress`], { windowsHide: true, timeout: 15_000 });
    const parsed = JSON.parse(stdout || '[]'), after = Array.isArray(parsed) ? parsed : [parsed];
    const protectedIDs = new Set(setup.protected_processes_before.map((item: any) => item.ProcessId));
    assert.deepEqual(after.filter(item => protectedIDs.has(item.ProcessId)), setup.protected_processes_before);
    assert.ok(!after.some(item => item.ExecutablePath === join(identity.runtime, 'ASCET.exe')));
    await runFile('pwsh', ['-NoProfile', '-Command',
      "if (Get-NetTCPConnection -State Listen -LocalPort 32631 -ErrorAction SilentlyContinue) { throw 'Test endpoint is still open' }"], { windowsHide: true, timeout: 15_000 });
    report.isolated_instance_stopped = true; report.endpoint_closed = true; report.protected_processes_unchanged = true;
    report.protected_pids = [...protectedIDs];
    report.status = report.error ? 'failed' : 'passed';
  } catch (error) { report.status = 'failed'; report.cleanup_error = String(error); process.exitCode = 1; }
  await writeFile(join(directory, 'closeout.json'), JSON.stringify(report, null, 2) + '\n');
  console.log(JSON.stringify(report, null, 2));
}
