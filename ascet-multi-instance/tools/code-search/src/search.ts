import { performance } from 'node:perf_hooks';
import { runMatches, type MatchExecutor } from './match-queries.js';
import { ToolError } from './patterns.js';
import { COVERAGE_PROFILE, decodeResponse, EXCLUDED } from './protocol.js';
import { isRecord, validateSearch } from './validation.js';
import type { ErrorResponse, Reader, SearchResponse, Snapshot, NativeRequest, NativeResponse } from './types.js';
import { planNativeSearch } from './prefilter.js';
import { filterDocuments } from './filters.js';

export interface SearchExecution {
  expectedPid?: number;
  matcher?: MatchExecutor; deferContext?: boolean;
  trackFields?: boolean;
  projectSnapshot?: (snapshot: Snapshot) => Snapshot;
  /** Internal metadata discovery may supply a catalog already read in this operation. */
  nativeRequest?: NativeRequest;
  nativeResponse?: NativeResponse;
}

/** Throws on invalid requests/transport errors; the JSONL CLI uses errorResponse. */
export async function search(request: unknown, bridge: Reader, execution: SearchExecution = {}): Promise<SearchResponse> {
  return (await searchWithSources(request, bridge, execution)).response;
}

/** Internal source-bearing result for lazy page context. Never serialized publicly. */
export async function searchWithSources(request: unknown, bridge: Reader, execution: SearchExecution = {}) {
  const started = performance.now(), normalized = validateSearch(request);
  const queries = normalized.queries;
  const native = execution.nativeRequest ?? planNativeSearch(normalized);
  const raw = execution.nativeResponse ?? await bridge.request(native), received = performance.now();
  if (execution.expectedPid !== undefined && raw.ascet_pid !== execution.expectedPid) throw new ToolError('ASCET_RESTARTED', 'ASCET process changed; find/search again');
  if (normalized.expected_database && raw.database.toLowerCase() !== normalized.expected_database.toLowerCase()) throw new ToolError('DATABASE_CHANGED', 'ASCET Database changed; find/search again');
  const saved = decodeResponse(raw), snapshot = execution.projectSnapshot?.(saved) ?? saved, decoded = performance.now();
  if ((normalized.filters?.diagram_ids || normalized.filters?.diagram_visibilities) && saved.diagram_scope_version !== 1) throw new ToolError('BRIDGE_UPGRADE_REQUIRED', 'Diagram scope requires the current native bridge');
  const documents = filterDocuments(snapshot.documents, normalized.filters), metrics: Record<string, number> = {};
  const job = { documents, request: normalized, deferContext: execution.deferContext, trackFields: execution.trackFields };
  const searches = await (execution.matcher ? execution.matcher.run(job, metrics) : runMatches(job, metrics));
  const matched = normalized.batch ? { query_count: searches.length, searches, result_format: normalized.result_format } : searches[0];
  const ended = performance.now();
  const response: SearchResponse = { schema_version: 1, ...matched, id: normalized.id, status: snapshot.errors.length ? 'partial' : 'ok',
    ...(normalized.filters ? { filters: normalized.filters } : {}),
    scope: 'database', database: raw.database, ascet_pid: raw.ascet_pid, observed_utc: raw.observed_utc,
    first_connection: raw.first_connection ?? false, freshness: 'live_model_read_each_request', complete: !snapshot.errors.length,
    coverage_profile: snapshot.includes_diagrams ? 'text_state_and_bde_models_v3' : COVERAGE_PROFILE, excluded: EXCLUDED.filter(k => !snapshot.includes_diagrams || k !== 'general_block_diagram_components'), includes_comments_and_strings: true,
    column_unit: 'unicode_code_point_1_based', coverage: snapshot.coverage, errors: snapshot.errors,
    timings: { ...raw.timings, ...metrics, bridge_roundtrip_ms: received - started, decode_match_ms: ended - received,
      decode_ms: decoded - received, match_ms: ended - decoded, search_ms: ended - started } };
  return { response, documents, diagrams: snapshot.diagrams ?? [] };
}

export function errorResponse(request: unknown, error: unknown): ErrorResponse {
  return { schema_version: 1, id: isRecord(request) ? request.id ?? null : null, status: 'error', complete: false,
    message: error instanceof Error ? error.message : String(error), ...(error instanceof ToolError ? { code: error.code } : {}) };
}
