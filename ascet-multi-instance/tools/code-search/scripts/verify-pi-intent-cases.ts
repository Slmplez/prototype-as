import assert from 'node:assert/strict';
import { readFile, writeFile, mkdir } from 'node:fs/promises';
import { resolve, join } from 'node:path';
import { ROOT } from '../src/bridge.js';
import { createIntentPlan } from './pi-intent-plan.js';
import { normalizePiEvalCases } from './pi-eval-plan.js';
import { matrixFixture } from './pi-eval-matrix.js';
import { fingerprint } from './oracle.js';
import type { Snapshot } from '../src/types.js';

const base = JSON.parse(await readFile(join(ROOT, 'PI_AGENT_EVAL_CASES.json'), 'utf8'));
const generated = createIntentPlan(base);
if (process.argv.includes('--write')) {
  await writeFile(join(ROOT, 'PI_AGENT_INTENT_CASES.json'), JSON.stringify(generated, null, 2) + '\n');
  console.log('Wrote 28 fixed Chinese intent cases');
} else {
  const plan = JSON.parse(await readFile(join(ROOT, 'PI_AGENT_INTENT_CASES.json'), 'utf8'));
  assert.deepEqual(plan, generated, 'Intent plan differs from its versioned definitions');
  const tasks = normalizePiEvalCases({ ...plan, grading_cases: base.cases });
  const snapshotPath = resolve(process.argv[2] ?? join(ROOT, 'experiments/pi-agent-eval/2026-10-04-auto-optimization-04/acceptance/oracle-snapshot.json'));
  const source: Snapshot = JSON.parse(await readFile(snapshotPath, 'utf8'));
  assert.equal(tasks.length, 28); assert.equal(new Set(tasks.map(task => task.id)).size, 28);
  for (const group of Object.keys(plan.group_names)) assert.equal(tasks.filter(task => task.group === group).length, 4, group);
  const checks = tasks.map(task => {
    assert.ok(task.intent && /[\u4e00-\u9fff]/u.test(task.requirement));
    assert.ok(task.response_fields !== undefined);
    if (task.rubric) {
      const fixture = matrixFixture(source, task.rubric);
      assert.ok(fixture !== undefined);
      if (Array.isArray(fixture)) assert.ok(fixture.length, task.id);
      if (task.rubric.type === 'search') assert.ok(fixture.every((q: any) => q.total_hits > 0), task.id);
    }
    if (task.intent_fixture) {
      const fixture = matrixFixture(source, task.intent_fixture);
      assert.ok(fixture.filter((d: any) => d.language === 'c').length > 1);
    }
    if (task.turns) assert.equal(task.turns.length, 2);
    return { id: task.id, group: task.group, turns: task.turns?.length ?? 1, decision: task.intent!.decision };
  });
  const directory = resolve(process.argv[3] ?? join(ROOT, 'experiments/pi-agent-eval/intent-inventory', new Date().toISOString().replace(/[:.]/g, '-')));
  await mkdir(directory, { recursive: true });
  const report = { status: 'passed', cases: tasks.length, groups: plan.group_names, multi_turn_cases: tasks.filter(task => task.turns).length,
    source_snapshot: snapshotPath, source_fingerprint: fingerprint(source), checks,
    boundary: 'Offline inventory and fixture verification. Not an actual Pi/LLM intent success rate.' };
  await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
  console.log(JSON.stringify({ ...report, checks: undefined, directory }));
}
