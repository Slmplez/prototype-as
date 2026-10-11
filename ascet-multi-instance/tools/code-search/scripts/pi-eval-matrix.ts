import type { Snapshot, SourceDocument, DiagramBody } from '../src/types.js';
import type { AgentEvidence } from '../src/agent-evidence.js';

export interface MatrixScope { component?: string | string[]; kind?: string; member?: string; variant?: string; implementation?: 'present' | 'absent'; visibility?: string[] }
export interface MatrixRubric {
  type: 'catalog' | 'search' | 'read' | 'local' | 'diagram' | 'recovery' | 'unsupported';
  scope?: MatrixScope; target?: string; name?: string; match?: 'exact' | 'contains'; object_kind?: string;
  queries?: { text: string; mode?: string; case_sensitive?: boolean; id?: string }[];
  mode?: string; case_sensitive?: boolean; context?: { before: number; after: number };
  pagination?: 'consume' | 'replay' | 'incomplete'; query_objects?: boolean;
  lines?: { start: number; end: number }; full?: boolean; paged?: boolean; batch_order?: boolean;
  /** Explicit per-case contract: requested boundaries (legacy) or actual saved inclusive lines. */
  line_facts?: 'requested' | 'selected';
  min_variants?: number;
  diagram?: string; diagram_oid?: string; node?: string; node_id?: number; hierarchy?: string; depth?: number; direction?: string;
  profile?: 'empty' | 'getter' | 'budget' | 'encoded_refs' | 'scope_name' | 'wrong_cursor_tool' | 'invalid_regex';
  flags?: Record<string, boolean>;
}
export interface MatrixCase { id: string; group?: string; expected_outcome?: string; rubric?: MatrixRubric; score_as?: string; requirement?: string; response_fields?: string }

