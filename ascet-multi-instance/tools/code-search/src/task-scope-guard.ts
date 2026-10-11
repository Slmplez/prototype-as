import { isRecord } from './validation.js';

export interface TaskScopeEvidence { component_path?: string; member?: string }
const normalizePath = (value: string) => value.replaceAll('/', '\\').replace(/\\+$/u, '');
const leaf = (value: string) => normalizePath(value).split('\\').at(-1);
const matchesOwner = (path: string, expected: string) => normalizePath(expected).includes('\\')
  ? normalizePath(path) === normalizePath(expected) : leaf(path) === normalizePath(expected);

/** Check declared search constraints only; never guess a ref owner or change arguments. */
export function taskSearchScopeError(intent: Record<string, unknown>, tool: string | undefined, args: unknown,
  lookup: (ref: string) => TaskScopeEvidence | undefined = () => undefined): string | undefined {
  if (intent.action !== 'search' || !['ascet_search_code', 'ascet_search_bde'].includes(tool ?? '') || !isRecord(args) || typeof args.cursor === 'string') return;
  const declared = isRecord(intent.scope) ? intent.scope : {};
  const owners = Array.isArray(declared.components) ? declared.components.filter((x): x is string => typeof x === 'string') : [];
  const members = Array.isArray(declared.members) ? declared.members.filter((x): x is string => typeof x === 'string') : [];
  if (!owners.length && !members.length) return;
  const scope = isRecord(args.scope) ? args.scope : {};
  const body = typeof scope.code_ref === 'string' ? lookup(scope.code_ref) : undefined;
  const selectors = Array.isArray(scope.components) ? scope.components : Array.isArray(scope.diagrams) ? scope.diagrams : [];
  const actualOwners = typeof scope.code_ref === 'string' ? [body?.component_path] : selectors.map(selector => {
    if (!isRecord(selector)) return undefined;
    if (typeof selector.ref === 'string') return lookup(selector.ref)?.component_path;
    if (typeof selector.path === 'string') return selector.path;
    return typeof selector.name === 'string' && scope.components ? selector.name : undefined;
  });
  const issues: string[] = [];
  if (owners.length && (!actualOwners.length || actualOwners.some(owner => !owner || !owners.some(expected => matchesOwner(owner, expected))) ||
      owners.some(expected => !actualOwners.some(owner => owner && matchesOwner(owner, expected)))))
    issues.push('scope.components must preserve all declared owners; a Diagram name or unknown/expired ref does not establish its owner');
  const actualMembers = typeof scope.code_ref === 'string' ? (body?.member === undefined ? [] : [body.member]) : scope.members;
  if (members.length && (!Array.isArray(actualMembers) || actualMembers.some(x => typeof x !== 'string') ||
      [...new Set(actualMembers)].sort().join('\0') !== [...new Set(members)].sort().join('\0')))
    issues.push('scope.members must preserve the declared member names');
  if (!issues.length) return;
  const suggestedScope = { ...scope };
  delete suggestedScope.code_ref;
  if (owners.length) {
    suggestedScope.components = owners.map(value => normalizePath(value).includes('\\') ? { path: value } : { name: value });
  }
  if (members.length) suggestedScope.members = members;
  return 'INTENT_SCOPE_MISMATCH: ' + issues.join('; ') + '. No ASCET query was executed. Keep the original queries and all user filters; do not fall back to a global search. Suggested corrected call: ' +
    JSON.stringify({ tool, arguments: { ...args, scope: suggestedScope } });
}
