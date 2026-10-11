import { createHmac, randomBytes, randomUUID, timingSafeEqual } from 'node:crypto';
import { performance } from 'node:perf_hooks';
import { execute } from './read.js';
import { errorResponse, searchWithSources, type SearchExecution } from './search.js';
import { MatchExecutor } from './match-queries.js';
import { ToolError } from './patterns.js';
import { isRecord, validateSearch } from './validation.js';
import { advance, indexQuery, projectQueries, selectHits } from './paging.js';
import type { IndexedQuery, PagePosition } from './paging.js';
import type { ContextBlock, Reader, ResultFormat } from './types.js';
import type { SearchPageResponse } from './paging-types.js';

export interface SearchSessionOptions {
  ttlMs?: number;
  maxEntries?: number;
  /** Conservative retained-data accounting, not a JavaScript heap ceiling. */
  maxCacheBytes?: number;
  maxSnapshotBytes?: number;
  maxPageBytes?: number;
  now?: () => number;
  pageFits?: (page: SearchPageResponse) => boolean;
}
interface SnapshotEntry {
  originOperation?: 'find' | 'search';
  id: string;
  created: number;
  expires: number;
  cost: number;
  limit: number;
  format: ResultFormat;
  before: number;
  after: number;
  queries: IndexedQuery[];
  metadata: Omit<SearchPageResponse, 'snapshot_id' | 'snapshot_created_utc' | 'expires_utc' | 'query_count' | 'result_format' |
    'searches' | 'limit' | 'returned_occurrences' | 'total_occurrences' | 'has_more' | 'next_cursor' | 'timings' | 'page_limited_by'>;
  initialMs: number;
}

/** One owner per persistent client session. Live operations remain serial. */
export class SearchSession {
  private readonly matcher = new MatchExecutor();
  private readonly secret = randomBytes(32);
  private readonly cache = new Map<string, SnapshotEntry>();
  private readonly options: Required<Omit<SearchSessionOptions, 'pageFits'>> & Pick<SearchSessionOptions, 'pageFits'>;
  private used = 0;
  private closed = false;
  private tail: Promise<unknown> = Promise.resolve();

  constructor(private readonly reader: Reader, options: SearchSessionOptions = {}, private readonly execution: SearchExecution = {}) {
    this.options = { ttlMs: 300_000, maxEntries: 16, maxCacheBytes: 64 * 1024 * 1024,
      maxSnapshotBytes: 32 * 1024 * 1024, maxPageBytes: 128 * 1024, now: Date.now, ...options };
    for (const [key, value] of Object.entries(this.options)) {
      if (key !== 'now' && key !== 'pageFits' && (!Number.isSafeInteger(value) || (value as number) < 1)) throw new Error(key + ' must be a positive safe integer');
    }
  }

  /** Closing releases query results; ownership of the Reader stays with the caller. */
  close(): void { this.closed = true; this.matcher.close(); this.cache.clear(); this.used = 0; }
  get retainedBytes(): number { return this.used; }
  get snapshotCount(): number { return this.cache.size; }
  discardSnapshot(id: string): void { this.remove(id); }
  evictOldestSnapshot(): boolean { const id = this.cache.keys().next().value; if (!id) return false; this.remove(id); return true; }

  /** Keep rejected oversized ids/field names from escaping via the error path. */
  formatError(request: unknown, error: unknown): Omit<ReturnType<typeof errorResponse>, 'schema_version'> & {
    schema_version: 1 | 2; operation?: 'search_page'; id_omitted?: true;
  } {
    const base = errorResponse(request, error);
    if (!isRecord(request) || (request.operation !== 'search_page' && !Object.hasOwn(request, 'cursor'))) return base;
    let result: ReturnType<SearchSession['formatError']> = { ...base, schema_version: 2, operation: 'search_page' };
    if (Buffer.byteLength(JSON.stringify(result), 'utf8') > this.options.maxPageBytes) result = { ...result, id: null, id_omitted: true };
    if (Buffer.byteLength(JSON.stringify(result), 'utf8') > this.options.maxPageBytes) {
      result = { ...result, message: 'Paged request failed; diagnostic exceeded response budget', code: 'PAGE_TOO_LARGE' };
    }
    return result;
  }

  execute(request: unknown, execution: SearchExecution = {}, originOperation?: 'find' | 'search' | 'read'): Promise<SearchPageResponse | Awaited<ReturnType<typeof execute>>> {
    // Freeze caller-owned ids/query objects at submission, including queued calls.
    request = structuredClone(request);
    const task = this.tail.then(async () => {
      if (this.closed) throw new ToolError('SESSION_CLOSED', 'Search session is closed');
      this.purge();
      if (isRecord(request) && Object.hasOwn(request, 'cursor')) return this.continue(request, originOperation);
      if (isRecord(request) && request.operation === 'search_page') return this.first(request, { ...this.execution, ...execution }, originOperation as 'find' | 'search' | undefined);
      return execute(request, this.reader, { matcher: this.matcher });
    }).catch(error => {
      if (this.closed) throw new ToolError('SESSION_CLOSED', 'Search session closed during the request');
      throw error;
    });
    this.tail = task.catch(() => undefined);
    return task;
  }

