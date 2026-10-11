import type { GraphicalBody, GraphicalNode, GraphicalPort, GraphicalSequence } from './types.js';

const num = (s: string): number => {
  if (!/^-?\d+$/.test(s) || !Number.isSafeInteger(Number(s))) throw new Error('Invalid graphical integer');
  return Number(s);
};
const key = (...parts: unknown[]) => JSON.stringify(parts);
const order = (a: string, b: string) => a < b ? -1 : a > b ? 1 : 0;
const nullableID = (s: string): number | null => s === 'nil' ? null : num(s);

function assignment(graph: GraphicalBody, sequence: GraphicalSequence): string | undefined {
  if (sequence.operation !== 'set' || sequence.storage_flags !== 'nil/false') return;
  const target = graph.nodes.find(n => n.scope === sequence.scope && n.id === sequence.node_id);
  if (target?.class_name !== 'SGDataGODB' || target.element_class !== 'SGVariable') return;
  const inputs = graph.ports.filter(p => p.scope === sequence.scope && p.node_id === sequence.node_id && p.direction === 'selector' && p.operation === 'set');
  if (inputs.length !== 1 || inputs[0].parameter !== 'aValue') return;
  const edges = graph.connections.filter(e => e.scope === sequence.scope && e.to_port === inputs[0].id);
  if (edges.length !== 1) return;
  const sourcePort = graph.ports.find(p => p.scope === sequence.scope && p.id === edges[0].from_port);
  if (!sourcePort || sourcePort.direction !== 'return') return;
  const source = graph.nodes.find(n => n.scope === sequence.scope && n.id === sourcePort.node_id);
  if (!source) return;
  const expression = source.class_name === 'SGLiteralGODB' && /^(?:[+-]?(?:\d+(?:\.\d*)?|\.\d+)(?:[eE][+-]?\d+)?|0[xX][\da-fA-F]+|true|false)$/.test(source.literal) ? source.literal
    : source.class_name === 'SGDataGODB' && ['SGVariable', 'SGParameter', 'SGConstant'].includes(source.element_class)
      && sourcePort.operation === 'get' && sourcePort.parameter === 'return' ? source.element_name : undefined;
  if (expression !== undefined) return `${target.element_name} = ${expression};`;
}

