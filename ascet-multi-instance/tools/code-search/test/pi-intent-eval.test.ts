import test from 'node:test';
import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';
import { join } from 'node:path';
import { ROOT } from '../src/bridge.js';
import type { Snapshot, SourceDocument } from '../src/types.js';
import { gradeIntentCase, intentScoreParts, parseIntentDeclaration, summarizeIntentCases, type IntentRubric, type IntentRow } from '../scripts/pi-intent-eval.js';
import { createIntentPlan } from '../scripts/pi-intent-plan.js';
import { normalizePiEvalCases } from '../scripts/pi-eval-plan.js';
import { PiIntentTurns } from '../scripts/pi-intent-turns.js';
import { assertPlanProvenance, reportSHA } from '../scripts/pi-eval-score-provenance.js';

const doc = (owner: string): SourceDocument => ({ component_oid: owner, component_path: 'Library\\' + owner, component_type: 'SGClass',
  kind: 'method', member_name: 'calc', member_id: 'calc', implementation_oid: '', variant: 'ASDL', language: 'esdl', text: 'x = 0;', document_id: owner, source_sha256: owner });
const source: Snapshot = { components: ['First', 'Second'].map(oid => ({ oid, path: 'Library\\' + oid, type: 'SGClass' })), documents: [doc('First'), doc('Second')], references: [], errors: [], coverage: {} };
const intent = { action: 'read', decision: 'execute', terms: [], scope: { components: ['First'], members: ['calc'] }, clarification_fields: [] };
const read = (owner = 'First', turn = 1): IntentRow => ({ tool: 'ascet_code_read', args: { ref: owner + '-method' }, turn, is_error: false,
  response: { status: 'ok', ref: owner + '-method', component_path: 'Library\\' + owner, kind: 'method', method: 'calc', variant: 'ASDL', implementation: '', code: 'x = 0;' } });
const spec: IntentRubric = { actions: ['read'], decision: 'execute', components: ['First'], members: ['calc'], read_scope: { component: 'First', member: 'calc', kind: 'method', variant: 'ASDL' } };

test('intent declaration cannot hide an actual read of the wrong Component', () => {
  const correct = gradeIntentCase(spec, intent, [read()], {}, source);
  assert.ok(correct.every(c => c.passed));
  const wrong = gradeIntentCase(spec, intent, [read('Second')], {}, source);
  assert.equal(intentScoreParts(wrong).recognition_passed, true);
  assert.equal(intentScoreParts(wrong).selection_passed, false);
  assert.equal(wrong.find(c => c.name === 'intent_read_scope')?.passed, false);
});

test('declared clarification requires an actual question and cannot hide speculative source reads', () => {
  const r: IntentRubric = { actions: ['clarify'], decision: 'clarify', clarification_fields: ['component'], no_reads: true, question_patterns: ['组件|Component'] };
  const i = { ...intent, action: 'clarify', decision: 'clarify', clarification_fields: ['component'] };
  const answer = { outcome: 'partial', answer: '需要哪个组件的 calc？', missing_evidence: ['Component 未指定'] };
  assert.ok(gradeIntentCase(r, i, [], answer, source).every(c => c.passed));
  assert.equal(gradeIntentCase(r, i, [read()], answer, source).find(c => c.name === 'intent_no_speculative_read')?.passed, false);
  assert.equal(gradeIntentCase(r, i, [], { ...answer, answer: '这是 calc 的代码。' }, source).find(c => c.name === 'intent_clarification_question')?.passed, false);
  assert.equal(gradeIntentCase(r, i, [], { ...answer, outcome: 'located' }, source).find(c => c.name === 'intent_no_resolved_claim')?.passed, false);
});

test('v3 accepts explicit clarification requests without a question mark and preserves earlier scoring', () => {
  const rubric: IntentRubric = { actions: ['clarify'], decision: 'clarify', question_patterns: ['Component'] };
  const answer = { outcome: 'partial', answer: '请说明目标 Component。', missing_evidence: ['Component 未指定'] };
  const check = (version: number, text = answer.answer) => gradeIntentCase(rubric, undefined, [], { ...answer, answer: text }, source, 1, version)
    .find(c => c.name === 'intent_clarification_question')?.passed;
  assert.equal(check(2), false); assert.equal(check(3), true);
  assert.equal(check(3, '已找到 Component。'), false);
  assert.equal(check(3, '请告诉我变量名。'), false);
  assert.equal(check(3, '请补充目标 Component。'), false);
  assert.equal(check(4, '请补充目标 Component。'), true);
});

