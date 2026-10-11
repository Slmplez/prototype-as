import assert from 'node:assert/strict';
import { execFile, spawn } from 'node:child_process';
import { promisify } from 'node:util';
import { createWriteStream } from 'node:fs';
import { appendFile, mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { pathToFileURL } from 'node:url';
import { performance } from 'node:perf_hooks';
import { StringDecoder } from 'node:string_decoder';
import { Bridge, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { AgentEvidence } from '../src/agent-evidence.js';
import { validateAgentAnswer } from '../src/agent-answer.js';
import { agentToolRequest, type AgentToolName } from '../src/agent-tools.js';
import type { Snapshot, SourceDocument } from '../src/types.js';
import { fingerprint } from './oracle.js';
import { gradeMatrixCase, hasNativeObjectEvidence, hasNativeDiagramListing, hasReadStateIdentity, isIdentifierBatch, matrixFixture, requestedMatrixError } from './pi-eval-matrix.js';
import { normalizePiEvalCases, corpusPiEvalCases } from './pi-eval-plan.js';
import { runPiProcess } from './pi-eval-process.js';
import { optimizationMetrics } from './pi-eval-metrics.js';
import { createHash } from 'node:crypto';
import { assertPlanProvenance, gradingFingerprint, reportSHA, scoreSafely } from './pi-eval-score-provenance.js';
import { gradeIntentCase, intentRecognitionChecks, intentScoreParts, parseIntentDeclaration, summarizeIntentCases } from './pi-intent-eval.js';
import { PiIntentTurns } from './pi-intent-turns.js';
import { getToolContracts, type ToolProfile } from '../src/tool-contracts.js';
import { canonicalTaskRequest, isTaskTool, TASK_OPERATIONS } from '../src/task-tools.js';
import { labelCallAccuracy, summarizeCallAccuracy } from './pi-call-accuracy.js';
import { primaryCheck, scoreDimensions, validatePiEvalContract } from './pi-eval-contract.js';
import { namedStateObjects, assertFrozenSourceErrors } from './pi-eval-source-context.js';
import { retainAgentInstance, verifyRunningAgentInstance } from './agent-instance-retention.js';
import { splitPiEvalAnswer, acceptedTaskSettlements, piEvalAnswerFormat } from './pi-eval-answer.js';

type Row = { tool: AgentToolName; args: any; request: Record<string, unknown>; response: any; is_error: boolean;
  ms: number; details: any; model_bytes: number; structured_bytes: number; expected_error?: boolean; turn?: number };
const runFile = promisify(execFile);
const directory = resolve(process.argv[2] ?? join(ROOT, 'experiments/pi-agent-eval', new Date().toISOString().replace(/[:.]/g, '-')));
const selected = process.argv[3]?.split(',');
const planFile = process.env.ASCET_PI_PLAN_FILE ?? (process.env.ASCET_PI_SUITE === 'intent' ? 'PI_AGENT_INTENT_CASES.json' : 'PI_AGENT_EVAL_CASES.json');
assert.ok(/^[A-Z0-9_]+\.json$/.test(planFile), 'Use a local named evaluation plan');
assert.ok(!process.env.ASCET_PI_SUITE || ['intent', 'core'].includes(process.env.ASCET_PI_SUITE));
const planRaw = await readFile(join(ROOT, planFile), 'utf8');
const plan = JSON.parse(planRaw);
assert.deepEqual(validatePiEvalContract(plan), [], 'Evaluation plan and rubric must agree before model calls');
const gradingVersion = Number(process.env.ASCET_PI_GRADING_VERSION ?? plan.grading_version ?? 1);
assert.ok([1, 2, 3, 4, 5, 6].includes(gradingVersion));
const basePlanRaw = planFile !== 'PI_AGENT_EVAL_CASES.json' ? await readFile(join(ROOT, 'PI_AGENT_EVAL_CASES.json'), 'utf8') : undefined;
if (basePlanRaw) plan.grading_cases = JSON.parse(basePlanRaw).cases;
const groups = process.env.ASCET_PI_GROUPS?.split(','), repetitions = Number(process.env.ASCET_PI_REPEAT ?? 1);
assert.ok(Number.isInteger(repetitions) && repetitions >= 1 && repetitions <= 5);
let allCases = normalizePiEvalCases(plan);
const select = () => allCases.filter(c => (!selected || selected.includes(c.id)) && (!groups || groups.includes(c.group!)));
let cases = select();
const includeCorpus = Object.hasOwn(plan.group_names, 'corpus') && (!groups || groups.includes('corpus'));
assert.ok(!groups || groups.every(g => Object.hasOwn(plan.group_names, g)));
assert.ok(!selected || selected.every(id => allCases.some(c => c.id === id) || id.startsWith('corpus-')));
assert.ok(cases.length || includeCorpus);
const rounds = () => Array.from({ length: repetitions }, (_, i) => cases.map(task => ({ ...task, repetition: i + 1 }))).flat();
let executions = rounds();
const piEntry = resolve(process.env.ASCET_PI_CLI ?? join(process.env.APPDATA!, 'npm/node_modules/@earendil-works/pi-coding-agent/dist/bundle/cli.js'));
const extension = resolve(process.env.ASCET_PI_EXTENSION ?? join(ROOT, 'dist/src/pi-extension.js'));
const guarded = process.env.ASCET_PI_EVAL_GUARDS === '1';
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: '32631', ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0',
  ASCET_PI_VALIDATE_FINAL: guarded ? '1' : '0', ASCET_PI_REQUIRE_INTENT: guarded ? '1' : '0' };
let profile = (process.env.ASCET_PI_TOOL_PROFILE ?? 'baseline') as ToolProfile;
assert.ok(['baseline', 'optimized', 'task'].includes(profile));
let toolNames = getToolContracts(profile).map(c => c.name);
await mkdir(directory, { recursive: true });
const cwd = join(directory, 'agent-cwd'); await mkdir(cwd, { recursive: true });
const report: any = { status: 'running', suite: plan.suite ?? 'core', plan_file: planFile, grading_version: gradingVersion, intent_recording: plan.intent_recording ?? 'pre_tool', started_utc: new Date().toISOString(), directory, pi_entry: piEntry,
  extension, cases: [], selected_cases: cases.map((c: any) => c.id), selected_groups: groups ?? Object.keys(plan.group_names), repetitions, first_attempt_only: !guarded,
  guarded_completion: guarded, raw_assistant_messages_retained: true,
  boundary: 'Actual global Pi CLI and configured LLM. Fresh conversation per case and repetition; only the selected ASCET tool profile. No source oracle, filesystem, shell, skills or project context given to model. Native fixture/evidence checks do not prove every prose sentence correct. Intent annotation is auxiliary in grading v2; task acceptance uses observed behavior, evidence and answer contract.' };
const save = () => writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
let before: Snapshot | undefined, setup: any;
const values = (response: any): any[] => response?.results ?? [response];
const reads = (rows: Row[]) => rows.filter(r => r.tool === 'ascet_code_read' && !r.is_error).flatMap(r => values(r.response));
const normal = (text: string) => text.replaceAll('\r\n', '\n').replaceAll('\r', '\n');
const statement = (s: string) => s.replace(/\s+/g, '');
const sameSet = (a: any, b: any) => Array.isArray(a) && Array.isArray(b) && JSON.stringify([...a].sort()) === JSON.stringify([...b].sort());

function score(id: string, result: any, source: Snapshot) {
  const task = allCases.find((c: any) => c.id === id);
  assert.ok(task, 'Missing task specification for ' + id);
  id = task.score_as ?? id;
  const checks: { name: string; passed: boolean; detail?: string }[] = [];
  const check = (name: string, condition: unknown, detail?: string) => checks.push({ name, passed: Boolean(condition), ...(detail ? { detail } : {}) });
  const allRows: Row[] = result.calls.map((row: Row) => isTaskTool(row.tool) ? {
    ...row, tool: ('ascet_code_' + TASK_OPERATIONS[row.tool]) as AgentToolName,
    args: Object.fromEntries(Object.entries(row.request).filter(([key]) => key !== 'operation')),
  } : row);
  const lastTurn = result.turn_answers?.at(-1)?.turn ?? Math.max(1, ...allRows.map(row => row.turn ?? 1));
  const rows = task.intent?.last_turn_only ? allRows.filter(row => (row.turn ?? 1) === lastTurn) : allRows;
  const seen = reads(rows);
  const evaluationTime = result.started_utc ? Date.parse(result.started_utc) : Date.now();
  const ledger = new AgentEvidence(() => evaluationTime); for (const row of allRows) ledger.record(row.request, row.response);
  let parsed: any, strictJSON = true;
  try { parsed = JSON.parse(result.final_text); } catch {
    strictJSON = false;
    const fenced = result.final_text?.match(/^\s*```(?:json)?\s*\n([\s\S]*?)\n```\s*$/);
    if (fenced) try { parsed = JSON.parse(fenced[1]); } catch { /* Scored below. */ }
  }
  const requirements = ['saved-method', 'class-init', 'referenced-class', 'multiline-regex'].includes(id)
    ? { complete_text_read: true, ...(id === 'multiline-regex' ? { multiline_regex_match: true } : {}) } : {};
  const { facts: f, intent, base } = splitPiEvalAnswer(parsed, profile, Boolean(task.intent));
  const validation = validateAgentAnswer(JSON.stringify(base), ledger, requirements);
  check('pi_completed', result.exit_code === 0 && result.settled && result.stop_reason === 'stop' && !result.timeout && !result.budget_exceeded);
  if (guarded && profile === 'task') check('production_final_validation', acceptedTaskSettlements(result.final_guard_events ?? [], task.turns?.length ?? 1));
  check('answer_and_refs', validation.valid, validation.errors.join('; '));
  check('strict_json_format', strictJSON && parsed);
  check('required_outcome', base.outcome === (task.expected_outcome ?? (id === 'no-match' ? 'not_found' : id === 'unsupported-runtime' ? 'unsupported' : 'located')));
  check('facts_object', parsed?.facts && typeof parsed.facts === 'object' && !Array.isArray(parsed.facts));
  check('only_delivered_tools', result.calls.every((r: Row) => toolNames.includes(r.tool)));
  check('result_budgets', allRows.every(r => r.model_bytes <= 32768 && r.structured_bytes <= 32768));
  const full = seen.filter(r => typeof r.code === 'string' && !r.code_range && r.has_more !== true);
  const complete = (owner: string, method: string) => full.find(r => r.component_path?.endsWith('\\' + owner) && r.method === method);
  const component = (name: string) => source.components.find(c => c.path.split('\\').at(-1) === name) ?? source.components.find(c => c.path.split('\\').at(-1)?.startsWith(name + '_'))!;
  const diagram = (owner: string, name?: string) => source.diagrams!.find(d => d.component_oid === component(owner).oid && (!name || d.name === name))!;
  const stm = namedStateObjects(source, 'AEB_State_Machine');
  const identityID = (identity: string) => Number(identity.split('/').at(-1)?.slice(1));
  const saved = (r: any): SourceDocument | undefined => source.documents.find(d => d.component_path === r.component_path && d.kind === r.kind &&
    d.variant === r.variant && d.implementation_oid === (r.implementation ?? '') &&
    d.member_name === (r.method ?? r.process ?? r.state ?? r.transition ?? '') && (!r.diagram_oid || d.location?.diagram_source_oid === r.diagram_oid));
  for (const r of reads(allRows).filter(r => typeof r.code === 'string')) {
    const d = saved(r);
    const range = r.code_range, lines = d && normal(d.text).split('\n');
    const offset = (line: number, column: number) => lines!.slice(0, line - 1).reduce((n, s) => n + s.length + 1, 0) + [...lines![line - 1]].slice(0, column - 1).join('').length;
    const expected = d && (range ? normal(d.text).slice(offset(range.start_line, range.start_column), offset(range.end_line, range.end_column)) : normal(d.text));
    check('native_source_' + r.ref, d && normal(r.code) === expected);
  }
  if (id === 'saved-method') {
    const r = complete('AEB_AxCtrlConfigFF_Modify', 'calc_pre');
    check('correct_member_read', r);
    check('class_and_variant', f.component_type === 'SGClass' && f.variant === 'ASDL');
    const expected = [['active_assignments', ['VxActMody = VxAct;', 'AxTarMody = AxTarRaw;']],
      ['inactive_assignments', ['VxActMody = 0;', 'AxTarMody = 0;']],
      ['difference_assignments', ['AEB_AXCAxLimDiff = AxTarRaw - AxTarLim;', 'AxTarLimDiff = AxTarLimK1 - AxTarLim;']]] as const;
    for (const [key, list] of expected) check(key, sameSet(f[key]?.map(statement), list.map(statement)));
  } else if (id === 'class-init') {
    const nativeInit = source.documents.find(d => d.component_oid === component('DBR_Force2Pressure').oid && d.kind === 'method' && d.variant === 'ASDL' && d.member_name.toLowerCase() === 'init');
    check('class_init_read', nativeInit && complete('DBR_Force2Pressure', nativeInit.member_name));
    check('class_text_facts', f.component_type === 'SGClass' && f.representation === 'saved_text' && f.variant === 'ASDL');
    check('saved_assignment', f.assignments?.some((s: string) => statement(s) === 'pressure=0;'));
  } else if (id === 'bde-init') {
    const d = diagram('AEB_State_Machine', 'Init');
    const node = d.nodes.find(n => n.name === 'AEBLockTime')!;
    const edge = d.connections.find(c => d.pins.some(p => p.node_id === node.id && p.id === c.to_pin))!;
    check('object_read', hasNativeObjectEvidence(seen, d, 'AEBLockTime') && seen.some(r => r.diagram === 'Init' && (r.connections?.length || r.graph?.connections?.length || r.diagram_text?.includes('p5 -> p7'))) ||
      gradingVersion >= 3 && hasNativeDiagramListing(seen, source, d));
    check('graph_not_stored_code', f.representation === 'bde' && f.directly_stored_assignment === false);
    check('init_connection', f.variable === node.name && f.value === 0 && f.source_pin === d.pins.find(p => p.id === edge.from_pin)?.name && f.target_pin === d.pins.find(p => p.id === edge.to_pin)?.name);
  } else if (id === 'bde-neighbor') {
    const d = diagram('AEB_dFxTar', 'Main'), n = d.nodes.find(n => n.name === 'C_AEB_AXCDeadZonePos')!;
    const edge = d.connections.find(e => d.pins.some(p => p.node_id === n.id && p.id === e.from_pin))!;
    const targetPin = d.pins.find(p => p.id === edge.to_pin)!, target = d.nodes.find(n => n.id === targetPin.node_id)!;
    check('owner_object_read', seen.some(r => r.object?.name === n.name));
    check('destination_complete_pins', rows.some(r => r.args.depth === 0 && values(r.response).some(v => v.object?.name === target.name && sameSet(v.pins?.map((p: any) => p.id), d.pins.filter(p => p.node_id === target.id && p.scope === target.scope).map(p => p.id)))));
    check('saved_edge_facts', f.from_pin === d.pins.find(p => p.id === edge.from_pin)?.name && f.to_pin === targetPin.name && f.target_name === target.name && f.referenced_component_path === target.component_path);
  } else if (id === 'state-relations' || id === 'junction') {
    const o = id === 'state-relations' ? stm.find(o => o.name === 'Main/AEB_State_Off') : stm.find(o => o.state_kind === 'junction' && identityID(o.identity) === f.state_id);
    check('native_state_available', o);
    if (o) {
      const incoming = stm.filter(t => t.kind === 'transition' && t.end === o.identity).map(t => identityID(t.identity));
      const outgoing = stm.filter(t => t.kind === 'transition' && t.start === o.identity).map(t => identityID(t.identity));
      const r = seen.find(r => r.kind === 'state' && r.state_id === identityID(o.identity));
      check('relations_read', r && r.has_more === false);
      check('saved_relations', f.state_id === identityID(o.identity) && sameSet(f.incoming_transition_ids, incoming) && sameSet(f.outgoing_transition_ids, outgoing));
      if (id === 'junction') check('junction_type', f.native_type === o.native_type && f.state_kind === 'junction');
      else {
        check('initial_history', f.initial === o.initial && f.history === o.history);
        check('all_action_slots_read', r && r.code_slots.every((slot: any) => seen.some(v => v.ref === slot.ref)));
        check('action_kinds', r && sameSet(f.action_kinds, r.code_slots.map((s: any) => s.kind)));
      }
    }
  } else if (id === 'transition-binding') {
    const r = seen.find(r => r.kind === 'transition' && r.transition_id === 20);
    const o = stm.find(o => o.kind === 'transition' && identityID(o.identity) === 20);
    const start = stm.find(s => s.identity === o?.start), end = stm.find(s => s.identity === o?.end);
    check('transition_read', r);
    check('endpoints_and_binding_read', r && (gradingVersion >= 3
      ? [r.start_state, r.end_state].every(v => hasReadStateIdentity(seen, v, r)) && r.code_slots.every((v: any) => seen.some(s => s.ref === v?.ref))
      : [r.start_state, r.end_state, ...r.code_slots].every(v => seen.some(s => s.ref === v?.ref))));
    check('saved_endpoint_facts', start && end && f.start_kind === start.state_kind && f.start_id === identityID(start.identity) && f.end_kind === end.state_kind && f.end_id === identityID(end.identity) && f.priority === o?.priority);
    const slot = source.documents.find(d => d.component_oid === component('AEB_State_Machine').oid && d.location?.element_id === 20 && d.kind === 'transition_trigger_binding');
    check('binding_not_body', f.binding_method === slot?.binding?.method_name && f.binding_is_body === false);
  } else if (id === 'private-diagram') {
    check('actual_private_diagram', source.diagrams!.some(d => d.name === f.diagram && d.visibility === 'private') && f.diagram === 'SearchToolsPrivateAcceptance' && f.visibility === 'private');
    check('bounded_diagram_read', rows.some(r => r.args.lines?.end <= 12 && values(r.response).some(v => v.diagram === f.diagram && typeof v.diagram_text === 'string')));
    check('public_exclusion', rows.some(r => r.tool === 'ascet_code_find' && r.args.match === 'exact' && r.args.in?.visibility === 'public' && (r.args.name ?? r.args.diagram) === f.diagram && r.response.status === 'ok' && r.response.total_count === 0 && !r.response.has_more) && f.public_total_count === 0);
    check('private_literal', f.private_literal === 987654.125);
  } else if (id === 'hierarchy-boundary') {
    const graphs = source.diagrams!.filter(d => source.components.some(c => c.oid === d.component_oid && c.path.includes('Trial_Hierarchy')));
    check('native_type_discovery', rows.some(r => r.tool === 'ascet_code_find' && r.args.target === 'objects' && r.args.in?.object_kind === 'hierarchy'));
    check('actual_boundary_facts', graphs.some(d => d.boundaries.some(b => b.node_id === f.parent_node_id && b.pin_id === f.parent_pin_id && b.child_node_id === f.child_node_id && b.child_pin_id === f.child_pin_id && b.scope === f.parent_scope && b.child_scope === f.child_scope)));
    const boundaries = seen.flatMap(r => r.boundaries ?? []);
    check('boundary_endpoints_read', boundaries.some(b => [b.outer?.ref, b.inner?.ref].every(ref => ref && seen.some(r => r.ref === ref))));
  } else if (id === 'control-pins') {
    const d = diagram('AEB_AxCtrlFxLim');
    const n = d.nodes.find(n => n.id === f.node_id && n.kind === 'control');
    check('native_control_discovery', rows.some(r => r.args.target === 'objects' && r.args.in?.object_kind === 'control'));
    check('control_pins_facts', n && f.object_kind === 'control' && sameSet(f.pin_ids, d.pins.filter(p => p.node_id === n.id && p.scope === n.scope).map(p => p.id)));
    check('actual_incoming_edge', n && d.connections.some(e => e.from_pin === f.incoming_from_pin_id && e.to_pin === f.incoming_to_pin_id && d.pins.some(p => p.id === e.to_pin && p.node_id === n.id)));
    check('local_read', n && seen.some(r => r.object?.name === n.name && r.object?.kind === 'control' && r.connections?.length));
  } else if (id === 'referenced-class') {
    const names = ['AxCtrlLimGradAxMin', 'AxCtrlLimGradAxMax'];
    const expected = names.map(name => ({ name, referenced_component_path: source.diagrams!.flatMap(d => d.nodes).find(n => n.name === name)?.component_path }));
    check('placement_targets', Array.isArray(f.placements) && expected.every(e => f.placements.some((p: any) => p.name === e.name && p.referenced_component_path === e.referenced_component_path)));
    check('placement_read_and_connection', names.every(name => seen.some(r => r.object?.name === name)) && seen.some(r => names.includes(r.object?.name) && r.connections?.length));
    check('referenced_implementation_read', expected.some(e => f.implementation_component_path === e.referenced_component_path) && f.implementation_method === 'calc' && full.some(r => r.component_path === f.implementation_component_path && r.method === 'calc'));
  } else if (id === 'multiline-regex') {
    check('actual_multiline_match', ledger.hasMultilineRegexMatch);
    const ranges = rows.filter(r => r.tool === 'ascet_code_search').flatMap(r => r.response.searches ?? []).flatMap(s => s.results).flatMap(r => r.snippets ?? []).flatMap(s => s.matches ?? []).flatMap(m => m.ranges ?? []);
    check('match_range_facts', f.match_end_line > f.match_start_line && ranges.some(r => r.start_line === f.match_start_line && r.end_line === f.match_end_line));
    const r = complete('AEB_AxCtrlConfigFF_Modify', 'calc_pre');
    check('exact_member_identity', r && f.component_path === r.component_path && f.method === r.method && f.variant === r.variant);
  } else if (id === 'batch-pagination') {
    const queries = ['AxTarRaw', 'VxAct', 'AxTarLim'];
    const first = rows.find(r => r.tool === 'ascet_code_search' && isIdentifierBatch(r, queries) && r.args.limit === 1);
    check('scoped_small_batch', first?.args.in?.component);
    check('cursor_consumed', first && rows.some(r => r.tool === first.tool && r.args.cursor === first.response.next_cursor && Object.keys(r.args).length === 1));
    check('batch_completed', first && ledger.hasCompleteSearch(first.request) && f.pagination_complete === true);
    const docs = source.documents.filter(d => d.component_oid === component('AEB_AxCtrlConfigFF_Modify').oid);
    const counts = Object.fromEntries(queries.map(q => [q, docs.reduce((sum, d) => sum + [...d.text.matchAll(new RegExp('(?<![A-Za-z_0-9])' + q + '(?![A-Za-z_0-9])', 'gi'))].length, 0)]));
    check('independent_exact_counts', f.array_semantics === 'independent' && queries.every(q => f.counts?.[q] === counts[q]), JSON.stringify(counts));
    check('batch_full_reads', rows.some(r => r.tool === 'ascet_code_read' && Array.isArray(r.args.ref) && r.args.ref.length >= 2 && values(r.response).filter(v => typeof v.code === 'string' && !v.code_range && !v.has_more).length >= 2));
  } else if (id === 'bounded-header') {
    const r = seen.find(r => r.kind === 'header' && typeof r.code === 'string' && r.line_count > 12);
    check('bounded_header_read', r && rows.some(row => row.args.lines?.start === 1 && row.args.lines?.end === 12 && values(row.response).includes(r)));
    check('header_identity_and_range', r && f.component_path === r.component_path && f.kind === 'header' && f.variant === r.variant && f.start_line === 1 && f.end_line === 12 && f.total_lines === r.line_count);
    check('no_full_header_reads', !seen.some(v => v.kind === 'header' && !v.code_range));
  } else if (id === 'no-match') {
    check('actual_complete_absence', base.outcome === 'not_found' && ledger.hasCompleteZeroResult && f.total_hits === 0 && f.complete === true && rows.some(r => r.args.query === '__ASCET_PI_EVAL_ABSENT_20261004_9d36__' && r.response.status === 'ok' && !r.response.has_more && r.response.total_hits === 0));
  } else if (id === 'unsupported-runtime') {
    check('unsupported_runtime_boundary', ['unsupported', 'partial'].includes(base.outcome) && f.runtime_value_supported === false && f.live_schedule_supported === false && base.missing_evidence?.length >= 1);
  } else if (task.rubric) checks.push(...gradeMatrixCase(task, rows, f, source, ledger, new Set(base.evidence_refs ?? []), allRows, gradingVersion));
  else if (task.intent?.decision === 'clarify') {
    check('clarification_without_fabricated_facts', f && typeof f === 'object' && !Array.isArray(f));
    if (task.intent_fixture) {
      const variants = (matrixFixture(source, task.intent_fixture) as SourceDocument[]).filter(d => d.language === 'c').map(d => d.variant);
      const returned = rows.filter(row => !row.is_error && row.tool === 'ascet_code_find').flatMap(row => values(row.response));
      check('native_c_variant_candidates', variants.length > 1 && sameSet(f.variants, variants));
      check('variant_candidates_discovered', variants.every(variant => returned.some(v => v.variant === variant && v.method === 'Even' && v.component_path?.endsWith('\\EvenValue') && base.evidence_refs?.includes(v.ref))));
    }
  } else check('registered_case_rubric', false);
  if ((task as any).call_expectations?.no_tools) check('explicit_no_tools', allRows.length === 0);
  if ((task as any).call_expectations?.batch_members) check('exact_batch_members', rows.some(r => r.tool === 'ascet_code_read' &&
    Array.isArray(r.args.ref) && JSON.stringify(values(r.response).map(v => v.method)) === JSON.stringify((task as any).call_expectations.batch_members)));
  if (task.intent) {
    const observation = plan.intent_recording === 'final_only' ? { intent } : result.intent_observations?.find((entry: any) => entry.turn === lastTurn);
    if (plan.intent_recording !== 'final_only') check('intent_pre_tool_record', observation?.pre_tool === true);
    checks.push(...gradeIntentCase(task.intent, observation?.intent, allRows, parsed, source, lastTurn, gradingVersion));
    // Final resolved metadata may contain discoveries; it cannot replace the early declaration.
    check('final_intent_schema', gradeIntentCase(task.intent, intent, allRows, parsed, source, lastTurn, gradingVersion)
      .find(c => c.name === 'intent_schema')?.passed);
    if (task.turns) check('all_conversation_turns_completed', result.turn_answers?.length === task.turns.length && result.turn_answers.every((a: any) => a.stop_reason === 'stop'));
  }
  const primary = gradingVersion >= 2 ? checks.filter(primaryCheck) : checks;
  return { passed: primary.every(c => c.passed),
    semantic_passed: primary.filter(c => c.name !== 'strict_json_format').every(c => c.passed),
    ...(gradingVersion >= 2 ? { dimensions: scoreDimensions(checks) } : {}),
    ...(task.intent ? { intent_metrics: intentScoreParts(checks) } : {}),
    checks, parsed_answer: parsed, answer_validation: validation };
}

function executionStatus(result: any): string {
  if (!result.model && result.exit_code !== 0 && result.calls.length === 0) return 'startup_failed';
  return result.stop_reason === 'error' ? 'model_service_failed' : result.timeout ? 'timeout' : result.budget_exceeded ? 'budget_exceeded' : result.settled && result.stop_reason === 'stop' ? 'completed' : 'interrupted';
}

async function runCase(task: any) {
  const runID = repetitions > 1 ? task.id + '-r' + task.repetition : task.id;
  const callBudget = task.max_tool_calls ?? plan.max_tool_calls, timeout = task.timeout_ms ?? plan.timeout_ms;
  const start = performance.now(), calls: Row[] = [], pending = new Map<string, { event: any; time: number }>();
  const stream = createWriteStream(join(directory, runID + '.events.jsonl'));
  const diagnostics = createWriteStream(join(directory, runID + '.stderr.log'));
  const result: any = { id: task.id, execution_id: runID, group: task.group, repetition: task.repetition, requirement: task.requirement, started_utc: new Date().toISOString(), calls, raw_assistant_messages: [], final_guard_events: [], settled: false, timeout: false, budget_exceeded: false, usage: { input: 0, output: 0, cache_read: 0, cost: 0 }, protocol_errors: [] };
  const intentFormat = ' Also include intent: {action: locate/search/read/connections/compare/clarify/unsupported, decision: execute/clarify/unsupported, terms: string[], scope: {components: string[], members: string[]}, clarification_fields: string[]}. terms are positive requested search symbols/fragments, not excluded terms. scope records user constraints, including constraints resolved from prior turns; do not add a discovered owner the user never constrained. Empty lists are allowed. clarification_fields uses symbol/component/variant/hierarchy when those are missing. Choose action for the current user goal, not every intermediate tool.';
  const taskAnswerFormat = piEvalAnswerFormat(plan.answer_format, profile, guarded, Boolean(task.intent), intentFormat);
  const intentProtocol = task.intent ? '\nBefore your first tool call in EACH user turn, emit an assistant text block containing exactly one JSON object with ONLY this intent field: {"intent":{"action":"...","decision":"...","terms":[],"scope":{"components":[],"members":[]},"clarification_fields":[]}}. This declaration is separate from the final answer and must be emitted before tools. The final JSON must also include the intent field.' : '';
  const prompt = (turn: { requirement: string; response_fields?: string }) => turn.requirement + '\nFinish within ' + callBudget + ' total tool calls for this conversation. ' + taskAnswerFormat + intentProtocol +
    (turn.response_fields ? '\nResponse schema only (not reference answers): facts: ' + turn.response_fields : '');
  const multiTurn = Array.isArray(task.turns) && task.turns.length > 1;
  const child = spawn(process.execPath, [piEntry, '--no-extensions', '--no-skills', '--no-prompt-templates', '--no-themes',
    '--no-context-files', '--offline', '--no-session', '--mode', multiTurn ? 'rpc' : 'json', ...(multiTurn ? [] : ['--print']), '--tools', toolNames.join(','),
    ...(process.env.ASCET_PI_PROVIDER ? ['--provider', process.env.ASCET_PI_PROVIDER] : []),
    ...(process.env.ASCET_PI_MODEL ? ['--model', process.env.ASCET_PI_MODEL] : []),
    '--extension', extension, '--append-system-prompt', 'Use only the delivered ASCET tools. No reference answers are available. ' + taskAnswerFormat + intentProtocol,
    ...(multiTurn ? [] : ['--', prompt(task)])], { cwd, env, windowsHide: true });
  const conversation = multiTurn ? new PiIntentTurns(task.turns.map(prompt), command => {
    result.settled = false;
    result.final_text = ''; result.stop_reason = undefined;
    child.stdin.write(JSON.stringify(command) + '\n');
  }, () => child.stdin.end()) : undefined;
  child.stdin.on('error', error => { result.stdin_error = String(error); });
  if (!multiTurn) child.stdin.end();
  const stop = () => {
    if (process.platform === 'win32' && child.pid) void runFile('taskkill', ['/PID', String(child.pid), '/T', '/F'], { windowsHide: true, timeout: 15000 }).catch(error => { result.termination_error = String(error); child.kill(); });
    else child.kill('SIGTERM');
  };
  const timer = setTimeout(() => { result.timeout = true; stop(); }, timeout);
  const decoder = new StringDecoder('utf8'); let buffer = '', emittedCalls = 0;
  const startedToolTurns = new Set<number>();
  if (task.intent) result.intent_observations = [];
  const parse = (line: string) => {
    if (!line.trim()) return;
    let e: any; try { e = JSON.parse(line); } catch { result.protocol_errors.push(line.slice(0, 160)); return; }
    if (e.type === 'tool_execution_start') {
      startedToolTurns.add(conversation?.turn ?? 1);
      pending.set(e.toolCallId, { event: e, time: performance.now() });
      if (++emittedCalls > callBudget) { result.budget_exceeded = true; stop(); }
    } else if (e.type === 'tool_execution_end') {
      const p = pending.get(e.toolCallId); pending.delete(e.toolCallId);
      const modelText = e.result?.content?.filter((c: any) => c.type === 'text').map((c: any) => c.text).join('\n') ?? '';
      const response = e.result?.structuredContent ?? (e.isError ? { status: 'error', code: 'PI_TOOL_ERROR', message: modelText.slice(0, 1000) } : undefined);
      const args = p?.event.args ?? {};
      let request: Record<string, unknown>;
      try { request = isTaskTool(e.toolName) && !e.isError ? canonicalTaskRequest(e.toolName, args, response?.applied_scope) : agentToolRequest(e.toolName, args); }
      catch { request = { ...args, operation: e.toolName.slice('ascet_code_'.length), invalid_input: true }; }
      const row: Row = { tool: e.toolName, args, request, response, ...(conversation ? { turn: conversation.turn } : {}),
        is_error: e.isError, ms: performance.now() - (p?.time ?? start), details: e.result?.details ?? {},
        model_bytes: Buffer.byteLength(modelText), structured_bytes: Buffer.byteLength(JSON.stringify(response ?? null)) };
      calls.push(row);
      console.log(JSON.stringify({ event: 'tool_result', case: task.id, tool: row.tool, status: response?.status, ...(row.is_error ? { code: response?.code } : {}), ms: Math.round(row.ms), call: calls.length }));
    } else if (e.type === 'message_end' && e.message.role === 'assistant') {
      const m = e.message;
      result.model = { provider: m.provider, model: m.model }; result.stop_reason = m.stopReason; result.model_error = m.errorMessage;
      result.final_text = m.content.filter((c: any) => c.type === 'text').map((c: any) => c.text).join('\n');
      const turn = conversation?.turn ?? 1;
      result.raw_assistant_messages.push({ turn, text: result.final_text, stop_reason: m.stopReason });
      if (task.intent && !startedToolTurns.has(turn) && !result.intent_observations.some((entry: any) => entry.turn === turn)) {
        result.intent_observations.push({ turn, pre_tool: true, raw_text: result.final_text, intent: parseIntentDeclaration(result.final_text) ?? null });
      }
      result.usage.input += m.usage?.input ?? 0; result.usage.output += m.usage?.output ?? 0;
      result.usage.cache_read += m.usage?.cacheRead ?? 0; result.usage.cost += m.usage?.cost?.total ?? 0;
    } else if (e.type === 'entry_appended' && e.entry?.customType === 'ascet_answer_validation') {
      result.final_guard_events.push({ turn: conversation?.turn ?? 1, entry: e.entry });
    } else if (e.type === 'agent_settled') {
      const text = result.final_text, reason = result.stop_reason;
      result.settled = conversation ? conversation.settled(text, reason) : true;
    } else if (e.type === 'response' && e.command === 'prompt' && (!e.success || e.data?.disposition === 'handled')) {
      result.protocol_errors.push('RPC prompt not started: ' + JSON.stringify(e)); stop();
    }
  };
  child.stdout.on('data', chunk => {
    stream.write(chunk); buffer += decoder.write(chunk);
    let at; while ((at = buffer.indexOf('\n')) !== -1) { const line = buffer.slice(0, at).replace(/\r$/, ''); buffer = buffer.slice(at + 1); parse(line); }
  });
  child.stderr.on('data', chunk => diagnostics.write(chunk));
  conversation?.start();
  try { result.exit_code = await new Promise<number | null>((accept, reject) => { child.once('error', reject); child.once('close', accept); }); }
  finally {
    clearTimeout(timer); buffer += decoder.end(); if (buffer) parse(buffer);
    await Promise.all([new Promise<void>(a => stream.end(a)), new Promise<void>(a => diagnostics.end(a))]);
  }
  result.total_ms = performance.now() - start;
  result.incomplete_calls = [...pending.keys()];
  if (conversation) result.turn_answers = conversation.answers;
  calls.forEach((row, i) => { row.expected_error = requestedMatrixError(task.rubric, row, calls.slice(0, i)); });
  result.execution_status = executionStatus(result);
  result.call_accuracy = labelCallAccuracy(task, calls, before!);
  result.scoring = scoreSafely(() => score(task.id, result, before!));
  await writeFile(join(directory, runID + '.json'), JSON.stringify(result, null, 2) + '\n');
  for (const row of calls) await appendFile(join(directory, 'requests.jsonl'), JSON.stringify({ task: runID, ...row }) + '\n');
  console.log(JSON.stringify({ event: 'case_end', case: task.id, passed: result.scoring.passed, calls: calls.length, ms: Math.round(result.total_ms), failed_checks: result.scoring.checks.filter((c: any) => !c.passed) }));
  return result;
}

if (process.env.ASCET_PI_RESCORE === '1') {
  const originalRaw = await readFile(join(directory, 'report.json'), 'utf8');
  const existing = JSON.parse(originalRaw);
  profile = existing.tool_profile ?? profile;
  toolNames = getToolContracts(profile).map(c => c.name);
  assertPlanProvenance(existing, planRaw, planFile);
  if (basePlanRaw) assertPlanProvenance(existing, basePlanRaw);
  before = JSON.parse(await readFile(join(directory, 'oracle-snapshot.json'), 'utf8'));
  assert.equal(fingerprint(before!), existing.source_fingerprint, 'Native oracle changed since the recorded evaluation');
  if (includeCorpus) allCases = [...allCases, ...corpusPiEvalCases(before!)];
  const review = existing.cases.map((result: any) => ({ id: result.id, group: result.group, repetition: result.repetition ?? 1,
    expected_error_call_indices: result.calls.flatMap((row: Row, i: number) => requestedMatrixError(allCases.find(c => c.id === result.id)?.rubric, row, result.calls.slice(0, i)) ? [i] : []),
    execution_status: executionStatus(result), original_passed: result.scoring.passed,
    call_accuracy: labelCallAccuracy(allCases.find(c => c.id === result.id), result.calls, before!),
    scoring: scoreSafely(() => score(result.id, { ...result, started_utc: result.started_utc ?? existing.started_utc }, before!)) }));
  const summary = { attempted: review.length, completed: review.filter((r: any) => r.execution_status === 'completed').length,
    passed: review.filter((r: any) => r.scoring.passed).length, semantic_passed: review.filter((r: any) => r.scoring.semantic_passed).length,
    model_service_failures: review.filter((r: any) => r.execution_status === 'model_service_failed').length,
    budget_exceeded: review.filter((r: any) => r.execution_status === 'budget_exceeded').length,
    timeouts: review.filter((r: any) => r.execution_status === 'timeout').length };
  const byGroup = Object.fromEntries(Object.keys(plan.group_names).map(group => {
    const cases = review.filter((r: any) => r.group === group);
    return [group, { attempted: cases.length, passed: cases.filter((r: any) => r.scoring.passed).length, semantic_passed: cases.filter((r: any) => r.scoring.semantic_passed).length }];
  }));
  const corrections = review.filter((r: any) => r.original_passed !== r.scoring.passed).map((r: any) => ({ id: r.id, original_passed: r.original_passed, passed: r.scoring.passed }));
  const assessment = { assessed_utc: new Date().toISOString(), original_report_preserved: true,
    grading_version: gradingVersion, scoring_artifact_sha256: await gradingFingerprint(), source_report_sha256: reportSHA(originalRaw),
    summary, by_group: byGroup, corrections, cases: review,
    ...(plan.suite === 'intent' ? { intent_summary: summarizeIntentCases(review, existing.summary?.planned ?? existing.selected_cases.length) } : {}) };
  const assessmentRaw = JSON.stringify(assessment, null, 2) + '\n';
  await mkdir(join(directory, 'reassessments'), { recursive: true });
  await writeFile(join(directory, 'reassessments', assessment.assessed_utc.replace(/[:.]/g, '-') + '.json'), assessmentRaw);
  await writeFile(join(directory, 'reassessment.json'), assessmentRaw);
  await writeFile(join(directory, 'REASSESSMENT.md'), ['# Pi Evaluation Reassessment', '', 'Original answers, calls and scores are preserved. No model retries or answer repair.', '',
    '- Summary: ' + JSON.stringify(summary), ...(assessment.intent_summary ? ['- Intent: ' + JSON.stringify(assessment.intent_summary)] : []), '- Changed acceptance: ' + JSON.stringify(corrections), '',
    '| Group | Attempted | Strict Pass | Evidence/Fact Pass |', '|---|---:|---:|---:|',
    ...Object.entries(byGroup).map(([group, count]: [string, any]) => `| ${group} | ${count.attempted} | ${count.passed} | ${count.semantic_passed} |`), '',
    '| Case | Result | Execution | Failed Checks |', '|---|---|---|---|',
    ...review.map((r: any) => `| ${r.id} | ${r.scoring.passed ? 'PASS' : 'FAIL'} | ${r.execution_status} | ${r.scoring.checks.filter((c: any) => !c.passed).map((c: any) => c.name).join(', ')} |`),
    '', 'Evidence/fact acceptance excludes only Markdown-fence rejection. It does not certify every prose inference.'].join('\n') + '\n');
  console.log(JSON.stringify({ summary, by_group: byGroup, corrections }));
  process.exit(0);
}

async function snapshot() {
  const bridge = new Bridge(90, { env });
  try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, include_state_topology: true, audit_diagrams: true });
    assert.equal(raw.ascet_pid, setup.identity.pid);
    const data = decodeResponse(raw); assertFrozenSourceErrors(data.errors, plan.expected_source_errors);
    return { data, raw };
  } finally { await bridge.close(); }
}
async function modelPreflight() {
  const args = [piEntry, '--no-extensions', '--no-skills', '--no-prompt-templates', '--no-themes',
    '--no-context-files', '--offline', '--no-session', '--no-tools', '--mode', 'json', '--print',
    ...(process.env.ASCET_PI_PROVIDER ? ['--provider', process.env.ASCET_PI_PROVIDER] : []),
    ...(process.env.ASCET_PI_MODEL ? ['--model', process.env.ASCET_PI_MODEL] : []),
    '--', 'Do not call any tool. Reply with exactly READY.'];
  let stdout: string;
  try { ({ stdout } = await runPiProcess(process.execPath, args, { cwd, env, windowsHide: true, timeout: 45000, maxBuffer: 2 * 1024 * 1024 })); }
  catch (error) {
    const failure = error as Error & { stdout?: string; stderr?: string; killed?: boolean; signal?: string; code?: string | number };
    await writeFile(join(directory, 'model-preflight.events.jsonl'), failure.stdout ?? '');
    await writeFile(join(directory, 'model-preflight.stderr.log'), failure.stderr ?? '');
    report.model_preflight = { status: failure.killed ? 'timeout' : 'process_failed', signal: failure.signal, code: failure.code };
    report.skipped_cases = executions.map((c: any) => ({ id: c.id, repetition: c.repetition }));
    throw new Error('Model preflight ' + report.model_preflight.status + ' before ASCET launch');
  }
  await writeFile(join(directory, 'model-preflight.events.jsonl'), stdout);
  const events = stdout.split('\n').filter(s => s.trim()).map(s => JSON.parse(s));
  const message = events.filter(e => e.type === 'message_end' && e.message.role === 'assistant').at(-1)?.message;
  report.model_preflight = { provider: message?.provider, model: message?.model, stop_reason: message?.stopReason,
    error: message?.errorMessage, usage: message?.usage, settled: events.some(e => e.type === 'agent_settled') };
  const text = message?.content.filter((c: any) => c.type === 'text').map((c: any) => c.text).join('\n').trim();
  if (message?.stopReason !== 'stop' || text !== 'READY' || !report.model_preflight.settled) {
    report.skipped_cases = executions.map((c: any) => ({ id: c.id, repetition: c.repetition }));
    throw new Error('Model preflight failed before ASCET launch: ' + (message?.errorMessage ?? message?.stopReason ?? 'No complete assistant answer'));
  }
}
async function cleanup() {
  const closeout: any = { status: 'running' };
  try {
    if (before) {
      const after = await snapshot();
      assert.equal(fingerprint(after.data), fingerprint(before)); assert.deepEqual(after.data.diagrams, before.diagrams);
      assert.deepEqual(after.data.state_objects, before.state_objects);
      closeout.sources_and_graphs_unchanged = true;
    }
  } catch (error) { closeout.audit_error = String(error); }
  finally {
    try {
      const current = JSON.parse(await readFile(join(dirname(setup.manifest), 'process.json'), 'utf8'));
      assert.equal(current.pid, setup.identity.pid); assert.equal(current.start_time_utc, setup.identity.start_time_utc);
      const retained = await retainAgentInstance(setup.manifest, current);
      if (retained) await verifyRunningAgentInstance(current);
      else await runFile('pwsh', ['-NoProfile', '-File', join(ROOT, '../multi-instance/stop.ps1'), '-Manifest', setup.manifest], { windowsHide: true, timeout: 30000 });
      const { stdout } = await runFile('pwsh', ['-NoProfile', '-Command', 'Get-CimInstance Win32_Process -Filter "Name=\'ASCET.exe\'" | Select-Object ProcessId,CreationDate,ExecutablePath | Sort-Object ProcessId | ConvertTo-Json -Compress'], { windowsHide: true, timeout: 30000 });
      const data = JSON.parse(stdout || '[]'), after = Array.isArray(data) ? data : [data];
      const ids = new Set(setup.protected_processes_before.map((p: any) => p.ProcessId));
      assert.deepEqual(after.filter(p => ids.has(p.ProcessId)), setup.protected_processes_before);
      if (retained) {
        closeout.isolated_instance_retained = true; closeout.endpoint_open = true; closeout.protected_processes_unchanged = true;
      } else {
      assert.ok(!after.some(p => p.ExecutablePath === join(setup.identity.runtime, 'ASCET.exe')));
      await runFile('pwsh', ['-NoProfile', '-Command', "if (Get-NetTCPConnection -State Listen -LocalPort 32631 -ErrorAction SilentlyContinue) { throw 'Isolated port still listening' }"], { windowsHide: true, timeout: 30000 });
      closeout.isolated_instance_stopped = true; closeout.protected_processes_unchanged = true; closeout.endpoint_closed = true;
      }
    } catch (error) { closeout.cleanup_error = String(error); }
  }
  closeout.status = closeout.audit_error || closeout.cleanup_error ? 'failed' : 'passed';
  await writeFile(join(directory, 'closeout.json'), JSON.stringify(closeout, null, 2) + '\n');
  report.closeout = closeout;
  if (closeout.status !== 'passed') process.exitCode = 1;
}

