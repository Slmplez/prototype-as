import assert from 'node:assert/strict';
import { execFile } from 'node:child_process';
import { promisify } from 'node:util';
import { createHash } from 'node:crypto';
import { mkdir, readFile, readdir, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { Bridge, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const runFile = promisify(execFile);
const manifest = resolve(process.env.ASCET_AGENT_LATENCY_MANIFEST ?? join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json'));
const instance = JSON.parse(await readFile(manifest, 'utf8'));
assert.equal(resolve(instance.runtime), join(dirname(manifest), 'runtime'));
assert.equal(instance.port, 32631); assert.notEqual(instance.port, 32503);
const directory = join(ROOT, 'experiments/full-regression', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0',
  ASCET_AGENT_LATENCY_MANIFEST: manifest, ASCET_AGENT_LATENCY_ROUNDS: '3',
  ASCET_PREFILTER_GOLDEN: join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json') };
const results: Record<string, unknown>[] = [];
const report: Record<string, any> = { status: 'running', directory, manifest, started_utc: new Date().toISOString(),
  boundary: 'Formal TS/C#/Smalltalk runtime only; unintegrated optimization prototypes are excluded. All live suites are serial and limited to the manifested copied Database at 32631. Existing protected ASCET/BDE/CLI processes are observed only. Correctness and measured performance are reported separately.', results };
const save = () => writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
async function processes() {
  const { stdout } = await runFile('pwsh', ['-NoProfile', '-Command',
    'Get-CimInstance Win32_Process -Filter "ProcessId=21052 OR ProcessId=39168 OR ProcessId=33884" | Select-Object ProcessId,CreationDate,ExecutablePath | ConvertTo-Json -Compress'],
  { windowsHide: true, timeout: 30_000 });
  return JSON.parse(stdout);
}
async function stage(name: string, command: string, args: string[], timeout = 720_000) {
  const started = Date.now(), result: Record<string, any> = { name, status: 'running', command, args, started_utc: new Date().toISOString() };
  results.push(result); await save(); console.log(JSON.stringify({ stage: name, status: 'running' }));
  try {
    const { stdout, stderr } = await runFile(command, args, { cwd: ROOT, env, windowsHide: true, timeout, maxBuffer: 64 * 1024 * 1024 });
    await writeFile(join(directory, name + '.stdout.log'), stdout); await writeFile(join(directory, name + '.stderr.log'), stderr);
    result.status = 'passed'; result.exit_code = 0;
  } catch (error: any) {
    await writeFile(join(directory, name + '.stdout.log'), error.stdout ?? '');
    await writeFile(join(directory, name + '.stderr.log'), error.stderr ?? String(error));
    result.status = 'failed'; result.exit_code = error.code; result.error = String(error).slice(0, 3000);
  }
  if ((name === 'verify-live' || name === 'verify-advanced') && (result.exit_code === 0 || result.exit_code === 2)) {
    const evidence = JSON.parse(await readFile(join(directory, name + '.json'), 'utf8'));
    if (evidence.correctness_passed === true && evidence.model_stable === true && !evidence.fatal_error) {
      result.status = 'passed'; result.performance_target_passed = evidence.resident_target_passed === true;
      if (result.exit_code === 2) result.performance_note = 'Original exit code 2 records the 500 ms performance failure; correctness and source stability passed.';
    }
  }
  result.elapsed_ms = Date.now() - started; await save(); console.log(JSON.stringify({ stage: name, status: result.status, elapsed_ms: result.elapsed_ms }));
  return result.status === 'passed';
}
async function snapshot(name: string) {
  const bridge = new Bridge(90, { env });
  try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    const data = decodeResponse(raw); assert.deepEqual(data.errors, []);
    const oracle = JSON.parse(await readFile(env.ASCET_PREFILTER_GOLDEN, 'utf8')).data;
    assert.equal(fingerprint(data), fingerprint(oracle)); assert.deepEqual(data.diagrams, oracle.diagrams);
    await writeFile(join(directory, name + '.json'), JSON.stringify({ database: raw.database, pid: raw.ascet_pid,
      fingerprint: fingerprint(data), components: data.components.length, documents: data.documents.length, diagrams: data.diagrams!.length, coverage: data.coverage }, null, 2) + '\n');
    return { pid: raw.ascet_pid, fingerprint: fingerprint(data), components: data.components.length, documents: data.documents.length, diagrams: data.diagrams!.length };
  } finally { await bridge.close(); }
}
try {
  report.protected_processes_before = await processes();
  const files = [...(await readdir(join(ROOT, 'src'))).filter(name => name.endsWith('.ts')).map(name => 'src/' + name),
    ...(await readdir(ROOT)).filter(name => name.endsWith('.st') || name === 'CodeSearchBridge.cs')];
  report.source_hashes = Object.fromEntries(await Promise.all(files.map(async file => [file, createHash('sha256').update(await readFile(join(ROOT, file))).digest('hex')])));
  assert.ok(await stage('build', 'pwsh', ['-NoProfile', '-File', join(ROOT, 'build.ps1')]), 'Build failed');
  const tests = (await readdir(join(ROOT, 'dist/test'))).filter(name => name.endsWith('.test.js')).sort().map(name => join(ROOT, 'dist/test', name));
  await stage('offline', process.execPath, ['--test', ...tests]);
  report.initial_snapshot = await snapshot('before'); await save();
  const suites = ['verify-cli-input', 'verify-live', 'verify-advanced', 'verify-paging', 'verify-read-pages',
    'verify-agent-polish', 'verify-model-generality', 'verify-diagram-generality', 'verify-multiple-diagrams', 'verify-object-search',
    'verify-prefilter', 'verify-literal-gates', 'verify-template-copy', 'verify-native-transport', 'verify-encoding',
    'verify-modified-directory', 'verify-scope-edges', 'verify-saved-readers', 'verify-regex-prefilter',
    'verify-coordination', 'verify-container-current', 'verify-cli-acceptance'];
  for (const name of suites) {
    const args = [join(ROOT, 'dist/scripts', name + '.js')];
    if (name === 'verify-live' || name === 'verify-advanced') args.push('--output', join(directory, name + '.json'), '--repeats', '3');
    await stage(name, process.execPath, args);
  }
  if (await stage('pack-cli', 'powershell.exe', ['-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', join(ROOT, 'pack-cli.ps1')])) {
    report.package = JSON.parse(await readFile(join(directory, 'pack-cli.stdout.log'), 'utf8'));
    const extracted = join(directory, 'extracted package');
    const quote = (value: string) => "'" + value.replaceAll("'", "''") + "'";
    if (await stage('unpack-cli', 'pwsh', ['-NoProfile', '-Command',
      `Expand-Archive -LiteralPath ${quote(report.package.archive)} -DestinationPath ${quote(extracted)}`])) {
      report.extracted_package = join(extracted, report.package.directory.split(/[\\/]/).at(-1)!);
      await stage('verify-cli-package', process.execPath, [join(ROOT, 'dist/scripts/verify-cli-package.js'), report.extracted_package]);
    }
  }
  report.final_snapshot = await snapshot('after');
  assert.equal(report.final_snapshot.fingerprint, report.initial_snapshot.fingerprint);
  assert.equal(report.final_snapshot.diagrams, report.initial_snapshot.diagrams);
  report.sources_and_graphs_unchanged = true;
  report.protected_processes_after = await processes();
  assert.deepEqual(report.protected_processes_after, report.protected_processes_before);
  report.protected_processes_unchanged = true;
  report.failed_stages = results.filter(value => value.status === 'failed').map(value => value.name);
  report.correctness_passed = report.failed_stages.length === 0;
  report.performance_exceptions = results.filter(value => value.performance_target_passed === false).map(value => value.name);
  report.status = report.failed_stages.length ? 'failed' : 'passed';
  if (report.failed_stages.length) process.exitCode = 1;
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { report.completed_utc = new Date().toISOString(); await save(); console.log(JSON.stringify({ ...report, results: undefined, source_hashes: undefined }, null, 2)); }