  private remove(id: string): void {
    const old = this.cache.get(id);
    if (old) { this.used -= old.cost; this.cache.delete(id); }
  }
  private purge(): void {
    const now = this.options.now();
    for (const [id, entry] of this.cache) if (entry.expires <= now) this.remove(id);
  }

  private token(snapshot: string, position: PagePosition): string {
    const body = Buffer.from(JSON.stringify({ snapshot, ...position })).toString('base64url');
    return body + '.' + createHmac('sha256', this.secret).update(body).digest('base64url');
  }

  private continue(request: Record<string, unknown>, invokedOperation?: 'find' | 'search' | 'read'): SearchPageResponse {
    if (Object.keys(request).some(k => k !== 'cursor') || typeof request.cursor !== 'string' || request.cursor.length > 8192) {
      throw new ToolError('INVALID_CURSOR', 'Continuation accepts only cursor');
    }
    const [body, signature, extra] = request.cursor.split('.');
    const expected = createHmac('sha256', this.secret).update(body).digest('base64url');
    if (extra !== undefined || !signature || !/^[A-Za-z0-9_-]+$/.test(signature) || signature.length !== expected.length ||
        !timingSafeEqual(Buffer.from(signature), Buffer.from(expected))) {
      throw new ToolError('INVALID_CURSOR', 'Cursor is invalid or belongs to another process/session');
    }
    let value: { snapshot: string; offsets: number[]; turn: number };
    try { value = JSON.parse(Buffer.from(body, 'base64url').toString('utf8')); }
    catch { throw new ToolError('INVALID_CURSOR', 'Malformed cursor'); }
    const entry = this.cache.get(value.snapshot);
    if (!entry) throw new ToolError('CURSOR_EXPIRED', 'Query results expired or were evicted; start a new search');
    if (invokedOperation && entry.originOperation !== invokedOperation) throw new ToolError('CURSOR_TOOL_MISMATCH',
      'This cursor belongs to ascet_code_' + (entry.originOperation ?? 'search') + '; continue with that tool');
    // Signed state is still checked explicitly to guard future cursor schema changes.
    if (!Array.isArray(value.offsets) || value.offsets.length !== entry.queries.length ||
        value.offsets.some((n, i) => !Number.isSafeInteger(n) || n < 0 || n > entry.queries[i].total) ||
        !Number.isInteger(value.turn) || value.turn < 0 || value.turn >= entry.queries.length) {
      throw new ToolError('INVALID_CURSOR', 'Invalid continuation position');
    }
    return this.page(entry, value);
  }

  private async first(request: Record<string, unknown>, execution: SearchExecution, originOperation?: 'find' | 'search'): Promise<SearchPageResponse> {
    const { operation: _operation, limit = 50, ...legacy } = request;
    if (!Number.isInteger(limit) || (limit as number) < 1 || (limit as number) > 200) throw new ToolError('INVALID_LIMIT', 'limit must be an integer from 1 to 200');
    const normalized = validateSearch(legacy);
    // Prevent an oversized echoed query/id envelope from causing a live read.
    if (Buffer.byteLength(JSON.stringify(legacy), 'utf8') > this.options.maxPageBytes) {
      throw new ToolError('PAGE_TOO_LARGE', 'Request/query metadata exceeds the page byte budget');
    }
    const { response: full, documents } = await searchWithSources({ ...legacy, result_format: 'expanded' }, this.reader,
      { ...execution, matcher: this.matcher, deferContext: true });
    if (this.closed) throw new ToolError('SESSION_CLOSED', 'Search session closed during the live read');
    const queries = ('searches' in full ? full.searches : [full]).map(indexQuery);
    const sources = new Map(documents.map(d => [d.document_id, d.text]));
    const contexts = new Map<string, ContextBlock[]>();
    for (const query of queries) {
      if (!query.query.multiline && !normalized.context_before && !normalized.context_after) continue;
      for (const doc of query.docs) {
        const text = sources.get(doc.value.document_id)!;
        let blocks = contexts.get(text);
        if (!blocks) {
          const lines = text.replace(/\r\n?/g, '\n').split('\n');
          blocks = [{ start_line: 1, end_line: lines.length, lines }]; contexts.set(text, blocks);
        }
        doc.sourceContext = blocks;
      }
    }
    const metadata: SnapshotEntry['metadata'] = {
      schema_version: 2, operation: 'search_page', id: full.id, status: full.status, scope: full.scope,
      database: full.database, ascet_pid: full.ascet_pid, observed_utc: full.observed_utc,
      first_connection: full.first_connection, freshness: 'query_snapshot', source_read_complete: full.complete,
      total_scope: full.complete ? 'supported_sources' : 'successfully_read_sources',
      coverage_profile: full.coverage_profile, excluded: full.excluded, includes_comments_and_strings: true,
      column_unit: full.column_unit, coverage: full.coverage, errors: full.errors,
      ...(full.filters ? { filters: full.filters } : {}),
    };
    const created = this.options.now();
    const entry: SnapshotEntry = { originOperation, id: randomUUID(), created, expires: created + this.options.ttlMs, cost: 0,
      limit: limit as number, format: normalized.result_format, before: normalized.context_before ?? 0,
      after: normalized.context_after ?? 0, queries, metadata, initialMs: full.timings.search_ms };
    const start = { offsets: queries.map(() => 0), turn: 0 };
    const page = this.page(entry, start);
    if (page.has_more) {
      entry.cost = retainedCost(entry);
      if (entry.cost > this.options.maxSnapshotBytes || entry.cost > this.options.maxCacheBytes) {
        throw new ToolError('SNAPSHOT_TOO_LARGE', 'Query result exceeds session cache budget; narrow the query or use the full-result interface');
      }
      this.purge();
      while (this.cache.size >= this.options.maxEntries || this.used + entry.cost > this.options.maxCacheBytes) {
        this.remove(this.cache.keys().next().value!);
      }
      this.cache.set(entry.id, entry); this.used += entry.cost;
    }
    return page;
  }

