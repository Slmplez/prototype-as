import { ToolError } from './patterns.js';
import { preview } from './paging.js';
import type { DiagramBody, DiagramField, SourceDocument, SearchDocument } from './types.js';
import type { AgentDiagramObject, AgentDiagramEndpoint, AgentDiagramConnection, AgentDiagramBoundary, AgentDiagramHit } from './agent-types.js';

export interface NodeSelector { scope: string; node_id: number }
export type DiagramRef = (node?: NodeSelector) => string;
export const nodeKey = (scope: string, id: number) => scope + ':' + id;
export interface ObjectMatch {
  scope: string; owner: DiagramField['owner']; occurrences: number;
  fields: { index: number; offset: number }[];
}

/** All identities and maps are scoped to one immutable Diagram snapshot. */
export class DiagramIndex {
  readonly nodes = new Map<string, DiagramBody['nodes'][number]>();
  readonly pins = new Map<string, DiagramBody['pins'][number]>();
  readonly nodePins = new Map<string, DiagramBody['pins']>();
  readonly input = new Map<string, DiagramBody['connections']>();
  readonly output = new Map<string, DiagramBody['connections']>();
  readonly nodeBoundaries = new Map<string, DiagramBody['boundaries']>();
  readonly sequences = new Map<string, DiagramBody['sequences'][number]>();
  constructor(readonly graph: DiagramBody) {
    const push = <T>(map: Map<string, T[]>, key: string, value: T) => { const a = map.get(key) ?? []; a.push(value); map.set(key, a); };
    for (const n of graph.nodes) this.nodes.set(nodeKey(n.scope, n.id), n);
    for (const p of graph.pins) { this.pins.set(nodeKey(p.scope, p.id), p); push(this.nodePins, nodeKey(p.scope, p.node_id), p); }
    for (const e of graph.connections) { push(this.input, nodeKey(e.scope, e.to_pin), e); push(this.output, nodeKey(e.scope, e.from_pin), e); }
    for (const b of graph.boundaries) {
      push(this.nodeBoundaries, nodeKey(b.scope, b.node_id), b);
      push(this.nodeBoundaries, nodeKey(b.child_scope, b.child_node_id), b);
    }
    for (const s of graph.sequences) this.sequences.set(nodeKey(s.scope, s.pin_id), s);
  }
  object(ref: DiagramRef, target?: NodeSelector): AgentDiagramObject {
    if (!target) return { ref: ref(), kind: 'diagram', name: this.graph.name };
    const n = this.nodes.get(nodeKey(target.scope, target.node_id));
    if (!n) throw new ToolError('CODE_NOT_FOUND', 'Diagram node no longer exists');
    return { ref: ref(target), kind: n.kind, name: n.name,
      ...(n.component_path ? { referenced_component_path: n.component_path } : {}),
      ...(target.scope !== 'root' ? { hierarchy: target.scope } : {}) };
  }
  endpoint(ref: DiagramRef, scope: string, id: number): AgentDiagramEndpoint {
    const p = this.pins.get(nodeKey(scope, id));
    if (!p) throw new ToolError('READ_INCOMPLETE', 'Diagram Pin is missing');
    return { ...this.object(ref, { scope, node_id: p.node_id }), pin: p.name, pin_id: id };
  }
  connection(ref: DiagramRef, edge: DiagramBody['connections'][number]): AgentDiagramConnection {
    return { from: this.endpoint(ref, edge.scope, edge.from_pin), to: this.endpoint(ref, edge.scope, edge.to_pin) };
  }
  boundary(ref: DiagramRef, b: DiagramBody['boundaries'][number]): AgentDiagramBoundary {
    return { outer: this.endpoint(ref, b.scope, b.pin_id), inner: this.endpoint(ref, b.child_scope, b.child_pin_id) };
  }
  edges(target: NodeSelector, direction: 'incoming' | 'outgoing' | 'both' = 'both', onlyPins?: Set<number>) {
    const incoming = new Map<number, DiagramBody['connections'][number]>(), outgoing = new Map<number, DiagramBody['connections'][number]>();
    for (const p of this.nodePins.get(nodeKey(target.scope, target.node_id)) ?? []) {
      if (onlyPins && !onlyPins.has(p.id)) continue;
      if (direction !== 'outgoing') for (const e of this.input.get(nodeKey(p.scope, p.id)) ?? []) incoming.set(e.id, e);
      if (direction !== 'incoming') for (const e of this.output.get(nodeKey(p.scope, p.id)) ?? []) outgoing.set(e.id, e);
    }
    // Fair preview selection across both directions, with deterministic order.
    const a = [...incoming.values()].sort((x, y) => x.id - y.id), b = [...outgoing.values()].sort((x, y) => x.id - y.id);
    const all = new Map<number, DiagramBody['connections'][number]>();
    for (let i = 0; i < Math.max(a.length, b.length); i++) { if (a[i]) all.set(a[i].id, a[i]); if (b[i]) all.set(b[i].id, b[i]); }
    return [...all.values()];
  }
}