/** Decode a complete storage graph. References use scope + ID, never display names. */
export function decodeGraphicalBodies(rows: string[][]): GraphicalBody[] {
  const groups = new Map<string, string[][]>();
  for (const row of rows) {
    if (row.length !== 10 || !row[1] || !row[2]) throw new Error('Invalid graphical record identity');
    const id = key(row[1], row[2]);
    if (!groups.has(id)) groups.set(id, []);
    groups.get(id)!.push(row);
  }
  const result: GraphicalBody[] = [];
  for (const group of groups.values()) {
    const headers = group.filter(r => r[0] === '#GRAPH_SPEC');
    if (headers.length !== 1 || headers[0][9] !== '1') throw new Error('Missing or invalid graphical storage header');
    const head = headers[0];
    const graph: GraphicalBody = { component_oid: head[1], specification_source_oid: head[2], specification_name: head[3],
      complete: true, nodes: [], ports: [], sequences: [], connections: [], methods: [], issues: [] };
    for (const row of group) {
      const r = row.slice(3);
      switch (row[0]) {
        case '#GRAPH_SPEC': break;
        case '#GRAPH_NODE': graph.nodes.push({ scope: r[0], id: num(r[1]), class_name: r[2], element_alias: r[3], element_name: r[4], literal: r[5], element_class: r[6] }); break;
        case '#GRAPH_PORT':
          if (r[3] !== 'return' && r[3] !== 'selector') throw new Error('Invalid graphical port direction');
          graph.ports.push({ scope: r[0], node_id: num(r[1]), id: num(r[2]), direction: r[3], operation: r[4], parameter: r[5], storage_flags: r[6] }); break;
        case '#GRAPH_SEQUENCE': graph.sequences.push({ scope: r[0], node_id: num(r[1]), id: num(r[2]), method_alias: r[3], number: num(r[4]), operation: r[5], storage_flags: r[6] }); break;
        case '#GRAPH_EDGE': graph.connections.push({ scope: r[0], index: num(r[1]), from_port: nullableID(r[2]), to_port: nullableID(r[3]),
          from_block: nullableID(r[4]), to_block: nullableID(r[5]), class_name: r[6] }); break;
        case '#GRAPH_METHOD':
          if (!/^(?:[0-9a-f]{2})+$/.test(r[0]) || !['true', 'false'].includes(r[2])) throw new Error('Invalid graphical method');
          graph.methods.push({ member_id: r[0], member_name: r[1], is_process: r[2] === 'true' }); break;
        case '#GRAPH_ISSUE': graph.issues.push(`${r[0]}/${r[1]}: ${r[2]}`); break;
        default: throw new Error('Unknown graphical record: ' + row[0]);
      }
    }
    for (const [actual, expected] of [[graph.nodes.length, head[4]], [graph.ports.length, head[5]], [graph.sequences.length, head[6]],
      [graph.connections.length, head[7]], [graph.methods.length, head[8]]] as const) {
      if (actual !== num(expected)) throw new Error('Incomplete graphical storage records');
    }
    const nodes = new Map<string, GraphicalNode>(), ports = new Map<string, GraphicalPort>();
    for (const n of graph.nodes) {
      const id = key(n.scope, n.id);
      if (nodes.has(id)) throw new Error('Duplicate graphical node identity');
      nodes.set(id, n);
      if (!['SGCodeGODB', 'SGLiteralGODB', 'SGDataGODB'].includes(n.class_name)) graph.issues.push(`Unsupported node ${id}: ${n.class_name}`);
      if (n.scope !== 'root' || (n.class_name === 'SGCodeGODB' && (n.id !== -1 || n.element_alias))) graph.issues.push(`Unsupported hierarchy or call ${id}`);
      if (n.class_name === 'SGDataGODB' && (!n.element_name || !n.element_alias)) graph.issues.push(`Unresolved element ${id}`);
    }
    for (const p of graph.ports) {
      const id = key(p.scope, p.id);
      if (ports.has(id) || !nodes.has(key(p.scope, p.node_id))) throw new Error('Duplicate or orphan graphical port');
      ports.set(id, p);
      const node = nodes.get(key(p.scope, p.node_id))!;
      const supported = node.class_name === 'SGLiteralGODB'
        ? p.direction === 'return' && p.operation === 'literal' && p.parameter === 'return' && p.storage_flags === ''
        : node.class_name === 'SGDataGODB' && p.storage_flags === 'true/false/false' &&
          ((p.direction === 'return' && p.operation === 'get' && p.parameter === 'return') ||
           (p.direction === 'selector' && p.operation === 'set' && p.parameter === 'aValue'));
      if (!supported) graph.issues.push(`Unsupported port layout ${id}`);
    }
    const methodAliases = new Set(graph.methods.map(m => m.member_id));
    if (methodAliases.size !== graph.methods.length) throw new Error('Duplicate graphical method identity');
    const sequenceIDs = new Set<string>(), edgeIDs = new Set<string>(), sequenceOrders = new Set<string>();
    for (const sequence of graph.sequences) {
      const id = key(sequence.scope, sequence.id);
      if (sequenceIDs.has(id) || !nodes.has(key(sequence.scope, sequence.node_id))) throw new Error('Duplicate or orphan graphical sequence');
      sequenceIDs.add(id);
      if (!methodAliases.has(sequence.method_alias)) graph.issues.push(`Sequence ${id} refers to a method outside this specification`);
      const position = key(sequence.method_alias, sequence.number);
      if (sequenceOrders.has(position)) graph.issues.push(`Ambiguous execution order ${position}`);
      sequenceOrders.add(position);
      if (assignment(graph, sequence) === undefined) graph.issues.push(`Unsupported or ambiguous assignment ${id}`);
    }
    for (const edge of graph.connections) {
      const id = key(edge.scope, edge.index);
      if (edgeIDs.has(id)) throw new Error('Duplicate graphical connection');
      edgeIDs.add(id);
      const from = ports.get(key(edge.scope, edge.from_port)), to = ports.get(key(edge.scope, edge.to_port));
      if (!from || !to || from.direction !== 'return' || to.direction !== 'selector') graph.issues.push(`Unresolved or unsupported connection ${id}`);
      if (edge.class_name !== 'SGConnectionGODB' || edge.from_block !== null || edge.to_block !== null) graph.issues.push(`Unsupported connection layout ${id}`);
    }
    graph.nodes.sort((a, b) => order(a.scope, b.scope) || a.id - b.id);
    graph.ports.sort((a, b) => order(a.scope, b.scope) || a.id - b.id);
    graph.sequences.sort((a, b) => order(a.method_alias, b.method_alias) || order(a.scope, b.scope) || a.number - b.number || a.id - b.id);
    graph.connections.sort((a, b) => order(a.scope, b.scope) || a.index - b.index);
    graph.methods.sort((a, b) => order(a.member_id, b.member_id));
    graph.issues = [...new Set(graph.issues)].sort(order);
    graph.complete = graph.issues.length === 0;
    result.push(graph);
  }
  return result.sort((a, b) => order(key(a.component_oid, a.specification_source_oid), key(b.component_oid, b.specification_source_oid)));
}

