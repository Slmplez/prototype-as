import { createHash } from 'node:crypto';
import type { NativeResponse, Snapshot, SourceDocument, SourceFields, StateMethod, StateDiagram } from './types.js';
import { decodeDiagrams, diagramListing } from './diagrams.js';
import { decodeGraphicalBodies, graphicalText } from './graphical.js';
import { decodeStateTopology } from './state-topology.js';

export const TEXT_KINDS = new Set(['method', 'process', 'header', 'external_c', 'external_h']);
export const STATE_SOURCE_KINDS = new Set(['state_entry', 'state_static', 'state_exit', 'transition_trigger', 'transition_action', 'transition_condition']);
export const STATE_BINDING_KINDS = new Set([...STATE_SOURCE_KINDS].map(k => k + '_binding'));
const KINDS = new Set([...TEXT_KINDS, ...STATE_SOURCE_KINDS, ...STATE_BINDING_KINDS]);
export const COVERAGE_PROFILE = 'text_and_state_machine_sources_v2';
export const EXCLUDED = ['generated_code_archives', 'general_block_diagram_components', 'uncommitted_editor_buffer', 'semantic_symbol_references', 'transitive_bound_method_bodies'];
const DOC_FIELDS = ['kind', 'component_oid', 'component_path', 'implementation_oid', 'variant', 'member_id', 'member_name', 'language', 'text'] as const;

export const sha256 = (text: string): string => createHash('sha256').update(text, 'utf8').digest('hex');
export const identity = (d: SourceFields | Omit<SourceFields, 'text'>): string[] => [d.kind, d.component_oid, d.implementation_oid, d.variant, d.member_id];

// Preserve the original Python json.dumps(tuple) document IDs, including spaces
// and ensure_ascii escapes. Escaping UTF-16 units also matches surrogate pairs.
export function identityJson(parts: string[]): string {
  return '[' + parts.map(s => JSON.stringify(s).replace(/[\u007f-\uffff]/g,
    c => '\\u' + c.charCodeAt(0).toString(16).padStart(4, '0'))).join(', ') + ']';
}

function integer(value: string): number {
  if (!/^\s*[+-]?\d+\s*$/.test(value)) throw new Error('Invalid integer in ASCET transport');
  const n = Number(value);
  if (!Number.isSafeInteger(n)) throw new Error('Unsafe integer in ASCET transport');
  return n;
}

function decodeField(value: string): string {
  if (!value.includes('%')) return value;
  return value.replace(/%(\d+);/g, (_, digits: string) => {
    const n = Number(digits);
    if (!Number.isInteger(n) || n < 0 || n > 0x10ffff) throw new Error('Invalid Unicode escape in ASCET transport');
    return String.fromCodePoint(n);
  });
}