test('scope intent rejects unconstrained queries even when results happen to belong to the right owner', () => {
  const row: IntentRow = { tool: 'ascet_code_search', args: { query: 'x', in: { component: 'First', kind: 'method', variant: 'ASDL' } }, is_error: false,
    response: { status: 'ok', searches: [{ results: [{ ref: 'hit', component_path: 'Library\\First' }] }] } };
  const r: IntentRubric = { actions: ['search'], decision: 'execute', search_scope: { component: 'First', kind: 'method', variant: 'ASDL' } };
  assert.ok(gradeIntentCase(r, { ...intent, action: 'search' }, [row], {}, source).every(c => c.passed));
  const unscoped = { ...row, args: { query: 'x' } };
  assert.equal(gradeIntentCase(r, { ...intent, action: 'search' }, [unscoped], {}, source).find(c => c.name === 'intent_search_scope')?.passed, false);
});

test('context intent grades the current turn while retaining prior returned refs', () => {
  const r = { ...spec, last_turn_only: true, reuse_previous_ref: true };
  const rows = [read('Second', 1), read('First', 1), read('First', 2)];
  assert.ok(gradeIntentCase(r, intent, rows, {}, source).every(c => c.passed));
  const bad = gradeIntentCase(r, intent, [...rows.slice(0, 2), read('Second', 2)], {}, source);
  assert.equal(bad.find(c => c.name === 'intent_read_scope')?.passed, false);
  const undiscovered = [{ ...read('First', 2), args: { ref: 'invented-ref' } }];
  assert.equal(gradeIntentCase(r, intent, undiscovered, {}, source).find(c => c.name === 'intent_previous_ref_reused')?.passed, false);
});

test('intent terms and explicit constraints use set equality without admitting extra owners or duplicates', () => {
  const r: IntentRubric = { ...spec, terms: ['x', 'y'] };
  assert.ok(gradeIntentCase(r, { ...intent, terms: ['y', 'x'] }, [read()], {}, source).every(c => c.passed));
  assert.equal(gradeIntentCase(r, { ...intent, terms: ['x', 'x'] }, [read()], {}, source).find(c => c.name === 'intent_terms')?.passed, false);
  assert.equal(gradeIntentCase(r, { ...intent, terms: ['x', 'y'], scope: { ...intent.scope, components: ['First', 'Second'] } }, [read()], {}, source).find(c => c.name === 'intent_component_constraints')?.passed, false);
});

test('natural discovery may declare a search and lexical hints without changing explicit read-only intent rules', () => {
  const discovery: IntentRubric = { actions: ['locate'], decision: 'execute', terms: [], components: [], members: [] };
  const declared = { ...intent, action: 'search', terms: ['pressure', 'force'], scope: { components: [], members: [] } };
  assert.ok(gradeIntentCase(discovery, declared, [], {}, source).every(c => c.passed));
  assert.equal(gradeIntentCase(spec, { ...intent, action: 'search' }, [read()], {}, source).find(c => c.name === 'intent_action')?.passed, false);
  assert.equal(gradeIntentCase({ ...discovery, terms: ['AxTarLim'] }, { ...declared, terms: ['AxTarLim', 'AxTarLimK1'] }, [], {}, source).find(c => c.name === 'intent_terms')?.passed, false);
});

test('all 28 Chinese intent cases have hidden scoring and four real two-turn conversations', () => {
  const base = JSON.parse(readFileSync(join(ROOT, 'PI_AGENT_EVAL_CASES.json'), 'utf8'));
  const plan = createIntentPlan(base);
  const cases = normalizePiEvalCases({ ...plan, grading_cases: base.cases });
  assert.equal(cases.length, 28); assert.equal(new Set(cases.map(c => c.id)).size, 28);
  assert.equal(Object.keys(plan.group_names).length, 7);
  for (const group of Object.keys(plan.group_names)) assert.equal(cases.filter(c => c.group === group).length, 4);
  assert.equal(cases.filter(c => c.turns?.length === 2).length, 4);
  for (const c of cases) {
    assert.match(c.requirement, /[\u4e00-\u9fff]/u);
    assert.ok(c.intent && c.response_fields !== undefined);
    assert.ok(c.score_as || c.rubric || c.intent?.decision === 'clarify');
    assert.ok(!c.requirement.includes('s7-'), 'Actual session refs cannot be injected');
  }
  assert.equal(base.cases.length, 72, 'The core plan is preserved');
  assert.throws(() => normalizePiEvalCases({ ...plan, grading_cases: [] }), /Invalid grading alias/);
});

