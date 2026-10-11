import assert from 'node:assert/strict';
import { execFile } from 'node:child_process';
import { promisify } from 'node:util';
import { appendFile, mkdir, readFile, writeFile } from 'node:fs/promises';
import { join, resolve } from 'node:path';
import { ROOT } from '../src/bridge.js';
import { agentToolRequest } from '../src/agent-tools.js';

assert.ok(process.argv[2] && process.argv[3], 'Provide candidate and baseline CLI package directories');
const candidate = resolve(process.argv[2]), baseline = resolve(process.argv[3]);
const directory = resolve(process.argv[4] ?? join(ROOT, 'experiments/agent-interface-polish', new Date().toISOString().replace(/[:.]/g, '-')));
const runFile = promisify(execFile);
await mkdir(directory, { recursive: true });
await writeFile(join(directory, 'requests.jsonl'), '');
const report: any = { status: 'running', directory, candidate, baseline, started_utc: new Date().toISOString(),
  boundary: 'Packaged CLI smoke and alternating serial baseline/candidate searches on one isolated ASCET Database. Search result comparison excludes only session refs/cursors/debug and new additive owner/reference metadata. Separate snapshot/source audit validates unchanged native facts. This is deterministic verification, not an autonomous model benchmark.' };
const save = () => writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
async function run(script: string, args: string[], env: NodeJS.ProcessEnv = {}) {
  try {
    const result = await runFile(process.execPath, [join(ROOT, 'dist/scripts/' + script + '.js'), ...args],
      { windowsHide: true, timeout: 240_000, maxBuffer: 4 * 1024 * 1024, env: { ...process.env, ...env } });
    await appendFile(join(directory, 'driver.log'), result.stdout + result.stderr); return 0;
  } catch (error) {
    const failed = error as Error & { code?: number; stdout?: string; stderr?: string };
    await appendFile(join(directory, 'driver.log'), (failed.stdout ?? '') + (failed.stderr ?? '') + String(error) + '\n');
    return failed.code ?? 1;
  }
}
let launched = false;
try {
  assert.equal(await run('agent-evaluation-lifecycle', ['start', directory]), 0); launched = true;
  const packageDirectory = join(directory, 'package');
  const packageCode = await run('verify-cli-package', [candidate], { ASCET_CLI_PACKAGE_REPORT_DIRECTORY: packageDirectory });
  report.package = JSON.parse(await readFile(join(packageDirectory, 'report.json'), 'utf8'));
  assert.equal(packageCode, 0, JSON.stringify(report.package)); assert.equal(report.package.status, 'passed');
  const examples = JSON.parse(await readFile(join(packageDirectory, 'examples.json'), 'utf8'));
  for (const [index, row] of examples.entries()) {
    const wire = row.request, request = wire.tool ? agentToolRequest(wire.tool, wire.arguments) : wire;
    await appendFile(join(directory, 'requests.jsonl'), JSON.stringify({ step: index + 1, request, response: row.response }) + '\n');
  }
  console.log(JSON.stringify({ event: 'package_passed', calls: examples.length }));
  const performanceDirectory = join(directory, 'performance');
  const performanceCode = await run('verify-cli-optimization', [], { ASCET_CLI_BASELINE: baseline,
    ASCET_CLI_CANDIDATE: candidate,
    ASCET_CLI_OPTIMIZATION_REPORT_DIRECTORY: performanceDirectory });
  report.performance = JSON.parse(await readFile(join(performanceDirectory, 'report.json'), 'utf8'));
  assert.ok(performanceCode === 0 || performanceCode === 2, JSON.stringify(report.performance));
  assert.equal(report.performance.correctness_status, 'passed');
  report.correctness_status = 'passed';
  report.performance_status = report.performance.performance.all_under_goal ? 'passed' : 'outliers';
  report.interface_bytes = {};
  for (const [name, root] of [['baseline', baseline], ['candidate', candidate]]) {
    const files = ['AGENT_SEARCH_PROMPT.md', ...['find', 'search', 'read'].map(op => 'agent-simple-' + op + '-tool-definition.json')];
    const lengths = await Promise.all(files.map(async f => [f, (await readFile(join(root, f))).length]));
    report.interface_bytes[name] = Object.fromEntries(lengths);
  }
  console.log(JSON.stringify({ event: 'comparison_completed', correctness: report.correctness_status, performance: report.performance_status }));
} catch (error) { report.correctness_status = 'failed'; report.error = error instanceof Error ? error.stack : String(error); process.exitCode = 1; }
finally {
  report.status = 'recorded'; report.completed_utc = new Date().toISOString(); await save();
  if (launched) {
    const finished = await run('agent-evaluation-lifecycle', ['finish', directory]);
    report.closeout = JSON.parse(await readFile(join(directory, 'closeout.json'), 'utf8'));
    if (finished || report.closeout.status !== 'passed') process.exitCode = 1;
    await save();
  }
  console.log(JSON.stringify({ directory, correctness: report.correctness_status,
    performance: report.performance_status, closeout: report.closeout?.status, interface_bytes: report.interface_bytes }, null, 2));
}