try {
  report.pi_version = (await runFile(process.execPath, [piEntry, '--version'], { windowsHide: true, timeout: 30000 })).stdout.trim();
  report.tool_profile = process.env.ASCET_PI_TOOL_PROFILE ?? 'baseline';
  report.scoring_artifact_sha256 = await gradingFingerprint();
  report.artifact_sha256 = Object.fromEntries(await Promise.all(['dist/src/pi-extension.js', 'dist/src/tool-contracts.js',
    'dist/src/agent-result-view.js', 'dist/src/task-tools.js', 'dist/src/agent-session.js', 'PI_AGENT_EVAL_CASES.json', ...(basePlanRaw ? [planFile] : [])].map(async path => [path, createHash('sha256').update(await readFile(join(ROOT, path))).digest('hex')])));
  report.evaluated_extension_sha256 = createHash('sha256').update(await readFile(extension)).digest('hex');
  report.evaluated_tool_sha256 = Object.fromEntries(await Promise.all(['pi-extension.js', 'tool-contracts.js', 'agent-result-view.js',
    'task-tools.js', 'agent-session.js', 'agent-target.js', 'agent-tools.js', 'pi-client.js', 'agent-validation.js', 'bridge.js'].map(async name =>
      [name, createHash('sha256').update(await readFile(join(dirname(extension), name))).digest('hex')])));
  assert.equal(report.pi_version, '1.0.2');
  console.log(JSON.stringify({ event: 'eval_start', pi_version: report.pi_version, cases: cases.length, directory }));
  await runFile(process.execPath, ['--input-type=module', '-e', 'await import(' + JSON.stringify(pathToFileURL(extension).href) + ')'],
    { cwd, env, windowsHide: true, timeout: 30000, maxBuffer: 1024 * 1024 });
  report.extension_preflight = { loaded: true, starts_ascet: false };
  await modelPreflight();
  await runFile(process.execPath, [join(ROOT, 'dist/scripts/agent-evaluation-lifecycle.js'), 'start', directory], { windowsHide: true, timeout: 90000, maxBuffer: 4 * 1024 * 1024 });
  setup = JSON.parse(await readFile(join(directory, 'setup.json'), 'utf8')); assert.equal(setup.status, 'ready');
  const snapshotBefore = await snapshot(); before = snapshotBefore.data;
  if (includeCorpus) allCases.push(...corpusPiEvalCases(before));
  cases = select(); assert.ok(cases.length && (!selected || cases.length === selected.length)); executions = rounds();
  report.selected_cases = cases.map(c => c.id); report.corpus_cases = cases.filter(c => c.group === 'corpus').length;
  await writeFile(join(directory, 'resolved-cases.json'), JSON.stringify(cases, null, 2) + '\n');
  report.database = snapshotBefore.raw.database; report.ascet_pid = snapshotBefore.raw.ascet_pid;
  report.source_fingerprint = fingerprint(before);
  report.corpus = { components: before.components.length, documents: before.documents.length, diagrams: before.diagrams?.length, state_objects: before.state_objects?.length };
  report.source_coverage = { complete: before.errors.length === 0, native_errors: before.errors,
    policy: plan.expected_source_errors ? 'frozen_partial_inventory' : 'error_free_inventory',
    boundary: 'Cases verify their saved native fixtures. Known unreadable components remain coverage gaps; this suite does not certify complete database coverage.' };
  await writeFile(join(directory, 'oracle-snapshot.json'), JSON.stringify(before) + '\n'); await save();
  for (const task of cases) {
    if (task.rubric) matrixFixture(before, task.rubric);
    if (task.intent_fixture) matrixFixture(before, task.intent_fixture);
  }
  for (const task of executions) {
    console.log(JSON.stringify({ event: 'case_start', case: task.id }));
    const result = await runCase(task); report.cases.push(result); await save();
    if (['model_service_failed', 'startup_failed', 'interrupted'].includes(result.execution_status)) {
      report.stopped_reason = result.execution_status + '; remaining cases were not attempted';
      report.skipped_cases = executions.slice(report.cases.length).map((c: any) => ({ id: c.id, repetition: c.repetition })); break;
    }
  }
  const metric = (data: number[]) => { const v = [...data].sort((a, b) => a - b); return { samples: v.length, p50_ms: v[Math.floor(v.length / 2)], p95_ms: v[Math.max(0, Math.ceil(v.length * .95) - 1)], max_ms: v.at(-1) }; };
  const all = report.cases.flatMap((c: any) => c.calls) as Row[];
  const warm = report.cases.flatMap((c: any) => c.calls.slice(1)) as Row[];
  report.summary = { passed: report.cases.filter((c: any) => c.scoring.passed).length, attempted: report.cases.length, planned: executions.length, unique_cases: cases.length,
    semantic_passed: report.cases.filter((c: any) => c.scoring.semantic_passed).length,
    model_service_failures: report.cases.filter((c: any) => c.execution_status === 'model_service_failed').length,
    completed_cases: report.cases.filter((c: any) => c.execution_status === 'completed').length,
    tool_errors: all.filter(r => r.is_error).length, tool_calls: all.length,
    expected_tool_errors: all.filter(r => r.is_error && r.expected_error).length,
    unexpected_tool_errors: all.filter(r => r.is_error && !r.expected_error).length,
    task_latency: metric(report.cases.map((c: any) => c.total_ms)), first_tool_latency: metric(report.cases.filter((c: any) => c.calls.length).map((c: any) => c.calls[0].ms)),
    subsequent_tool_latency: metric(warm.filter(r => !r.is_error).map(r => r.ms)), subsequent_search_latency: metric(warm.filter(r => !r.is_error && r.tool === 'ascet_code_search').map(r => r.ms)) };
  report.by_group = Object.fromEntries(Object.keys(plan.group_names).map(group => {
    const completed = report.cases.filter((c: any) => c.group === group);
    return [group, { attempted: completed.length, completed: completed.filter((c: any) => c.execution_status === 'completed').length,
      strict_passed: completed.filter((c: any) => c.scoring.passed).length, semantic_passed: completed.filter((c: any) => c.scoring.semantic_passed).length,
      task_latency: metric(completed.filter((c: any) => c.execution_status === 'completed').map((c: any) => c.total_ms)) }];
  }));
  report.by_repetition = Object.fromEntries(Array.from({ length: repetitions }, (_, i) => {
    const completed = report.cases.filter((c: any) => c.repetition === i + 1 && c.execution_status === 'completed');
    return [String(i + 1), { completed: completed.length, strict_passed: completed.filter((c: any) => c.scoring.passed).length,
      semantic_passed: completed.filter((c: any) => c.scoring.semantic_passed).length }];
  }));
  report.status = 'recorded';
  report.optimization_metrics = optimizationMetrics(report);
  report.call_accuracy = summarizeCallAccuracy(report.cases);
  if (plan.suite === 'intent') report.intent_summary = summarizeIntentCases(report.cases, executions.length);
} catch (error) { report.status = 'failed'; report.execution_error = error instanceof Error ? error.stack : String(error); process.exitCode = 1; }
finally {
  if (setup?.status === 'ready') await cleanup();
  report.completed_utc = new Date().toISOString(); await save();
  const lines = ['# Pi CLI Agent Evaluation', '', '- Pi: ' + report.pi_version,
    '- Model: ' + JSON.stringify(report.cases[0]?.model ?? report.model_preflight), '- First attempt only; no answer repair.',
    '- Corpus: ' + JSON.stringify(report.corpus), '- Summary: ' + JSON.stringify(report.summary),
    '- Closeout: ' + JSON.stringify(report.closeout), ...(report.intent_summary ? ['- Intent: ' + JSON.stringify(report.intent_summary)] : []), '', '| Case | Result | Calls | Task ms | Failed checks |', '|---|---|---:|---:|---|',
    ...report.cases.map((c: any) => `| ${c.id} | ${c.scoring.passed ? 'PASS' : 'FAIL'} | ${c.calls.length} | ${Math.round(c.total_ms)} | ${c.scoring.checks.filter((s: any) => !s.passed && (gradingVersion === 1 || primaryCheck(s))).map((s: any) => s.name).join(', ')} |`),
    '', report.boundary];
  await writeFile(join(directory, 'REPORT.md'), lines.join('\n') + '\n');
  console.log(JSON.stringify({ event: 'eval_end', directory, status: report.status, summary: report.summary, closeout: report.closeout }));
}
