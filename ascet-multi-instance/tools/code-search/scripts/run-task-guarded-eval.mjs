import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import assert from 'node:assert/strict';
import { spawn } from 'node:child_process';
import { verifyRunningAgentInstance } from '../dist/scripts/agent-instance-retention.js';

const root = path.resolve(process.argv[2] ?? 'experiments/pi-agent-eval/2026-10-11-tasks-guarded-01');
const mode = process.argv[3] ?? 'guarded';
assert.ok(['guarded', 'first-attempt'].includes(mode), 'Use guarded (20 targeted cases) or first-attempt (the complete plan)');
const guarded = mode === 'guarded';
const targetedCases = [
  'intent-locktime-countdown', 'intent-getter-interface', 'intent-shared-class',
  'intent-missing-referent', 'intent-duplicate-stage', 'intent-runtime-now',
  'intent-dataset-number', 'intent-generated-target', 'accept2-missing-object',
  'accept2-missing-code', 'holdout-negative-outgoing', 'holdout-positive-incoming',
  'intent-static-not-entry', 'intent-junction-to-off', 'intent-followup-line-window',
  'intent-followup-switch-owner', 'batch-pagination', 'large-header-read-pages',
  'cross-tool-cursor-recovery', 'truncated-search-boundary',
];
const planFile = process.argv[4] ?? 'PI_AGENT_PRECISION_V5.json';
assert.match(planFile, /^[A-Z0-9_]+\.json$/u, 'Use a local named plan');
const plan = JSON.parse(fs.readFileSync(planFile, 'utf8'));
const cases = guarded ? plan.targeted_cases ?? targetedCases : plan.cases.map(c => c.id);
assert.ok(cases.every(id => plan.cases.some(c => c.id === id)));
const manifest = path.resolve(process.env.ASCET_AGENT_LATENCY_MANIFEST ?? '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const identity = JSON.parse(fs.readFileSync(path.join(path.dirname(manifest), 'process.json'), 'utf8').replace(/^\uFEFF/, ''));
await verifyRunningAgentInstance(identity); // Do not start another ASCET for this acceptance run.
assert.ok(fs.existsSync(path.join(path.dirname(manifest), 'keep-running.json')));
assert.ok(!fs.existsSync(root), 'Do not overwrite recorded attempts');
fs.mkdirSync(root, { recursive: true });
const build = path.join(root, 'candidate-build');
for (const dir of ['dist/src', 'src']) fs.cpSync(dir, path.join(build, dir), { recursive: true });
for (const file of ['CodeSearchBridge.exe', 'package.json', ...['find', 'search', 'read'].map(op => `agent-simple-${op}-tool-definition.json`)])
  fs.copyFileSync(file, path.join(build, file));
const sha = file => crypto.createHash('sha256').update(fs.readFileSync(file)).digest('hex');
const production = Object.fromEntries(fs.readdirSync('dist/src').filter(f => f.endsWith('.js')).map(f => [f, sha(path.join('dist/src', f))]));
fs.cpSync('dist/scripts', path.join(root, 'grading-build/scripts'), { recursive: true });
fs.copyFileSync(planFile, path.join(root, planFile));
fs.writeFileSync(path.join(root, 'eval.freeze.json'), JSON.stringify({ cases, identity, production,
  plan_file: planFile, plan_sha256: sha(planFile), repetitions: 1, guards_enabled: guarded,
  policy: guarded ? 'Targeted production-guard acceptance. Not a first-attempt benchmark or an independent holdout. Preserve every raw assistant answer, repair, rejected call and original v6 score. Do not replace complete unguarded runs.'
    : 'Complete plan, one first attempt per case. Intent/final guards disabled. No retries or selected successful repeats. Preserve every raw answer, error and v6 score; do not merge with guarded attempts.' }, null, 2) + '\n');
const directory = path.join(root, guarded ? 'guarded-pi-01' : 'candidate-pi-01');
const fd = fs.openSync(directory + '.console.log', 'wx');
const code = await new Promise((accept, reject) => {
  const child = spawn(process.execPath, ['dist/scripts/verify-pi-agent-eval.js', directory, cases.join(',')], {
    windowsHide: true, stdio: ['ignore', fd, fd], env: { ...process.env,
      ASCET_PI_TOOL_PROFILE: 'task', ASCET_PI_PLAN_FILE: planFile, ASCET_PI_GRADING_VERSION: '6',
      ASCET_PI_REPEAT: '1', ASCET_PI_RESCORE: '0', ASCET_PI_EVAL_GUARDS: guarded ? '1' : '0',
      ASCET_PI_PROVIDER: 'deepseek', ASCET_PI_MODEL: 'deepseek-flash',
      ASCET_PI_EXTENSION: path.join(build, 'dist/src/pi-extension.js') } });
  child.once('error', reject); child.once('close', accept);
});
fs.closeSync(fd);
const report = JSON.parse(fs.readFileSync(path.join(directory, 'report.json'), 'utf8'));
for (const [file, hash] of Object.entries(production)) assert.equal(sha(path.join('dist/src', file)), hash, 'Production changed during eval');
assert.equal(report.closeout.status, 'passed');
assert.equal(report.closeout.isolated_instance_retained, true);
const statuses = report.cases.map(c => ({ id: c.id, events: c.final_guard_events,
  original_score_passed: c.scoring.passed, raw_assistant_messages: c.raw_assistant_messages.length }));
fs.writeFileSync(path.join(root, 'guard-summary.json'), JSON.stringify({ summary: report.summary, statuses }, null, 2) + '\n');
console.log(JSON.stringify({ code, summary: report.summary, closeout: report.closeout }));
if (code !== 0 || report.summary.model_service_failures) process.exitCode = 1;
