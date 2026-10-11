export type SearchMode = 'text' | 'identifier_occurrence' | 'regex';
export type ResultFormat = 'expanded' | 'shared';
export interface SearchFilters {
  component_oids?: string[];
  member_ids?: string[];
  member_names?: string[];
  kinds?: string[];
  implementation_oids?: string[];
  variants?: string[];
  /** Exact Component/Specification-source pairs, never two independent OR sets. */
  diagram_ids?: string[];
  diagram_visibilities?: string[];
}
export interface Query {
  id?: unknown;
  query: string;
  mode?: SearchMode;
  case_sensitive?: boolean;
  multiline?: boolean;
  dotall?: boolean;
}
export interface SearchOptions {
  filters?: SearchFilters;
  scope?: 'database';
  expected_database?: string;
  result_format?: ResultFormat;
  context_before?: number;
  context_after?: number;
}
export interface SingleRequest extends Query, SearchOptions { queries?: never }
export interface BatchRequest extends SearchOptions { id?: unknown; queries: Query[]; query?: never }
export type SearchRequest = SingleRequest | BatchRequest;
export interface NormalizedQuery { id: unknown; query: string; mode: SearchMode; case_sensitive: boolean; multiline?: boolean; dotall?: boolean }
export interface NormalizedSearch {
  filters?: SearchFilters;
  id: unknown;
  queries: NormalizedQuery[];
  batch: boolean;
  expected_database?: string;
  result_format: ResultFormat;
  context_before?: number;
  context_after?: number;
}
export interface NativeRequest {
  /** Regression control: use the full detached graph path for every candidate. */
  disable_diagram_prefilter?: boolean;
  /** Internal read optimization; [] skips graphical sources without excluding text. */
  read_diagram_ids?: string[];
  diagram_name?: { text: string; match: 'exact' | 'contains'; case_sensitive: boolean };
  /** Read generic BDE model facts instead of legacy assignment reconstruction. */
  include_diagrams?: boolean;
  include_state_topology?: boolean;
  /** Test-only source checkpoint comparison; adds no persistent state. */
  audit_diagrams?: boolean;
  filters?: SearchFilters;
  mode: 'snapshot' | 'catalog' | 'reference' | 'search_sensitive' | 'search_insensitive' | 'search_many' | 'read_component' | 'read_state_machine';
  needle?: string;
  expected_database?: string;
}
export interface NativeResponse {
  native_protocol_version?: number;
  status: 'ok';
  database: string;
  ascet_pid: number;
  first_connection?: boolean;
  observed_utc: string;
  payload: string;
  timings: Record<string, number>;
}
export interface Reader { request(request: NativeRequest, execution?: { deadlineMs?: number }): Promise<NativeResponse> }
export interface StateLocation {
  diagram_source_oid: string;
  diagram_name: string;
  hierarchy_state_ids: number[];
  element_type: 'state' | 'transition';
  element_id: number;
  slot: string;
}
export interface SourceFields {
  kind: string;
  component_oid: string;
  component_path: string;
  implementation_oid: string;
  variant: string;
  member_id: string;
  member_name: string;
  language: string;
  text: string;
}
export interface SourceDocument extends SourceFields {
  /** Directory-only State Diagrams select scope; BDE Diagrams also have readable listings. */
  diagram_type?: 'bde' | 'state_machine';
  /** Native owning Component category from the same saved-model response. */
  component_type?: string;
  state_object?: StateObject;
  visibility?: 'public' | 'private';
  document_id: string;
  source_sha256: string;
  location?: StateLocation;
  binding?: { method_alias: string; method_name: string; component_oid: string };
  representation?: 'graphical_model';
  graphical_location?: { specification_source_oid: string; specification_name: string };
  /** Private UTF-16 spans in normalized diagram_text: searchable model fields only. */
  search_spans?: { start: number; end: number }[];
  /** Private provenance, aligned with search_spans; never part of a source revision. */
  diagram_fields?: DiagramField[];
  diagram_methods?: { member_id: string; name: string; kind: 'method' | 'process' }[];
  /** Query-only member name evidence; never part of the saved source revision. */
  matched_members?: { name: string; kind: 'method' | 'process' }[];
}
export interface DiagramField {
  scope: string;
  owner: { type: 'node'; node_id: number; pin_id?: number } | { type: 'diagram' } | { type: 'comment'; snapshot_ordinal: number };
  field: 'name' | 'component_path' | 'pin' | 'sequence_method' | 'comment';
}
export interface GraphicalNode { scope: string; id: number; class_name: string; element_alias: string; element_name: string; literal: string; element_class: string }
export interface GraphicalPort { scope: string; node_id: number; id: number; direction: 'return' | 'selector'; operation: string; parameter: string; storage_flags: string }
export interface GraphicalSequence { scope: string; node_id: number; id: number; method_alias: string; number: number; operation: string; storage_flags: string }
export interface GraphicalBody {
  component_oid: string; specification_source_oid: string; specification_name: string; complete: boolean;
  nodes: GraphicalNode[]; ports: GraphicalPort[]; sequences: GraphicalSequence[];
  connections: { scope: string; index: number; from_port: number | null; to_port: number | null; from_block: number | null; to_block: number | null; class_name: string }[];
  methods: { member_id: string; member_name: string; is_process: boolean }[];
  issues: string[];
}
export interface ReadError { component_oid: string; component_path: string; stage: string; message: string; diagram_oid?: string }
export interface StateMethod {
  component_oid: string;
  member_id: string;
  member_name: string;
  owner_specification: string;
  owner_class: string;
  owner_source_oid: string;
  api_class: string;
  category: 'trigger' | 'text' | 'graphical' | 'unknown';
  is_process: boolean;
}
export interface StateDiagram { component_oid: string; diagram_source_oid: string; diagram_name: string; visibility?: 'public' | 'private' }
export interface Snapshot {
  state_diagrams?: StateDiagram[];
  state_objects?: StateObject[];
  state_topology_version?: number;
  diagrams?: DiagramBody[];
  includes_diagrams?: boolean;
  diagram_scope_version?: number;
  documents: SourceDocument[];
  components: { oid: string; path: string; type: string }[];
  errors: ReadError[];
  coverage: Record<string, number>;
  references: (SourceFields & { line: number })[];
  state_read?: { component_oid: string; methods: StateMethod[]; diagrams: StateDiagram[] };
  graphical_bodies?: GraphicalBody[];
}
export interface StateObject {
  component_oid: string;
  diagram_source_oid: string;
  identity: string;
  name: string;
  kind: 'state' | 'transition';
  native_type: string;
  state_kind?: 'state' | 'hierarchy' | 'junction' | 'connector';
  initial?: boolean;
  history?: boolean;
  start?: string | null;
  end?: string | null;
  priority?: number | null;
  endpoint_issues?: string[];
}
export interface DiagramBody {
  visibility?: 'public' | 'private';
  component_oid: string;
  source_oid: string;
  name: string;
  methods: NonNullable<SourceDocument['diagram_methods']>;
  comments: { scope: string; text: string }[];
  scopes: { path: string; name: string }[];
  nodes: { scope: string; id: number; kind: string; name: string; element_alias?: string; element_type?: string; component_path?: string }[];
  pins: { scope: string; node_id: number; id: number; name: string; input: boolean; output: boolean }[];
  connections: { scope: string; id: number; from_pin: number; to_pin: number; type: string }[];
  boundaries: { scope: string; node_id: number; pin_id: number; child_scope: string; child_node_id: number; child_pin_id: number }[];
  sequences: { scope: string; pin_id: number; number: number; method: string }[];
  issues: string[];
}
export interface MatchRange { start_line: number; start_column: number; end_line: number; end_column: number }
export interface ContextBlock { start_line: number; end_line: number; lines: string[] }
export interface LineMatch { line: number; columns: number[]; text: string; ranges?: MatchRange[]; field_indices?: number[] }
export interface SearchDocument extends Omit<SourceDocument, 'text' | 'search_spans' | 'diagram_fields'> { matches?: LineMatch[]; match_set?: number; context?: ContextBlock[] }
export interface MatchResult {
  result_format: ResultFormat;
  match_sets?: LineMatch[][];
  context_sets?: ContextBlock[][];
  results: SearchDocument[];
  total_occurrences: number;
  matched_lines: number;
  matched_documents: number;
}
export type QueryResult = NormalizedQuery & MatchResult;
export interface ResponseMetadata {
  filters?: SearchFilters;
  schema_version: 1;
  id: unknown;
  status: 'ok' | 'partial';
  scope: 'database';
  database: string;
  ascet_pid: number;
  observed_utc: string;
  first_connection: boolean;
  freshness: 'live_model_read_each_request';
  complete: boolean;
  coverage_profile: string;
  excluded: string[];
  includes_comments_and_strings: true;
  column_unit: 'unicode_code_point_1_based';
  coverage: Record<string, number>;
  errors: ReadError[];
  timings: Record<string, number>;
}
export type SearchResponse = ResponseMetadata & (QueryResult | {
  query_count: number; searches: QueryResult[]; result_format: ResultFormat;
});
export interface ReadRequest {
  operation: 'read';
  id?: unknown;
  target: { component_oid: string; document_id: string };
  expected_database: string;
  expected_source_sha256?: string;
}
export type ReadResponse = Omit<ResponseMetadata, 'scope'> & {
  operation: 'read'; scope: 'document'; document: SourceDocument; line_count: number;
};
export interface ReadStateMachineRequest {
  operation: 'read_state_machine';
  id?: unknown;
  component_oid: string;
  expected_database: string;
}
export interface ResolvedStateMethod extends StateMethod {
  body_status: 'state_machine_event' | 'text' | 'graphical' | 'graphical_not_supported' | 'source_unavailable' | 'unknown';
  source_document_ids: string[];
  binding_document_ids: string[];
}
export type ReadStateMachineResponse = Omit<ResponseMetadata, 'scope' | 'coverage_profile'> & {
  operation: 'read_state_machine';
  scope: 'state_machine';
  coverage_profile: 'state_machine_source_bundle_v2';
  component: Snapshot['components'][number];
  diagrams: StateDiagram[];
  documents: (SourceDocument & { line_count: number })[];
  methods: ResolvedStateMethod[];
  graphical_bodies: GraphicalBody[];
  unread_method_bodies: { member_id: string; member_name: string; reason: ResolvedStateMethod['body_status'] }[];
  source_read_complete: boolean;
  binding_resolution_complete: boolean;
};
export type ToolRequest = SearchRequest | ReadRequest | ReadStateMachineRequest;
export interface ErrorResponse { schema_version: 1; id: unknown; status: 'error'; complete: false; message: string; code?: string }
