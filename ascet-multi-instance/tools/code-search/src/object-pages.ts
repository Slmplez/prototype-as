import { agentTarget } from './agent-target.js';
import { agentSnippets } from './agent-snippets.js';
import { DiagramIndex, groupObjects, projectObject, localRecords, nodeKey } from './diagram-objects.js';
import { indexQuery, projectQueries } from './paging.js';
import type { NodeSelector, ObjectMatch, LocalRecord } from './diagram-objects.js';
import type { IndexedQuery, PagePosition, SelectedHit } from './paging.js';
import type { AgentSearchResponse, AgentReadResponse, AgentDiagramObject } from './agent-types.js';
import type { DiagramBody, SourceDocument, ReadResponse } from './types.js';
import type { ContextBlock } from './types.js';
import type { searchWithSources } from './search.js';

export type PageRef = (doc: SourceDocument, node?: NodeSelector) => string;
export interface ObjectSearchPlan {
  queries: IndexedQuery[]; documents: SourceDocument[]; diagrams: DiagramBody[];
  groups: (ObjectMatch[] | undefined)[][];
  before: number; after: number; limit: number; debug: boolean;
  metadata: Pick<Awaited<ReturnType<typeof searchWithSources>>['response'], 'complete' | 'database' | 'ascet_pid' | 'errors' | 'timings' | 'coverage' | 'filters'>;
}
export function prepareObjectSearch(source: Awaited<ReturnType<typeof searchWithSources>>, before: number, after: number, limit: number, debug: boolean): ObjectSearchPlan {
  const full = source.response, queries = 'searches' in full ? full.searches : [full];
  const documents = new Map(source.documents.map(d => [d.document_id, d]));
  const groups: ObjectSearchPlan['groups'] = [];
  const contexts = new Map<string, ContextBlock[]>();
  const indexed = queries.map((q, qi) => {
    const grouped = new Map<string, ObjectMatch[]>();
    const query = indexQuery({ ...q, results: q.results.map(d => {
      if (d.kind !== 'diagram') return d;
      const objects = groupObjects(documents.get(d.document_id)!, d); grouped.set(d.document_id, objects);
      return { ...d, matches: objects.map((_, i) => ({ line: i + 1, columns: [1], text: '' })) };
    }) });
    groups[qi] = query.docs.map(d => grouped.get(d.value.document_id));
    for (const d of query.docs) if (d.value.kind !== 'diagram' && (before || after || q.multiline)) {
      const text = documents.get(d.value.document_id)!.text;
      let context = contexts.get(text);
      if (!context) {
        const lines = text.replace(/\r\n?/g, '\n').split('\n');
        context = [{ start_line: 1, end_line: lines.length, lines }]; contexts.set(text, context);
      }
      d.sourceContext = context;
    }
    return query;
  });
  const used = new Set(indexed.flatMap(q => q.docs.map(d => d.value.document_id)));
  const docs = source.documents.filter(d => used.has(d.document_id));
  return { queries: indexed, documents: docs,
    diagrams: source.diagrams.filter(g => docs.some(d => d.component_oid === g.component_oid && d.graphical_location?.specification_source_oid === g.source_oid)),
    groups, before, after, limit, debug, metadata: { complete: full.complete, database: full.database, ascet_pid: full.ascet_pid,
      errors: full.errors, timings: full.timings, coverage: full.coverage, filters: full.filters } };
}
export function objectPage(plan: ObjectSearchPlan, hits: SelectedHit[], end: PagePosition, ref: PageRef, expires: string, cursor: string | null, connections: number, indices = new Map<string, DiagramIndex>()): AgentSearchResponse {
  const docs = new Map(plan.documents.map(d => [d.document_id, d]));
  const text = projectQueries(plan.queries, hits.filter(h => !plan.groups[h.query][h.document]), end, 'expanded', plan.before, plan.after, 500, 40);
  const response: AgentSearchResponse = { status: plan.metadata.complete ? 'ok' : 'partial', returned_hits: hits.length,
    total_hits: plan.queries.reduce((n, q) => n + q.total, 0), has_more: cursor !== null, next_cursor: cursor, expires_utc: expires,
    searches: plan.queries.map((q, qi) => {
      const selected = hits.filter(h => h.query === qi), grouped = new Map<number, number[]>();
      for (const h of selected) if (plan.groups[qi][h.document]) { const a = grouped.get(h.document) ?? []; a.push(h.line); grouped.set(h.document, a); }
      const order = new Map<string, number>();
      const results: AgentSearchResponse['searches'][number]['results'] = text[qi].results.map(d => {
        const r = ref(docs.get(d.document_id)!); order.set(r, q.docs.findIndex(v => v.value.document_id === d.document_id));
        return { ...agentTarget(d, r), ...agentSnippets(d) };
      });
      for (const [di, objects] of grouped) {
        const doc = docs.get(q.docs[di].value.document_id)!;
        let index = indices.get(doc.document_id);
        if (!index) { index = new DiagramIndex(plan.diagrams.find(g => g.component_oid === doc.component_oid && g.source_oid === doc.graphical_location!.specification_source_oid)!); indices.set(doc.document_id, index); }
        const r = ref(doc); order.set(r, di);
        results.push({ ...agentTarget(doc, r), hits: objects.map(i => projectObject(index!, doc, plan.groups[qi][di]![i], n => ref(doc, n), connections)) });
      }
      // Preserve native document order for mixed text and graphical results.
      results.sort((a, b) => order.get(a.ref)! - order.get(b.ref)!);
      return { index: qi, ...(q.query.id !== null ? { id: q.query.id as string } : {}), query: q.query.query,
        mode: q.query.mode === 'identifier_occurrence' ? 'identifier' : q.query.mode,
        ...(q.query.case_sensitive ? { case_sensitive: true as const } : {}), ...(q.query.multiline ? { multiline: true as const } : {}), ...(q.query.dotall ? { dotall: true as const } : {}),
        returned_hits: selected.length, total_hits: q.total, has_more: end.offsets[qi] < q.total, results };
    }),
    ...(!plan.metadata.complete ? { issues: plan.metadata.errors.map(e => ({ ...e, code: 'READ_INCOMPLETE' as const })) } : {}),
    ...(plan.debug ? { debug: { ...plan.metadata, group_by: 'object' } } : {}) };
  return response;
}