/** V5 never adds a final-answer code field absent from the frozen requirement. */
export function declaresSlotCodeFact(task: MatrixCase, gradingVersion: number): boolean {
  if (gradingVersion < 5 || task.requirement === undefined && task.response_fields === undefined) return true;
  const fields = task.response_fields ?? '';
  const declared = task.requirement?.match(/\bfacts\s*[:：]\s*([\s\S]*)/iu)?.[1] ?? '';
  return /\bcode\b/u.test(fields + ' ' + declared) || /\bfacts\.code\b/u.test(task.requirement ?? '');
}
export interface MatrixRow { tool: string; args: any; response: any; is_error: boolean }
export interface MatrixCheck { name: string; passed: boolean; detail?: string }
/** Match the effective supported queries, independent of their argument spelling. */
export function isIdentifierBatch(row: MatrixRow, terms: string[]): boolean {
  const queries = row.response?.searches;
  return !row.is_error && Array.isArray(row.args.query) && row.args.query.length === terms.length &&
    Array.isArray(queries) && queries.length === terms.length && queries.every(q => q && q.mode === 'identifier' && typeof q.query === 'string') &&
    JSON.stringify(queries.map(q => q.query).sort()) === JSON.stringify([...terms].sort());
}
export function hasNativeObjectEvidence(values: any[], diagram: DiagramBody, name: string): boolean {
  const node = diagram.nodes.find(n => n.name === name);
  if (!node) return false;
  const pins = diagram.pins.filter(p => p.node_id === node.id && p.scope === node.scope);
  return values.some(value => {
    if (value.diagram_oid !== diagram.source_oid) return false;
    if (value.object?.name === node.name && value.object.kind === node.kind && (value.object.hierarchy ?? 'root') === node.scope &&
      pins.every(pin => value.pins?.some((p: any) => p.id === pin.id && p.object_ref === value.ref))) return true;
    return value.graph?.nodes?.some((n: any) => n.id === node.id && n.scope === node.scope && n.name === node.name && n.kind === node.kind) &&
      pins.every(pin => value.graph.pins?.some((p: any) => p.id === pin.id && p.scope === pin.scope && p.node_id === pin.node_id && p.name === pin.name));
  });
}
/** A full, byte-verified saved listing is equivalent evidence to a graph/object read. */
export function hasNativeDiagramListing(values: any[], source: Snapshot, diagram: DiagramBody): boolean {
  const document = source.documents.find(d => d.kind === 'diagram' && d.component_oid === diagram.component_oid &&
    d.graphical_location?.specification_source_oid === diagram.source_oid);
  return Boolean(document && values.some(v => v.component_path === document.component_path && v.diagram_oid === diagram.source_oid &&
    v.has_more !== true && typeof v.diagram_text === 'string' && normal(v.diagram_text) === normal(document.text)));
}
/** Re-discovery can assign a new ref to the same State; compare its native owner and topology identity. */
export function hasReadStateIdentity(values: any[], endpoint: any, owner: any): boolean {
  if (!endpoint) return false;
  return values.some(v => v.ref === endpoint.ref || (endpoint.state_id !== undefined && v.kind === 'state' &&
    v.state_id === endpoint.state_id && v.component_path === owner.component_path && v.diagram_oid === owner.diagram_oid &&
    JSON.stringify(v.state_hierarchy_ids ?? []) === JSON.stringify(endpoint.state_hierarchy_ids ?? [])));
}
export function requestedMatrixError(r: MatrixRubric | undefined, row: MatrixRow, previous: MatrixRow[]): boolean {
  if (!row.is_error || !r) return false;
  if (r.type === 'diagram' && r.profile === 'budget') return row.tool === 'ascet_code_read' && Boolean(row.args.include_graph) && ['PAGE_TOO_LARGE', 'OUTPUT_BUDGET_EXCEEDED'].includes(row.response?.code);
  if (r.type !== 'recovery') return false;
  if (r.profile === 'encoded_refs') return encodedRefValidation(row) && !previous.some(encodedRefValidation);
  if (r.profile === 'scope_name') return row.tool === 'ascet_code_search' && row.response?.code === 'INVALID_REQUEST' && row.args.in?.component === r.scope?.component;
  if (r.profile === 'invalid_regex') return row.tool === 'ascet_code_search' && row.response?.code === 'INVALID_REGEX' && row.args.query === '[' && row.args.mode === 'regex';
  if (r.profile !== 'wrong_cursor_tool') return false;
  const prior = previous.find(p => !p.is_error && p.tool !== row.tool && p.response?.next_cursor === row.args?.cursor && row.args?.cursor);
  if (!prior) return false;
  if (row.response?.code === 'CURSOR_TOOL_MISMATCH') return true;
  // Older frozen runs reached the public Pi schema before the task facade and
  // recorded PI_TOOL_ERROR for {target, cursor}. Treat that as the same
  // deliberate recovery attempt when reassessing old raw evidence; new builds
  // normalize it before validation and return CURSOR_TOOL_MISMATCH directly.
  return row.response?.code === 'PI_TOOL_ERROR' && Object.keys(row.args ?? {}).includes('cursor') &&
    Object.keys(row.args ?? {}).some(key => key !== 'cursor') && typeof row.response?.message === 'string' &&
    row.response.message.includes('cursor');
}
function encodedRefValidation(row: MatrixRow): boolean {
  if (!row.is_error || row.tool !== 'ascet_code_read' || typeof row.args.ref !== 'string') return false;
  let refs: unknown;
  try { refs = JSON.parse(row.args.ref); } catch { return false; }
  if (!Array.isArray(refs) || refs.length < 2 || !refs.every(ref => typeof ref === 'string')) return false;
  return row.response?.code === 'INVALID_REQUEST' || (row.response?.code === 'PI_TOOL_ERROR' &&
    typeof row.response.message === 'string' && row.response.message.startsWith('Validation failed for tool "ascet_code_read":') &&
    /(?:^|\n)\s*- ref:/.test(row.response.message));
}
const normal = (s: string) => s.replaceAll('\r\n', '\n').replaceAll('\r', '\n');
const array = (value: any): any[] => Array.isArray(value) ? value : [];
const contents = (response: any): any[] => response?.results ?? (response ? [response] : []);
const canonical = (v: any): any => Array.isArray(v) ? v.map(canonical) : v && typeof v === 'object' ? Object.fromEntries(Object.keys(v).sort().map(k => [k, canonical(v[k])])) : v;
const same = (a: unknown, b: unknown) => JSON.stringify(canonical(a)) === JSON.stringify(canonical(b));
const set = (a: any[], b: any[]) => same(a.map(v => JSON.stringify(canonical(v))).sort(), b.map(v => JSON.stringify(canonical(v))).sort());
const ownerName = (path: string) => path.split('\\').at(-1)!;
const exactFilter = (actual: any, expected: string) => actual === expected || (Array.isArray(actual) && actual.length === 1 && actual[0] === expected);

