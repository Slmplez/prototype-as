import assert from 'node:assert/strict';
import test from 'node:test';
import { readFileSync } from 'node:fs';
import { join } from 'node:path';
import { ROOT } from '../src/bridge.js';
import { AgentEvidence } from '../src/agent-evidence.js';
import type { Snapshot, SourceDocument } from '../src/types.js';
import { gradeMatrixCase, declaresSlotCodeFact, hasNativeObjectEvidence, hasNativeDiagramListing, hasReadStateIdentity, isIdentifierBatch, matrixFixture, requestedMatrixError, type MatrixCase, type MatrixRow } from '../scripts/pi-eval-matrix.js';
import { normalizePiEvalCases, corpusPiEvalCases } from '../scripts/pi-eval-plan.js';

const doc = (name: string, text: string): SourceDocument => ({ component_oid: 'component', component_path: 'Library\\Class', component_type: 'SGClass',
  kind: 'method', member_name: name, member_id: name, implementation_oid: '', variant: 'ASDL', language: 'esdl', text, document_id: name, source_sha256: name });
const source: Snapshot = { components: [{ oid: 'component', path: 'Library\\Class', type: 'SGClass' }], documents: [doc('calc', 'AxTarLim = AxTarLimK1;\n* comment\n'), doc('init', 'AxTarLim = 0;')], references: [], errors: [], coverage: {} };

test('v5 State source reads enforce only declared final facts while still requiring complete native text', () => {
  const d = { ...doc('calc', 'AxTarLim = 0;'), kind: 'state_static' };
  const fixture = { ...source, documents: [d] };
  const task: MatrixCase = { id: 'state', requirement: 'Read the complete saved state_static code. facts: identity,total_lines.',
    rubric: { type: 'read', scope: { component: 'Class', kind: 'state_static', member: 'calc', variant: 'ASDL' }, full: true } };
  const item = { ref: 'state', component_path: d.component_path, kind: d.kind, method: 'calc', variant: 'ASDL', code: d.text, line_count: 1 };
  const row: MatrixRow = { tool: 'ascet_code_read', args: { ref: item.ref }, response: { status: 'ok', ...item }, is_error: false };
  const facts = { identity: { component_path: d.component_path, kind: d.kind, member: 'calc', variant: 'ASDL', implementation: '' }, total_lines: 1 };
  const score = (t: MatrixCase, f: any, rs = [row], version = 5) => gradeMatrixCase(t, rs, f, fixture, ledger(rs), new Set([item.ref]), rs, version);
  assert.ok(score(task, facts).every(c => c.passed));
  assert.equal(score(task, facts, [row], 4).find(c => c.name === 'slot_code_facts')?.passed, false);
  assert.equal(score({ ...task, response_fields: 'identity,total_lines,code' }, facts).find(c => c.name === 'slot_code_facts')?.passed, false);
  assert.ok(score({ ...task, response_fields: 'identity,total_lines,code' }, { ...facts, code: d.text }).every(c => c.passed));
  const partial = { ...row, response: { ...row.response, code: 'AxTar', has_more: true } };
  assert.equal(score(task, facts, [partial]).find(c => c.name === 'complete_source_read')?.passed, false);
  assert.equal(declaresSlotCodeFact({ id: 'legacy' }, 5), true);
  assert.equal(declaresSlotCodeFact({ id: 'explicit', requirement: 'Return facts.code from the saved source.' }, 5), true);
});

test('selected line facts clamp to actual saved lines while legacy requested facts remain unchanged', () => {
  const empty = { ...source, documents: [doc('calc', '')] };
  const task: MatrixCase = { id: 'empty-range', rubric: { type: 'read', scope: { component: 'Class', member: 'calc', kind: 'method', variant: 'ASDL' }, lines: { start: 1, end: 2 }, line_facts: 'selected' } };
  const item = { ref: 's1:d1', component_path: 'Library\\Class', kind: 'method', method: 'calc', variant: 'ASDL', code: '', line_count: 1 };
  const rows: MatrixRow[] = [{ tool: 'ascet_code_read', args: { ref: item.ref, lines: { start: 1, end: 2 } }, response: { status: 'ok', ...item }, is_error: false }];
  const ledger = new AgentEvidence();
  const facts = { identity: { component_path: item.component_path, kind: 'method', member: 'calc', variant: 'ASDL', implementation: '' }, total_lines: 1, start_line: 1, end_line: 1 };
  const grade = (t: MatrixCase, end: number) => gradeMatrixCase(t, rows, { ...facts, end_line: end }, empty, ledger, new Set([item.ref]), rows, 4).find(c => c.name === 'line_range_facts')!.passed;
  assert.equal(grade(task, 1), true); assert.equal(grade(task, 2), false);
  const legacy = { ...task, rubric: { ...task.rubric!, line_facts: 'requested' as const } };
  assert.equal(grade(legacy, 1), false); assert.equal(grade(legacy, 2), true);
});