export interface LocalReadPlan {
  read: ReadResponse; graph: DiagramBody; target: NodeSelector; records: LocalRecord[];
  depth: number; direction: 'incoming' | 'outgoing' | 'both'; includeGraph: boolean; originalRef: string; debug: boolean;
}
export function prepareLocalRead(read: ReadResponse, graph: DiagramBody, target: NodeSelector, originalRef: string, depth: number, direction: LocalReadPlan['direction'], includeGraph: boolean, debug = false): LocalReadPlan {
  return { read, graph, target, originalRef, depth, direction, includeGraph, debug,
    records: localRecords(new DiagramIndex(graph), target, depth, direction, includeGraph) };
}
export function localPage(plan: LocalReadPlan, selected: LocalRecord[], ref: PageRef, expires: string, cursor: string | null, index = new DiagramIndex(plan.graph)): AgentReadResponse {
  const g = plan.graph, doc = plan.read.document, resolve = (n?: NodeSelector) => ref(doc, n);
  const object = (target: NodeSelector): AgentDiagramObject => {
    const path = index.nodes.get(nodeKey(target.scope, target.node_id))?.component_path;
    return { ...index.object(resolve, target), ...(path ? { component_path: path } : {}) };
  };
  const nodes: AgentDiagramObject[] = [], pins: NonNullable<AgentReadResponse['pins']> = [], connections: NonNullable<AgentReadResponse['connections']> = [], boundaries: NonNullable<AgentReadResponse['boundaries']> = [];
  const raw: DiagramBody = { ...g, nodes: [], pins: [], connections: [], boundaries: [], sequences: [], comments: [], issues: [] };
  for (const record of selected) {
    if (record.type === 'node') { const n = g.nodes[record.index]; nodes.push(object({ scope: n.scope, node_id: n.id })); raw.nodes.push(n); }
    if (record.type === 'pin') {
      const p = g.pins[record.index], sequence = index.sequences.get(nodeKey(p.scope, p.id));
      pins.push({ object_ref: resolve({ scope: p.scope, node_id: p.node_id }), id: p.id, name: p.name, input: p.input, output: p.output,
        ...(sequence ? { sequence: { method: sequence.method, number: sequence.number } } : {}) });
      raw.pins.push(p); if (sequence) raw.sequences.push(sequence);
    }
    if (record.type === 'connection') { const edge = g.connections[record.index]; connections.push(index.connection(resolve, edge)); raw.connections.push(edge); }
    if (record.type === 'boundary') { const b = g.boundaries[record.index]; boundaries.push(index.boundary(resolve, b)); raw.boundaries.push(b); }
  }
  const scopes = new Set([plan.target.scope]);
  for (const n of raw.nodes) scopes.add(n.scope);
  for (const p of raw.pins) scopes.add(p.scope);
  for (const e of raw.connections) scopes.add(e.scope);
  for (const b of raw.boundaries) { scopes.add(b.scope); scopes.add(b.child_scope); }
  for (const scope of [...scopes]) { let s = scope; while (s.includes('/')) { s = s.slice(0, s.lastIndexOf('/')); scopes.add(s); } }
  raw.scopes = g.scopes.filter(s => scopes.has(s.path));
  const { issues: _issues, ...rawGraph } = raw;
  return { status: plan.read.complete ? 'ok' : 'partial', ...agentTarget(doc, plan.originalRef), scope: 'local', diagram_ref: resolve(),
    object: { ...object(plan.target), ...(plan.read.complete ? {
      pin_count: index.nodePins.get(nodeKey(plan.target.scope, plan.target.node_id))?.length ?? 0 } : {}) },
    depth: plan.depth, direction: plan.direction, nodes, pins, connections, boundaries,
    has_more: cursor !== null, next_cursor: cursor, expires_utc: expires,
    ...(plan.includeGraph ? { graph: { ...rawGraph, scope: 'local' as const } } : {}),
    ...(plan.debug ? { debug: { database: plan.read.database, ascet_pid: plan.read.ascet_pid, observed_utc: plan.read.observed_utc,
      component_oid: doc.component_oid, code_id: doc.document_id, source_sha256: doc.source_sha256, object: plan.target,
      coverage: plan.read.coverage, timings: plan.read.timings } } : {}),
    ...(!plan.read.complete ? { issues: plan.read.errors.map(e => ({ ...e, code: 'READ_INCOMPLETE' as const })) } : {}) };
}
