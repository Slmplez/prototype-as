import { isRecord } from './validation.js';
import { createHash } from 'node:crypto';

export interface AgentEvidenceRef {
  ref: string;
  component_path?: string;
  diagram_oid?: string;
  kind?: string;
  expires_at?: number;
  scoped: boolean;
  read: boolean;
  complete_text: boolean;
  complete_source: boolean;
  multiline_regex_match: boolean;
}
interface ReadChain { ref: string; full: boolean; end?: { line: number; column: number } }
interface SearchProof { operation: string; signature: string; active: boolean; cursor?: string; complete: boolean; zero: boolean; multiline: boolean; expires_at: number }
interface Page { operation: string; scoped: boolean; expires_at: number; search?: SearchProof; read?: ReadChain }

function failed(value: Record<string, unknown>): boolean {
  return value.status === 'error' || Object.hasOwn(value, 'error');
}
function changed(value: Record<string, unknown>): boolean {
  return value.status === 'changed' || (Array.isArray(value.issues) && value.issues.some(i => isRecord(i) && i.code === 'SOURCE_CHANGED'));
}
function identityFailure(value: Record<string, unknown>): boolean {
  const codes = ['ASCET_RESTARTED', 'DATABASE_CHANGED', 'DATABASE_CHANGED_DURING_READ'];
  return (value.status === 'error' && codes.includes(String(value.code))) ||
    (isRecord(value.error) && codes.includes(String(value.error.code))) ||
    (Array.isArray(value.issues) && value.issues.some(i => isRecord(i) && codes.includes(String(i.code)))) ||
    (Array.isArray(value.results) && value.results.some(i => isRecord(i) && identityFailure(i)));
}
function querySignature(request: Record<string, unknown>, scopeIdentity: (key: string, selector: string) => unknown): string {
  const stable = (v: unknown): unknown => Array.isArray(v) ? v.map(stable) : isRecord(v)
    ? Object.fromEntries(Object.keys(v).sort().map(key => [key, stable(v[key])])) : v;
  const predicate = Object.fromEntries(Object.entries(request).filter(([key]) =>
    !['operation', 'limit', 'context', 'context_before', 'context_after', 'group_by', 'debug'].includes(key)));
  if (isRecord(predicate.in)) {
    const filters = { ...predicate.in };
    for (const key of ['component', 'diagram']) {
      const scope = filters[key];
      if (scope === undefined) continue;
      // These selectors form an OR set. Query arrays retain their order and
      // duplicates; they are separate queries, not scope selectors.
      const identities = (Array.isArray(scope) ? scope : [scope]).map(v => typeof v === 'string' ? scopeIdentity(key, v) : v);
      filters[key] = [...new Map(identities.map(v => [JSON.stringify(stable(v)), v])).entries()].sort(([a], [b]) => a.localeCompare(b)).map(([, v]) => v);
    }
    predicate.in = filters;
  }
  return createHash('sha256').update(JSON.stringify(stable(predicate))).digest('hex');
}

/** Only returned selectors are evidence; failed read echoes and cursors never are. */
export function collectReturnedRefs(value: unknown, refs = new Set<string>()): Set<string> {
  if (!isRecord(value) && !Array.isArray(value)) return refs;
  if (isRecord(value) && (failed(value) || (changed(value) && !Array.isArray(value.results)))) return refs;
  for (const [key, item] of Object.entries(value)) {
    if ((key === 'ref' || key.endsWith('_ref')) && typeof item === 'string') refs.add(item);
    if (key.endsWith('_refs') && Array.isArray(item)) for (const ref of item) if (typeof ref === 'string') refs.add(ref);
    if (key !== 'debug' && key !== 'graph') collectReturnedRefs(item, refs);
  }
  return refs;
}

/** Session evidence facts, not a source cache or an index. */
export class AgentEvidence {
  private readonly entries = new Map<string, AgentEvidenceRef>();
  private readonly cursors = new Map<string, Page>();
  private readonly searches = new Set<SearchProof>();
  private lostSearch = false;
  private identity?: { database?: string; pid?: number };
  constructor(private readonly now: () => number = Date.now, private readonly maxEntries = 10_000) {
    if (!Number.isSafeInteger(maxEntries) || maxEntries < 1) throw new Error('maxEntries must be a positive safe integer');
  }

  clear(): void {
    this.entries.clear(); this.cursors.clear(); this.searches.clear();
    this.lostSearch = false; this.identity = undefined;
  }
  get(ref: string): AgentEvidenceRef | undefined {
    const item = this.entries.get(ref);
    return item && (item.expires_at === undefined || item.expires_at > this.now()) ? { ...item } : undefined;
  }
  refs(): Set<string> { return new Set([...this.entries.keys()].filter(ref => this.get(ref))); }
  get hasCompleteZeroResult(): boolean { return [...this.searches].some(s => s.active && s.zero && s.expires_at > this.now()); }
  get hasMultilineRegexMatch(): boolean { return [...this.searches].some(s => s.active && s.multiline && s.expires_at > this.now()); }
  get allSearchPagesRead(): boolean {
    const searches = [...this.searches].filter(s => s.operation === 'search' && s.active);
    return !this.lostSearch && searches.length > 0 && searches.every(s => s.complete && s.expires_at > this.now());
  }
  hasCompleteSearch(request: Record<string, unknown>): boolean {
    const signature = this.querySignature(request);
    return [...this.searches].some(s => s.active && s.operation === 'search' && s.signature === signature && s.complete && s.expires_at > this.now());
  }
  pendingSearchCursors(request?: Record<string, unknown>): string[] {
    const signature = request ? this.querySignature(request) : undefined;
    return [...this.searches].filter(s => s.active && s.operation === 'search' && !s.complete && s.expires_at > this.now() &&
      (signature === undefined || s.signature === signature))
      .flatMap(s => s.cursor ? [s.cursor] : []);
  }

