import assert from 'node:assert/strict';
import { spawn } from 'node:child_process';
import { createWriteStream } from 'node:fs';
import { mkdir, readFile, readdir, writeFile } from 'node:fs/promises';
import { join, resolve } from 'node:path';
import { ROOT } from '../src/bridge.js';
import { normalizePiEvalCases, corpusPiEvalCases } from './pi-eval-plan.js';
import { compareOptimizationReports, assessFullAcceptance, type EvalReport } from './pi-eval-metrics.js';
import { applyReassessment, assertPlanProvenance, gradingFingerprint, reportSHA } from './pi-eval-score-provenance.js';

const args = process.argv.slice(2);
assert.ok(args.every(arg => !arg.startsWith('--') || arg === '--full'), 'Only --full is supported');
const positional = args.filter(arg => arg !== '--full');
assert.ok(positional.length <= 2, 'Expected output directory and optional baseline directory');
const output = resolve(positional[0] ?? join(ROOT, 'experiments/pi-agent-eval', new Date().toISOString().replace(/[:.]/g, '-') + '-optimization'));
const suppliedBaseline = positional[1] ? resolve(positional[1]) : undefined;
const forceFull = args.includes('--full');
await mkdir(output, { recursive: false });
const planRaw = await readFile(join(ROOT, 'PI_AGENT_EVAL_CASES.json'), 'utf8');
const plan = JSON.parse(planRaw);
const fixed = normalizePiEvalCases(plan);
const development = Object.keys(plan.group_names).filter(group => group !== 'corpus').flatMap(group => {
  const cases = fixed.filter(c => c.group === group);
  assert.ok(cases.length >= 7, 'Insufficient development cases in ' + group);
  return [0, 3, 6].map(index => cases[index].id);
});
assert.equal(development.length, 27);
const state: any = { status: 'running', started_utc: new Date().toISOString(), output,
  development_cases: development, baseline: suppliedBaseline, candidate_profile: 'optimized',
  default_profile: 'baseline', automatic_retries: 0,
  boundary: 'Fixed rubrics, first attempts only. Model variance remains; development selection requires complete acceptance before promotion.' };
const save = () => writeFile(join(output, 'optimization.json'), JSON.stringify(state, null, 2) + '\n');

async function run(args: string[], label: string, env = process.env) {
  console.log(JSON.stringify({ event: 'optimization_stage', stage: label }));
  const log = createWriteStream(join(output, label + '.log'));
  try {
    await new Promise<void>((success, fail) => {
      const child = spawn(process.execPath, args, { cwd: ROOT, env, windowsHide: true, stdio: ['ignore', 'pipe', 'pipe'] });
      child.stdout.on('data', data => { log.write(data); process.stdout.write(data); });
      child.stderr.on('data', data => { log.write(data); process.stderr.write(data); });
      child.on('error', fail);
      child.on('close', code => code === 0 ? success() : fail(new Error(label + ' exited with ' + code)));
    });
  } finally { await new Promise<void>(resolve => log.end(resolve)); }
}
async function evaluate(directory: string, profile: string, selection?: string[]) {
  const env: NodeJS.ProcessEnv = { ...process.env, ASCET_PI_TOOL_PROFILE: profile, ASCET_PI_REPEAT: '1' };
  delete env.ASCET_PI_GROUPS;
  delete env.ASCET_PI_RESCORE;
  await run([join(ROOT, 'dist/scripts/verify-pi-agent-eval.js'), directory, ...(selection ? [selection.join(',')] : [])], profile + (selection ? '-development' : '-acceptance'), env);
  return JSON.parse(await readFile(join(directory, 'report.json'), 'utf8')) as EvalReport;
}

let reassessments = 0;
async function loadBaseline(directory: string): Promise<EvalReport> {
  const raw = await readFile(join(directory, 'report.json'), 'utf8'), original = JSON.parse(raw) as EvalReport;
  assertPlanProvenance(original, planRaw);
  const grader = await gradingFingerprint();
  if (original.scoring_artifact_sha256 === grader) return original;
  let review: any;
  try { review = JSON.parse(await readFile(join(directory, 'reassessment.json'), 'utf8')); } catch { /* Generate a separate review below. */ }
  if (review?.scoring_artifact_sha256 !== grader || review?.source_report_sha256 !== reportSHA(raw)) {
    await run([join(ROOT, 'dist/scripts/verify-pi-agent-eval.js'), directory], 'reassessment-' + (++reassessments),
      { ...process.env, ASCET_PI_RESCORE: '1' });
    review = JSON.parse(await readFile(join(directory, 'reassessment.json'), 'utf8'));
  }
  state.baseline_scoring_input = join(directory, 'reassessment.json');
  return applyReassessment(raw, review);
}

try {
  const tests = (await readdir(join(ROOT, 'dist/test'))).filter(file => file.endsWith('.test.js')).map(file => join(ROOT, 'dist/test', file));
  await run(['--test', ...tests], 'regression', { ...process.env, ASCET_PI_TOOL_PROFILE: 'baseline' });
  state.regression = 'passed'; await save();
  const baselineDirectory = suppliedBaseline ?? join(output, 'baseline');
  const baseline = suppliedBaseline ? await loadBaseline(suppliedBaseline)
    : await evaluate(baselineDirectory, 'baseline', development);
  assert.deepEqual([...new Set(baseline.cases.map(c => c.id))].sort(), [...development].sort(), 'Baseline must contain the fixed development partition');
  const candidate = await evaluate(join(output, 'candidate'), 'optimized', development);
  state.baseline = baselineDirectory;
  state.comparison = compareOptimizationReports(baseline, candidate); await save();
  if (state.comparison.status === 'validate_candidate' || forceFull) {
    const acceptance = await evaluate(join(output, 'acceptance'), 'optimized');
    const native = JSON.parse(await readFile(join(output, 'acceptance/oracle-snapshot.json'), 'utf8'));
    const all = [...normalizePiEvalCases(plan), ...corpusPiEvalCases(native)].map(c => c.id);
    state.acceptance = assessFullAcceptance(acceptance, all, state.comparison.status, candidate);
    state.status = state.acceptance.accepted ? 'candidate_accepted' : 'retain_baseline';
    state.recommended_profile = state.acceptance.accepted ? 'optimized' : 'baseline';
  } else { state.status = 'retain_baseline'; state.recommended_profile = 'baseline'; }
} catch (error) {
  state.status = 'failed'; state.error = error instanceof Error ? error.stack : String(error); process.exitCode = 1;
} finally {
  state.completed_utc = new Date().toISOString(); await save();
  console.log(JSON.stringify({ event: 'optimization_end', output, status: state.status, recommended_profile: state.recommended_profile }));
}