function continuationChain(first: MatrixRow, rows: MatrixRow[]): MatrixRow[] {
  const pages = [first], visited = new Set<string>();
  let index = rows.indexOf(first), page = first;
  while (page.response?.has_more && typeof page.response.next_cursor === 'string' && !visited.has(page.response.next_cursor)) {
    const cursor = page.response.next_cursor; visited.add(cursor);
    const next = rows.findIndex((row, i) => i > index && row.tool === first.tool && row.args.cursor === cursor && !row.is_error && ['ok', 'partial'].includes(row.response?.status));
    if (next < 0) break;
    page = rows[next]; pages.push(page); index = next;
  }
  return pages;
}

export function matrixDocuments(source: Snapshot, scope: MatrixScope = {}): SourceDocument[] {
  const owners = typeof scope.component === 'string' ? [scope.component] : scope.component;
  return source.documents.filter(d => (!owners || owners.some(o => o === d.component_path || o === ownerName(d.component_path))) &&
    (!scope.kind || d.kind === scope.kind) && (!scope.member || d.member_name === scope.member || d.diagram_methods?.some(m => m.name === scope.member)) &&
    (!scope.variant || d.variant === scope.variant) && (!scope.visibility || scope.visibility.includes(d.visibility ?? '')) && (!scope.implementation || Boolean(d.implementation_oid) === (scope.implementation === 'present')));
}
function identity(d: SourceDocument) {
  return { component_path: d.component_path, kind: d.kind, member: d.member_name, variant: d.variant, implementation: d.implementation_oid };
}
export function matrixIdentity(value: any) {
  return { component_path: value.component_path, kind: value.kind, member: value.member ?? value.method ?? value.process ?? value.state ?? value.transition ?? value.diagram ?? '',
    variant: value.variant, implementation: value.implementation ?? '' };
}
function graph(source: Snapshot, scope: MatrixScope = {}, diagram?: string, oid?: string): DiagramBody {
  const owners = typeof scope.component === 'string' ? [scope.component] : scope.component;
  const found = source.diagrams?.find(d => (!diagram || d.name === diagram) && (!oid || d.source_oid === oid) && source.components.some(c => c.oid === d.component_oid &&
    (!owners || owners.some(o => o === c.path || o === ownerName(c.path)))));
  if (!found) throw new Error('Missing graph fixture: ' + JSON.stringify({ scope, diagram }));
  return found;
}
function catalog(source: Snapshot, r: MatrixRubric): any[] {
  const text = r.name, match = (v: string) => !text || (r.match === 'exact' ? v === text : v.includes(text));
  if (r.target === 'components') return source.components.filter(c => match(c.path) || match(ownerName(c.path)))
    .map(c => ({ component_path: c.path, component_type: c.type }));
  if (r.target === 'objects') {
    const g = graph(source, r.scope, r.diagram, r.diagram_oid), path = source.components.find(c => c.oid === g.component_oid)!.path;
    return g.nodes.filter(n => match(n.name) && (!r.object_kind || n.kind === r.object_kind))
      .map(n => ({ component_path: path, diagram: g.name, name: n.name, kind: n.kind, node_id: n.id, hierarchy: n.scope }));
  }
  if (r.target === 'diagrams') {
    const owners = typeof r.scope?.component === 'string' ? [r.scope.component] : r.scope?.component;
    return source.diagrams!.filter(g => match(g.name) && (!r.scope?.visibility || r.scope.visibility.includes(g.visibility ?? '')) && source.components.some(c => c.oid === g.component_oid &&
      (!owners || owners.some(o => o === c.path || o === ownerName(c.path)))))
      .map(g => ({ component_path: source.components.find(c => c.oid === g.component_oid)!.path, diagram: g.name, visibility: g.visibility }));
  }
  return matrixDocuments(source, r.scope).filter(d => match(d.member_name) || d.diagram_methods?.some(m => match(m.name))).map(identity);
}
function queryCounts(source: Snapshot, r: MatrixRubric) {
  const docs = matrixDocuments(source, r.scope);
  return r.queries!.map(q => {
    const mode = q.mode ?? r.mode ?? 'text', sensitive = q.case_sensitive ?? r.case_sensitive ?? false;
    let total = 0;
    for (const d of docs) {
      const text = normal(d.text), hay = sensitive ? text : text.toLowerCase(), needle = sensitive ? q.text : q.text.toLowerCase();
      const spans = d.kind === 'diagram' ? d.search_spans ?? [] : [{ start: 0, end: text.length }];
      const valid = (a: number, b: number) => spans.some(span => span.start <= a && span.end >= b);
      if (mode === 'regex') {
        for (const m of text.matchAll(new RegExp(q.text, 'gu' + (sensitive ? '' : 'i')))) if (m[0].length && valid(m.index!, m.index! + m[0].length)) total++;
      } else {
        for (let pos = 0; pos <= hay.length - needle.length;) {
          const at = hay.indexOf(needle, pos); if (at < 0) break;
          const boundary = mode !== 'identifier' || ((!/[A-Za-z_0-9]/.test(hay[at - 1] ?? '')) && (!/[A-Za-z_0-9]/.test(hay[at + needle.length] ?? '')));
          if (boundary && valid(at, at + needle.length)) total++;
          pos = at + Math.max(needle.length, 1);
        }
      }
    }
    return { query: q.text, total_hits: total, ...(q.id ? { id: q.id } : {}) };
  });
}