export function decodeResponse(response: Pick<NativeResponse, 'payload'>): Snapshot {
  if (typeof response.payload !== 'string') throw new Error('Missing ASCET field transport');
  const fields = response.payload.split('|');
  if (fields.at(-1) !== '' || (fields.length - 1) % 10) throw new Error('Malformed ASCET field transport');
  const documents: SourceDocument[] = [], components: Snapshot['components'] = [], errors: Snapshot['errors'] = [], references: Snapshot['references'] = [];
  const sources = new Map<string, string>(), hashes = new Map<string, string>();
  const pending: [SourceDocument, string][] = [];
  const diagrams = new Map<string, string>(), bindings = new Map<string, string>(), identities = new Set<string>();
  const stateMethods: StateMethod[] = [], stateDiagrams: StateDiagram[] = [];
  const methodIdentities = new Set<string>();
  const graphRows: string[][] = [], bdeRows: string[][] = [];
  const topologyRows: string[][] = [];
  let topologyVersion: number | undefined;
  let bdeContext: [string, string] | undefined;
  let includesDiagrams = false;
  let diagramScopeVersion: number | undefined;
  let diagramReadCount: number | undefined;
  let diagramReadMs: number | undefined;
  let diagramPhaseMs: number[] | undefined;
  let stateComponent: string | undefined;
  let stateMethodCount = 0;
  let stats: Record<string, number> | undefined, stateStats: Record<string, number> | undefined;
  for (let start = 0; start < fields.length - 1; start += 10) {
    const row: string[] = new Array(10);
    for (let i = 0; i < 10; i++) row[i] = decodeField(fields[start + i]);
    if (row[0] === '#BDE_CONTEXT') {
      if (bdeContext || !row[1] || !row[2] || row[3] !== '1' || row.slice(4).some(Boolean)) {
        throw new Error('Invalid BDE transport context');
      }
      bdeContext = [row[1], row[2]];
      continue;
    }
    if (bdeContext) {
      if (!row[0].startsWith('#BDE_') || row[0] === '#BDE_ENABLED' || row[1] || row[2]) {
        throw new Error('Invalid record in BDE transport context');
      }
      [row[1], row[2]] = bdeContext;
      if (row[0] === '#BDE_END') bdeContext = undefined;
    }
    if (row[0] === '#STATE_TOPOLOGY') {
      if (topologyVersion || row[1] !== '1' || row.slice(2).some(Boolean)) throw new Error('Invalid state topology version');
      topologyVersion = 1;
    } else if (row[0].startsWith('#SM_')) {
      topologyRows.push(row);
    } else if (row[0] === '#DIAGRAM_SCOPE') {
      if (diagramScopeVersion !== undefined || row[1] !== '1') throw new Error('Invalid Diagram scope version');
      diagramScopeVersion = 1;
    } else if (row[0] === '#DIAGRAM_READ_STATS') {
      if (diagramReadCount !== undefined) throw new Error('Duplicate Diagram read stats');
      // Merged into the final coverage below independently of State stats.
      diagramReadCount = integer(row[1]);
      if (row[2]) diagramReadMs = integer(row[2]);
      if (row.slice(3, 6).some(Boolean)) {
        diagramPhaseMs = row.slice(3, 6).map(integer);
        if (diagramPhaseMs.some(ms => ms < 0)) throw new Error('Invalid Diagram phase timing');
      }
    } else if (row[0] === '#BDE_ENABLED') {
      if (includesDiagrams || row[1] !== '1') throw new Error('Invalid BDE reader version');
      includesDiagrams = true;
    } else if (row[0].startsWith('#BDE_')) { bdeRows.push(row);
    } else if (row[0].startsWith('#GRAPH_')) {
      graphRows.push(row);
    } else if (row[0] === '#SOURCE') {
      if (!row[1] || sources.has(row[1])) throw new Error('Missing or duplicate source identity');
      sources.set(row[1], row[8]);
    } else if (row[0] === '#COMPONENT') {
      components.push({ oid: row[1], path: row[2], type: row[7] });
    } else if (row[0] === '#STATE_COMPONENT') {
      if (stateComponent !== undefined || !row[1] || row[9] !== '1') throw new Error('Invalid state-machine bundle version or identity');
      stateComponent = row[1];
      stateMethodCount = integer(row[8]);
    } else if (row[0] === '#STATE_METHOD') {
      const methodKey = JSON.stringify([row[1], row[5]]);
      if (methodIdentities.has(methodKey) || !/^(?:[0-9a-f]{2})+$/.test(row[5]) ||
          !['trigger', 'text', 'graphical', 'unknown'].includes(row[8]) || !['true', 'false'].includes(row[9])) {
        throw new Error('Invalid or duplicate state method metadata');
      }
      methodIdentities.add(methodKey);
      stateMethods.push({ component_oid: row[1], owner_specification: row[2], owner_class: row[3], owner_source_oid: row[4],
        member_id: row[5], member_name: row[6], api_class: row[7], category: row[8] as StateMethod['category'], is_process: row[9] === 'true' });
    } else if (row[0] === '#STATE_DIAGRAM') {
      const diagramKey = JSON.stringify([row[1], row[2]]);
      if (diagrams.has(diagramKey)) throw new Error('Duplicate state diagram identity');
      diagrams.set(diagramKey, row[3]);
      if (row[4] && !['public', 'private', 'unknown'].includes(row[4])) throw new Error('Invalid state Diagram visibility');
      stateDiagrams.push({ component_oid: row[1], diagram_source_oid: row[2], diagram_name: row[3],
        ...(row[4] === 'public' || row[4] === 'private' ? { visibility: row[4] } : {}) });
    } else if (row[0] === '#STATE_STATS') {
      if (stateStats) throw new Error('Duplicate state machine coverage');
      stateStats = Object.fromEntries(['state_machine_components', 'state_machine_diagrams', 'states', 'transitions', 'method_bindings', 'state_tree_max_depth']
        .map((k, i) => [k, integer(row[i + 1])]));
    } else if (row[0].startsWith('#BINDING_')) {
      const kind = row[0].slice('#BINDING_'.length);
      const bindingKey = JSON.stringify([kind, row[1], row[3], row[4], row[5]]);
      if (!STATE_BINDING_KINDS.has(kind) || bindings.has(bindingKey) || !/^(?:[0-9a-f]{2})+$/.test(row[8])) {
        throw new Error('Invalid or duplicate method binding');
      }
      bindings.set(bindingKey, row[8]);
    } else if (row[0] === '#ERROR') {
      errors.push({ component_oid: row[1], component_path: row[2], ...(row[3] ? { diagram_oid: row[3] } : {}), stage: row[8], message: row[9] });
    } else if (row[0] === '#STATS') {
      if (stats) throw new Error('Duplicate coverage record');
      stats = Object.fromEntries(['candidate_objects', 'components', 'text_components', 'documents', 'characters', 'containers',
        'native_directory_ms', 'native_scan_match_encode_ms', 'wire_characters'].map((k, i) => [k, integer(row[i + 1] || (i >= 6 ? '0' : ''))]));
    } else if (row[0].startsWith('#REF_')) {
      references.push({ ...Object.fromEntries(DOC_FIELDS.map((k, i) => [k, row[i]])) as unknown as SourceFields, line: integer(row[9]) });
    } else if (KINDS.has(row[0])) {
      const key = JSON.stringify([row[0], row[1], row[3], row[4], row[5]]);
      if (identities.has(key)) throw new Error('Duplicate document identity: ' + key);
      identities.add(key);
      const document = { ...Object.fromEntries(DOC_FIELDS.map((k, i) => [k, row[i]])),
        document_id: sha256(identityJson([row[0], row[1], row[3], row[4], row[5]])), source_sha256: '' } as unknown as SourceDocument;
      if (row[9] === '#SOURCE_REF') pending.push([document, row[8]]);
      else if (row[9]) throw new Error('Unknown source transport marker');
      documents.push(document);
    } else throw new Error('Unknown ASCET record: ' + row[0]);
  }
  if (bdeContext) throw new Error('Unclosed BDE transport context');
  const used = new Set<string>();
  for (const [doc, sourceId] of pending) {
    if (!sources.has(sourceId)) throw new Error('Missing source reference: ' + sourceId);
    doc.text = sources.get(sourceId)!;
    used.add(sourceId);
  }
  if (used.size !== sources.size) throw new Error('Unreferenced source record');
  for (const doc of documents) {
    if (!hashes.has(doc.text)) hashes.set(doc.text, sha256(doc.text));
    doc.source_sha256 = hashes.get(doc.text)!;
    if (STATE_SOURCE_KINDS.has(doc.kind) || STATE_BINDING_KINDS.has(doc.kind)) {
      const [sourceId, ...segments] = doc.member_id.split('/');
      const diagramKey = JSON.stringify([doc.component_oid, sourceId]);
      if (!diagrams.has(diagramKey) || !segments.length || segments.some(s => !/^[st][0-9]+$/.test(s)) || segments.slice(0, -1).some(s => s[0] !== 's')) {
        throw new Error('Invalid state machine location');
      }
      const type = doc.kind.startsWith('state_') ? 'state' : 'transition';
      if (segments.at(-1)![0] !== type[0]) throw new Error('State machine location type mismatch');
      doc.location = { diagram_source_oid: sourceId, diagram_name: diagrams.get(diagramKey)!,
        hierarchy_state_ids: segments.slice(0, -1).map(s => integer(s.slice(1))), element_type: type,
        element_id: integer(segments.at(-1)!.slice(1)), slot: doc.kind.replace(/_binding$/, '').split('_').slice(1).join('_') };
      const ownerDiagram = stateDiagrams.find(d => d.component_oid === doc.component_oid && d.diagram_source_oid === sourceId)!;
      if (ownerDiagram.visibility) {
        doc.visibility = ownerDiagram.visibility;
        doc.source_sha256 = sha256(JSON.stringify([doc.text, doc.location, doc.visibility]));
      }
      if (STATE_BINDING_KINDS.has(doc.kind)) {
        const key = JSON.stringify(identity(doc));
        if (!bindings.has(key)) throw new Error('Missing state machine method binding');
        doc.binding = { method_alias: bindings.get(key)!, method_name: doc.text, component_oid: doc.component_oid };
        bindings.delete(key);
      }
    }
  }
  if (bindings.size) throw new Error('Unreferenced method binding');
  const graphicalBodies = decodeGraphicalBodies(graphRows);
  for (const graph of graphicalBodies) {
    const owner = components.find(c => c.oid === graph.component_oid);
    if (!owner) throw new Error('Graphical source without component');
    for (const issue of graph.issues) errors.push({ component_oid: owner.oid, component_path: owner.path, stage: 'graphical source ' + graph.specification_name, message: issue });
    for (const method of graph.methods) {
      const text = graphicalText(graph, method.member_id);
      const doc: SourceDocument = { kind: 'graphical_method', component_oid: owner.oid, component_path: owner.path,
        implementation_oid: '', variant: 'BD', member_id: method.member_id, member_name: method.member_name,
        language: 'ascet_graph', text, representation: 'graphical_model',
        graphical_location: { specification_source_oid: graph.specification_source_oid, specification_name: graph.specification_name },
        document_id: '', source_sha256: sha256(text) };
      doc.document_id = sha256(identityJson(identity(doc)));
      const id = JSON.stringify(identity(doc));
      if (identities.has(id)) throw new Error('Duplicate graphical document identity: ' + id);
      identities.add(id);
      documents.push(doc);
    }
  }
  const bdeDiagrams = decodeDiagrams(bdeRows);
  for (const graph of bdeDiagrams) {
    if (!includesDiagrams) throw new Error('BDE data without reader version');
    const owner = components.find(c => c.oid === graph.component_oid);
    if (!owner) throw new Error('BDE diagram without component');
    if (diagramScopeVersion && !graph.visibility) graph.issues.push('DIAGRAM_VISIBILITY_UNKNOWN');
    for (const message of graph.issues) errors.push({ component_oid: owner.oid, component_path: owner.path, diagram_oid: graph.source_oid, stage: 'BDE diagram ' + graph.name, message });
    const d: SourceDocument = { kind: 'diagram', component_oid: owner.oid, component_path: owner.path,
      implementation_oid: '', variant: 'BD', member_id: graph.source_oid, member_name: graph.name, language: 'ascet_graph',
      representation: 'graphical_model', graphical_location: { specification_source_oid: graph.source_oid, specification_name: graph.name },
      ...(graph.visibility ? { visibility: graph.visibility } : {}), diagram_methods: graph.methods, ...diagramListing(graph), document_id: '', source_sha256: sha256(JSON.stringify(graph)) };
    d.document_id = sha256(identityJson(identity(d))); documents.push(d);
  }
  if (!stats || stats.components !== components.length) throw new Error('Missing or inconsistent coverage record');
  if (new Set(components.map(c => c.oid)).size !== components.length) throw new Error('Duplicate component identity');
  if (stateComponent !== undefined) {
    if (stateMethods.length > stateMethodCount || (!errors.length && stateMethods.length !== stateMethodCount)) throw new Error('Incomplete state method inventory');
    if (components.length !== 1 || components[0].oid !== stateComponent ||
        stateMethods.some(m => m.component_oid !== stateComponent) || stateDiagrams.some(d => d.component_oid !== stateComponent) ||
        documents.some(d => d.component_oid !== stateComponent)) throw new Error('State-machine bundle contains another component');
  } else if (stateMethods.length) throw new Error('State method metadata without bundle identity');
  Object.assign(stats, stateStats, { transported_unique_sources: sources.size || hashes.size,
    transported_unique_characters: [...hashes.keys()].reduce((n, body) => n + [...body].length, 0) });
  if (graphicalBodies.length) Object.assign(stats, { graphical_specifications: graphicalBodies.length,
    graphical_method_documents: graphicalBodies.reduce((n, g) => n + g.methods.length, 0),
    graphical_nodes: graphicalBodies.reduce((n, g) => n + g.nodes.length, 0), graphical_connections: graphicalBodies.reduce((n, g) => n + g.connections.length, 0),
    // Native counters describe stored text before filtering; derived documents are separate.
    returned_documents: documents.length,
    graphical_representation_characters: documents.filter(d => d.kind === 'graphical_method').reduce((n, d) => n + [...d.text].length, 0) });
  if (includesDiagrams) Object.assign(stats, { bde_diagrams: bdeDiagrams.length, bde_nodes: bdeDiagrams.reduce((n, g) => n + g.nodes.length, 0), bde_connections: bdeDiagrams.reduce((n, g) => n + g.connections.length, 0) });
  if (diagramReadCount !== undefined) stats.native_diagrams_loaded = diagramReadCount;
  if (diagramReadMs !== undefined) stats.native_bde_read_ms = diagramReadMs;
  if (diagramPhaseMs) {
    [stats.native_bde_copy_ms, stats.native_bde_load_ms, stats.native_bde_walk_ms] = diagramPhaseMs;
  }
  if (diagramScopeVersion) for (const d of stateDiagrams.filter(d => !d.visibility)) errors.push({ component_oid: d.component_oid,
    component_path: components.find(c => c.oid === d.component_oid)?.path ?? '', diagram_oid: d.diagram_source_oid, stage: 'State Diagram metadata', message: 'DIAGRAM_VISIBILITY_UNKNOWN' });
  if (topologyRows.length && !topologyVersion) throw new Error('State topology without version');
  const topology = topologyVersion ? decodeStateTopology(topologyRows, stateDiagrams, components, documents) : undefined;
  if (topology) {
    for (const d of stateDiagrams) if (!topologyRows.some(r => r[0] === '#SM_END' && r[1] === d.component_oid && r[2] === d.diagram_source_oid) &&
        !errors.some(e => e.component_oid === d.component_oid && e.diagram_oid === d.diagram_source_oid)) throw new Error('Missing state topology Diagram');
    documents.push(...topology.documents);
  }
  return { documents, components, errors, coverage: stats, references, ...(stateDiagrams.length ? { state_diagrams: stateDiagrams } : {}), ...(topology ? { state_objects: topology.objects, state_topology_version: topologyVersion } : {}), ...(diagramScopeVersion ? { diagram_scope_version: diagramScopeVersion } : {}),
    ...(includesDiagrams ? { includes_diagrams: true, diagrams: bdeDiagrams } : {}),
    ...(stateComponent !== undefined ? { state_read: { component_oid: stateComponent, methods: stateMethods, diagrams: stateDiagrams } } : {}),
    ...(graphicalBodies.length ? { graphical_bodies: graphicalBodies } : {}) };
}
