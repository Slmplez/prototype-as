import type { MatchRange, NormalizedQuery, ResponseMetadata, ResultFormat, SearchDocument, SearchRequest } from './types.js';

export type SearchPageRequest = SearchRequest & { operation: 'search_page'; limit?: number };
export interface ContinueSearchRequest { cursor: string }
/** Preview coordinates are in the original logical line, in Unicode code points. */
export interface SourcePreview { text: string; start_column: number; truncated_before: boolean; truncated_after: boolean }
export interface PageLineMatch { line: number; columns: number[]; ranges?: MatchRange[]; preview: SourcePreview }
export interface PageContext {
  lines: { line: number; preview: SourcePreview }[];
  omitted_lines: number;
}
export interface PageDocument extends Omit<SearchDocument, 'matches' | 'context'> {
  matches?: PageLineMatch[];
  context?: PageContext;
}
export interface PageQueryResult extends NormalizedQuery {
  query_index: number;
  result_format: ResultFormat;
  results: PageDocument[];
  match_sets?: PageLineMatch[][];
  context_sets?: PageContext[];
  returned_occurrences: number;
  total_occurrences: number;
  total_matched_lines: number;
  total_matched_documents: number;
  has_more: boolean;
}
export interface SearchPageResponse extends Omit<ResponseMetadata, 'schema_version' | 'freshness' | 'complete' | 'timings'> {
  schema_version: 2;
  operation: 'search_page';
  freshness: 'query_snapshot';
  source_read_complete: boolean;
  total_scope: 'supported_sources' | 'successfully_read_sources';
  snapshot_id: string;
  snapshot_created_utc: string;
  expires_utc: string;
  query_count: number;
  result_format: ResultFormat;
  searches: PageQueryResult[];
  limit: number;
  returned_occurrences: number;
  total_occurrences: number;
  has_more: boolean;
  next_cursor: string | null;
  page_limited_by: 'limit' | 'bytes' | null;
  timings: { initial_search_ms: number; page_ms: number };
}