test('equivalent State rediscovery accepts only the same native owner, Diagram and hierarchy', () => {
  const owner = { component_path: 'Library/Owner', diagram_oid: 'oid' };
  const endpoint = { ref: 's1:d1', state_id: 3, state_hierarchy_ids: [1] };
  const read = { ref: 's2:d8', kind: 'state', state_id: 3, state_hierarchy_ids: [1], ...owner };
  assert.equal(hasReadStateIdentity([read], endpoint, owner), true);
  for (const wrong of [{ component_path: 'Library/Other' }, { diagram_oid: 'other' }, { state_id: 4 }, { state_hierarchy_ids: [] }])
    assert.equal(hasReadStateIdentity([{ ...read, ...wrong }], endpoint, owner), false);
});

test('full Diagram listing evidence must match native bytes and owner, not just mention a symbol', () => {
  const graph: any = { component_oid: 'component', source_oid: 'graph-oid' };
  const d: SourceDocument = { ...doc('Init', 'n4 literal: 0.0\nn6 element: Timer\np5 -> p7'), kind: 'diagram',
    graphical_location: { specification_name: 'Init', specification_source_oid: 'graph-oid' } as any };
  const fixture = { ...source, documents: [d] };
  const value = { component_path: d.component_path, diagram_oid: 'graph-oid', diagram_text: d.text };
  assert.equal(hasNativeDiagramListing([value], fixture, graph), true);
  for (const wrong of [{ component_path: 'Other' }, { diagram_oid: 'Other' }, { diagram_text: 'Timer = 0;' }, { has_more: true }])
    assert.equal(hasNativeDiagramListing([{ ...value, ...wrong }], fixture, graph), false);
});

test('v3 Getter discovery accepts the owning Diagram member list but rejects unrelated lists', () => {
  const g: any = { component_oid: 'component', source_oid: 'oid', name: 'Main', methods: [{ name: 'AEBdFxTar', kind: 'method' }, { name: 'calc', kind: 'method' }], nodes: [], pins: [], connections: [], boundaries: [] };
  const fixture = { ...source, diagrams: [g] };
  const row: MatrixRow = { tool: 'ascet_code_find', args: { target: 'diagrams' }, is_error: false,
    response: { status: 'ok', results: [{ ref: 's1:d1', diagram: 'Main', diagram_oid: 'oid', component_path: 'Library\\Class', diagram_methods: g.methods }] } };
  const task: MatrixCase = { id: 'getter', rubric: { type: 'diagram', profile: 'getter', scope: { component: 'Class' }, diagram: 'Main' } };
  const check = (r: MatrixRow, version: number) => gradeMatrixCase(task, [r], {}, fixture, ledger([r]), new Set(), [r], version)
    .find(c => c.name === 'graphical_getter_discovery')?.passed;
  assert.equal(check(row, 2), false); assert.equal(check(row, 3), true);
  for (const wrong of [{ component_path: 'Library\\Other' }, { diagram_oid: 'other' }, { diagram_methods: [{ name: 'other' }] }]) {
    const r = structuredClone(row); Object.assign(r.response.results[0], wrong); assert.equal(check(r, 3), false);
  }
});

