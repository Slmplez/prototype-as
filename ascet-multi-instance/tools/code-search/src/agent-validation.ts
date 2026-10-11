import type { SearchFilters, Query } from './types.js';
import type { SearchPageRequest } from './paging-types.js';
import { isRecord, validateSearch } from './validation.js';
import { validateFilters } from './filters.js';
import { ToolError } from './patterns.js';

const patternKeys = ['mode', 'case_sensitive', 'multiline', 'dotall'];
export function onlyKeys(value: Record<string, unknown>, allowed: string[]): void {
  const unsupported = Object.keys(value).filter(k => !allowed.includes(k));
  if (!unsupported.length) return;
  const names = unsupported.slice(0, 5).map(k => JSON.stringify(k.slice(0, 64))).join(', ');
  const misplacedScope = allowed.includes('in') ? unsupported.filter(k =>
    ['component', 'member', 'member_id', 'kind', 'variant', 'implementation', 'diagram', 'visibility'].includes(k)) : [];
  const guidance = unsupported.includes('object_kind')
    ? 'Use find target:objects with in.object_kind for native BDE type discovery'
    : allowed.length === 1 && allowed[0] === 'cursor'
    ? 'Continue with {"cursor": NEXT_CURSOR} only; omit query, ref, operation and scope'
    : misplacedScope.length
    ? 'Put scope filters under in: ' + misplacedScope.map(k => 'in.' + k).join(', ')
    : 'Allowed fields include: ' + allowed.slice(0, 5).join(', ');
  throw new ToolError('INVALID_REQUEST', 'Unsupported field(s): ' + names + '. ' + guidance);
}
export function booleanOption(value: Record<string, unknown>, key: string): void {
  if (Object.hasOwn(value, key) && typeof value[key] !== 'boolean') throw new ToolError('INVALID_REQUEST', key + ' must be boolean');
}
function pattern(text: unknown, defaults: Record<string, unknown>, local: Record<string, unknown> = {}): Query {
  const options = { ...defaults, ...local };
  if (typeof text !== 'string') throw new ToolError('INVALID_REQUEST', 'query must be a string, {text, mode, ...}, or an array of search terms');
  const mode = options.mode ?? 'text';
  if (Object.hasOwn(options, 'mode') && !['text', 'identifier', 'regex'].includes(options.mode as string)) {
    throw new ToolError('INVALID_REQUEST', 'mode must be text, identifier or regex');
  }
  for (const key of ['case_sensitive', 'multiline', 'dotall']) booleanOption(options, key);
  if (Object.hasOwn(local, 'id') && (typeof local.id !== 'string' || !local.id || local.id.length > 64)) {
    throw new ToolError('INVALID_REQUEST', 'query id must contain 1-64 characters');
  }
  return { query: text, mode: mode === 'identifier' ? 'identifier_occurrence' : mode as Query['mode'],
    case_sensitive: options.case_sensitive === true,
    multiline: Object.hasOwn(options, 'multiline') ? options.multiline as boolean : /[\r\n]/u.test(text) || options.dotall === true,
    dotall: options.dotall === true, ...(local.id !== undefined ? { id: local.id } : {}) };
}

export interface ScopeReference { component_oid: string; database: string; ascet_pid?: number; diagram_oid?: string; kind?: string; node?: unknown }
interface NormalizedAgentSearch { request: SearchPageRequest; debug: boolean; groupBy: 'occurrence' | 'object'; expectedPid?: number }
export function normalizeAgentSearch(value: unknown, resolve: (ref: string) => ScopeReference): NormalizedAgentSearch {
  try { return normalizeSearch(value, resolve); }
  catch (error) {
    if (error instanceof ToolError) throw error;
    const message = error instanceof Error ? error.message : String(error);
    const fields: Record<string, string> = { identifier_occurrence: 'identifier', context_before: 'context.before', context_after: 'context.after',
      component_oids: 'in.component', member_names: 'in.member', member_ids: 'in.member_id', kinds: 'in.kind', variants: 'in.variant', implementation_oids: 'in.implementation', diagram_ids: 'in.diagram', diagram_visibilities: 'in.visibility' };
    const publicMessage = message.replace(/\b(identifier_occurrence|context_before|context_after|component_oids|member_names|member_ids|kinds|variants|implementation_oids|diagram_ids|diagram_visibilities)\b/g, key => fields[key]);
    throw new ToolError(message.startsWith('Invalid regular expression:') ? 'INVALID_REGEX' : 'INVALID_REQUEST', publicMessage);
  }
}

