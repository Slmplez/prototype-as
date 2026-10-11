import assert from 'node:assert/strict';
import type { DiagramBody } from '../src/types.js';
import type { AgentDiagramHit, AgentDiagramEndpoint, AgentQuery } from '../src/agent-types.js';
import { fieldOccurrences } from '../test/diagram-generality-support.js';

export interface SearchRefIdentity { component_oid: string; source_oid: string; scope: string; node_id: number }
interface Field { owner: string; field: string; value: string; pin_id?: number }
const nodeKey = (scope: string, id: number) => JSON.stringify([scope, id]);

/** Enumerate saved fields directly; do not use rendered spans or product projection helpers. */
function fields(graph: DiagramBody): Field[] {
  const result: Field[] = [];
  const add = (owner: string, field: string, value: string, pin_id?: number) => {
    if (value) result.push({ owner, field, value: value.replace(/\r\n?/g, '\n'), ...(pin_id === undefined ? {} : { pin_id }) });
  };
  for (const scope of graph.scopes) {
    const at = scope.path.lastIndexOf('/h');
    add(at < 0 ? 'diagram' : nodeKey(scope.path.slice(0, at), Number(scope.path.slice(at + 2))), 'name', scope.name);
    for (const node of graph.nodes.filter(n => n.scope === scope.path)) {
      const owner = nodeKey(node.scope, node.id);
      add(owner, 'name', node.name);
      add(owner, 'component_path', node.component_path ?? '');
      for (const pin of graph.pins.filter(p => p.scope === node.scope && p.node_id === node.id)) {
        add(owner, 'pin', pin.name, pin.id);
        const sequence = graph.sequences.find(s => s.scope === pin.scope && s.pin_id === pin.id);
        if (sequence) add(owner, 'sequence_method', sequence.method, pin.id);
      }
    }
    graph.comments.forEach((c, i) => { if (c.scope === scope.path) add('comment:' + i, 'comment', c.text); });
  }
  return result;
}