  private querySignature(request: Record<string, unknown>): string {
    return querySignature(request, (key, ref) => {
      const evidence = this.get(ref);
      if (!evidence?.component_path) return ref;
      if (key === 'component') return { component_path: evidence.component_path };
      return evidence.diagram_oid ? { component_path: evidence.component_path, diagram_oid: evidence.diagram_oid } : ref;
    });
  }

  record(request: Record<string, unknown>, response: unknown): void {
    if (!isRecord(response)) return;
    if (identityFailure(response)) { this.clear(); return; }
    if (isRecord(response.debug)) {
      const database = typeof response.debug.database === 'string' ? response.debug.database.toLowerCase() : undefined;
      const pid = typeof response.debug.ascet_pid === 'number' ? response.debug.ascet_pid : undefined;
      if ((database && this.identity?.database && database !== this.identity.database) ||
          (pid !== undefined && this.identity?.pid !== undefined && pid !== this.identity.pid)) this.clear();
      this.identity = { database: database ?? this.identity?.database, pid: pid ?? this.identity?.pid };
    }
    if (response.status === 'error') {
      if (['SOURCE_CHANGED', 'REF_EXPIRED', 'CURSOR_EXPIRED'].includes(String(response.code))) this.invalidate(request);
      if (Array.isArray(response.results)) for (const result of response.results) {
        if (isRecord(result) && isRecord(result.error) && result.error.code === 'SOURCE_CHANGED') this.invalidate({ ref: result.ref });
      }
      return;
    }
    if (!['ok', 'partial', 'changed'].includes(String(response.status))) return;
    const stored = typeof request.cursor === 'string' ? this.cursors.get(request.cursor) : undefined;
    const previous = stored && stored.expires_at > this.now() ? stored : undefined;
    const operation = previous?.operation ?? (typeof request.cursor === 'string' ? '' : String(request.operation ?? 'search'));
    const scoped = previous?.scoped ?? Boolean(request.component || (isRecord(request.in) && (request.in.component || request.in.diagram)));
    const parsedExpiry = typeof response.expires_utc === 'string' ? Date.parse(response.expires_utc) : NaN;
    const expires_at = Number.isFinite(parsedExpiry) ? parsedExpiry : previous?.expires_at ?? this.now() + 300_000;
    this.capture(response, undefined, scoped, undefined);
    let search = previous?.search;
    if (operation === 'search' || operation === 'find') {
      if (!search && !request.cursor) {
        const signature = this.querySignature(request);
        // A fresh equivalent query supersedes delivery progress from its older snapshot.
        for (const old of this.searches) if (old.operation === operation && old.signature === signature) old.active = false;
        search = { operation, signature, active: true, complete: false, zero: false, multiline: false, expires_at }; this.searches.add(search);
        if (this.searches.size > this.maxEntries) {
          const victim = this.searches.values().next().value!;
          this.searches.delete(victim); this.lostSearch ||= victim.operation === 'search' && victim.active;
        }
      }
      if (search && response.status === 'ok' && response.has_more === false) search.complete = true;
      if (search) search.cursor = search.complete ? undefined : typeof response.next_cursor === 'string' ? response.next_cursor : undefined;
      if (search && response.status === 'ok' && response.has_more === false &&
          (response.total_hits === 0 || response.total_count === 0)) search.zero = true;
      if (search && response.status === 'ok' && Array.isArray(response.searches)) for (const result of response.searches) {
        if (!isRecord(result) || result.mode !== 'regex' || !Array.isArray(result.results)) continue;
        for (const hit of result.results) if (isRecord(hit) && Array.isArray(hit.snippets)) {
          for (const snippet of hit.snippets) if (isRecord(snippet) && Array.isArray(snippet.matches)) {
            for (const match of snippet.matches) if (isRecord(match) && Array.isArray(match.ranges)) {
              if (match.ranges.some(r => isRecord(r) && Number(r.end_line) > Number(r.start_line))) {
                search.multiline = true;
                const ref = typeof hit.ref === 'string' ? this.entries.get(hit.ref) : undefined;
                if (ref) ref.multiline_regex_match = true;
              }
            }
          }
        }
      }
    }
    if (operation === 'read') {
      const contents = Array.isArray(response.results) ? response.results : [response];
      for (const content of contents) if (isRecord(content) && typeof content.ref === 'string') {
        if (changed(content) || (content === response && response.status === 'changed') ||
            (isRecord(content.error) && content.error.code === 'SOURCE_CHANGED')) {
          this.invalidate({ ref: content.ref }); continue;
        }
        if (failed(content)) continue;
        const evidence = this.entries.get(content.ref);
        if (!evidence || !this.get(content.ref)) continue;
        if (typeof content.next_cursor === 'string' && typeof content.code !== 'string' && typeof content.diagram_text !== 'string')
          this.rememberCursor(content.next_cursor, { operation, scoped, expires_at: evidence.expires_at ?? expires_at,
            read: { ref: content.ref, full: false } });
        // A deferred item reserves delivery; it contains no inspected State facts.
        if (content.deferred === true) continue;
        if ((Array.isArray(content.issues) && content.issues.length) || content.status === 'partial') {
          evidence.read = false; evidence.complete_source = false; evidence.complete_text = false; continue;
        }
        evidence.read = true;
        const text = typeof content.code === 'string' || typeof content.diagram_text === 'string';
        if (!text) continue;
        const range = isRecord(content.code_range) ? content.code_range : undefined;
        const chain: ReadChain = previous?.read ? { ...previous.read, end: previous.read.end && { ...previous.read.end } }
          : { ref: content.ref, full: !request.cursor && !Object.hasOwn(request, 'lines') && !Object.hasOwn(request, 'code_range') };
        chain.full &&= chain.ref === content.ref;
        if (range) {
          const contiguous = chain.end
            ? chain.end.line === range.start_line && chain.end.column === range.start_column
            : range.start_line === 1 && range.start_column === 1;
          chain.full &&= contiguous;
          chain.end = { line: Number(range.end_line), column: Number(range.end_column) };
        } else if (previous?.read) chain.full = false;
        if (chain.full && content.has_more !== true) {
          evidence.complete_source = true;
          evidence.complete_text = typeof content.code === 'string';
        }
        if (typeof content.next_cursor === 'string') this.rememberCursor(content.next_cursor,
          { operation, scoped, expires_at: evidence.expires_at ?? expires_at, read: chain });
      }
    } else if (typeof response.next_cursor === 'string') {
      this.rememberCursor(response.next_cursor, { operation, scoped, expires_at, search });
    }
  }