function normalizeSearch(value: unknown, resolve: (ref: string) => ScopeReference): NormalizedAgentSearch {
  if (!isRecord(value)) throw new ToolError('INVALID_REQUEST', 'Request must be an object');
  onlyKeys(value, ['operation', 'query', ...patternKeys, 'context', 'in', 'limit', 'database', 'debug', 'group_by']);
  if (Object.hasOwn(value, 'group_by') && !['occurrence', 'object'].includes(value.group_by as string)) throw new ToolError('INVALID_REQUEST', 'group_by must be occurrence or object');
  if (Object.hasOwn(value, 'operation') && value.operation !== 'search') throw new ToolError('INVALID_REQUEST', 'operation must be search, find or read');
  booleanOption(value, 'debug');
  // Check shared options even if every batch entry overrides them.
  pattern('validation', Object.fromEntries(patternKeys.filter(k => Object.hasOwn(value, k)).map(k => [k, value[k]])));
  const defaults = Object.fromEntries(patternKeys.filter(k => Object.hasOwn(value, k)).map(k => [k, value[k]]));
  const input = Array.isArray(value.query) ? value.query : [value.query];
  if (!input.length || input.length > 64) throw new ToolError('INVALID_REQUEST', 'query array must contain 1-64 entries');
  const queries = input.map(item => {
    if (typeof item === 'string') return pattern(item, defaults);
    if (!isRecord(item)) throw new ToolError('INVALID_REQUEST', 'Each query must be a string or {text, mode, ...}');
    onlyKeys(item, ['text', 'id', ...patternKeys]);
    return pattern(item.text, defaults, item);
  });
  let before = 10, after = 10;
  if (Object.hasOwn(value, 'context')) {
    if (typeof value.context === 'number') before = after = value.context;
    else {
      if (!isRecord(value.context)) throw new ToolError('INVALID_REQUEST', 'context must be a number or {before, after}');
      onlyKeys(value.context, ['before', 'after']);
      for (const key of ['before', 'after']) {
        if (Object.hasOwn(value.context, key) && !Number.isInteger(value.context[key])) throw new ToolError('INVALID_REQUEST', 'context values must be integers');
      }
      before = (value.context.before ?? 0) as number; after = (value.context.after ?? 0) as number;
    }
  }
  const limit = Object.hasOwn(value, 'limit') ? value.limit : 50;
  if (!Number.isInteger(limit) || (limit as number) < 1 || (limit as number) > 200) throw new ToolError('INVALID_LIMIT', 'limit must be an integer from 1 to 200');
  let database: string | undefined;
  if (Object.hasOwn(value, 'database')) {
    if (typeof value.database !== 'string' || !value.database) throw new ToolError('INVALID_REQUEST', 'database must be a nonempty path');
    database = value.database;
  }
  let filters: SearchFilters | undefined;
  let expectedPid: number | undefined;
  const pinnedRef = (text: string) => {
    const ref = resolve(text);
    if (database !== undefined && database.toLowerCase() !== ref.database.toLowerCase()) throw new ToolError('SCOPE_DATABASE_MISMATCH', 'Scope refs belong to different databases');
    if (expectedPid !== undefined && ref.ascet_pid !== expectedPid) throw new ToolError('ASCET_RESTARTED', 'Scope refs belong to different ASCET processes; search again');
    database = ref.database; expectedPid = ref.ascet_pid;
    return ref;
  };
  if (Object.hasOwn(value, 'in')) {
    if (!isRecord(value.in)) throw new ToolError('INVALID_REQUEST', 'in must be a scope object');
    const mapping = { component: 'component_oids', member: 'member_names', member_id: 'member_ids', kind: 'kinds',
      variant: 'variants', implementation: 'implementation_oids', visibility: 'diagram_visibilities' } as const;
    onlyKeys(value.in, [...Object.keys(mapping), 'diagram']);
    filters = {};
    for (const [key, field] of Object.entries(mapping)) {
      if (!Object.hasOwn(value.in, key)) continue;
      const raw = value.in[key], values = Array.isArray(raw) ? raw : [raw];
      if (!values.length || values.length > 64 || values.some(v => typeof v !== 'string' || v.length > 256)) {
        throw new ToolError('INVALID_REQUEST', 'Scope fields must be a string or 1-64 strings');
      }
      filters[field] = values.map(v => {
        if (key !== 'component') return v as string;
        if (v.includes(':')) return pinnedRef(v).component_oid;
        if (!/^[0-9a-z]{29}$/i.test(v)) throw new ToolError('INVALID_REQUEST',
          'in.component requires a 29-character ASCET OID or a same-session result ref; use find with component to resolve a name or path');
        return v as string;
      });
    }
    if (Object.hasOwn(value.in, 'diagram')) {
      const raw = value.in.diagram, values = Array.isArray(raw) ? raw : [raw];
      if (!values.length || values.length > 64 || values.some(v => typeof v !== 'string' || !v || v.length > 128)) throw new ToolError('INVALID_REQUEST', 'in.diagram accepts 1-64 returned Diagram refs or source OIDs');
      filters.diagram_ids = values.map(v => {
        if (v.includes(':')) {
          const ref = pinnedRef(v);
          if (ref.kind !== 'diagram' || !ref.diagram_oid || ref.node) throw new ToolError('INVALID_REQUEST', 'in.diagram requires a whole Diagram ref; use in.component for other result refs');
          return ref.component_oid + '/' + ref.diagram_oid;
        }
        if (!/^[0-9a-z]{29}$/i.test(v) || filters!.component_oids?.length !== 1) throw new ToolError('INVALID_REQUEST', 'A Diagram source OID requires exactly one explicit in.component; use Diagram refs across Components');
        return filters!.component_oids![0] + '/' + v;
      });
    }
    if ((filters.diagram_ids || filters.diagram_visibilities) && filters.kinds?.some(k => k !== 'diagram' && !k.startsWith('state_') && !k.startsWith('transition_'))) throw new ToolError('INVALID_REQUEST', 'Diagram scope accepts only diagram, State and Transition source kinds');
    if (filters.kinds?.includes('graphical_method')) throw new ToolError('INVALID_REQUEST', 'Use in.kind:diagram for BDE and Init; Diagram results list their Methods in diagram_methods.');
    filters = validateFilters(filters);
  }
  const legacy = { queries, context_before: before, context_after: after, result_format: 'expanded' as const,
    ...(database !== undefined ? { expected_database: database } : {}), ...(filters ? { filters } : {}) };
  validateSearch(legacy);
  return { request: { ...legacy, operation: 'search_page', limit: limit as number }, expectedPid, debug: value.debug === true, groupBy: value.group_by === 'object' ? 'object' : 'occurrence' };
}