/** Native fixtures stay in the evaluator; no expected answers enter the Pi prompt. */
export function matrixFixture(source: Snapshot, r: MatrixRubric): any {
  if (r.type === 'catalog') return catalog(source, r);
  if (r.type === 'search') return queryCounts(source, r);
  if (r.type === 'read') {
    const docs = matrixDocuments(source, r.scope);
    if (!docs.length) throw new Error('Missing saved text fixture: ' + JSON.stringify(r.scope));
    return docs;
  }
  if (r.type === 'local' || r.type === 'diagram') {
    const g = graph(source, r.scope, r.diagram, r.diagram_oid);
    if (r.type === 'local' && !g.nodes.some(n => n.name === r.node && (r.node_id === undefined || n.id === r.node_id) && (!r.object_kind || n.kind === r.object_kind) && (!r.hierarchy || n.scope === r.hierarchy))) throw new Error('Missing native node fixture: ' + r.node);
    return g;
  }
  if (r.type === 'recovery') return matrixDocuments(source, r.scope);
  if (r.type === 'unsupported') return r.flags;
  throw new Error('Unsupported matrix rubric');
}

export function gradeMatrixCase(task: MatrixCase, rows: MatrixRow[], facts: any, source: Snapshot, ledger: AgentEvidence, cited: ReadonlySet<string> = new Set(), referenceRows: MatrixRow[] = rows, gradingVersion = 1): MatrixCheck[] {
  const r = task.rubric;
  if (!r) throw new Error('No matrix rubric for ' + task.id);
  const checks: MatrixCheck[] = [], check = (name: string, passed: unknown, detail?: string) => checks.push({ name, passed: Boolean(passed), ...(detail ? { detail } : {}) });
  const ok = rows.filter(row => !row.is_error && ['ok', 'partial'].includes(row.response?.status));
  const readRows = ok.filter(row => row.tool === 'ascet_code_read'), read = readRows.flatMap(row => contents(row.response));
  const refs = new Map<string, string>();
  const collect = (v: any, owner?: string) => {
    if (!v || typeof v !== 'object') return;
    if (!Array.isArray(v) && v.component_path && (v.variant !== undefined || v.component_type !== undefined || !v.kind)) owner = v.component_path;
    if (v.ref && owner) refs.set(v.ref, owner);
    for (const [key, value] of Object.entries(v)) if (key !== 'graph' && value && typeof value === 'object') collect(value, owner);
  };
  for (const row of referenceRows.filter(row => !row.is_error)) collect(row.response);
  const scopeOK = (row: MatrixRow) => {
    if (!r.scope?.component) return true;
    const names = typeof r.scope.component === 'string' ? [r.scope.component] : r.scope.component;
    const paths = names.map(n => source.components.find(c => c.path === n || ownerName(c.path) === n)?.path);
    // A whole Diagram ref pins its owning Component in the public CLI contract.
    const diagramScope = row.args.in?.component === undefined && row.args.in?.diagram !== undefined;
    const selector = diagramScope ? row.args.in.diagram : row.args.in?.component;
    const inputs = Array.isArray(selector) ? selector : [selector];
    const resolved = inputs.map((v: string) => refs.get(v) ?? (diagramScope ? undefined : source.components.find(c => c.oid === v)?.path));
    // Several member refs can select the same owner; scope arrays have OR/set semantics.
    return set([...new Set(resolved)], [...new Set(paths)]) && resolved.every(Boolean);
  };
  const fixture = matrixFixture(source, r);
  if (r.type === 'catalog') {
    const candidates = ok.filter(row => {
      const exactMember = (r.target ?? 'members') === 'members' && r.match === 'exact' && r.name !== undefined && exactFilter(row.args.in?.member, r.name);
      return row.tool === 'ascet_code_find' && !row.args.cursor && (row.args.target ?? 'members') === (r.target ?? 'members') &&
        (!r.name || row.args.name === r.name || row.args.member === r.name || exactMember) && (!r.match || row.args.match === r.match || exactMember);
    });
    const directoryOwners = Array.isArray(r.scope?.component) ? r.scope.component.map(name => source.components.find(c => c.path === name || ownerName(c.path) === name)?.path) : undefined;
    const selectedOwners = (row: MatrixRow) => {
      const selector = row.args.in?.component ?? row.args.in?.diagram;
      return array(Array.isArray(selector) ? selector : selector ? [selector] : [])
        .map((ref: string) => refs.get(ref) ?? source.components.find(c => c.oid === ref)?.path);
    };
    const splitScopeOK = (row: MatrixRow) => gradingVersion >= 4 && directoryOwners?.every(Boolean) && selectedOwners(row).length > 0 &&
      selectedOwners(row).every(path => Boolean(path) && directoryOwners.includes(path));
    const directoryScopeOK = (row: MatrixRow) => !r.scope?.component || scopeOK(row) || splitScopeOK(row) ||
      (typeof r.scope.component === 'string' && row.args.component === r.scope.component && row.args.match === 'exact');
    const calls = candidates.filter(directoryScopeOK), first = calls[0];
    check('required_directory', first);
    if (r.object_kind) check('native_object_type_filter', exactFilter(first?.args.in?.object_kind, r.object_kind));
    const returned = calls.flatMap(row => contents(row.response));
    const normalized = (v: any) => r.target === 'components' ? { component_path: v.component_path, component_type: v.component_type }
      : r.target === 'diagrams' ? { component_path: v.component_path, diagram: v.diagram, visibility: v.visibility }
        : r.target === 'objects' ? { component_path: v.component_path, diagram: v.diagram, name: v.name, kind: v.kind, node_id: v.node_id, hierarchy: v.hierarchy ?? 'root' } : matrixIdentity(v);
    // A completed equivalent discovery may supersede a smaller first page.
    const final = calls.find(row => row.response.status === 'ok' && !row.response.has_more && set(contents(row.response).map(normalized), fixture));
    const pages = first ? continuationChain(first, rows) : [];
    const continuation = pages.slice(1).flatMap(row => contents(row.response));
    const last = pages.at(-1);
    const splitPages = calls.map(row => continuationChain(row, rows));
    const splitComplete = splitPages.length > 0 && splitPages.every(chain => chain.at(-1)?.response.status === 'ok' && chain.at(-1)?.response.has_more === false) &&
      set([...new Map(splitPages.flatMap(chain => chain.flatMap(row => contents(row.response))).map(v => [JSON.stringify(normalized(v)), normalized(v)])).values()], fixture);
    const ownersCovered = gradingVersion < 4 || !directoryOwners || directoryOwners.every(path => calls.some(row => {
      const last = continuationChain(row, rows).at(-1);
      return selectedOwners(row).includes(path) && last?.response.status === 'ok' && last.response.has_more === false;
    }));
    const complete = ownersCovered && (final || (last?.response.status === 'ok' && last.response.has_more === false && set(pages.flatMap(row => contents(row.response)).map(normalized), fixture)) || splitComplete);
    check('native_directory_complete', complete);
    check('relevant_directory_citation', returned.some(v => cited.has(v.ref)) || splitPages.some(chain => chain.some(row => contents(row.response).some(v => cited.has(v.ref)))));
    check('directory_facts', facts.total_count === fixture.length && Array.isArray(facts.results) && set(facts.results.map(normalized), fixture));
    if (r.pagination) checkPagination(rows, first, r.pagination, check);
    if (r.scope?.variant) check('variant_filter_used', calls.some(row => exactFilter(row.args.in?.variant, r.scope!.variant!)));
    if (r.scope?.visibility) {
      const allowed = r.scope.visibility;
      check('visibility_union_used', calls.some(row => set(array(row.args.in?.visibility), allowed)) ||
        (set(allowed, ['public', 'private']) && calls.some(row => row.args.in?.visibility === undefined) && Boolean(complete)) ||
        (splitComplete && set([...new Set(calls.flatMap(row => typeof row.args.in?.visibility === 'string' ? [row.args.in.visibility] : array(row.args.in?.visibility)))], allowed)));
    }
    if (r.scope?.implementation) check('implementation_identity_used', calls.some(row => row.args.in?.implementation && returned.some(v => v.implementation && (Array.isArray(row.args.in.implementation) ? row.args.in.implementation : [row.args.in.implementation]).includes(v.implementation))));
  } else if (r.type === 'search') {
    const queryMatches = (row: MatrixRow) => row.response.searches?.length === r.queries!.length && row.response.searches.every((s: any, i: number) =>
      s.query === r.queries![i].text && s.mode === (r.queries![i].mode ?? r.mode ?? 'text') &&
      ((r.queries![i].case_sensitive ?? r.case_sensitive) === undefined || Boolean(s.case_sensitive) === (r.queries![i].case_sensitive ?? r.case_sensitive)));
    const candidates = ok.filter(row => row.tool === 'ascet_code_search' && !row.args.cursor && queryMatches(row) && scopeOK(row));
    const first = candidates[0];
    check('required_search_and_scope', first);
    check('native_counts', candidates.some(row => row.response.searches.every((s: any, i: number) => s.total_hits === fixture[i].total_hits)));
    const pages = candidates.flatMap(row => continuationChain(row, rows));
    check('relevant_search_citation', fixture.every((q: any, i: number) => q.total_hits === 0 || pages.some(row => row.response.searches?.[i]?.results.some((v: any) => cited.has(v.ref)))));
    const counts = Array.isArray(facts.counts) ? facts.counts.map((q: any, i: number) => ({ query: q?.query, total_hits: q?.total_hits, ...(fixture[i]?.id ? { id: q?.id } : {}) })) : undefined;
    check('search_count_facts', same(counts, fixture));
    if (r.query_objects) check('query_objects_used', candidates.some(row => Array.isArray(row.args.query) && row.args.query.every((q: any) => typeof q === 'object')));
    if (r.queries?.some(q => q.id)) check('query_ids_preserved', candidates.some(row => row.response.searches.every((s: any, i: number) => s.id === r.queries![i].id)));
    if (r.scope?.kind) check('kind_filter_used', candidates.some(row => exactFilter(row.args.in?.kind, r.scope!.kind!)));
    if (r.scope?.member) check('member_filter_used', candidates.some(row => exactFilter(row.args.in?.member, r.scope!.member!)));
    if (r.context) check('asymmetric_context_used', candidates.some(row => same(row.args.context, r.context)) && facts.before === r.context.before && facts.after === r.context.after);
    if (r.pagination) checkPagination(rows, first, r.pagination, check);
    if (r.pagination === 'incomplete') check('truncation_facts', facts.complete === false && facts.has_more === true && candidates.length === 1 && !ledger.hasCompleteSearch({ ...first?.args, operation: 'search' }));
    else check('complete_query', candidates.some(row => ledger.hasCompleteSearch({ ...row.args, operation: 'search' })));
  } else if (r.type === 'read') {
    const docs = fixture as SourceDocument[], matches = read.filter(v => docs.some(d => same(identity(d), matrixIdentity(v))));
    check('correct_saved_members_read', matches.length > 0);
    check('relevant_read_citation', matches.some(v => cited.has(v.ref)));
    if (r.batch_order) {
      const batches = readRows.filter(row => Array.isArray(row.args.ref) && row.args.ref.length === 3 && row.args.ref[0] === row.args.ref[2] && row.args.ref[0] !== row.args.ref[1]);
      check('duplicate_batch_order', batches.some(row => contents(row.response).every((v: any, i: number) => v.ref === row.args.ref[i]) && contents(row.response).every((v: any) => docs.some(d => same(identity(d), matrixIdentity(v)))) && new Set(contents(row.response).map((v: any) => v.method)).size >= 2));
      check('order_facts', facts.order_preserved === true && facts.duplicates_preserved === true);
    } else {
      const chosen = docs.find(d => same(identity(d), matrixIdentity(facts.identity ?? {})));
      const chosenReads = chosen ? matches.filter(v => same(identity(chosen), matrixIdentity(v))) : [];
      check('member_identity_facts', chosen && chosenReads.length > 0);
      check('line_count_facts', chosen && facts.total_lines === normal(chosen.text).split('\n').length);
      if (r.full) check('complete_source_read', chosenReads.some(v => ledger.get(v.ref)?.complete_text));
      if (r.min_variants) check('distinct_variants_read', new Set(matches.filter(v => ledger.get(v.ref)?.complete_text).map(v => v.variant)).size >= r.min_variants && Array.isArray(facts.variants) && new Set(facts.variants).size >= r.min_variants && facts.variants.every((variant: string) => matches.some(v => v.variant === variant)));
      if (r.lines) {
        check('requested_line_range', readRows.some(row => same(row.args.lines, r.lines) && contents(row.response).some((v: any) => matches.includes(v))));
        const actualEnd = chosen ? Math.min(r.lines.end, normal(chosen.text).split('\n').length) : undefined;
        check('line_range_facts', facts.start_line === r.lines.start && facts.end_line === (r.line_facts === 'selected' ? actualEnd : r.lines.end));
        check('no_unbounded_target_read', readRows.every(row => row.args.cursor || !contents(row.response).some((v: any) => matches.includes(v)) || Boolean(row.args.lines)));
      }
      if (r.paged) {
        check('read_continuation_used', readRows.some(row => row.args.cursor) && matches.some(v => ledger.get(v.ref)?.complete_text));
        check('page_count_facts', facts.pages_read === matches.length && facts.pages_read > 1 && facts.complete === true);
      }
      if ((r.scope?.kind?.startsWith('state_') || r.scope?.kind?.startsWith('transition_')) && declaresSlotCodeFact(task, gradingVersion))
        check('slot_code_facts', chosen && normal(facts.code ?? '').trim() === normal(chosen.text).trim());
    }
  } else if (r.type === 'local') {
    const g = fixture as DiagramBody, node = g.nodes.find(n => n.name === r.node && (r.node_id === undefined || n.id === r.node_id) && (!r.object_kind || n.kind === r.object_kind) && (!r.hierarchy || n.scope === r.hierarchy))!;
    const nodeRefs = new Set(ok.filter(row => row.tool === 'ascet_code_find').flatMap(row => contents(row.response)).filter(v =>
      v.node_id === node.id && v.diagram_oid === g.source_oid && (v.hierarchy ?? 'root') === node.scope).map(v => v.ref));
    const path = source.components.find(c => c.oid === g.component_oid)!.path;
    const matches = read.filter(v => v.component_path === path && v.diagram_oid === g.source_oid && v.object?.name === node.name && v.object.kind === node.kind && (v.object.hierarchy ?? 'root') === node.scope && (r.node_id === undefined || nodeRefs.has(v.ref)));
    const selected = matches.find(v => v.depth === r.depth && v.direction === (r.direction ?? 'both'));
    check('local_depth_direction', selected);
    check('relevant_object_citation', selected && cited.has(selected.ref));
    check('object_facts', facts.name === node.name && facts.kind === node.kind && facts.hierarchy === node.scope);
    const pins = g.pins.filter(p => p.node_id === node.id && p.scope === node.scope).map(p => p.id);
    check('complete_target_pins', selected && set(selected.pins.filter((p: any) => p.object_ref === selected.ref).map((p: any) => p.id), pins) && set(array(facts.pin_ids), pins));
    const native = nativeNeighborhood(g, node, r.depth!, r.direction ?? 'both');
    const selectedValues = (row: MatrixRow) => contents(row.response).filter(v => matches.includes(v) && v.depth === r.depth && v.direction === (r.direction ?? 'both'));
    const chains = readRows.filter(row => !row.args.cursor && selectedValues(row).length).map(row => continuationChain(row, rows)
      .flatMap(selectedValues).flatMap((v: any) => v.connections ?? []).map((e: any) => ({ from_pin_id: e.from.pin_id, to_pin_id: e.to.pin_id })));
    check('native_neighborhood', chains.some(actual => set(actual, native)) && set(array(facts.connections), native));
    check('no_hierarchy_crossing', matches.every(v => array(v.nodes).every(n => (n.hierarchy ?? 'root') === node.scope)));
  } else if (r.type === 'diagram') {
    const g = fixture as DiagramBody, path = source.components.find(c => c.oid === g.component_oid)!.path;
    const matches = read.filter(v => v.component_path === path && v.diagram === g.name && v.diagram_oid === g.source_oid);
    check('relevant_diagram_citation', matches.some(v => cited.has(v.ref)));
    if (r.profile === 'empty') {
      check('empty_diagram_read', matches.some(v => v.graph?.nodes.length === 0 || v.diagram_text === 'Diagram root ' + g.name));
      check('empty_graph_facts', facts.diagram === g.name && facts.nodes_count === g.nodes.length && facts.connections_count === g.connections.length);
    } else if (r.profile === 'getter') {
      check('graphical_getter_discovery', ok.some(row => row.tool === 'ascet_code_find' && contents(row.response).some((v: any) =>
        v.diagram === g.name && (v.matched_members?.some((m: any) => m.name === 'AEBdFxTar') || gradingVersion >= 3 &&
        v.component_path === path && v.diagram_oid === g.source_oid && v.diagram_methods?.some((m: any) => m.name === 'AEBdFxTar')))));
      check('shared_graphical_members', matches.length && facts.representation === 'bde' && facts.shared_diagram === true && set(array(facts.methods), g.methods.map(m => m.name)));
    } else {
      check('real_oversized_graph', Buffer.byteLength(JSON.stringify(g)) > 32768);
      check('graph_budget_error_observed', rows.some(row => row.tool === 'ascet_code_read' && row.args.include_graph && row.is_error && ['PAGE_TOO_LARGE', 'OUTPUT_BUDGET_EXCEEDED'].includes(row.response?.code)));
      check('local_fallback', matches.some(v => v.object && v.depth === 0 && !v.has_more));
      check('budget_facts', facts.raw_graph_complete === false && facts.local_read_complete === true);
    }
  } else if (r.type === 'recovery') {
    const error = rows.findIndex((row, i) => requestedMatrixError(r, row, rows.slice(0, i)));
    check('requested_failure_observed', error >= 0);
    const following = rows.slice(error + 1);
    if (r.profile === 'wrong_cursor_tool') {
      const bad = error >= 0 ? rows[error] : undefined;
      const original = bad ? rows.slice(0, error).find(row => row.response?.next_cursor === bad.args?.cursor && row.tool !== bad.tool) : undefined;
      check('wrong_tool_and_recovery', original && following.some(row => row.tool === original.tool && row.args.cursor === original.response.next_cursor && !row.is_error));
    } else if (r.profile === 'scope_name') {
      check('valid_scope_recovery', following.some(row => !row.is_error && row.tool === 'ascet_code_search' && row.args.query === 'AEBLockTime' && scopeOK(row)));
    } else if (r.profile === 'invalid_regex') check('regex_recovery', following.some(row => !row.is_error && row.tool === 'ascet_code_search' && row.args.query === 'AEBLockTime' && row.args.mode === 'identifier'));
    else {
      let requested: unknown;
      try { requested = JSON.parse(rows[error]?.args.ref ?? 'null'); } catch { /* Invalid payload cannot establish the original ref array. */ }
      check('actual_array_recovery', Array.isArray(requested) && requested.length >= 2 && following.some(row => !row.is_error && row.tool === 'ascet_code_read' && same(row.args.ref, requested) && contents(row.response).length === requested.length && contents(row.response).every((v: any, i: number) => v.ref === requested[i] && fixture.some((d: SourceDocument) => same(identity(d), matrixIdentity(v))))));
    }
    check('recovery_facts', facts.error_observed === true && facts.recovered === true);
  } else check('unsupported_capability_facts', Object.entries(r.flags!).every(([key, expected]) => facts[key] === expected));
  return checks;
}

