import type { MatrixCheck, MatrixRow, MatrixScope } from './pi-eval-matrix.js';
import { matrixDocuments, matrixIdentity } from './pi-eval-matrix.js';
import { collectReturnedRefs } from '../src/agent-evidence.js';
import type { Snapshot } from '../src/types.js';

export const intentActions = ['locate', 'search', 'read', 'connections', 'compare', 'clarify', 'unsupported'] as const;
export interface IntentRubric {
  actions: (typeof intentActions[number])[];
  decision: 'execute' | 'clarify' | 'unsupported';
  terms?: string[];
  components?: string[];
  members?: string[];
  clarification_fields?: string[];
  question_patterns?: string[];
  no_tools?: boolean;
  no_reads?: boolean;
  required_tools?: string[];
  read_scope?: MatrixScope;
  search_scope?: MatrixScope;
  last_turn_only?: boolean;
  reuse_previous_ref?: boolean;
}
export interface IntentRow extends MatrixRow { turn?: number }
const array = (v: unknown): any[] => Array.isArray(v) ? v : [];
const values = (v: any): any[] => Array.isArray(v?.results) ? v.results : v ? [v] : [];
const sameSet = (a: unknown, b: string[]) => Array.isArray(a) && a.every(v => typeof v === 'string') &&
  a.length === b.length && new Set(a).size === a.length && [...a].sort().join('\0') === [...b].sort().join('\0');

/** Self-reported intent and observed calls are separate checks; neither rewrites evidence. */
export function gradeIntentCase(r: IntentRubric, intent: any, rows: IntentRow[], answer: any, source: Snapshot, currentTurn?: number, gradingVersion = 1): MatrixCheck[] {
  const checks: MatrixCheck[] = [];
  const check = (name: string, passed: unknown) => checks.push({ name: 'intent_' + name, passed: Boolean(passed) });
  const object = intent && typeof intent === 'object' && !Array.isArray(intent);
  check('schema', object && intentActions.includes(intent.action) && ['execute', 'clarify', 'unsupported'].includes(intent.decision) &&
    Array.isArray(intent.terms) && intent.terms.every((v: any) => typeof v === 'string') &&
    intent.scope && typeof intent.scope === 'object' && !Array.isArray(intent.scope) &&
    Array.isArray(intent.scope.components) && intent.scope.components.every((v: any) => typeof v === 'string') &&
    Array.isArray(intent.scope.members) && intent.scope.members.every((v: any) => typeof v === 'string') &&
    Array.isArray(intent.clarification_fields) && intent.clarification_fields.every((v: any) => typeof v === 'string'));
  // Searching for an unknown implementation is a valid discovery strategy.
  // Explicit read/search-only goals retain their original action constraints.
  check('action', r.actions.includes(intent?.action) || (r.actions.includes('locate') && intent?.action === 'search'));
  check('decision', intent?.decision === r.decision);
  // With no literal terms supplied by the user, lexical discovery hints are free.
  if (r.terms?.length) check('terms', sameSet(intent?.terms, r.terms));
  if (r.components) check('component_constraints', sameSet(intent?.scope?.components, r.components));
  if (r.members) check('member_constraints', sameSet(intent?.scope?.members, r.members));
  if (r.clarification_fields) check('clarification_fields', sameSet(intent?.clarification_fields, r.clarification_fields));
  const finalTurn = currentTurn ?? Math.max(1, ...rows.map(row => row.turn ?? 1));
  const active = r.last_turn_only ? rows.filter(row => (row.turn ?? 1) === finalTurn) : rows;
  const ok = active.filter(row => !row.is_error);
  check('call_errors', active.every(row => !row.is_error));
  if (r.no_tools) check('no_speculative_tools', active.length === 0);
  if (r.no_reads) check('no_speculative_read', active.every(row => row.tool !== 'ascet_code_read'));
  if (r.required_tools) check('required_tools', r.required_tools.every(tool => ok.some(row => row.tool === tool)));
  if (r.decision === 'clarify') {
    const question = gradingVersion >= 4 ? /[?？]|请.*(?:提供|指定|确认|选择|说明|告诉|补充)|需要.*(?:确认|指定)/u
      : gradingVersion >= 3 ? /[?？]|请.*(?:提供|指定|确认|选择|说明|告诉)|需要.*(?:确认|指定)/u
      : /[?？]|请.*(?:提供|指定|确认|选择)|需要.*(?:确认|指定)/u;
    check('clarification_question', typeof answer?.answer === 'string' && question.test(answer.answer) &&
      (r.question_patterns ?? []).every(pattern => new RegExp(pattern, 'iu').test(answer.answer)));
    check('no_resolved_claim', answer?.outcome === 'partial' && array(answer.missing_evidence).length > 0);
  }
  if (r.read_scope) {
    const docs = matrixDocuments(source, r.read_scope);
    const allReads = active.filter(row => row.tool === 'ascet_code_read');
    const isParent = (v: any) => Boolean(r.read_scope?.kind?.startsWith(v?.kind + '_')) && ['state', 'transition'].includes(v?.kind) &&
      (!r.read_scope?.member || (v.state ?? v.transition) === r.read_scope.member) &&
      docs.some(d => d.component_path === v.component_path && d.variant === v.variant);
    const readRows = allReads.filter(row => !values(row.response).every(isParent));
    check('read_scope', readRows.length > 0 && readRows.every(row => !row.is_error && values(row.response).length > 0 && values(row.response).every(v =>
      docs.some(d => JSON.stringify(matrixIdentity(v)) === JSON.stringify({ component_path: d.component_path, kind: d.kind,
        member: d.member_name, variant: d.variant, implementation: d.implementation_oid })))) &&
      allReads.every(row => !row.is_error && values(row.response).every(v => isParent(v) || docs.some(d =>
        JSON.stringify(matrixIdentity(v)) === JSON.stringify({ component_path: d.component_path, kind: d.kind,
          member: d.member_name, variant: d.variant, implementation: d.implementation_oid })))));
  }
  if (r.search_scope) {
    const refs = new Map<string, string>();
    const collect = (v: any): void => {
      if (!v || typeof v !== 'object') return;
      if (typeof v.ref === 'string' && typeof v.component_path === 'string') refs.set(v.ref, v.component_path);
      for (const [key, child] of Object.entries(v)) if (key !== 'graph' && child && typeof child === 'object') collect(child);
    };
    rows.filter(row => !row.is_error).forEach(row => collect(row.response));
    const owners = typeof r.search_scope.component === 'string' ? [r.search_scope.component] : r.search_scope.component ?? [];
    const paths = owners.map(owner => source.components.find(c => c.path === owner || c.path.split('\\').at(-1) === owner)?.path);
    const searchRows = active.filter(row => row.tool === 'ascet_code_search' && !row.args.cursor);
    check('search_scope', paths.every(Boolean) && searchRows.length > 0 && searchRows.every(row => {
      const selector = row.args.in?.component ?? row.args.in?.diagram;
      const actual = (Array.isArray(selector) ? selector : [selector]).map(ref => refs.get(ref) ?? source.components.find(c => c.oid === ref)?.path);
      const filter = (name: string, expected?: string) => !expected || row.args.in?.[name] === expected || sameSet(row.args.in?.[name], [expected]);
      return actual.every(Boolean) && sameSet([...new Set(actual)], paths as string[]) &&
        filter('kind', r.search_scope!.kind) && filter('member', r.search_scope!.member) && filter('variant', r.search_scope!.variant);
    }));
  }
  if (r.reuse_previous_ref) {
    const previous = new Set<string>();
    rows.filter(row => (row.turn ?? 1) < finalTurn && !row.is_error).forEach(row => collectReturnedRefs(row.response, previous));
    check('previous_ref_reused', ok.some(row => row.tool === 'ascet_code_read' &&
      (Array.isArray(row.args.ref) ? row.args.ref : [row.args.ref]).some((ref: string) => previous.has(ref))));
  }
  return checks;
}

