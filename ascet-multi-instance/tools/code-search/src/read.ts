import { performance } from 'node:perf_hooks';
import { COVERAGE_PROFILE, decodeResponse, EXCLUDED } from './protocol.js';
import { ToolError } from './patterns.js';
import type { Reader, ReadRequest, ReadResponse, SearchResponse, ReadStateMachineResponse, NativeResponse, Snapshot } from './types.js';
import { isRecord, validateRead } from './validation.js';
import { search, type SearchExecution } from './search.js';
import { readStateMachine } from './read-state-machine.js';

/** Read current complete source by stable search identity, never a saved body. */
export async function readDocument(value: unknown, bridge: Reader): Promise<ReadResponse> {
  const started = performance.now(), request = validateRead(value);
  const raw = await bridge.request({ mode: 'read_component', needle: request.target.component_oid, expected_database: request.expected_database });
  const received = performance.now(), snapshot = decodeResponse(raw);
  return selectReadDocument(request, raw, snapshot, started, received);
}

/** Select one member from a fresh component read, shared by single and batch reads. */
export function selectReadDocument(request: ReadRequest, raw: NativeResponse, snapshot: Snapshot, started: number, received: number): ReadResponse {
  if (raw.database.toLowerCase() !== request.expected_database.toLowerCase()) {
    throw new ToolError('DATABASE_CHANGED', 'Current database differs from the search reference; search again in the intended database');
  }
  const document = snapshot.documents.find(d => d.component_oid === request.target.component_oid && d.document_id === request.target.document_id);
  if (!document) {
    if (snapshot.errors.length) throw new ToolError('READ_INCOMPLETE', 'Component read failed; requested ASCET code availability cannot be determined: ' + JSON.stringify(snapshot.errors));
    throw new ToolError('DOCUMENT_NOT_FOUND', 'Requested Method, Process or other ASCET code is no longer available in this Component/Database; search again');
  }
  if (request.expected_source_sha256 !== undefined && request.expected_source_sha256 !== document.source_sha256) {
    throw new ToolError('SOURCE_CHANGED', 'ASCET code has changed since the search; search again or read without the hash precondition');
  }
  return { schema_version: 1, operation: 'read', id: request.id ?? null, status: snapshot.errors.length ? 'partial' : 'ok',
    scope: 'document', database: raw.database, ascet_pid: raw.ascet_pid, observed_utc: raw.observed_utc,
    first_connection: raw.first_connection ?? false, freshness: 'live_model_read_each_request', complete: !snapshot.errors.length,
    coverage_profile: snapshot.includes_diagrams ? 'text_state_and_bde_models_v3' : COVERAGE_PROFILE,
    excluded: EXCLUDED.filter(k => !snapshot.includes_diagrams || k !== 'general_block_diagram_components'), includes_comments_and_strings: true,
    column_unit: 'unicode_code_point_1_based', coverage: snapshot.coverage, errors: snapshot.errors,
    document, line_count: document.text.replace(/\r\n?/g, '\n').split('\n').length,
    timings: { ...raw.timings, bridge_roundtrip_ms: received - started, read_ms: performance.now() - started } };
}

export function execute(request: unknown, bridge: Reader, execution: SearchExecution = {}): Promise<SearchResponse | ReadResponse | ReadStateMachineResponse> {
  if (isRecord(request) && request.operation === 'read_state_machine') return readStateMachine(request, bridge);
  return isRecord(request) && request.operation === 'read' ? readDocument(request, bridge) : search(request, bridge, execution);
}
