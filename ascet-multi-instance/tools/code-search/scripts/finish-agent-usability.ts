import assert from 'node:assert/strict';
import { execFile } from 'node:child_process';
import { promisify } from 'node:util';
import { readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { Bridge, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const runFile = promisify(execFile);
const directory = resolve(process.argv[2]), packageReport = resolve(process.argv[3]);
const original = JSON.parse(await readFile(join(directory, 'report.json'), 'utf8'));
const verified = JSON.parse(await readFile(join(directory, 'polish-verification/report.json'), 'utf8'));
const packaged = JSON.parse(await readFile(packageReport, 'utf8'));
const manifest = resolve(original.manifest), instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.equal(instance.port, 32631); assert.equal(identity.port, 32631);
assert.equal(resolve(instance.runtime), join(dirname(manifest), 'runtime'));
assert.equal(resolve(identity.runtime), resolve(instance.runtime));
const report: any = { status: 'running', started_utc: new Date().toISOString(), package_report: packageReport,
  original_status: original.status, patch_status: verified.status, package_status: packaged.status };
const audit = new Bridge(90, { env: { ...process.env, ASCET_CODE_SEARCH_PORT: '32631', ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' } });
try {
  assert.equal(original.status, 'recorded'); assert.equal(Object.keys(original.tasks).length, 5);
  assert.equal(verified.status, 'passed'); assert.equal(packaged.status, 'passed');
  const expected = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')).data;
  const raw = await audit.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
  assert.equal(raw.ascet_pid, identity.pid); assert.equal(raw.database, instance.database);
  const current = decodeResponse(raw); assert.deepEqual(current.errors, []);
  assert.equal(fingerprint(current), fingerprint(expected)); assert.deepEqual(current.diagrams, expected.diagrams);
  report.final_snapshot = { components: current.components.length, documents: current.documents.length,
    diagrams: current.diagrams!.length, fingerprint: fingerprint(current) };
  report.sources_and_graphs_unchanged = true; report.status = 'passed';
} catch (error) { report.status = 'failed'; report.error = error instanceof Error ? error.stack : String(error); }
finally {
  await audit.close();
  try {
    await runFile('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/stop.ps1'), '-Manifest', manifest],
      { windowsHide: true, timeout: 30_000 });
    const { stdout } = await runFile('pwsh', ['-NoProfile', '-Command',
      'Get-CimInstance Win32_Process -Filter "ProcessId=21052 OR ProcessId=39168" | Select-Object ProcessId,CreationDate,ExecutablePath | Sort-Object ProcessId | ConvertTo-Json -Compress'],
      { windowsHide: true, timeout: 30_000 });
    const protectedProcesses = JSON.parse(stdout || '[]');
    assert.deepEqual(protectedProcesses, verified.protected_processes_before);
    await runFile('pwsh', ['-NoProfile', '-Command',
      `if (Get-Process -Id ${identity.pid} -ErrorAction SilentlyContinue) { throw 'Isolated ASCET still running' }
       if (Get-NetTCPConnection -State Listen -LocalPort 32631 -ErrorAction SilentlyContinue) { throw 'Isolated endpoint still listening' }`],
      { windowsHide: true, timeout: 30_000 });
    report.isolated_instance_stopped = true; report.isolated_endpoint_closed = true;
    report.protected_processes_unchanged = true; report.protected_processes_after = protectedProcesses;
  } catch (error) { report.status = 'failed'; report.cleanup_error = String(error); }
  report.completed_utc = new Date().toISOString();
  await writeFile(join(directory, 'closeout.json'), JSON.stringify(report, null, 2) + '\n');
  console.log(JSON.stringify(report, null, 2)); if (report.status !== 'passed') process.exitCode = 1;
}