test('v4 accepts separate complete Component catalogs only when every requested owner was covered', () => {
  const fixture = { ...source, components: ['First','Second','Other'].map(oid => ({ oid, path: 'Library\\' + oid, type: 'SGClass' })),
    documents: [{ ...doc('calc','x=0;'), component_oid: 'First', component_path: 'Library\\First' }] };
  const task: MatrixCase = { id: 'two', rubric: { type: 'catalog', name: 'calc', match: 'exact', scope: { component: ['First','Second'] } } };
  const result = { ref: 's1:d1', component_path: 'Library\\First', kind: 'method', method: 'calc', variant: 'ASDL' };
  const rows: MatrixRow[] = ['First','Second'].map(oid => ({ tool: 'ascet_code_find', args: { target: 'members', name: 'calc', match: 'exact', in: { component: oid } },
    is_error: false, response: { status: 'ok', has_more: false, results: oid === 'First' ? [result] : [] } }));
  const facts = { total_count: 1, results: [{ component_path: 'Library\\First',kind:'method',member:'calc',variant:'ASDL',implementation:'' }] };
  const grade = (inputs: MatrixRow[], version = 4) => gradeMatrixCase(task, inputs, facts, fixture, ledger(inputs), new Set(['s1:d1']), inputs, version);
  assert.ok(grade(rows).every(c => c.passed));
  assert.equal(grade(rows,3).find(c=>c.name==='native_directory_complete')?.passed,false);
  for (const inputs of [rows.slice(0,1), [rows[0],{...rows[1],args:{...rows[1].args,in:{component:'Other'}}}],
    [rows[0],{...rows[1],response:{...rows[1].response,has_more:true,next_cursor:'unused'}}],
    rows.map(row=>({...row,args:{target:'members',name:'calc',match:'exact'}}))])
    assert.equal(grade(inputs).find(c=>c.name==='native_directory_complete')?.passed,false);
});
const searchTask: MatrixCase = { id: 'test', rubric: { type: 'search', scope: { component: 'Class', kind: 'method' }, queries: [{ text: 'AxTarLim', mode: 'identifier' }] } };
test('batch acceptance permits equivalent public input forms but rejects changed predicates and failed calls', () => {
  const response = { searches: [{ query: 'a', mode: 'identifier' }, { query: 'b', mode: 'identifier' }] };
  const row = (args: any): MatrixRow => ({ tool: 'ascet_code_search', args, response, is_error: false });
  assert.equal(isIdentifierBatch(row({ query: ['a', 'b'], mode: 'identifier' }), ['a', 'b']), true);
  assert.equal(isIdentifierBatch(row({ query: [{ text: 'a', mode: 'identifier' }, { text: 'b', mode: 'identifier' }] }), ['a', 'b']), true);
  assert.equal(isIdentifierBatch(row({ query: [{ text: 'a' }, { text: 'b' }], mode: 'identifier' }), ['b', 'a']), true);
  assert.equal(isIdentifierBatch({ ...row({ query: ['a', 'b'] }), is_error: true }, ['a', 'b']), false);
  assert.equal(isIdentifierBatch({ ...row({ query: ['a', 'b'] }), response: { searches: [{ query: 'a', mode: 'text' }, { query: 'b', mode: 'identifier' }] } }, ['a', 'b']), false);
  assert.equal(isIdentifierBatch(row({ query: ['a', 'b'] }), ['a', 'a']), false);
});
function searchRow(args: any, total = 2, extra: any = {}): MatrixRow {
  return { tool: 'ascet_code_search', args, is_error: false, response: { status: 'ok', total_hits: total, has_more: false, next_cursor: null,
    searches: [{ query: 'AxTarLim', mode: 'identifier', total_hits: total, results: [{ ref: 'hit', component_path: 'Library\\Class', kind: 'method', variant: 'ASDL', method: 'calc' }] }], ...extra } };
}
function ledger(rows: MatrixRow[]) {
  const e = new AgentEvidence();
  for (const row of rows) e.record({ ...row.args, operation: row.tool.slice('ascet_code_'.length) }, row.response);
  return e;
}
function grade(task: MatrixCase, rows: MatrixRow[], facts: any, cited = ['hit']) {
  return gradeMatrixCase(task, rows, facts, source, ledger(rows), new Set(cited));
}
test('native oracle distinguishes substrings, complete identifiers and literal asterisks', () => {
  assert.deepEqual(matrixFixture(source, { type: 'search', queries: [{ text: 'AxTarLim' }] }), [{ query: 'AxTarLim', total_hits: 3 }]);
  assert.deepEqual(matrixFixture(source, searchTask.rubric!), [{ query: 'AxTarLim', total_hits: 2 }]);
  assert.deepEqual(matrixFixture(source, { type: 'search', queries: [{ text: '*' }] }), [{ query: '*', total_hits: 1 }]);
});
test('correct counts without the required Component scope cannot pass', () => {
  const row = searchRow({ query: 'AxTarLim', mode: 'identifier', in: { component: 'component', kind: 'method' } });
  const facts = { counts: [{ total_hits: 2, query: 'AxTarLim' }] };
  assert.ok(grade(searchTask, [row], facts).every(c => c.passed), 'Object key order is irrelevant');
  const unscoped = { ...row, args: { query: 'AxTarLim', mode: 'identifier', in: { kind: 'method' } } };
  assert.equal(grade(searchTask, [unscoped], facts).find(c => c.name === 'required_search_and_scope')?.passed, false);
  assert.equal(grade(searchTask, [row], { counts: [{ query: 'AxTarLim', total_hits: 3 }] }).find(c => c.name === 'search_count_facts')?.passed, false);
});
test('an unrelated or missing evidence citation cannot pass a positive search', () => {
  const row = searchRow({ query: 'AxTarLim', mode: 'identifier', in: { component: 'component', kind: 'method' } });
  assert.equal(grade(searchTask, [row], { counts: [{ query: 'AxTarLim', total_hits: 2 }] }, ['unrelated']).find(c => c.name === 'relevant_search_citation')?.passed, false);
});

