import { isRecord } from './validation.js';
import { taskSearchScopeError, type TaskScopeEvidence } from './task-scope-guard.js';

export const TASK_INTENT_PROTOCOL = 'Before any tools, choose the user goal action (locate/search/read/connections/compare/clarify/unsupported) separately from decision (execute/clarify/unsupported). action read with decision clarify is valid when a requested Method owner is missing. For decision clarify or unsupported, emit ONLY the final JSON containing intent; do not emit a separate declaration or call tools. For execute, before the first ASCET call in EACH user prompt emit exactly one separate text block {"intent":{"action":"search","decision":"execute","terms":[],"scope":{"components":[],"members":[]},"clarification_fields":[]}}, choosing the actual action. Use string arrays, never selector objects. components are owning Classes/Modules/State Machines; members are explicitly requested Methods/Processes/State paths, not Component names. Example: search speed in Controller ASDL Methods => terms:["speed"], scope:{components:["Controller"],members:[]}; search calc alone needs an owner, not components:["calc"]. Keep positive user symbols as terms; do not add excluded terms or incidental discoveries. clarification_fields identifies missing symbol/component/variant/hierarchy. Preserve prior-turn restrictions. Copy the declaration unchanged into final intent. A repair remains the same user prompt. A scoped search must carry the declared owning Component and members on every initial query; after zero hits or an error preserve queries and scope. Returned refs can scope only their proven owner.';

export function validTaskIntent(value: unknown): boolean {
  if (!isRecord(value) || Object.keys(value).some(key => !['action', 'decision', 'terms', 'scope', 'clarification_fields'].includes(key))) return false;
  const strings = (v: unknown) => Array.isArray(v) && v.every(x => typeof x === 'string');
  return ['locate', 'search', 'read', 'connections', 'compare', 'clarify', 'unsupported'].includes(String(value.action)) &&
    ['execute', 'clarify', 'unsupported'].includes(String(value.decision)) && strings(value.terms) && strings(value.clarification_fields) &&
    isRecord(value.scope) && Object.keys(value.scope).every(key => ['components', 'members'].includes(key)) &&
    strings(value.scope.components) && strings(value.scope.members);
}

/** One declaration per user prompt, shared by every low-level model turn. */
export class TaskIntentState {
  private intent?: Record<string, unknown>;
  private called = false;
  private declarationError?: string;
  reset(): void { this.intent = undefined; this.called = false; this.declarationError = undefined; }
  observe(text: string): void {
    if (this.called) return;
    try {
      const parsed = JSON.parse(text);
      if (isRecord(parsed) && Object.keys(parsed).length === 1 && isRecord(parsed.intent)) {
        if (validTaskIntent(parsed.intent)) { this.intent = parsed.intent; this.declarationError = undefined; }
        else {
          const value = parsed.intent;
          const lists = { terms: value.terms, clarification_fields: value.clarification_fields,
            'scope.components': isRecord(value.scope) ? value.scope.components : undefined,
            'scope.members': isRecord(value.scope) ? value.scope.members : undefined };
          const invalid = Object.entries(lists).filter(([, v]) => !Array.isArray(v) || v.some(x => typeof x !== 'string')).map(([key]) => key);
          this.declarationError = invalid.length ? 'Invalid intent.' + invalid.join(', intent.') + ': use arrays of strings, e.g. ["Controller"], not {name/path/ref} selector objects.'
            : 'Invalid intent fields/action/decision; use only the declared protocol fields and allowed values.';
        }
      }
    } catch { /* Prose/final answers are not pre-tool declarations. */ }
  }
  beforeTool(tool?: string, args?: unknown, lookup?: (ref: string) => TaskScopeEvidence | undefined): string | undefined {
    if (!this.intent) return 'INTENT_REQUIRED: ' + (this.declarationError ?? 'Emit the intent JSON text block before the first ASCET tool call.') + ' ' + TASK_INTENT_PROTOCOL;
    if (this.intent.decision !== 'execute') return 'INTENT_TOOL_NOT_ALLOWED: the declared decision is ' + this.intent.decision + '; return the clarification or unsupported answer without ASCET calls';
    this.called = true;
    return taskSearchScopeError(this.intent, tool, args, lookup);
  }
  validateFinal(value: unknown, outcome?: unknown): string[] {
    if (!validTaskIntent(value)) return ['Final answer requires a valid intent object'];
    const canonical = (v: any): any => Array.isArray(v) ? v.map(canonical) : isRecord(v)
      ? Object.fromEntries(Object.keys(v).sort().map(key => [key, canonical(v[key])])) : v;
    if (this.intent && JSON.stringify(canonical(value)) !== JSON.stringify(canonical(this.intent)))
      return ['Final intent must match the declaration before this user prompt\'s first tool call'];
    const intent = value as Record<string, unknown>;
    if (outcome !== undefined && intent.decision === 'unsupported' && outcome !== 'unsupported')
      return ['intent.decision unsupported requires outcome unsupported'];
    if (outcome !== undefined && intent.decision === 'clarify' && outcome !== 'partial')
      return ['intent.decision clarify requires outcome partial and a clarification question'];
    return [];
  }
}