/** A convenience view for direct, unambiguous scalar assignments; the graph remains authoritative. */
export function graphicalStatements(graph: GraphicalBody, alias: string): { sequence: GraphicalSequence; text: string }[] {
  if (!graph.complete) return [];
  const result: { sequence: GraphicalSequence; text: string }[] = [];
  for (const sequence of graph.sequences.filter(s => s.method_alias === alias)) {
    const text = assignment(graph, sequence);
    if (text !== undefined) result.push({ sequence, text });
  }
  return result;
}

export function graphicalMethodView(graph: GraphicalBody, alias: string): GraphicalBody {
  const method = graph.methods.find(m => m.member_id === alias)!;
  const sequences = graph.sequences.filter(s => s.method_alias === alias);
  // Complete supported graphs consist of direct assignments. Keep only their
  // target and input nodes so another method in the same spec cannot become a hit.
  const selected = new Set(sequences.map(s => key(s.scope, s.node_id)));
  const incoming = graph.ports.filter(p => p.direction === 'selector' && selected.has(key(p.scope, p.node_id)));
  const connections = graph.connections.filter(e => incoming.some(p => p.scope === e.scope && p.id === e.to_port));
  for (const edge of connections) {
    const port = graph.ports.find(p => p.scope === edge.scope && p.id === edge.from_port);
    if (port) selected.add(key(port.scope, port.node_id));
  }
  return graph.complete ? { ...graph, methods: [method], sequences, connections,
    nodes: graph.nodes.filter(n => selected.has(key(n.scope, n.id)) || n.id === -1),
    ports: graph.ports.filter(p => selected.has(key(p.scope, p.node_id))) } : graph;
}

export function graphicalText(graph: GraphicalBody, alias: string): string {
  const method = graph.methods.find(m => m.member_id === alias)!;
  const statements = graphicalStatements(graph, alias);
  const view = graphicalMethodView(graph, alias);
  return [
    '// ASCET graphical model representation; not handwritten ESDL or generated C.',
    `// Specification: ${graph.specification_name}; method: ${method.member_name}; alias: ${alias}`,
    ...statements.flatMap(s => [`// sequence ${s.sequence.number}`, s.text]),
    graph.complete ? '// Supported graph nodes used by this method; full specification graph is available via read_state_machine.'
      : '// PARTIAL shared specification graph; method ownership cannot be fully resolved. Inspect issues.',
    JSON.stringify(view, null, 2),
  ].join('\n');
}
