import { performance } from 'node:perf_hooks';
import { decodeResponse, STATE_BINDING_KINDS, STATE_SOURCE_KINDS } from './protocol.js';
import { ToolError } from './patterns.js';
import { validateReadStateMachine } from './validation.js';
import type { Reader, ReadStateMachineResponse, ResolvedStateMethod } from './types.js';

/** One fresh component read: all state slots, stored text methods and method inventory. */
export async function readStateMachine(value: unknown, bridge: Reader): Promise<ReadStateMachineResponse> {
  const started = performance.now(), request = validateReadStateMachine(value);
  const raw = await bridge.request({ mode: 'read_state_machine', needle: request.component_oid, expected_database: request.expected_database });
  const received = performance.now(), snapshot = decodeResponse(raw);
  const component = snapshot.components.find(c => c.oid === request.component_oid);
  if (!component) throw new ToolError(snapshot.errors.length ? 'READ_INCOMPLETE' : 'COMPONENT_NOT_FOUND',
    snapshot.errors.length ? 'Component could not be read: ' + JSON.stringify(snapshot.errors) : 'Component no longer exists; discover it again');
  const state = snapshot.state_read;
  if (!state) {
    if (snapshot.errors.length) throw new ToolError('READ_INCOMPLETE', 'State-machine read failed: ' + JSON.stringify(snapshot.errors));
    if (!snapshot.coverage.state_machine_components) throw new ToolError('NOT_A_STATE_MACHINE', 'Requested component is not a state machine');
    throw new ToolError('UNSUPPORTED_READER_PROTOCOL', 'Rebuild the native bridge to read a complete state-machine bundle');
  }
  if (state.component_oid !== request.component_oid) throw new Error('Unexpected state-machine response identity');
  const errors = [...snapshot.errors];
  const methods: ResolvedStateMethod[] = state.methods.map(m => {
    const sources = snapshot.documents.filter(d => ['method', 'process', 'graphical_method'].includes(d.kind) && d.member_id === m.member_id);
    const bindings = snapshot.documents.filter(d => d.binding?.method_alias === m.member_id);
    const eventDiagram = state.diagrams.some(d => d.diagram_source_oid === m.owner_source_oid);
    const body_status: ResolvedStateMethod['body_status'] = m.category === 'trigger'
      ? (eventDiagram ? 'state_machine_event' : 'source_unavailable')
      : m.category === 'graphical' ? (snapshot.graphical_bodies?.some(g => g.complete && g.specification_source_oid === m.owner_source_oid && g.methods.some(method => method.member_id === m.member_id)) ? 'graphical' : 'graphical_not_supported')
      : sources.length ? 'text' : m.category === 'text' ? 'source_unavailable' : 'unknown';
    return { ...m, body_status, source_document_ids: sources.map(d => d.document_id), binding_document_ids: bindings.map(d => d.document_id) };
  });
  const inventory = new Map(methods.map(m => [m.member_id, m]));
  for (const doc of snapshot.documents) {
    if (doc.binding) {
      const target = inventory.get(doc.binding.method_alias);
      if (!target || target.member_name !== doc.binding.method_name) errors.push({ component_oid: component.oid,
        component_path: component.path, stage: 'binding inventory', message: 'Missing or inconsistent method metadata for ' + doc.document_id });
    }
    if (['method', 'process', 'graphical_method'].includes(doc.kind) && !inventory.has(doc.member_id)) {
      errors.push({ component_oid: component.oid, component_path: component.path, stage: 'source inventory', message: 'Method source absent from inventory: ' + doc.member_id });
    }
  }
  const readable = (m: ResolvedStateMethod): boolean => ['text', 'state_machine_event', 'graphical'].includes(m.body_status);
  const unread = methods.filter(m => !readable(m)).map(m => ({ member_id: m.member_id, member_name: m.member_name, reason: m.body_status }));
  const sourceComplete = errors.length === 0;
  const bindingsComplete = sourceComplete && methods.every(m => !m.binding_document_ids.length || readable(m));
  const complete = sourceComplete && unread.length === 0;
  const documents = snapshot.documents.map(d => ({ ...d, line_count: d.text.replace(/\r\n?/g, '\n').split('\n').length }));
  return { schema_version: 1, operation: 'read_state_machine', id: request.id ?? null, status: complete ? 'ok' : 'partial', complete,
    scope: 'state_machine', database: raw.database, ascet_pid: raw.ascet_pid, observed_utc: raw.observed_utc,
    first_connection: raw.first_connection ?? false, freshness: 'live_model_read_each_request',
    coverage_profile: 'state_machine_source_bundle_v2',
    excluded: ['generated_code_archives', 'general_block_diagram_components', 'uncommitted_editor_buffer', 'semantic_symbol_references',
      'state_transition_topology', 'transitive_callee_bodies'],
    includes_comments_and_strings: true, column_unit: 'unicode_code_point_1_based',
    component, diagrams: state.diagrams, documents, methods, graphical_bodies: snapshot.graphical_bodies ?? [], unread_method_bodies: unread,
    source_read_complete: sourceComplete, binding_resolution_complete: bindingsComplete,
    coverage: { ...snapshot.coverage, state_source_documents: documents.filter(d => STATE_SOURCE_KINDS.has(d.kind)).length,
      state_binding_documents: documents.filter(d => STATE_BINDING_KINDS.has(d.kind)).length,
      inventoried_methods: methods.length, unread_method_bodies: unread.length },
    errors, timings: { ...raw.timings, bridge_roundtrip_ms: received - started, read_ms: performance.now() - started } };
}