test('multiple known member refs selecting the same owner form one OR scope, while extra and unknown owners fail', () => {
  const found: MatrixRow = { tool: 'ascet_code_find', args: { component: 'Class' }, is_error: false,
    response: { status: 'ok', has_more: false, results: ['calc', 'init'].map(method => ({ ref: method + '-ref',
      component_path: 'Library\\Class', kind: 'method', variant: 'ASDL', method })) } };
  const facts = { counts: [{ query: 'AxTarLim', total_hits: 2 }] };
  const run = (component: string[]) => grade(searchTask, [found,
    searchRow({ query: 'AxTarLim', mode: 'identifier', in: { component, kind: 'method' } })], facts);
  assert.ok(run(['calc-ref', 'init-ref']).every(c => c.passed));
  assert.equal(run(['calc-ref', 'unknown']).find(c => c.name === 'required_search_and_scope')?.passed, false);
  const extra = structuredClone(found);
  extra.response.results.push({ ...extra.response.results[0], ref: 'other-ref', component_path: 'Library\\Other' });
  const wrong = searchRow({ query: 'AxTarLim', mode: 'identifier', in: { component: ['calc-ref', 'other-ref'], kind: 'method' } });
  assert.equal(grade(searchTask, [extra, wrong], facts).find(c => c.name === 'required_search_and_scope')?.passed, false);
});
test('a cursor described but not consumed cannot satisfy paging; replay must be byte-equivalent data', () => {
  const task = { ...searchTask, rubric: { ...searchTask.rubric!, pagination: 'replay' as const } };
  const first = searchRow({ query: 'AxTarLim', mode: 'identifier', limit: 1, in: { component: 'component', kind: 'method' } }, 2, { has_more: true, next_cursor: 'page' });
  const next = searchRow({ cursor: 'page' });
  const facts = { counts: [{ query: 'AxTarLim', total_hits: 2 }] };
  assert.equal(grade(task, [first], facts).find(c => c.name === 'correct_cursor_consumed')?.passed, false);
  assert.equal(grade(task, [first, next, structuredClone(next)], facts).find(c => c.name === 'immutable_cursor_replay')?.passed, true);
  const changed = searchRow({ cursor: 'page' }, 3);
  assert.equal(grade(task, [first, next, changed], facts).find(c => c.name === 'immutable_cursor_replay')?.passed, false);
});
test('an equivalent completed replacement contradicts a claim of an intentionally incomplete search', () => {
  const task = { ...searchTask, rubric: { ...searchTask.rubric!, pagination: 'incomplete' as const } };
  const first = searchRow({ query: 'AxTarLim', mode: 'identifier', limit: 1, in: { component: 'component', kind: 'method' } }, 2, { has_more: true, next_cursor: 'page' });
  const complete = searchRow({ query: 'AxTarLim', mode: 'identifier', limit: 20, in: { component: 'component', kind: 'method' } });
  const facts = { counts: [{ query: 'AxTarLim', total_hits: 2 }], complete: false, has_more: true };
  assert.equal(grade(task, [first], facts).find(c => c.name === 'truncation_facts')?.passed, true);
  assert.equal(grade(task, [first, complete], facts).find(c => c.name === 'truncation_facts')?.passed, false);
});
test('a source snippet or a bounded line read cannot satisfy a complete Method read', () => {
  const task: MatrixCase = { id: 'read', rubric: { type: 'read', scope: { component: 'Class', kind: 'method', member: 'calc', variant: 'ASDL' }, full: true } };
  const find: MatrixRow = { tool: 'ascet_code_find', args: { component: 'Class' }, is_error: false, response: { status: 'ok', has_more: false, results: [{ ref: 'hit', component_path: 'Library\\Class', kind: 'method', variant: 'ASDL', method: 'calc' }] } };
  const read: MatrixRow = { tool: 'ascet_code_read', args: { ref: 'hit' }, is_error: false, response: { status: 'ok', ref: 'hit', component_path: 'Library\\Class', kind: 'method', variant: 'ASDL', method: 'calc', code: source.documents[0].text } };
  const facts = { identity: { component_path: 'Library\\Class', kind: 'method', member: 'calc', variant: 'ASDL', implementation: '' }, total_lines: 3 };
  assert.ok(grade(task, [find, read], facts).every(c => c.passed));
  assert.equal(grade(task, [find], facts).find(c => c.name === 'complete_source_read')?.passed, false);
  assert.equal(grade(task, [find, { ...read, args: { ref: 'hit', lines: { start: 1, end: 1 } } }], facts).find(c => c.name === 'complete_source_read')?.passed, false);
});
test('saved graph field matching excludes invented listing metadata', () => {
  const d = doc('Main', 'n4 literal: 0.0'); d.kind = 'diagram'; d.search_spans = [{ start: 12, end: 15 }];
  const graphical = { ...source, documents: [d] };
  assert.deepEqual(matrixFixture(graphical, { type: 'search', queries: [{ text: 'literal' }, { text: '0.0' }] }), [{ query: 'literal', total_hits: 0 }, { query: '0.0', total_hits: 1 }]);
});
test('unsupported capability answers are graded independently of matching graph names', () => {
  const task: MatrixCase = { id: 'unsupported', rubric: { type: 'unsupported', flags: { interpolation_supported: false } } };
  assert.ok(grade(task, [], { interpolation_supported: false }, []).every(c => c.passed));
  assert.equal(grade(task, [], { interpolation_supported: true }, [])[0].passed, false);
});
test('the delivered 72-case plan has nine groups of eight and no ungraded added case', () => {
  const plan = JSON.parse(readFileSync(join(ROOT, 'PI_AGENT_EVAL_CASES.json'), 'utf8'));
  assert.equal(plan.cases.length, 72); assert.equal(new Set(plan.cases.map((c: any) => c.id)).size, 72);
  for (const group of Object.keys(plan.group_names).filter(g => g !== 'corpus')) assert.equal(plan.cases.filter((c: any) => (c.group ?? plan.case_groups[c.id]) === group).length, 8, group);
  for (const c of normalizePiEvalCases(plan)) assert.ok(c.rubric || Object.hasOwn(plan.case_groups, c.score_as ?? c.id), c.id);
  assert.equal(plan.cases.filter((c: any) => c.rubric).length, 48);
});
test('grading aliases cannot form recursive or missing chains', () => {
  assert.throws(() => normalizePiEvalCases({ cases: [{ id: 'bad', score_as: 'missing' }] }), /Invalid grading alias/);
  assert.throws(() => normalizePiEvalCases({ cases: [{ id: 'a', score_as: 'b' }, { id: 'b', score_as: 'a' }] }), /Invalid grading alias/);
});
test('corpus expansion emits separate empty and object cases with exact native placement identities', () => {
  const g = { component_oid: 'component', source_oid: 'main', name: 'Main', methods: [], comments: [], scopes: [], nodes: [{ scope: 'root', id: 7, name: '1.0', kind: 'literal' }], pins: [], connections: [], boundaries: [], sequences: [], issues: [] };
  const s = { ...source, diagrams: [g, { ...g, source_oid: 'empty', name: 'Empty', nodes: [] }] };
  const generated = corpusPiEvalCases(s);
  assert.equal(generated.length, 2); assert.equal(new Set(generated.map(c => c.id)).size, 2);
  assert.equal(generated.find(c => c.rubric?.type === 'local')?.rubric?.node_id, 7);
  assert.equal(generated.find(c => c.rubric?.profile === 'empty')?.rubric?.diagram_oid, 'empty');
  for (const c of generated) assert.ok(matrixFixture(s, c.rubric!));
});
test('identical object labels cannot substitute a different native placement in a corpus read', () => {
  const g = { component_oid: 'component', source_oid: 'main', name: 'Main', methods: [], comments: [], scopes: [],
    nodes: [{ scope: 'root', id: 7, name: '1.0', kind: 'literal' }, { scope: 'root', id: 8, name: '1.0', kind: 'literal' }], pins: [], connections: [], boundaries: [], sequences: [], issues: [] };
  const s = { ...source, diagrams: [g] }, task = corpusPiEvalCases(s)[0];
  const found: MatrixRow = { tool: 'ascet_code_find', args: { target: 'objects' }, is_error: false, response: { status: 'ok', results: [{ ref: 'hit', component_path: 'Library\\Class', component_type: 'SGClass', node_id: 7, name: '1.0', kind: 'literal', diagram_oid: 'main' }] } };
  const local: MatrixRow = { tool: 'ascet_code_read', args: { ref: 'hit', depth: 1 }, is_error: false, response: { status: 'ok', ref: 'hit', component_path: 'Library\\Class', diagram_oid: 'main', depth: 1, direction: 'both', object: { ref: 'hit', kind: 'literal', name: '1.0' }, nodes: [{ ref: 'hit', kind: 'literal', name: '1.0' }], pins: [], connections: [] } };
  const facts = { name: '1.0', kind: 'literal', hierarchy: 'root', pin_ids: [], connections: [] };
  assert.ok(gradeMatrixCase(task, [found, local], facts, s, ledger([found, local]), new Set(['hit'])).every(c => c.passed));
  const wrong = structuredClone(found); wrong.response.results[0].node_id = 8;
  assert.equal(gradeMatrixCase(task, [wrong, local], facts, s, ledger([wrong, local]), new Set(['hit'])).find(c => c.name === 'local_depth_direction')?.passed, false);
});
test('requested failure classification does not hide unrelated errors in recovery tasks', () => {
  const row: MatrixRow = { tool: 'ascet_code_search', args: { query: '[', mode: 'regex' }, is_error: true, response: { status: 'error', code: 'INVALID_REGEX' } };
  const r = { type: 'recovery' as const, profile: 'invalid_regex' as const };
  assert.equal(requestedMatrixError(r, row, []), true);
  assert.equal(requestedMatrixError(r, { ...row, args: { query: 'valid', mode: 'identifier' } }, []), false);
  assert.equal(requestedMatrixError(r, { ...row, response: { status: 'error', code: 'BRIDGE_TIMEOUT' } }, []), false);
  assert.equal(requestedMatrixError(r, { ...row, tool: 'ascet_code_find' }, []), false);
  assert.equal(requestedMatrixError(undefined, row, []), false);
});
test('cross-tool cursor schema errors are classified without dereferencing a missing error row', () => {
  const rubric = { type: 'recovery' as const, profile: 'wrong_cursor_tool' as const };
  const first: MatrixRow = { tool: 'ascet_code_search', args: { query: 'x', limit: 1 }, is_error: false,
    response: { status: 'ok', next_cursor: 'p-1', has_more: true } };
  const malformed: MatrixRow = { tool: 'ascet_code_find', args: { target: 'objects', cursor: 'p-1' }, is_error: true,
    response: { status: 'error', code: 'PI_TOOL_ERROR', message: 'Validation failed: cursor cannot be combined with target' } };
  const recovered: MatrixRow = { tool: 'ascet_code_search', args: { cursor: 'p-1' }, is_error: false,
    response: { status: 'ok', has_more: false, next_cursor: null } };
  assert.equal(requestedMatrixError(rubric, malformed, [first]), true);
  assert.equal(requestedMatrixError(rubric, malformed, []), false);
  assert.ok(gradeMatrixCase({ id: 'cursor', rubric }, [first, malformed, recovered], { error_observed: true, recovered: true }, source,
    ledger([first, malformed, recovered]), new Set(), [first, malformed, recovered]).every(c => c.passed));
});
test('directory completeness follows only its own cursor chain and ignores immutable replays', () => {
  const second = { oid: 'other', path: 'Library\\Other', type: 'SGClass' }, s = { ...source, components: [...source.components, second] };
  const task: MatrixCase = { id: 'directory', rubric: { type: 'catalog', target: 'components', name: 'Library', match: 'contains', pagination: 'consume' } };
  const items = s.components.map((c, i) => ({ ref: 'component-' + i, component_path: c.path, component_type: c.type }));
  const first: MatrixRow = { tool: 'ascet_code_find', args: { target: 'components', name: 'Library', match: 'contains', limit: 1 }, is_error: false,
    response: { status: 'ok', has_more: true, next_cursor: 'own-page', results: [items[0]] } };
  const unrelated: MatrixRow = { tool: 'ascet_code_find', args: { cursor: 'unrelated-page' }, is_error: false,
    response: { status: 'ok', has_more: false, next_cursor: null, results: [items[1]] } };
  const facts = { total_count: 2, results: items };
  const check = (rows: MatrixRow[]) => gradeMatrixCase(task, rows, facts, s, ledger(rows), new Set(['component-1']));
  assert.equal(check([first, unrelated]).find(c => c.name === 'native_directory_complete')?.passed, false);
  const next = { ...unrelated, args: { cursor: 'own-page' } };
  assert.ok(check([first, next, structuredClone(next)]).every(c => c.passed));
});
test('a citation from an unrelated search continuation cannot satisfy a scoped query', () => {
  const first = searchRow({ query: 'AxTarLim', mode: 'identifier', in: { component: 'component', kind: 'method' } });
  const unrelated = searchRow({ cursor: 'unrelated-page' }); unrelated.response.searches[0].results[0].ref = 'other-hit';
  assert.equal(grade(searchTask, [first, unrelated], { counts: [{ query: 'AxTarLim', total_hits: 2 }] }, ['other-hit']).find(c => c.name === 'relevant_search_citation')?.passed, false);
});
test('a full read of one Method cannot substantiate the identity of another saved Method', () => {
  const task: MatrixCase = { id: 'read', rubric: { type: 'read', scope: { component: 'Class', kind: 'method' }, full: true } };
  const found: MatrixRow = { tool: 'ascet_code_find', args: {}, is_error: false, response: { status: 'ok', has_more: false,
    results: [{ ref: 'hit', component_path: 'Library\\Class', kind: 'method', variant: 'ASDL', method: 'calc' }] } };
  const read: MatrixRow = { tool: 'ascet_code_read', args: { ref: 'hit' }, is_error: false,
    response: { status: 'ok', ref: 'hit', component_path: 'Library\\Class', kind: 'method', variant: 'ASDL', method: 'calc', code: source.documents[0].text } };
  const facts = { identity: { component_path: 'Library\\Class', kind: 'method', member: 'init', variant: 'ASDL', implementation: '' }, total_lines: 1 };
  const checks = grade(task, [found, read], facts);
  assert.equal(checks.find(c => c.name === 'member_identity_facts')?.passed, false);
  assert.equal(checks.find(c => c.name === 'complete_source_read')?.passed, false);
});
test('encoded-array recovery must read the originally requested refs in their original order', () => {
  const task: MatrixCase = { id: 'recovery', rubric: { type: 'recovery', profile: 'encoded_refs', scope: { component: 'Class', kind: 'method' } } };
  const bad: MatrixRow = { tool: 'ascet_code_read', args: { ref: '["calc-ref","init-ref"]' }, is_error: true,
    response: { status: 'error', code: 'INVALID_REQUEST' } };
  const items = source.documents.map((d, i) => ({ ref: i ? 'init-ref' : 'calc-ref', component_path: d.component_path, kind: d.kind, method: d.member_name, variant: d.variant, code: d.text }));
  const reversed: MatrixRow = { tool: 'ascet_code_read', args: { ref: ['init-ref', 'calc-ref'] }, is_error: false,
    response: { status: 'ok', results: [...items].reverse() } };
  const facts = { error_observed: true, recovered: true };
  assert.equal(grade(task, [bad, reversed], facts).find(c => c.name === 'actual_array_recovery')?.passed, false);
  const corrected = { ...reversed, args: { ref: ['calc-ref', 'init-ref'] }, response: { status: 'ok', results: items } };
  assert.ok(grade(task, [bad, corrected], facts).every(c => c.passed));
  const sdkBad = { ...bad, response: { status: 'error', code: 'PI_TOOL_ERROR', message: 'Validation failed for tool "ascet_code_read":\n  - ref: must be array' } };
  assert.ok(grade(task, [sdkBad, corrected], facts).every(c => c.passed));
  assert.equal(requestedMatrixError(task.rubric, sdkBad, []), true);
  assert.equal(requestedMatrixError(task.rubric, sdkBad, [sdkBad]), false);
  assert.equal(requestedMatrixError(task.rubric, { ...sdkBad, response: { status: 'error', code: 'PI_TOOL_ERROR', message: 'Bridge connection failed' } }, []), false);
  assert.equal(requestedMatrixError(task.rubric, { ...sdkBad, args: { ref: 'not JSON' } }, []), false);
  assert.equal(grade(task, [sdkBad, reversed], facts).find(c => c.name === 'actual_array_recovery')?.passed, false);
});
test('complete native graph and local object reads provide equivalent target-Pin evidence', () => {
  const g = { component_oid: 'component', source_oid: 'init', name: 'Init', methods: [], comments: [], scopes: [],
    nodes: [{ scope: 'root', id: 6, name: 'AEBLockTime', kind: 'element' }],
    pins: [{ scope: 'root', id: 7, node_id: 6, name: 'set/aValue', input: true, output: false }], connections: [], boundaries: [], sequences: [], issues: [] };
  assert.equal(hasNativeObjectEvidence([{ diagram_oid: 'init', graph: g }], g, 'AEBLockTime'), true);
  assert.equal(hasNativeObjectEvidence([{ diagram_oid: 'init', ref: 'object', object: { name: 'AEBLockTime', kind: 'element' }, pins: [{ id: 7, object_ref: 'object' }] }], g, 'AEBLockTime'), true);
  assert.equal(hasNativeObjectEvidence([{ diagram_oid: 'other', graph: g }], g, 'AEBLockTime'), false);
  assert.equal(hasNativeObjectEvidence([{ diagram_oid: 'init', graph: { ...g, pins: [] } }], g, 'AEBLockTime'), false);
});
test('single-value arrays and scalar filters select the same exact search scope', () => {
  const row = searchRow({ query: 'AxTarLim', mode: 'identifier', in: { component: ['component'], kind: ['method'] } });
  assert.ok(grade(searchTask, [row], { counts: [{ query: 'AxTarLim', total_hits: 2 }] }).every(c => c.passed));
  const broader = { ...row, args: { ...row.args, in: { ...row.args.in, kind: ['method', 'header'] } } };
  assert.equal(grade(searchTask, [broader], { counts: [{ query: 'AxTarLim', total_hits: 2 }] }).find(c => c.name === 'kind_filter_used')?.passed, false);
});

