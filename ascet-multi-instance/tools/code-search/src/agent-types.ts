import type { MatchRange, DiagramBody } from './types.js';

export type AgentMode = 'text' | 'identifier' | 'regex';
export interface AgentPatternOptions { mode?: AgentMode; case_sensitive?: boolean; multiline?: boolean; dotall?: boolean }
export interface AgentQuery extends AgentPatternOptions { text: string; id?: string }
export interface AgentScope {
  /** Component OID or a returned ref; here a ref selects its entire owning Component. */
  component?: string | string[];
  member?: string | string[];
  member_id?: string | string[];
  kind?: string | string[];
  variant?: string | string[];
  implementation?: string | string[];
  diagram?: string | string[];
  visibility?: 'public' | 'private' | ('public' | 'private')[];
  /** Native BDE node category; valid only for find target:objects. */
  object_kind?: string | string[];
}
export interface AgentSearchRequest extends AgentPatternOptions {
  operation?: 'search';
  query: string | AgentQuery | (string | AgentQuery)[];
  /** Defaults to 10 lines on each side. Explicit 0 disables surrounding lines. */
  context?: number | { before?: number; after?: number };
  in?: AgentScope;
  limit?: number;
  database?: string;
  debug?: boolean;
  group_by?: 'occurrence' | 'object';
}
export interface AgentReadRequest { operation: 'read'; ref: string | string[]; if_unchanged?: boolean; include_graph?: boolean; debug?: boolean; depth?: 0 | 1 | 2; direction?: 'incoming' | 'outgoing' | 'both'; lines?: { start: number; end: number } }
export interface AgentFindRequest {
  operation: 'find';
  target?: 'members' | 'components' | 'diagrams' | 'objects' | 'states' | 'transitions';
  /** Literal name/path condition for the selected target directory. */
  name?: string;
  diagram?: string;
  /** Literal Component name or full model path; separate from OID/ref scope. */
  component?: string;
  /** Method/Process name or State/Transition path; not a source query. */
  member?: string;
  match?: 'exact' | 'contains';
  case_sensitive?: boolean;
  in?: AgentScope;
  limit?: number;
  database?: string;
  debug?: boolean;
}
export interface AgentContinueRequest { cursor: string }
export type AgentRequest = AgentSearchRequest | AgentReadRequest | AgentFindRequest | AgentContinueRequest;
export interface AgentPreview {
  text: string;
  /** Present only for a shortened preview; coordinates remain original. */
  start_column?: number;
  truncated_before?: boolean;
  truncated_after?: boolean;
}
export interface AgentMatch extends AgentPreview { line: number; columns: number[]; ranges?: MatchRange[] }
export interface AgentSnippet {
  start_line: number;
  text: string;
  matches: { line: number; columns: number[]; ranges?: MatchRange[] }[];
  /** Only shortened lines need preview offsets; all hit coordinates stay original. */
  line_previews?: ({ line: number } & Omit<AgentPreview, 'text'>)[];
}
export interface AgentCodeTarget {
  /** Temporary selector for the precise code kind and Implementation/Variant below. */
  ref: string;
  component_path: string;
  /** Native owner type, e.g. SGClass/SGModule; independent of source kind. */
  component_type?: string;
  /** Native saved language, e.g. c/esdl/ascet_graph; not guessed from Variant names. */
  language?: string;
  method?: string;
  process?: string;
  /** Diagram name, when the model exposes it for this result. */
  diagram?: string;
  diagram_oid?: string;
  diagram_type?: 'bde' | 'state_machine';
  visibility?: 'public' | 'private';
  /** Full State/Transition path, preserving names of enclosing States. */
  state?: string;
  transition?: string;
  state_id?: number;
  transition_id?: number;
  state_hierarchy_ids?: number[];
  kind: string;
  variant: string;
  state_kind?: 'state' | 'hierarchy' | 'junction' | 'connector';
  native_type?: string;
  /** Omitted for the base implementation. */
  implementation?: string;
  /** Diagram-wide facts; filtering by Method selects its owning Diagram. */
  diagram_methods?: { name: string; kind: 'method' | 'process' }[];
  /** Graphical members matching find.name/member; [] means only the Diagram name matched. */
  matched_members?: { name: string; kind: 'method' | 'process' }[];
  representation?: 'graphical_model';
  method_binding?: { method: string; method_alias: string; component_oid: string };
}
export interface AgentSearchResult extends AgentCodeTarget {
  snippets?: AgentSnippet[];
  hits?: AgentDiagramHit[];
  omitted_lines?: number;
}
export interface AgentDiagramObject {
  ref: string; kind: string; name: string; hierarchy?: string;
  /** Native total for the explicitly read object's interface; not a count of this page or its neighbors. */
  pin_count?: number;
  /** Explicit reference target; never the Component owning this Diagram. */
  referenced_component_path?: string;
  /** Legacy local-read alias for referenced_component_path. */
  component_path?: string;
}
export interface AgentDiagramEndpoint extends AgentDiagramObject { pin: string; pin_id: number }
export interface AgentDiagramConnection { from: AgentDiagramEndpoint; to: AgentDiagramEndpoint }
export type AgentHitConnection = { from_pin: string; from_pin_id: number; to: AgentDiagramEndpoint }
  | { from: AgentDiagramEndpoint; to_pin: string; to_pin_id: number };
