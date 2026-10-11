import fs from 'node:fs';
import crypto from 'node:crypto';
import assert from 'node:assert/strict';

const original = fs.readFileSync('PI_AGENT_PRECISION_V5.json');
const plan = JSON.parse(original);
const output = process.argv[2] ?? 'PI_AGENT_PRECISION_V6.json';
assert.ok(!fs.existsSync(output), 'Do not overwrite an existing frozen plan');
const object = properties => ({ type: 'object', properties, required: Object.keys(properties) });
const string = { type: 'string' }, bool = { type: 'boolean' }, count = { type: 'integer', minimum: 0 };
const typed = [];
for (const task of plan.cases) {
  const identity = task.score_as ?? task.id;
  if (identity === 'bde-neighbor') task.facts_schema = object({ from_pin: string, to_pin: string, target_name: string, referenced_component_path: string });
  if (identity === 'graphical-getter-diagram') task.facts_schema = object({ representation: { enum: ['saved_text', 'bde'] }, shared_diagram: bool, methods: { type: 'array', items: string } });
  if (task.rubric?.type === 'recovery') task.facts_schema = object({ error_observed: bool, recovered: bool });
  if (task.id === 'intent-three-variables') task.facts_schema = object({ counts: { type: 'array', items: object({ query: string, total_hits: count }) } });
  if (task.id === 'batch-pagination') task.facts_schema = object({ counts: { type: 'object', additionalProperties: count }, array_semantics: { enum: ['independent', 'AND'] }, pagination_complete: bool });
  if (task.facts_schema) typed.push(task.id);
}
plan.targeted_cases = [
  'intent-locktime-countdown', 'intent-getter-interface', 'intent-shared-class',
  'intent-missing-referent', 'intent-duplicate-stage', 'intent-runtime-now',
  'intent-dataset-number', 'intent-generated-target', 'accept2-missing-object',
  'accept2-missing-code', 'holdout-negative-outgoing', 'holdout-positive-incoming',
  'intent-static-not-entry', 'intent-junction-to-off', 'intent-followup-line-window',
  'intent-followup-switch-owner', 'batch-pagination', 'large-header-read-pages',
  'cross-tool-cursor-recovery', 'truncated-search-boundary', 'intent-where-wired',
  'intent-three-variables', 'intent-calc-without-owner', 'intent-inactive-zero',
];
assert.equal(plan.cases.length, 80); assert.equal(new Set(plan.targeted_cases).size, 24);
assert.ok(plan.targeted_cases.every(id => plan.cases.some(c => c.id === id)));
plan.schema_provenance = { source_plan: 'PI_AGENT_PRECISION_V5.json', source_sha256: crypto.createHash('sha256').update(original).digest('hex'),
  typed_cases: typed, boundary: 'Only caller-visible JSON Schema types added, before new attempts. No saved native answers/IDs/constants added. Original V5 scores remain unchanged. Task identities and existing factual rubrics remain unchanged; new runs also check the declared schema. This is an explicit-contract regression, not a like-for-like V5 benchmark.' };
fs.writeFileSync(output, JSON.stringify(plan, null, 2) + '\n');
console.log(JSON.stringify({ file: output, total: plan.cases.length, targeted: plan.targeted_cases.length, typed }));