  private invalidate(request: Record<string, unknown>): void {
    const refs = Array.isArray(request.ref) ? request.ref : [request.ref];
    for (const ref of refs) if (typeof ref === 'string') {
      this.entries.delete(ref);
      for (const [cursor, page] of this.cursors) if (page.read?.ref === ref) this.cursors.delete(cursor);
    }
    if (typeof request.cursor === 'string') {
      const ref = this.cursors.get(request.cursor)?.read?.ref;
      if (ref) this.invalidate({ ref });
    }
    for (const search of this.searches) { search.complete = false; search.zero = false; search.multiline = false; }
  }
  private rememberCursor(cursor: string, page: Page): void {
    this.cursors.set(cursor, { ...page, ...(page.read ? { read: { ...page.read, end: page.read.end && { ...page.read.end } } } : {}) });
    if (this.cursors.size > this.maxEntries) this.cursors.delete(this.cursors.keys().next().value!);
  }
  private capture(value: unknown, owner: string | undefined, scoped: boolean, expiry: number | undefined, diagram?: string): void {
    if (Array.isArray(value)) { for (const item of value) this.capture(item, owner, scoped, expiry, diagram); return; }
    if (!isRecord(value) || failed(value)) return;
    if (changed(value) && !Array.isArray(value.results)) return;
    // Local BDE object's legacy component_path is the referenced Class, not its owner.
    if (typeof value.component_path === 'string' &&
        (value.variant !== undefined || value.component_type !== undefined || value.diagram_oid !== undefined || !value.kind)) owner = value.component_path;
    if (typeof value.diagram_oid === 'string') diagram = value.diagram_oid;
    if (typeof value.expires_utc === 'string') {
      const parsed = Date.parse(value.expires_utc); if (Number.isFinite(parsed)) expiry = parsed;
    }
    for (const [key, item] of Object.entries(value)) {
      const refs = (key === 'ref' || key.endsWith('_ref')) && typeof item === 'string' ? [item]
        : key.endsWith('_refs') && Array.isArray(item) ? item.filter((ref): ref is string => typeof ref === 'string') : [];
      for (const ref of refs) {
        const old = this.get(ref);
        const evidence: AgentEvidenceRef = old ?? { ref, scoped: false, read: false, complete_text: false, complete_source: false, multiline_regex_match: false };
        evidence.component_path ??= owner;
        evidence.diagram_oid ??= diagram;
        evidence.kind ??= key === 'diagram_ref' ? 'diagram' : typeof value.kind === 'string' ? value.kind : undefined;
        evidence.expires_at ??= expiry ?? this.now() + 300_000;
        evidence.scoped ||= scoped;
        this.entries.set(ref, evidence);
        if (this.entries.size > this.maxEntries) this.entries.delete(this.entries.keys().next().value!);
      }
      if (key !== 'debug' && key !== 'graph') this.capture(item, owner, scoped, expiry, diagram);
    }
  }
}