  private page(entry: SnapshotEntry, start: PagePosition): SearchPageResponse {
    const started = performance.now(), planned = selectHits(entry.queries, start, entry.limit);
    const build = (count: number, textBudget: number, contextBudget: number): SearchPageResponse => {
      const hits = planned.slice(0, count), end = advance(start, hits, entry.queries.length);
      const hasMore = entry.queries.some((q, i) => end.offsets[i] < q.total);
      return { ...entry.metadata, snapshot_id: entry.id,
        snapshot_created_utc: new Date(entry.created).toISOString(), expires_utc: new Date(entry.expires).toISOString(),
        query_count: entry.queries.length, result_format: entry.format,
        searches: projectQueries(entry.queries, hits, end, entry.format, entry.before, entry.after, textBudget, contextBudget),
        limit: entry.limit, returned_occurrences: hits.length,
        total_occurrences: entry.queries.reduce((n, q) => n + q.total, 0), has_more: hasMore,
        next_cursor: hasMore ? this.token(entry.id, end) : null,
        page_limited_by: count < planned.length ? 'bytes' : hasMore ? 'limit' : null,
        // Fixed precision bounds the final size adjustment after measuring JSON.
        timings: { initial_search_ms: entry.initialMs, page_ms: 0 } };
    };
    const fits = (p: SearchPageResponse) => Buffer.byteLength(JSON.stringify(p), 'utf8') + 32 <= this.options.maxPageBytes && (this.options.pageFits?.(p) ?? true);
    let page = build(planned.length, 500, 40);
    if (!fits(page)) {
      const minCount = Math.min(1, planned.length);
      let textBudget = 500, contextBudget = 40;
      let smallest = build(minCount, textBudget, contextBudget);
      if (!fits(smallest)) { textBudget = 120; contextBudget = 4; smallest = build(minCount, textBudget, contextBudget); }
      if (!fits(smallest)) { textBudget = 0; contextBudget = 0; smallest = build(minCount, textBudget, contextBudget); }
      if (!fits(smallest)) throw new ToolError('PAGE_TOO_LARGE', 'Minimum response metadata and one hit do not fit the page byte budget');
      let lo = minCount, hi = planned.length;
      page = smallest;
      while (lo < hi) {
        const mid = Math.ceil((lo + hi) / 2), candidate = build(mid, textBudget, contextBudget);
        if (fits(candidate)) { page = candidate; lo = mid; } else hi = mid - 1;
      }
    }
    page.timings.page_ms = Number((performance.now() - started).toFixed(3));
    // Library clients must not be able to mutate the cached metadata/ranges.
    return structuredClone(page);
  }
}

/** Conservative accounting without materializing a giant JSON string. Shared
 * match arrays and context lines count once; this is not a hard VM heap limit. */
export function retainedCost(root: unknown): number {
  const visited = new Set<object>(), pending: unknown[] = [root];
  let bytes = 4096;
  while (pending.length) {
    const value = pending.pop();
    if (typeof value === 'string') bytes += value.length * 2 + 32;
    else if (value && typeof value === 'object') {
      if (visited.has(value)) continue;
      visited.add(value); bytes += 64;
      for (const key in value) if (Object.hasOwn(value, key)) {
        bytes += key.length * 2 + 24; pending.push((value as Record<string, unknown>)[key]);
      }
    } else bytes += 16;
  }
  return bytes;
}