function checkPagination(rows: MatrixRow[], first: MatrixRow | undefined, mode: string, check: (name: string, condition: unknown) => void) {
  check('initial_truncation', first?.args.limit === 1 && first.response.has_more === true && first.response.next_cursor);
  if (!first) return;
  const continuations = rows.filter(row => row.tool === first.tool && row.args.cursor === first.response.next_cursor && !row.is_error);
  if (mode === 'incomplete') check('pagination_remains_incomplete', continuations.length === 0);
  else check('correct_cursor_consumed', continuations.length > 0 && continuations.every(row => Object.keys(row.args).length === 1));
  if (mode === 'replay') check('immutable_cursor_replay', continuations.length >= 2 && same(continuations[0].response, continuations[1].response));
}
function nativeNeighborhood(g: DiagramBody, node: DiagramBody['nodes'][number], depth: number, direction: string) {
  let frontier = new Set([node.id]); const visited = new Set(frontier), edges = new Map<number, { from_pin_id: number; to_pin_id: number }>();
  const pins = new Map(g.pins.filter(p => p.scope === node.scope).map(p => [p.id, p.node_id]));
  for (let step = 0; step < depth; step++) {
    const next = new Set<number>();
    for (const e of g.connections.filter(e => e.scope === node.scope)) {
      const from = pins.get(e.from_pin)!, to = pins.get(e.to_pin)!;
      if ((direction !== 'incoming' && frontier.has(from)) || (direction !== 'outgoing' && frontier.has(to))) {
        edges.set(e.id, { from_pin_id: e.from_pin, to_pin_id: e.to_pin });
        for (const id of [from, to]) if (!visited.has(id)) { visited.add(id); next.add(id); }
      }
    }
    frontier = next;
  }
  return [...edges.values()];
}