export interface AgentDiagramBoundary { outer: AgentDiagramEndpoint; inner: AgentDiagramEndpoint }
export interface AgentDiagramHit extends AgentDiagramObject {
  matched_fields: string[];
  occurrences?: number;
  evidence?: { field: string; text: string; pin_id?: number; start_offset?: number; truncated_before?: boolean; truncated_after?: boolean }[];
  omitted_evidence?: number;
  connections: AgentHitConnection[];
  omitted_connections?: number;
  boundaries?: AgentDiagramBoundary[];
  omitted_boundaries?: number;
  name_truncated?: true;
}
export interface AgentLocalContent {
  scope: 'local'; diagram_ref: string; object: AgentDiagramObject;
  depth: number; direction: 'incoming' | 'outgoing' | 'both';
  nodes: AgentDiagramObject[];
  pins: { object_ref: string; id: number; name: string; input: boolean; output: boolean; sequence?: { method: string; number: number } }[];
  connections: AgentDiagramConnection[]; boundaries: AgentDiagramBoundary[];
  has_more: boolean; next_cursor: string | null; expires_utc: string;
}
export interface AgentComponentTarget { ref: string; component_path: string; component_type: string }
export interface AgentObjectTarget extends AgentDiagramObject {
  component_path: string; diagram: string; diagram_oid: string; visibility?: 'public' | 'private'; node_id: number;
  component_type?: string;
  referenced_component_path?: string;
  element_type?: string;
}
export interface AgentFindResponse {
  status: 'ok' | 'partial';
  target: NonNullable<AgentFindRequest['target']>;
  returned_count: number;
  total_count: number;
  has_more: boolean;
  next_cursor: string | null;
  expires_utc: string;
  limited_by?: 'bytes';
  results: (AgentCodeTarget | AgentComponentTarget | AgentObjectTarget)[];
  issues?: AgentIssue[];
  debug?: unknown;
}
export interface AgentIssue {
  code: 'READ_INCOMPLETE' | 'SOURCE_CHANGED';
  message: string;
  component_oid?: string;
  component_path?: string;
  stage?: string;
}
export interface AgentSearchResponse {
  status: 'ok' | 'partial';
  returned_hits: number;
  total_hits: number;
  has_more: boolean;
  next_cursor: string | null;
  expires_utc: string;
  /** Included only when the byte budget reduces the requested hit count. */
  limited_by?: 'bytes';
  searches: {
    index: number;
    id?: string;
    query: string;
    mode: AgentMode;
    case_sensitive?: true;
    multiline?: true;
    dotall?: true;
    returned_hits: number;
    total_hits: number;
    has_more: boolean;
    results: AgentSearchResult[];
  }[];
  issues?: AgentIssue[];
  debug?: unknown;
}
/** Code and identity only; batch results inherit the top-level operation status. */
export interface AgentReadContent extends AgentCodeTarget, Partial<AgentLocalContent> {
  native_type?: string;
  state_kind?: 'state' | 'hierarchy' | 'junction' | 'connector';
  initial?: boolean;
  history?: boolean;
  start_state?: AgentCodeTarget | null;
  end_state?: AgentCodeTarget | null;
  priority?: number | null;
  code_slots?: AgentCodeTarget[];
  incoming?: AgentCodeTarget[];
  outgoing?: AgentCodeTarget[];
  /** Saved Method/Process, State Action, Transition or C/Header code. */
  code?: string;
  /** Factual Diagram listing (nodes, pins, connections, sequences), never generated ESDL. */
  diagram_text?: string;
  /** Opt-in full structural facts. This is the entire Diagram, including shared Methods and hierarchies. */
  graph?: (Omit<DiagramBody, 'issues'> & { scope: 'diagram' | 'local' });
  /** Binding-only results use method_binding instead of a fabricated Method body. */
  line_count?: number;
  /** Original Unicode coordinates, exclusive end; present on ranged or paged text. */
  code_range?: MatchRange;
  /** Inclusive logical lines. complete_lines excludes any line split across pages. */
  line_coverage?: { selected: { start: number; end: number }; page: { start: number; end: number };
    complete_lines: { start: number; end: number } | null };
  /** Only emitted for changed content or incomplete reads. */
  issues?: AgentIssue[];
  debug?: unknown;
}
export interface AgentReadResponse extends AgentReadContent { status: 'ok' | 'changed' | 'partial' }
export interface AgentErrorResponse { status: 'error'; code: string; message: string }
export interface AgentReadFailure { ref: string; error: { code: string; message: string } }
/** A saved batch item whose content starts on its independent continuation. No source facts are asserted here. */
export interface AgentReadDeferred { ref: string; deferred: true; has_more: true; next_cursor: string; expires_utc: string }
export interface AgentBatchReadResponse {
  /** error: all failed; partial: any failed/incomplete; changed: complete but changed; ok: complete and unchanged. */
  status: 'ok' | 'changed' | 'partial' | 'error';
  requested_count: number;
  returned_count: number;
  /** Input order and duplicates are preserved; kind identifies each ASCET code target. */
  results: (AgentReadContent | AgentReadFailure | AgentReadDeferred)[];
}
