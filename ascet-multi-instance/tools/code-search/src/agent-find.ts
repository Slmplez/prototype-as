import { normalizeAgentSearch, onlyKeys, type ScopeReference } from './agent-validation.js';
import { ToolError } from './patterns.js';
import { decodeResponse, sha256, identity, identityJson } from './protocol.js';
import { projectAgentSnapshot } from './agent-projection.js';
import { performance } from 'node:perf_hooks';
import type { Reader, Snapshot, SourceDocument, NativeResponse, SearchFilters } from './types.js';
import type { SearchExecution } from './search.js';

/** One name condition for the selected directory; legacy fields remain compatible. */
export function normalizeFindName(input: Record<string, unknown>): Record<string, unknown> {
  if (!Object.hasOwn(input, 'name')) return input;
  const target = input.target ?? 'members';
  const field = target === 'components' ? 'component' : target === 'diagrams' ? 'diagram' : target === 'members' ? 'member' : undefined;
  if (!field) return input;
  if (Object.hasOwn(input, field) && input[field] !== input.name) {
    throw new ToolError('INVALID_REQUEST', 'name conflicts with ' + field + '; use one name condition for target:' + target);
  }
  const { name, ...rest } = input;
  return { ...rest, [field]: name };
}

/** Literal name discovery, with no source-text matching and no retained source index. */
export async function prepareAgentFind(input: Record<string, unknown>, resolve: (ref: string) => ScopeReference, reader: Reader, isClosed: () => boolean) {
  input = normalizeFindName(input);
  const guard = () => { if (isClosed()) throw new ToolError('SESSION_CLOSED', 'Agent session closed during name discovery'); };
  onlyKeys(input, ['operation', 'target', 'component', 'member', 'diagram', 'match', 'case_sensitive', 'in', 'limit', 'database', 'debug']);
  const target = Object.hasOwn(input, 'target') ? input.target : 'members';
  const mode = Object.hasOwn(input, 'match') ? input.match : 'contains';
  if (target !== 'members' && target !== 'components' && target !== 'diagrams') throw new ToolError('INVALID_REQUEST', 'find.target must be members, components or diagrams');
  if (input.diagram !== undefined && target !== 'diagrams') throw new ToolError('INVALID_REQUEST', 'Use target:diagrams for a Diagram name condition');
  if (mode !== 'exact' && mode !== 'contains') throw new ToolError('INVALID_REQUEST', 'find.match must be exact or contains');
  for (const name of ['component', 'member', 'diagram']) if (Object.hasOwn(input, name) &&
    (typeof input[name] !== 'string' || !input[name] || (input[name] as string).length > 256 || /[\r\n\0]/.test(input[name] as string))) {
    throw new ToolError('INVALID_REQUEST', name + ' must contain 1-256 characters without line breaks');
  }
  const normalized = normalizeAgentSearch({ query: '(?<![\\s\\S])', mode: 'regex', multiline: true, context: 0,
    ...Object.fromEntries(['case_sensitive', 'in', 'limit', 'database', 'debug'].filter(k => Object.hasOwn(input, k)).map(k => [k, input[k]])) }, resolve);
  const filters = normalized.request.filters;
  const upstream = reader;
  reader = { request: async request => {
    const raw = await upstream.request(request);
    if (normalized.expectedPid !== undefined && raw.ascet_pid !== normalized.expectedPid) throw new ToolError('ASCET_RESTARTED', 'Scope ref belongs to another ASCET process; search again');
    return raw;
  } };
  if (target === 'diagrams' && filters?.kinds?.some(k => k !== 'diagram')) throw new ToolError('INVALID_REQUEST', 'target:diagrams accepts only in.kind:diagram');
  if (target === 'components' && (input.member !== undefined || Object.keys(filters ?? {}).some(k => k !== 'component_oids'))) {
    throw new ToolError('INVALID_REQUEST', 'Component discovery accepts component names and in.component; member/code filters require target:members');
  }
  const fold = (s: string) => input.case_sensitive ? s : s.toLowerCase();
  const nameMatches = (value: string, name: unknown) => name === undefined ||
    (mode === 'exact' ? fold(value) === fold(name as string) : fold(value).includes(fold(name as string)));
  const componentMatches = (path: string) => nameMatches(path, input.component) || nameMatches(path.split(/[\\/]/).at(-1)!, input.component);
  let catalog: NativeResponse | undefined, componentIDs: string[] | undefined;
  let catalogMs = 0;
  if (target === 'components' || input.component !== undefined) {
    const started = performance.now();
    catalog = await reader.request({ mode: 'catalog',
      ...(normalized.request.expected_database ? { expected_database: normalized.request.expected_database } : {}),
      ...(filters?.component_oids ? { filters: { component_oids: filters.component_oids } } : {}) });
    catalogMs = performance.now() - started;
    guard();
    if (normalized.request.expected_database && catalog.database.toLowerCase() !== normalized.request.expected_database.toLowerCase()) {
      throw new ToolError('DATABASE_CHANGED', 'Database changed during name discovery');
    }
    componentIDs = decodeResponse(catalog).components.filter(c => componentMatches(c.path) &&
      (!filters?.component_oids || filters.component_oids.includes(c.oid))).map(c => c.oid);
  }
  const projectSnapshot = (saved: Snapshot): Snapshot => {
    if (target === 'diagrams' && saved.diagram_scope_version !== 1) throw new ToolError('BRIDGE_UPGRADE_REQUIRED', 'Diagram discovery requires the current native bridge');
    if (target === 'components') return { ...saved, documents: saved.components
      .filter(c => componentIDs!.includes(c.oid)).map(c => ({ kind: 'component', component_oid: c.oid, component_path: c.path,
        implementation_oid: '', variant: '', member_id: '', member_name: '', language: c.type, text: '',
        document_id: 'component:' + c.oid, source_sha256: sha256(JSON.stringify(c)) } satisfies SourceDocument)) };
    const stateDiagrams: SourceDocument[] = target === 'diagrams' ? (saved.state_diagrams ?? []).map(d => {
      const owner = saved.components.find(c => c.oid === d.component_oid)!;
      const doc: SourceDocument = { kind: 'diagram', diagram_type: 'state_machine', component_oid: d.component_oid,
        component_path: owner.path, implementation_oid: '', variant: 'ASDL', member_id: d.diagram_source_oid,
        member_name: d.diagram_name, language: 'state_model', text: '', graphical_location: {
          specification_source_oid: d.diagram_source_oid, specification_name: d.diagram_name },
        ...(d.visibility ? { visibility: d.visibility } : {}), document_id: '', source_sha256: sha256(JSON.stringify(d)) };
      doc.document_id = sha256(identityJson(identity(doc))); return doc;
    }) : [];
    const snapshot = projectAgentSnapshot({ ...saved, documents: [...saved.documents, ...stateDiagrams] });
    return { ...snapshot, documents: snapshot.documents.filter(d =>
      (target !== 'diagrams' || (d.kind === 'diagram' && nameMatches(d.member_name, input.diagram))) &&
      (!componentIDs || componentIDs.includes(d.component_oid)) && componentMatches(d.component_path) && (nameMatches(d.member_name, input.member) || d.diagram_methods?.some(m => nameMatches(m.name, input.member))))
      // Match exactly once per metadata record, including empty Methods. Preserve the live source hash for read.
      .map(({ search_spans: _spans, diagram_fields: _fields, ...d }) => ({ ...d, text: '',
        ...(d.kind === 'diagram' && input.member !== undefined ? {
          matched_members: (d.diagram_methods ?? []).filter(m => nameMatches(m.name, input.member)).map(m => ({ name: m.name, kind: m.kind }))
        } : {}) })) };
  };
  let execution: SearchExecution;
  if (target === 'components' || componentIDs?.length === 0) execution = { nativeResponse: { ...catalog!,
    timings: { ...catalog!.timings, find_catalog_ms: catalogMs, find_sources_ms: 0 } }, projectSnapshot };
  else {
    const nativeFilters: SearchFilters = { ...filters,
      // State Diagram metadata is emitted through the native State source path,
      // including empty Diagrams. It is projected as scope, never as BDE code.
      ...(target === 'diagrams' ? { kinds: ['diagram', 'state_entry'] } : {}),
      ...(componentIDs && componentIDs.length <= 64 ? { component_oids: componentIDs } : {}) };
    const nativeReader: Reader = { request: async request => {
      guard();
      const raw = await reader.request(request);
      guard();
      if (request.expected_database && raw.database.toLowerCase() !== request.expected_database.toLowerCase()) {
        throw new ToolError('DATABASE_CHANGED', 'Database changed during name discovery');
      }
      if (catalog && (raw.database.toLowerCase() !== catalog.database.toLowerCase() || raw.ascet_pid !== catalog.ascet_pid)) {
        throw new ToolError('DATABASE_CHANGED', 'ASCET Database/process changed during name discovery; retry in the intended database');
      }
      return raw;
    } };
    // Pin both phases to the same database; PID is also checked when the response is received.
    const native = { mode: 'search_many' as const, needle: '', filters: nativeFilters,
      ...(input.diagram !== undefined ? { diagram_name: { text: input.diagram as string, match: mode as 'exact' | 'contains', case_sensitive: input.case_sensitive === true } } : {}),
      ...(catalog ? { expected_database: catalog.database } : normalized.request.expected_database ? { expected_database: normalized.request.expected_database } : {}) };
    const started = performance.now(), raw = await nativeReader.request(native);
    execution = { nativeResponse: { ...raw, timings: { ...raw.timings,
      find_catalog_ms: catalogMs, find_sources_ms: performance.now() - started } }, projectSnapshot };
  }
  return { ...normalized, target: target as 'members' | 'components' | 'diagrams', execution: { ...execution, expectedPid: normalized.expectedPid } };
}