export function assertSearchHitSummary(graph: DiagramBody, query: AgentQuery, owner: string, hit: AgentDiagramHit,
  identities: ReadonlyMap<string, SearchRefIdentity>, connectionLimit = 6): void {
  const node = owner !== 'diagram' && !owner.startsWith('comment:')
    ? graph.nodes.find(n => nodeKey(n.scope, n.id) === owner) : undefined;
  const comment = owner.startsWith('comment:') ? graph.comments[Number(owner.slice(8))] : undefined;
  const fullName = node?.name ?? comment?.text ?? graph.name;
  const scope = node?.scope ?? comment?.scope ?? 'root';
  assert.equal(hit.name, [...fullName].slice(0, 240).join(''), 'search object name');
  assert.equal(hit.name_truncated ?? false, [...fullName].length > 240, 'search name truncation');
  assert.equal(hit.kind, node?.kind ?? (comment ? 'comment' : 'diagram'), 'search object kind');
  assert.equal(hit.hierarchy ?? 'root', scope, 'search object hierarchy');
  assert.equal(hit.referenced_component_path, node?.component_path, 'search referenced Component');
  const assertIdentity = (ref: string, expectedScope: string, node_id: number) => {
    assert.deepEqual(identities.get(ref), { component_oid: graph.component_oid, source_oid: graph.source_oid,
      scope: expectedScope, node_id }, 'search endpoint ref identity');
  };
  if (node) assertIdentity(hit.ref, node.scope, node.id);
  const endpoint = (endpointScope: string, pin_id: number) => {
    const pin = graph.pins.find(p => p.scope === endpointScope && p.id === pin_id);
    assert.ok(pin, 'raw endpoint Pin exists');
    const nativeNode = graph.nodes.find(n => n.scope === endpointScope && n.id === pin.node_id);
    assert.ok(nativeNode, 'raw endpoint node exists');
    return { kind: nativeNode.kind, name: nativeNode.name, pin: pin.name, pin_id,
      ...(nativeNode.component_path ? { referenced_component_path: nativeNode.component_path } : {}),
      ...(endpointScope === 'root' ? {} : { hierarchy: endpointScope }) };
  };
  const verifyEndpoint = (actual: AgentDiagramEndpoint, endpointScope: string, pin_id: number) => {
    const { ref, ...metadata } = actual;
    assert.deepEqual(metadata, endpoint(endpointScope, pin_id), 'search endpoint metadata');
    const pin = graph.pins.find(p => p.scope === endpointScope && p.id === pin_id)!;
    assertIdentity(ref, endpointScope, pin.node_id);
  };
  const matched = fields(graph).filter(f => f.owner === owner).flatMap(f => {
    const occurrences = fieldOccurrences(f.value, query);
    return occurrences.length ? [{ ...f, occurrences }] : [];
  });
  assert.ok(matched.length, 'search owner has a matching original field');
  assert.equal(hit.occurrences ?? 1, matched.reduce((n, f) => n + f.occurrences.length, 0), 'search occurrence count');
  assert.deepEqual(hit.matched_fields, [...new Set(matched.map(f => f.field))], 'complete matched fields');
  const evidence = matched.flatMap(f => {
    if (f.field === 'name' && f.value === fullName && [...f.value].length <= 240) return [];
    const chars = [...f.value], offset = [...f.value.slice(0, f.occurrences[0].start)].length;
    const start = Math.max(0, offset - 80), end = Math.min(chars.length, start + 240);
    return [{ field: f.field, text: chars.slice(start, end).join(''), ...(f.pin_id === undefined ? {} : { pin_id: f.pin_id }),
      ...(start > 0 || end < chars.length ? { start_offset: start + 1, truncated_before: start > 0, truncated_after: end < chars.length } : {}) }];
  });
  assert.deepEqual(hit.evidence ?? [], evidence.slice(0, 8), 'complete search evidence preview');
  assert.equal(hit.omitted_evidence ?? 0, Math.max(0, evidence.length - 8), 'omitted evidence count');

  const allPins = matched.some(f => f.pin_id === undefined);
  const selectedPins = new Set(node ? graph.pins.filter(p => p.scope === scope && p.node_id === node.id &&
    (allPins || matched.some(f => f.pin_id === p.id))).map(p => p.id) : []);
  const incoming = graph.connections.filter(e => e.scope === scope && selectedPins.has(e.to_pin)).sort((a, b) => a.id - b.id);
  const outgoing = graph.connections.filter(e => e.scope === scope && selectedPins.has(e.from_pin)).sort((a, b) => a.id - b.id);
  const fair = new Map<number, DiagramBody['connections'][number]>();
  for (let i = 0; i < Math.max(incoming.length, outgoing.length); i++) {
    if (incoming[i]) fair.set(incoming[i].id, incoming[i]);
    if (outgoing[i]) fair.set(outgoing[i].id, outgoing[i]);
  }
  const edges = [...fair.values()], visible = edges.slice(0, connectionLimit).sort((a, b) => a.id - b.id);
  assert.equal(hit.connections.length, visible.length, 'complete search connections');
  assert.equal(hit.omitted_connections ?? 0, Math.max(0, edges.length - connectionLimit), 'omitted connection count');
  visible.forEach((edge, i) => {
    const actual = hit.connections[i], from = graph.pins.find(p => p.scope === scope && p.id === edge.from_pin)!;
    if (from.node_id === node?.id) {
      assert.ok('from_pin_id' in actual, 'outgoing connection direction');
      assert.equal(actual.from_pin_id, from.id); assert.equal(actual.from_pin, from.name);
      verifyEndpoint(actual.to, scope, edge.to_pin);
    } else {
      assert.ok('to_pin_id' in actual, 'incoming connection direction');
      const to = graph.pins.find(p => p.scope === scope && p.id === edge.to_pin)!;
      assert.equal(actual.to_pin_id, to.id); assert.equal(actual.to_pin, to.name);
      verifyEndpoint(actual.from, scope, edge.from_pin);
    }
  });
  const boundaries = node ? graph.boundaries.filter(b =>
    (b.scope === scope && b.node_id === node.id && selectedPins.has(b.pin_id)) ||
    (b.child_scope === scope && b.child_node_id === node.id && selectedPins.has(b.child_pin_id))) : [];
  assert.equal(hit.boundaries?.length ?? 0, Math.min(boundaries.length, connectionLimit), 'complete search boundaries');
  assert.equal(hit.omitted_boundaries ?? 0, Math.max(0, boundaries.length - connectionLimit), 'omitted boundary count');
  boundaries.slice(0, connectionLimit).forEach((b, i) => {
    verifyEndpoint(hit.boundaries![i].outer, b.scope, b.pin_id);
    verifyEndpoint(hit.boundaries![i].inner, b.child_scope, b.child_pin_id);
  });
}