test('catalog accepts exact in.member queries without treating them as contains queries', () => {
  const task: MatrixCase = { id: 'exact', rubric: { type: 'catalog', target: 'members', name: 'calc', match: 'exact', scope: { component: 'Class', kind: 'method', variant: 'ASDL' } } };
  const item = { ref: 'hit', component_path: 'Library\\Class', kind: 'method', method: 'calc', variant: 'ASDL' };
  const row: MatrixRow = { tool: 'ascet_code_find', args: { in: { component: 'component', member: 'calc', kind: 'method', variant: 'ASDL' } },
    is_error: false, response: { status: 'ok', has_more: false, results: [item] } };
  const facts = { total_count: 1, results: [item] };
  assert.ok(grade(task, [row], facts).every(c => c.passed));
  assert.equal(grade({ ...task, rubric: { ...task.rubric!, match: 'contains' } }, [row], facts).find(c => c.name === 'required_directory')?.passed, false);
  assert.equal(grade(task, [{ ...row, args: { in: { ...row.args.in, member: ['calc', 'init'] } } }], facts).find(c => c.name === 'required_directory')?.passed, false);
});

test('whole Diagram refs establish owner scope but unrelated owners cannot pass native discovery', () => {
  const g = { component_oid: 'component', source_oid: 'main', name: 'Main', methods: [], comments: [], scopes: [],
    nodes: [{ scope: 'root', id: 6, name: '0.0', kind: 'literal' }], pins: [], connections: [], boundaries: [], sequences: [], issues: [] };
  const native = { ...source, diagrams: [g], components: [...source.components, { oid: 'other', path: 'Library\\Other', type: 'SGClass' }] };
  const task: MatrixCase = { id: 'diagram-scope', rubric: { type: 'catalog', target: 'objects', scope: { component: 'Class' }, diagram: 'Main', object_kind: 'literal' } };
  const discovered: MatrixRow = { tool: 'ascet_code_find', args: { target: 'diagrams' }, is_error: false,
    response: { status: 'ok', results: [{ ref: 'diagram', component_path: 'Library\\Class', kind: 'diagram', variant: 'BD' }] } };
  const item = { ref: 'hit', component_path: 'Library\\Class', diagram: 'Main', name: '0.0', kind: 'literal', node_id: 6, hierarchy: 'root' };
  const row: MatrixRow = { tool: 'ascet_code_find', args: { target: 'objects', in: { diagram: 'diagram', object_kind: 'literal' } },
    is_error: false, response: { status: 'ok', has_more: false, results: [item] } };
  const facts = { total_count: 1, results: [item] };
  const check = (rows: MatrixRow[]) => gradeMatrixCase(task, rows, facts, native, ledger(rows), new Set(['hit']));
  assert.ok(check([discovered, row]).every(c => c.passed));
  const wrongOwner = { ...discovered, response: { status: 'ok', results: [{ ref: 'diagram', component_path: 'Library\\Other', kind: 'diagram', variant: 'BD' }] } };
  assert.equal(check([wrongOwner, row]).find(c => c.name === 'required_directory')?.passed, false);
  assert.equal(check([row]).find(c => c.name === 'required_directory')?.passed, false);
});
test('additional count metadata does not change correct required values or ordering', () => {
  const row = searchRow({ query: 'AxTarLim', mode: 'identifier', in: { component: 'component', kind: 'method' } });
  assert.ok(grade(searchTask, [row], { counts: [{ query: 'AxTarLim', total_hits: 2, mode: 'identifier' }] }).every(c => c.passed));
  assert.equal(grade(searchTask, [row], { counts: [{ query: 'AxTarLim', total_hits: 3, mode: 'identifier' }] }).find(c => c.name === 'search_count_facts')?.passed, false);
});
test('explicit case-sensitivity requirements are enforced while unspecified choices are allowed', () => {
  const row = searchRow({ query: 'AxTarLim', mode: 'identifier', case_sensitive: true, in: { component: 'component', kind: 'method' } });
  row.response.searches[0].case_sensitive = true;
  assert.ok(grade(searchTask, [row], { counts: [{ query: 'AxTarLim', total_hits: 2 }] }).every(c => c.passed));
  const explicit = { ...searchTask, rubric: { ...searchTask.rubric!, case_sensitive: false } };
  assert.equal(grade(explicit, [row], { counts: [{ query: 'AxTarLim', total_hits: 2 }] }).find(c => c.name === 'required_search_and_scope')?.passed, false);
});
test('re-reading a complete local neighborhood does not multiply native connections', () => {
  const g = { component_oid: 'component', source_oid: 'main', name: 'Main', methods: [], comments: [], scopes: [],
    nodes: [{ scope: 'root', id: 7, name: '1.0', kind: 'literal' }, { scope: 'root', id: 8, name: 'target', kind: 'element' }],
    pins: [{ scope: 'root', id: 11, node_id: 7, name: 'get', input: false, output: true }, { scope: 'root', id: 12, node_id: 8, name: 'set', input: true, output: false }],
    connections: [{ scope: 'root', id: 5, from_pin: 11, to_pin: 12, type: '2' }], boundaries: [], sequences: [], issues: [] };
  const s = { ...source, diagrams: [g] };
  const task: MatrixCase = { id: 'local-repeat', rubric: { type: 'local', scope: { component: 'Class' }, diagram_oid: 'main', node: '1.0', node_id: 7, depth: 1, direction: 'both' } };
  const found: MatrixRow = { tool: 'ascet_code_find', args: {}, is_error: false, response: { status: 'ok', results: [{ ref: 'hit', node_id: 7, diagram_oid: 'main' }] } };
  const local: MatrixRow = { tool: 'ascet_code_read', args: { ref: 'hit', depth: 1 }, is_error: false, response: { status: 'ok', ref: 'hit', component_path: 'Library\\Class', diagram_oid: 'main',
    object: { name: '1.0', kind: 'literal' }, depth: 1, direction: 'both', nodes: [], pins: [{ id: 11, object_ref: 'hit' }], connections: [{ from: { pin_id: 11 }, to: { pin_id: 12 } }] } };
  const facts = { name: '1.0', kind: 'literal', hierarchy: 'root', pin_ids: [11], connections: [{ from_pin_id: 11, to_pin_id: 12 }] };
  const rows = [found, local, structuredClone(local)];
  assert.ok(gradeMatrixCase(task, rows, facts, s, ledger(rows), new Set(['hit'])).every(c => c.passed));
});