export function groupObjects(source: SourceDocument, matched: SearchDocument): ObjectMatch[] {
  if (!source.diagram_fields || !source.search_spans) throw new ToolError('READ_INCOMPLETE', 'Diagram field provenance is missing');
  const groups = new Map<string, ObjectMatch>(), fieldSeen = new Map<string, Set<number>>();
  const lines = source.text.split('\n'), starts: number[] = []; let at = 0;
  for (const l of lines) { starts.push(at); at += l.length + 1; }
  for (const m of matched.matches ?? []) for (let i = 0; i < m.columns.length; i++) {
    const fi = m.field_indices?.[i], f = fi === undefined ? undefined : source.diagram_fields[fi];
    if (!f || fi === undefined) throw new ToolError('READ_INCOMPLETE', 'Match has no Diagram field owner');
    const k = JSON.stringify([f.scope, f.owner.type, f.owner.type === 'node' ? f.owner.node_id : f.owner.type === 'comment' ? f.owner.snapshot_ordinal : '']);
    let group = groups.get(k);
    if (!group) { group = { scope: f.scope, owner: f.owner, occurrences: 0, fields: [] }; groups.set(k, group); fieldSeen.set(k, new Set()); }
    group.occurrences++;
    if (!fieldSeen.get(k)!.has(fi)) {
      fieldSeen.get(k)!.add(fi);
      const offset = starts[m.line - 1] + [...lines[m.line - 1]].slice(0, m.columns[i] - 1).join('').length - source.search_spans[fi].start;
      group.fields.push({ index: fi, offset });
    }
  }
  return [...groups.values()];
}

export function projectObject(index: DiagramIndex, doc: SourceDocument, hit: ObjectMatch, ref: DiagramRef, connections = 6, evidenceLimit = 8): AgentDiagramHit {
  const node = hit.owner.type === 'node' ? { scope: hit.scope, node_id: hit.owner.node_id } : undefined;
  let object = index.object(ref, node);
  if (hit.owner.type === 'comment') {
    const at = hit.scope.lastIndexOf('/h');
    const parent = at < 0 ? undefined : { scope: hit.scope.slice(0, at), node_id: Number(hit.scope.slice(at + 2)) };
    object = { ref: ref(parent), kind: 'comment', name: index.graph.comments[hit.owner.snapshot_ordinal].text,
      ...(hit.scope !== 'root' ? { hierarchy: hit.scope } : {}) };
  }
  const fields = hit.fields.map(f => ({ ...f, field: doc.diagram_fields![f.index], span: doc.search_spans![f.index] }));
  const allPins = fields.some(f => f.field.owner.type !== 'node' || f.field.owner.pin_id === undefined);
  const pinIDs = new Set(fields.flatMap(f => f.field.owner.type === 'node' && f.field.owner.pin_id !== undefined ? [f.field.owner.pin_id] : []));
  const edges = node ? index.edges(node, 'both', allPins ? undefined : pinIDs) : [];
  const boundaries = node ? (index.nodeBoundaries.get(nodeKey(node.scope, node.node_id)) ?? []).filter(b => allPins || pinIDs.has(b.scope === node.scope ? b.pin_id : b.child_pin_id)) : [];
  const evidence = fields.flatMap(f => {
    const text = doc.text.slice(f.span.start, f.span.end);
    if (f.field.field === 'name' && text === object.name && [...text].length <= 240) return [];
    const view = preview(text, [...text.slice(0, f.offset)].length + 1, 240);
    return [{ field: f.field.field, text: view.text,
      ...(f.field.owner.type === 'node' && f.field.owner.pin_id !== undefined ? { pin_id: f.field.owner.pin_id } : {}),
      ...(view.truncated_before || view.truncated_after ? { start_offset: view.start_column, truncated_before: view.truncated_before, truncated_after: view.truncated_after } : {}) }];
  });
  const name = [...object.name].slice(0, 240).join('');
  return { ...object, name, ...(name !== object.name ? { name_truncated: true as const } : {}),
    matched_fields: [...new Set(fields.map(f => f.field.field))], ...(hit.occurrences > 1 ? { occurrences: hit.occurrences } : {}),
    ...(evidence.length ? { evidence: evidence.slice(0, evidenceLimit) } : {}),
    ...(evidence.length > evidenceLimit ? { omitted_evidence: evidence.length - evidenceLimit } : {}),
    connections: edges.slice(0, connections).sort((a, b) => a.id - b.id).map(e => {
      const from = index.pins.get(nodeKey(e.scope, e.from_pin))!;
      if (from.node_id === node!.node_id) return { from_pin: from.name, from_pin_id: from.id, to: index.endpoint(ref, e.scope, e.to_pin) };
      const to = index.pins.get(nodeKey(e.scope, e.to_pin))!;
      return { from: index.endpoint(ref, e.scope, e.from_pin), to_pin: to.name, to_pin_id: to.id };
    }),
    ...(edges.length > connections ? { omitted_connections: edges.length - connections } : {}),
    ...(boundaries.length ? { boundaries: boundaries.slice(0, connections).map(b => index.boundary(ref, b)) } : {}),
    ...(boundaries.length > connections ? { omitted_boundaries: boundaries.length - connections } : {}) };
}

