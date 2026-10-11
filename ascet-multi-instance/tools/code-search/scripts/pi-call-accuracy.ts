import type { Snapshot } from '../src/types.js';
import { isTaskTool, TASK_OPERATIONS } from '../src/task-tools.js';

const asList = (value: any): any[] => value === undefined ? [] : Array.isArray(value) ? value : [value];
const same = (a: any[], b: any[]) => JSON.stringify([...new Set(a)].sort()) === JSON.stringify([...new Set(b)].sort());
const ratio = (passed: number, total: number) => ({ passed, total, rate: total ? passed / total : null });
/** Explicit-predicate diagnostics, not a judge of all call relevance or agent reasoning. */
export function labelCallAccuracy(task: any, calls: any[], source: Snapshot) {
  const refs = new Map<string, string>();
  const collect = (value: any, owner?: string): void => {
    if (!value || typeof value !== 'object') return;
    if (typeof value.component_path === 'string' && (value.variant !== undefined || value.component_type !== undefined || value.kind === 'component')) owner = value.component_path;
    if (typeof value.ref === 'string' && owner) refs.set(value.ref, owner);
    for (const [key, child] of Object.entries(value)) if (key !== 'graph' && child && typeof child === 'object') collect(child, owner);
  };
  const path = (value: string) => refs.get(value) ?? source.components.find(c => c.oid === value || c.path === value || c.path.split(/[\\/]/).at(-1) === value)?.path;
  const finalTurn = Math.max(1, ...calls.map(c => c.turn ?? 1));
  const labels = calls.map((call, index) => {
    if (!call.is_error) collect(call.response);
    const tool = String(call.tool);
    const operation = isTaskTool(tool) ? TASK_OPERATIONS[tool] : call.request?.operation ?? tool.slice('ascet_code_'.length);
    const request = call.request ?? call.args;
    const code = call.response?.code;
    const parameterRejected = call.is_error && (['INVALID_REQUEST', 'INVALID_REGEX', 'WRONG_REF_TYPE', 'CURSOR_TOOL_MISMATCH', 'CURSOR_EXPIRED', 'REF_EXPIRED', 'SCOPE_NOT_FOUND', 'AMBIGUOUS_SCOPE', 'SCOPE_INCOMPLETE'].includes(code) ||
      code === 'PI_TOOL_ERROR' && /Validation failed|arguments|parameter|schema/iu.test(call.response?.message ?? ''));
    let scopeCorrect: boolean | null = null;
    const current = !task.intent?.last_turn_only || (call.turn ?? 1) === finalTurn;
    const scope = operation === 'search' ? task.intent?.search_scope ?? (task.rubric?.type === 'search' ? task.rubric.scope : undefined)
      : operation === 'read' ? task.intent?.read_scope ?? (task.rubric?.type === 'read' ? task.rubric.scope : undefined)
        : task.rubric?.type === 'catalog' && operation === 'find' && (request.target ?? 'members') === (task.rubric.target ?? 'members') ? task.rubric.scope : undefined;
    if (current && scope && !request.cursor) {
      const owners = asList(scope.component).map(path);
      if (operation === 'read') {
        const values = call.response?.results ?? [call.response];
        scopeCorrect = !call.is_error && values.length > 0 && values.every((v: any) => {
          const structure = ['state', 'transition'].includes(v?.kind);
          const member = v?.method ?? v?.process ?? v?.state ?? v?.transition ?? v?.diagram ?? '';
          return v && (!owners.length || owners.includes(v.component_path)) &&
            (!scope.member || member === scope.member) && (structure || !scope.kind || v.kind === scope.kind) &&
            (!scope.variant || v.variant === scope.variant);
        });
      } else {
        const actual = asList(request.in?.component ?? request.in?.diagram ?? request.component).map(path);
        const filter = (key: string, expected: any) => !expected || same(asList(request.in?.[key]), asList(expected)) ||
          key === 'visibility' && request.in?.visibility === undefined && same(asList(expected), ['public', 'private']);
        scopeCorrect = !call.is_error && (!owners.length || owners.every(Boolean) && actual.every(Boolean) && same(actual, owners)) &&
          filter('kind', scope.kind) && filter('member', scope.member) && filter('variant', scope.variant) && filter('visibility', scope.visibility);
      }
    }
    let necessityCorrect: boolean | null = null;
    if (current && (task.intent?.no_tools || task.call_expectations?.no_tools)) necessityCorrect = false;
    else if (current && task.intent?.no_reads && operation === 'read') necessityCorrect = false;
    return { index, tool: call.tool, operation, parameter_check: parameterRejected ? 'rejected' : call.is_error ? 'unclassified_error' : 'accepted',
      scope_correct: scopeCorrect, necessity_correct: necessityCorrect, ...(call.is_error ? { error_code: code } : {}) };
  });
  return labels;
}
export function summarizeCallAccuracy(attempts: any[]) {
  const labels = attempts.flatMap(c => c.call_accuracy ?? []);
  const parameter = labels.filter(c => c.parameter_check !== 'unclassified_error');
  const scope = labels.filter(c => c.scope_correct !== null);
  const unnecessary = labels.filter(c => c.necessity_correct === false);
  return { parameter_acceptance: ratio(parameter.filter(c => c.parameter_check === 'accepted').length, parameter.length),
    explicit_scope_compliance: ratio(scope.filter(c => c.scope_correct).length, scope.length),
    unclassified_error_calls: labels.length - parameter.length, known_unnecessary_calls: unnecessary.length,
    boundary: 'Parameter acceptance is not semantic precision. Scope labels cover annotated explicit predicates only, with same-owner structural reads allowed. Unannotated call relevance remains unknown.' };
}