test('complete Diagram visibility coverage accepts omitted filters and separately paged Public/Private catalogs', () => {
  const diagrams = ['public', 'private'].map((visibility, i) => ({ component_oid: 'component', source_oid: 'g' + i, name: 'D' + i,
    visibility, methods: [], comments: [], scopes: [], nodes: [], pins: [], connections: [], boundaries: [], sequences: [], issues: [] }));
  const s: any = { ...source, diagrams };
  const task: MatrixCase = { id: 'visibility', rubric: { type: 'catalog', target: 'diagrams', scope: { component: 'Class', visibility: ['public', 'private'] } } };
  const items = diagrams.map((d, i) => ({ ref: 'g' + i, component_path: 'Library\\Class', diagram: d.name, visibility: d.visibility }));
  const row = (results: any[], visibility?: string): MatrixRow => ({ tool: 'ascet_code_find', args: { target: 'diagrams', in: { component: 'component', ...(visibility ? { visibility } : {}) } }, is_error: false,
    response: { status: 'ok', has_more: false, results } });
  const facts = { total_count: 2, results: items };
  const grade = (rows: MatrixRow[]) => gradeMatrixCase(task, rows, facts, s, ledger(rows), new Set(items.map(v => v.ref)));
  assert.ok(grade([row(items)]).every(c => c.passed));
  assert.ok(grade([row([items[0]], 'public'), row([items[1]], 'private')]).every(c => c.passed));
  assert.equal(grade([row([items[0]], 'public')]).find(c => c.name === 'native_directory_complete')?.passed, false);
  assert.equal(grade([{ ...row(items), response: { status: 'partial', has_more: false, results: items } }]).find(c => c.name === 'native_directory_complete')?.passed, false);
});