export function parseIntentDeclaration(text: string): any {
  try { return JSON.parse(text)?.intent; } catch { return undefined; }
}
export const intentRecognitionChecks = new Set(['intent_pre_tool_record', 'intent_schema', 'intent_action', 'intent_decision', 'intent_terms',
  'intent_component_constraints', 'intent_member_constraints', 'intent_clarification_fields', 'intent_clarification_question', 'intent_no_resolved_claim']);
export function intentScoreParts(checks: MatrixCheck[]) {
  const recognition = checks.filter(c => intentRecognitionChecks.has(c.name));
  const selection = checks.filter(c => c.name.startsWith('intent_') && !intentRecognitionChecks.has(c.name));
  const evidence = checks.filter(c => !c.name.startsWith('intent_') && !['pi_completed', 'strict_json_format'].includes(c.name));
  return { recognition_passed: recognition.length > 0 && recognition.every(c => c.passed),
    selection_passed: selection.length > 0 && selection.every(c => c.passed),
    evidence_passed: evidence.length > 0 && evidence.every(c => c.passed) };
}
export function summarizeIntentCases(cases: any[], planned = cases.length) {
  const count = (key: string) => cases.filter(c => c.execution_status === 'completed' && c.scoring?.intent_metrics?.[key]).length;
  const completed = cases.filter(c => c.execution_status === 'completed').length;
  return { planned, attempted: cases.length, completed, unattempted: Math.max(0, planned - cases.length),
    coverage_complete: completed === planned && cases.length === planned,
    recognition_passed: count('recognition_passed'), selection_passed: count('selection_passed'),
    evidence_passed: count('evidence_passed'), strict_passed: cases.filter(c => c.scoring?.passed).length,
    boundary: 'Recognition checks an intent declaration recorded before tools in the current turn, plus required clarification. No-tool tasks use their first answer. Selection checks observed errors, required tools and explicit scope constraints. These task-level checks are not exhaustive per-call relevance labels or certification of every inference.' };
}
