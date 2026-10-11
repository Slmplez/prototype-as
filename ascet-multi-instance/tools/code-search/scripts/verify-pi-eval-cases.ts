import assert from 'node:assert/strict';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { join, resolve } from 'node:path';
import { ROOT } from '../src/bridge.js';
import type { Snapshot } from '../src/types.js';
import { matrixFixture, type MatrixCase } from './pi-eval-matrix.js';
import { normalizePiEvalCases, corpusPiEvalCases } from './pi-eval-plan.js';
import { fingerprint } from './oracle.js';

const path = resolve(process.argv[2] ?? join(ROOT, 'experiments/pi-agent-eval/2026-10-04-pilot/oracle-snapshot.json'));
const source: Snapshot = JSON.parse(await readFile(path, 'utf8'));
const plan = JSON.parse(await readFile(join(ROOT, 'PI_AGENT_EVAL_CASES.json'), 'utf8'));
const fixed = normalizePiEvalCases(plan), corpus = corpusPiEvalCases(source), tasks = [...fixed, ...corpus];
const directory = resolve(process.argv[3] ?? join(ROOT, 'experiments/pi-agent-eval/case-inventory', new Date().toISOString().replace(/[:.]/g, '-')));
await mkdir(directory, { recursive: true });
assert.equal(new Set(tasks.map(c => c.id)).size, tasks.length, 'Case IDs must be unique');
assert.equal(fixed.length, 72); assert.equal(corpus.length, source.diagrams?.length);
const checks: any[] = [];
for (const task of tasks) {
  assert.ok(task.requirement.trim()); assert.ok(task.group && Object.hasOwn(plan.group_names, task.group));
  if (task.rubric) {
    const fixture = matrixFixture(source, task.rubric);
    assert.ok(fixture !== undefined);
    if (task.rubric.type === 'catalog' || task.rubric.type === 'read' || task.rubric.type === 'recovery') assert.ok(fixture.length, task.id + ': real native fixture required');
    if (task.rubric.type === 'search') {
      assert.ok(fixture.length);
      if (task.expected_outcome === 'not_found') assert.ok(fixture.every((q: any) => q.total_hits === 0));
      else assert.ok(fixture.some((q: any) => q.total_hits > 0), task.id + ': positive query fixture required');
      if (task.rubric.pagination) assert.ok(fixture.reduce((n: number, q: any) => n + q.total_hits, 0) > 1);
    }
    if (task.rubric.paged) assert.ok(Buffer.byteLength(fixture[0].text) > 32768);
    if (task.rubric.profile === 'budget') assert.ok(Buffer.byteLength(JSON.stringify(fixture)) > 32768);
    checks.push({ id: task.id, group: task.group, rubric: task.rubric.type,
      fixture_records: Array.isArray(fixture) ? fixture.length : undefined,
      query_counts: task.rubric.type === 'search' ? fixture : undefined });
  } else {
    assert.ok(Object.hasOwn(plan.case_groups, task.score_as ?? task.id), 'Legacy case requires an existing registered rubric');
    checks.push({ id: task.id, group: task.group, rubric: 'existing-specialized-rubric' });
  }
}
const groups = Object.fromEntries(Object.keys(plan.group_names).map(group => {
  const count = tasks.filter(t => t.group === group).length; assert.equal(count, group === 'corpus' ? corpus.length : 8, group);
  return [group, { description: plan.group_names[group], cases: count }];
}));
const report = { status: 'passed', verification: 'Offline case inventory and native-fixture availability only; no Pi model calls or live ASCET reads.',
  source_snapshot: path, source_fingerprint: fingerprint(source), cases: tasks.length, fixed_cases: fixed.length, corpus_cases: corpus.length,
  new_rubrics: plan.cases.filter((c: MatrixCase) => c.rubric).length, groups, checks,
  boundary: 'Case definitions and native-fixture checks are not completed Agent evaluations. Corpus cases use one shared rubric with different real Diagrams. Corpus drift is checked again from a fresh native snapshot before a live run.' };
await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
await writeFile(join(directory, 'resolved-cases.json'), JSON.stringify(tasks, null, 2) + '\n');
console.log(JSON.stringify({ ...report, checks: undefined, directory }, null, 2));