export type LocalRecord = { type: 'node' | 'pin' | 'connection' | 'boundary'; index: number };
/** Directed structural BFS within the current hierarchy; no inference through a Component. */
export function localRecords(index: DiagramIndex, target: NodeSelector, depth: number, direction: 'incoming' | 'outgoing' | 'both', allNeighborPins = true): LocalRecord[] {
  index.object(() => '', target);
  const seen = new Set([nodeKey(target.scope, target.node_id)]), edges = new Set<string>();
  let frontier = [target];
  for (let level = 0; level < depth; level++) {
    const next: NodeSelector[] = [];
    for (const n of frontier) for (const e of index.edges(n, direction)) {
      edges.add(nodeKey(e.scope, e.id));
      for (const id of [e.from_pin, e.to_pin]) {
        const p = index.pins.get(nodeKey(e.scope, id))!, key = nodeKey(p.scope, p.node_id);
        if (!seen.has(key)) { seen.add(key); next.push({ scope: p.scope, node_id: p.node_id }); }
      }
    }
    frontier = next;
  }
  const g = index.graph, records: LocalRecord[] = [], connectedPins = new Set<string>();
  const boundaries = g.boundaries.map((b, i) => ({ b, i })).filter(({ b }) =>
    seen.has(nodeKey(b.scope, b.node_id)) || seen.has(nodeKey(b.child_scope, b.child_node_id)));
  if (!allNeighborPins) {
    for (const e of g.connections) if (edges.has(nodeKey(e.scope, e.id))) {
      connectedPins.add(nodeKey(e.scope, e.from_pin)); connectedPins.add(nodeKey(e.scope, e.to_pin));
    }
    for (const { b } of boundaries) {
      connectedPins.add(nodeKey(b.scope, b.pin_id)); connectedPins.add(nodeKey(b.child_scope, b.child_pin_id));
    }
  }
  g.nodes.forEach((n, i) => { if (seen.has(nodeKey(n.scope, n.id))) records.push({ type: 'node', index: i }); });
  g.pins.forEach((p, i) => {
    if (seen.has(nodeKey(p.scope, p.node_id)) && (allNeighborPins ||
      nodeKey(p.scope, p.node_id) === nodeKey(target.scope, target.node_id) || connectedPins.has(nodeKey(p.scope, p.id)))) {
      records.push({ type: 'pin', index: i });
    }
  });
  g.connections.forEach((e, i) => { if (edges.has(nodeKey(e.scope, e.id))) records.push({ type: 'connection', index: i }); });
  for (const { i } of boundaries) records.push({ type: 'boundary', index: i });
  return records;
}