test('multi-turn prompts wait for stable settlement and keep the original process', () => {
  const sent: any[] = []; let closed = 0;
  const turns = new PiIntentTurns(['first natural prompt', 'follow-up using it'], command => sent.push(command), () => closed++);
  turns.start(); assert.equal(sent.length, 1); assert.equal(turns.turn, 1);
  // Low-level agent_end does not call settled; only agent_settled may advance.
  assert.equal(turns.settled('first unmodified answer', 'stop'), false);
  assert.equal(sent.length, 2); assert.equal(turns.turn, 2); assert.equal(closed, 0);
  assert.deepEqual(sent[1], { id: 'turn-2', type: 'prompt', message: 'follow-up using it' });
  assert.equal(turns.settled('second unmodified answer', 'stop'), true);
  assert.equal(closed, 1); assert.equal(turns.answers.length, 2);
  assert.equal(turns.settled('duplicate', 'stop'), true); assert.equal(closed, 1);
});

test('a model error ends a conversation without sending or fabricating later turns', () => {
  const sent: unknown[] = []; let closed = false;
  const turns = new PiIntentTurns(['first', 'second'], c => sent.push(c), () => { closed = true; });
  turns.start(); assert.equal(turns.settled('provider failure', 'error'), true);
  assert.equal(sent.length, 1); assert.equal(turns.answers.length, 1); assert.equal(closed, true);
});

test('pre-tool intent parsing preserves exact declarations and cannot recover a later declaration from prose', () => {
  const declaration = JSON.stringify({ intent });
  assert.deepEqual(parseIntentDeclaration(declaration), intent);
  assert.equal(parseIntentDeclaration('I will search.\n' + declaration), undefined);
  assert.equal(parseIntentDeclaration('{"intent":'), undefined);
  const checks = [{ name: 'intent_pre_tool_record', passed: false }, { name: 'intent_action', passed: true }];
  assert.equal(intentScoreParts(checks).recognition_passed, false);
});

test('intent reports retain independent recognition, selection and strict task denominators', () => {
  const cases = [{ execution_status: 'completed', scoring: { passed: false, intent_metrics: { recognition_passed: true, selection_passed: false, evidence_passed: true } } },
    { execution_status: 'model_service_failed', scoring: { passed: false, intent_metrics: { recognition_passed: true, selection_passed: true, evidence_passed: true } } }];
  const summary = summarizeIntentCases(cases, 28);
  assert.equal(summary.attempted, 2); assert.equal(summary.recognition_passed, 1); assert.equal(summary.selection_passed, 0); assert.equal(summary.evidence_passed, 1);
  assert.equal(summary.strict_passed, 0);
  assert.equal(summary.completed, 1); assert.equal(summary.planned, 28); assert.equal(summary.unattempted, 26);
  assert.equal(summary.coverage_complete, false);
});

test('same State inspection prepares a Static body read, but wrong owner or Entry body still fails', () => {
  const staticDoc = { ...doc('First'), kind: 'state_static', member_name: 'Main/Off' };
  const fixture = { ...source, documents: [staticDoc] };
  const r: IntentRubric = { actions: ['read'], decision: 'execute', read_scope: { component: 'First', kind: 'state_static', member: 'Main/Off', variant: 'ASDL' } };
  const state = { ...read(), response: { kind: 'state', state: 'Main/Off', component_path: 'Library\\First', variant: 'ASDL' } };
  const body = { ...read(), response: { ...read().response, kind: 'state_static', state: 'Main/Off', method: undefined } };
  const grade = (rows: IntentRow[]) => gradeIntentCase(r, intent, rows, {}, fixture).find(c => c.name === 'intent_read_scope')?.passed;
  assert.equal(grade([state, body]), true);
  assert.equal(grade([state]), false);
  assert.equal(grade([{ ...state, response: { ...state.response, component_path: 'Library\\Second' } }, body]), false);
  assert.equal(grade([state, { ...body, response: { ...body.response, kind: 'state_entry' } }]), false);
});

test('reassessment requires the selected intent plan as well as the original core plan', () => {
  const raw = '{"suite":"intent"}';
  const report = { status: 'recorded', cases: [], artifact_sha256: { 'PI_AGENT_INTENT_CASES.json': reportSHA(raw) } };
  assert.doesNotThrow(() => assertPlanProvenance(report, raw, 'PI_AGENT_INTENT_CASES.json'));
  assert.throws(() => assertPlanProvenance(report, raw), /Evaluation plan/);
  assert.throws(() => assertPlanProvenance(report, raw + ' ', 'PI_AGENT_INTENT_CASES.json'), /Evaluation plan/);
});
