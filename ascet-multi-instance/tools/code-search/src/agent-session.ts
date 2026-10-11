import { randomBytes, randomUUID, createHmac, timingSafeEqual } from 'node:crypto';
import { performance } from 'node:perf_hooks';
import { SearchSession, retainedCost, type SearchSessionOptions } from './search-session.js';
import { ToolError } from './patterns.js';
import { isRecord } from './validation.js';
import { normalizeAgentSearch, onlyKeys, booleanOption } from './agent-validation.js';
import { readDocuments } from './read-batch.js';
import { agentTarget } from './agent-target.js';
import { agentToolRequest } from './agent-tools.js';
import { projectAgentSnapshot } from './agent-projection.js';
import { agentSnippets } from './agent-snippets.js';
import { prepareAgentFind } from './agent-find.js';
import { diagramOID } from './filters.js';
import { searchWithSources } from './search.js';
import { MatchExecutor } from './match-queries.js';
import { prepareCodeRead, codeReadPage, type CodeReadPlan } from './code-read-pages.js';
import { selectHits, advance, type PagePosition } from './paging.js';
import { prepareObjectSearch, objectPage, prepareLocalRead, localPage, type ObjectSearchPlan, type LocalReadPlan, type PageRef } from './object-pages.js';
import type { NodeSelector } from './diagram-objects.js';
import { DiagramIndex } from './diagram-objects.js';
import { prepareDirectory, directoryPage, type DirectoryPlan } from './agent-directory.js';
import { prepareStateRead, statePage, type StateReadPlan } from './state-pages.js';
import type { Reader, ReadError, ReadResponse, DiagramBody } from './types.js';
import type { PageDocument, SearchPageResponse } from './paging-types.js';
import type { AgentBatchReadResponse, AgentErrorResponse, AgentReadResponse, AgentReadDeferred, AgentSearchResponse, AgentIssue, AgentFindResponse, AgentReadRequest } from './agent-types.js';
import { renderAgentResult } from './agent-result-view.js';
import { TaskTools, TaskToolError, isTaskTool, projectTaskResponse } from './task-tools.js';

interface Reference { component_oid: string; document_id: string; source_sha256: string; database: string; ascet_pid: number; kind: string; diagram_type?: 'bde' | 'state_machine'; member_id?: string; member_name?: string; variant?: string; implementation?: string; diagram_oid?: string; node?: NodeSelector; group_id?: string }
type ObjectEntry = { kind: 'search'; plan: ObjectSearchPlan } | { kind: 'read'; plans: LocalReadPlan[] } | { kind: 'code_read'; plans: CodeReadPlan[] }
  | { kind: 'find'; plan: DirectoryPlan } | { kind: 'state_read'; plans: StateReadPlan[] };
type ObjectPosition = { kind: 'search'; position: PagePosition } | { kind: 'find'; offset: number } | { kind: 'read' | 'code_read' | 'state_read'; item: number; offset: number; budget: number };
interface RefGroup {
  prefix: string; expires: number; debug: boolean;
  presentation: 'search' | 'members' | 'components' | 'diagrams';
  docs: Map<string, { ref: string; target: Reference }>;
}
export interface AgentSessionOptions extends SearchSessionOptions { maxReferences?: number; maxModelBytes?: number }

/** Compact agent facade. All reads use the same serial live-model session. */
export class AgentSession {
  private readonly session: SearchSession;
  private readonly groups = new Map<string, RefGroup>();
  private readonly references = new Map<string, Reference>();
  private readonly readGroups = new Set<string>();
  private readonly prefix = randomBytes(6).toString('base64url');
  private readonly now: () => number;
  private readonly maxEntries: number;
  private readonly maxReferences: number;
  private readonly maxPageBytes: number;
  private readonly maxModelBytes?: number;
  private presentation?: { debug: boolean; target: RefGroup['presentation'] };
  private readonly objectMatcher = new MatchExecutor();
  private readonly objectCache = new Map<string, { value: ObjectEntry; group_id: string; expires: number; cost: number }>();
  private readonly cursorSecret = randomBytes(32);
  private readonly ttlMs: number;
  private readonly maxCacheBytes: number;
  private readonly maxSnapshotBytes: number;
  private objectBytes = 0;
  private serial = 0;
  private closed = false;
  private tail: Promise<unknown> = Promise.resolve();
  private readonly taskTools: TaskTools;
  private taskEnvelope?: Record<string, unknown>;
  private readBatchSize?: number;

  constructor(private readonly reader: Reader, options: AgentSessionOptions = {}) {
    // Every Agent operation reads fresh BDE facts, through the same serialized bridge.
    this.reader = { request: request => reader.request({ ...request, include_diagrams: true }) };
    this.taskTools = new TaskTools({ resolve: ref => this.resolve(ref), execute: async (request, envelope) => {
      const prior = this.taskEnvelope; this.taskEnvelope = envelope;
      try { return await this.executePrimitive(request); } finally { this.taskEnvelope = prior; }
    } }, options.now);
    this.now = options.now ?? Date.now; this.maxEntries = options.maxEntries ?? 16;
    this.maxReferences = options.maxReferences ?? 8192; this.maxPageBytes = options.maxPageBytes ?? 128 * 1024;
    this.maxModelBytes = options.maxModelBytes;
    if (this.maxModelBytes !== undefined && (!Number.isSafeInteger(this.maxModelBytes) || this.maxModelBytes < 1024)) throw new Error('maxModelBytes must be at least 1024');
    this.ttlMs = options.ttlMs ?? 300_000; this.maxCacheBytes = options.maxCacheBytes ?? 64 * 1024 * 1024;
    this.maxSnapshotBytes = options.maxSnapshotBytes ?? 32 * 1024 * 1024;
    if (!Number.isSafeInteger(this.maxReferences) || this.maxReferences < 1) throw new Error('maxReferences must be a positive safe integer');
    // Reserve space for compact-envelope/ref fields without weakening the public cap.
    this.session = new SearchSession(this.reader, { ...options, maxPageBytes: Math.max(1, Math.floor(this.maxPageBytes * .75)),
      pageFits: page => this.responseFits(this.compact(page, this.presentation?.debug, this.presentation?.target, false), this.maxPageBytes),
    }, { projectSnapshot: projectAgentSnapshot });
  }

  private responseBytes(value: unknown): { json: number; model: number } {
    if (this.taskEnvelope && isRecord(value)) value = projectTaskResponse(this.taskTools.previewCursors({ ...value, ...this.taskEnvelope }));
    return { json: Buffer.byteLength(JSON.stringify(value)), model: this.maxModelBytes === undefined ? 0 : Buffer.byteLength(renderAgentResult(value)) };
  }
  private responseFits(value: unknown, budget: number): boolean {
    // Batch children are ultimately rendered two levels deeper and lose their
    // individual status. Measure that actual shape, including shared metadata,
    // before splitting their records/text. Otherwise individually fitting pages
    // can overflow when joined, particularly in the model's pretty JSON view.
    let overhead = { json: 0, model: 0 };
    if (this.readBatchSize && budget < this.maxPageBytes && isRecord(value) && typeof value.ref === 'string') {
      const { status: _status, ...content } = value;
      const wrapper = { status: 'ok', requested_count: this.readBatchSize, returned_count: this.readBatchSize, results: [] as unknown[] };
      overhead = this.responseBytes(wrapper);
      value = { ...wrapper, results: [content] };
    }
    const bytes = this.responseBytes(value);
    return bytes.json - overhead.json <= budget && (this.maxModelBytes === undefined ||
      bytes.model - overhead.model <= Math.floor(this.maxModelBytes * budget / this.maxPageBytes));
  }
  private batchItemBudget(count: number): number {
    const overhead = this.responseBytes({ status: 'ok', requested_count: count, returned_count: count, results: [] });
    // Charge the shared request envelope once. Reserve separators/status growth,
    // and account for both structured output and the indented model rendering.
    return Math.max(1, Math.floor(Math.min(this.maxPageBytes - overhead.json - 64,
      this.maxModelBytes === undefined ? Infinity : (this.maxModelBytes - overhead.model - 64) * this.maxPageBytes / this.maxModelBytes) / count) - 2);
  }

  close(): void { this.closed = true; this.taskTools.clear(); this.session.close(); this.objectMatcher.close(); this.groups.clear(); this.references.clear(); this.objectCache.clear(); this.objectBytes = 0; }

  formatError(_request: unknown, error: unknown): AgentErrorResponse {
    const code = error instanceof ToolError ? error.code : 'REQUEST_FAILED';
    return { status: 'error', code: code === 'DOCUMENT_NOT_FOUND' ? 'CODE_NOT_FOUND' : code,
      message: (error instanceof Error ? error.message : String(error)).slice(0, 1000),
      ...(error instanceof TaskToolError ? { field: error.field, next_tool: error.next_tool, next_calls: error.next_calls } : {}) };
  }

  execute(input: unknown): Promise<AgentSearchResponse | AgentReadResponse | AgentBatchReadResponse | AgentFindResponse> {
    input = structuredClone(input);
    const work = this.tail.then(async () => {
      if (this.closed) throw new ToolError('SESSION_CLOSED', 'Agent session is closed');
      this.purge();
      if (!isRecord(input)) throw new ToolError('INVALID_REQUEST', 'Request must be an object');
      if (typeof input.tool === 'string' && isTaskTool(input.tool)) {
        onlyKeys(input, ['tool', 'arguments']);
        return this.taskTools.execute(input.tool, input.arguments);
      }
      return this.executePrimitive(input);
    }).catch(error => {
      if (this.closed) throw new ToolError('SESSION_CLOSED', 'Agent session closed during the request');
      if (error instanceof ToolError && error.code === 'DOCUMENT_NOT_FOUND') throw new ToolError('CODE_NOT_FOUND', error.message);
      throw error;
    });
    const bounded = work.then(result => { this.trimCaches(); return result; });
    this.tail = bounded.catch(() => undefined); return bounded;
  }

  private async executePrimitive(input: any): Promise<any> {
      let invokedOperation: 'find' | 'search' | 'read' | undefined;
      if (Object.hasOwn(input, 'tool')) {
        onlyKeys(input, ['tool', 'arguments']);
        if (typeof input.tool !== 'string') throw new ToolError('INVALID_REQUEST', 'tool must be a supported ASCET tool name');
        invokedOperation = input.tool === 'ascet_code_find' ? 'find' : input.tool === 'ascet_code_search' ? 'search' : 'read';
        input = agentToolRequest(input.tool, input.arguments);
      }
      if (!isRecord(input)) throw new ToolError('INVALID_REQUEST', 'Request must be an object');
      if (Object.hasOwn(input, 'cursor')) {
        onlyKeys(input, ['cursor']);
        if (typeof input.cursor === 'string' && input.cursor.startsWith('o.')) return this.continueObject(input.cursor, invokedOperation);
        const page = await this.session.execute(input, {}, invokedOperation) as SearchPageResponse;
        return this.compact(page);
      }
      if (input.operation === 'read') return this.read(input).finally(() => { this.readGroups.clear(); this.readBatchSize = undefined; });
      if (input.operation === 'find') {
        if (['objects', 'states', 'transitions'].includes(input.target as string)) {
          const plan = await prepareDirectory(input, ref => this.resolve(ref), this.reader, () => this.closed);
          const id = this.freshGroup(plan.debug);
          try {
            const page = this.directoryPage(id, plan, 0);
            if (page.has_more) this.cacheObject(id, { kind: 'find', plan });
            return page;
          } catch (error) { this.remove(id); throw error; }
        }
        const normalized = await prepareAgentFind(input, ref => this.resolve(ref), this.reader, () => this.closed);
        this.presentation = { debug: normalized.debug, target: normalized.target };
        const page = await this.session.execute(normalized.request, normalized.execution, 'find') as SearchPageResponse;
        return this.compact(page, normalized.debug, normalized.target);
      }
      const normalized = normalizeAgentSearch(input, ref => this.resolve(ref));
      if (normalized.groupBy === 'object') return this.searchObjects(normalized);
      this.presentation = { debug: normalized.debug, target: 'search' };
      const page = await this.session.execute(normalized.request, { expectedPid: normalized.expectedPid }, 'search') as SearchPageResponse;
      return this.compact(page, normalized.debug);
  }

  private remove(id: string): void {
    const group = this.groups.get(id);
    if (group) { for (const { ref } of group.docs.values()) this.references.delete(ref); this.groups.delete(id); }
    for (const [key, cached] of this.objectCache) if (cached.group_id === id) this.dropObjectCache(key);
    this.session.discardSnapshot(id);
  }
  private purge(): void { for (const [id, group] of this.groups) if (group.expires <= this.now()) this.remove(id); }
  private resolve(ref: string): Reference {
    const target = this.references.get(ref);
    if (!target) throw new ToolError('REF_EXPIRED', 'ASCET code result ref is unknown, expired or evicted; search again in this same session');
    return target;
  }
  private trimCaches(protectedIDs: ReadonlySet<string> = new Set()): void {
    while (this.objectBytes + this.session.retainedBytes > this.maxCacheBytes || this.objectCache.size + this.session.snapshotCount > this.maxEntries) {
      const id = [...this.objectCache.keys()].find(id => !protectedIDs.has(id));
      if (id) this.dropObjectCache(id);
      else if (!this.session.evictOldestSnapshot()) throw new ToolError('SNAPSHOT_TOO_LARGE', 'Snapshot exceeds session cache budget');
    }
  }
  private dropObjectCache(id: string): void {
    const cached = this.objectCache.get(id);
    if (cached) { this.objectBytes -= cached.cost; this.objectCache.delete(id); }
  }
  private freshGroup(debug: boolean): string {
    while (this.groups.size >= this.maxEntries) this.remove(this.groups.keys().next().value!);
    const id = randomUUID();
    this.groups.set(id, { prefix: 's' + this.prefix + (++this.serial).toString(36), expires: this.now() + this.ttlMs, debug, presentation: 'search', docs: new Map() });
    return id;
  }
  private cacheObject(id: string, value: ObjectEntry, groupID = id, protectedIDs: ReadonlySet<string> = new Set([id])): void {
    const cost = retainedCost(value);
    if (cost > this.maxSnapshotBytes || cost > this.maxCacheBytes) throw new ToolError('SNAPSHOT_TOO_LARGE', 'Object snapshot exceeds session budget; narrow the Component or query');
    this.objectCache.set(id, { value, cost, group_id: groupID, expires: this.groups.get(groupID)!.expires }); this.objectBytes += cost;
    this.trimCaches(protectedIDs);
  }
  private objectToken(id: string, position: ObjectPosition): string {
    const body = Buffer.from(JSON.stringify({ id, ...position })).toString('base64url');
    return 'o.' + body + '.' + createHmac('sha256', this.cursorSecret).update(body).digest('base64url');
  }
  private continueObject(token: string, invokedOperation?: 'find' | 'search' | 'read'): AgentSearchResponse | AgentReadResponse | AgentFindResponse {
    const [, body, signature, extra] = token.split('.');
    if (token.length > 8192 || !body || !signature || extra !== undefined) throw new ToolError('INVALID_CURSOR', 'Invalid object cursor');
    const expected = createHmac('sha256', this.cursorSecret).update(body).digest('base64url');
    if (signature.length !== expected.length || !timingSafeEqual(Buffer.from(signature), Buffer.from(expected))) throw new ToolError('INVALID_CURSOR', 'Cursor belongs to another session or was modified');
    const p = JSON.parse(Buffer.from(body, 'base64url').toString('utf8')) as ObjectPosition & { id: string };
    const cached = this.objectCache.get(p.id);
    if (!cached || !this.groups.has(cached.group_id)) throw new ToolError('CURSOR_EXPIRED', 'Object snapshot expired or was evicted; search/read again');
    if (p.kind !== cached.value.kind) throw new ToolError('INVALID_CURSOR', 'Wrong cursor purpose');
    const originOperation = p.kind === 'find' ? 'find' : p.kind === 'search' ? 'search' : 'read';
    if (invokedOperation && invokedOperation !== originOperation) throw new ToolError('CURSOR_TOOL_MISMATCH',
      'This cursor belongs to ascet_code_' + originOperation + '; continue with that tool');
    if (p.kind === 'find' && cached.value.kind === 'find') {
      if (!Number.isSafeInteger(p.offset) || p.offset < 0 || p.offset >= cached.value.plan.entries.length) throw new ToolError('INVALID_CURSOR', 'Invalid directory position');
      return this.directoryPage(p.id, cached.value.plan, p.offset);
    }
    if (p.kind === 'state_read' && cached.value.kind === 'state_read') {
      const plan = cached.value.plans[p.item];
      if (!Number.isSafeInteger(p.item) || !plan || !Number.isSafeInteger(p.offset) || p.offset < 0 || p.offset >= Math.max(1, plan.records.length) ||
          !Number.isSafeInteger(p.budget) || p.budget < 1 || p.budget > this.maxPageBytes) throw new ToolError('INVALID_CURSOR', 'Invalid State read position');
      return this.stateReadPage(p.id, plan, p.item, p.offset, p.budget, cached.group_id);
    }
    if (p.kind === 'search' && cached.value.kind === 'search') {
      const queries = cached.value.plan.queries, position = p.position;
      if (!position || !Array.isArray(position.offsets) || position.offsets.length !== queries.length ||
        position.offsets.some((n, i) => !Number.isSafeInteger(n) || n < 0 || n > queries[i].total) || !Number.isInteger(position.turn) || position.turn < 0 || position.turn >= queries.length) throw new ToolError('INVALID_CURSOR', 'Invalid search position');
      return this.objectSearchPage(p.id, cached.value.plan, position);
    }
    if (p.kind === 'read' && cached.value.kind === 'read') {
      const plan = cached.value.plans[p.item];
      if (!Number.isSafeInteger(p.item) || !plan || !Number.isSafeInteger(p.offset) || p.offset < 0 || p.offset > plan.records.length ||
        !Number.isSafeInteger(p.budget) || p.budget < 1 || p.budget > this.maxPageBytes) throw new ToolError('INVALID_CURSOR', 'Invalid local read position');
      return this.localReadPage(p.id, plan, p.item, p.offset, p.budget, cached.group_id);
    }
    if (p.kind === 'code_read' && cached.value.kind === 'code_read') {
      const plan = cached.value.plans[p.item];
      if (!Number.isSafeInteger(p.item) || !plan || !Number.isSafeInteger(p.offset) || p.offset < plan.start || p.offset > plan.end ||
        !Number.isSafeInteger(p.budget) || p.budget < 1 || p.budget > this.maxPageBytes) throw new ToolError('INVALID_CURSOR', 'Invalid code read position');
      return this.codeReadPage(p.id, plan, p.item, p.offset, p.budget, cached.group_id);
    }
    throw new ToolError('INVALID_CURSOR', 'Unknown cursor purpose');
  }
  private pageReferences(id: string, metadata: { database: string; ascet_pid: number }) {
    const group = this.groups.get(id)!;
    const pending = new Map<string, { ref: string; target: Reference }>();
    const ref: PageRef = (doc, node) => {
      const key = doc.document_id + ':' + doc.source_sha256 + (node ? ':' + JSON.stringify(node) : '');
      const existing = group.docs.get(key) ?? pending.get(key); if (existing) return existing.ref;
      const value = { ref: group.prefix + (node ? ':n' : ':d') + (group.docs.size + pending.size + 1).toString(36),
        target: { component_oid: doc.component_oid, document_id: doc.document_id, source_sha256: doc.source_sha256,
          database: metadata.database, ascet_pid: metadata.ascet_pid, kind: doc.kind, member_id: doc.member_id, member_name: doc.member_name,
          variant: doc.variant, implementation: doc.implementation_oid, diagram_oid: diagramOID(doc), group_id: id, ...(node ? { node } : {}) } };
      pending.set(key, value); return value.ref;
    };
    const fits = (value: unknown, budget: number) => this.responseFits(value, budget) && group.docs.size + pending.size <= this.maxReferences;
    const commit = () => {
      if (group.docs.size + pending.size > this.maxReferences) throw new ToolError('REFERENCES_TOO_LARGE', 'Object refs exceed the query budget; narrow the query');
      while (this.references.size + pending.size > this.maxReferences) {
        const victim = [...this.groups.keys()].find(k => k !== id && !this.readGroups.has(k));
        if (!victim) throw new ToolError('REFERENCES_TOO_LARGE', 'Object refs exceed session budget');
        this.remove(victim);
      }
      for (const [key, value] of pending) { group.docs.set(key, value); this.references.set(value.ref, value.target); }
    };
    return { ref, fits, commit };
  }
  private async searchObjects(normalized: ReturnType<typeof normalizeAgentSearch>): Promise<AgentSearchResponse> {
    const { operation: _op, limit, ...request } = normalized.request;
    if (Buffer.byteLength(JSON.stringify(request)) > this.maxPageBytes) throw new ToolError('PAGE_TOO_LARGE', 'Query metadata exceeds page budget');
    const source = await searchWithSources(request, this.reader, { expectedPid: normalized.expectedPid, matcher: this.objectMatcher, projectSnapshot: projectAgentSnapshot, deferContext: true, trackFields: true });
    if (this.closed) throw new ToolError('SESSION_CLOSED', 'Session closed during search');
    const prepareStarted = performance.now();
    const plan = prepareObjectSearch(source, request.context_before ?? 0, request.context_after ?? 0, limit ?? 50, normalized.debug);
    const preparedAt = performance.now();
    const id = this.freshGroup(normalized.debug);
    try {
      const page = this.objectSearchPage(id, plan, { offsets: plan.queries.map(() => 0), turn: 0 });
      const pageAt = performance.now();
      if (page.has_more) this.cacheObject(id, { kind: 'search', plan });
      if (isRecord(page.debug) && isRecord(page.debug.timings)) Object.assign(page.debug.timings, {
        agent_prepare_ms: preparedAt - prepareStarted, agent_page_ms: pageAt - preparedAt,
        agent_cache_ms: performance.now() - pageAt,
      });
      return page;
    } catch (error) { this.remove(id); throw error; }
  }
  private directoryPage(id: string, plan: DirectoryPlan, offset: number): AgentFindResponse {
    const planned = Math.min(plan.limit, plan.entries.length - offset);
    const build = (count: number) => {
      const refs = this.pageReferences(id, plan.metadata), next = offset + count;
      const output = directoryPage(plan, offset, count, refs.ref, new Date(this.groups.get(id)!.expires).toISOString(),
        next < plan.entries.length ? this.objectToken(id, { kind: 'find', offset: next }) : null);
      if (count < planned) output.limited_by = 'bytes';
      return { refs, output };
    };
    let chosen = build(planned);
    if (!chosen.refs.fits(chosen.output, this.maxPageBytes)) {
      let lo = Math.min(1, planned), hi = planned; chosen = build(lo);
      if (!chosen.refs.fits(chosen.output, this.maxPageBytes)) throw new ToolError('PAGE_TOO_LARGE', 'One directory record exceeds page/ref budget; narrow the scope');
      while (lo < hi) { const mid = Math.ceil((lo + hi) / 2), candidate = build(mid);
        if (candidate.refs.fits(candidate.output, this.maxPageBytes)) { lo = mid; chosen = candidate; } else hi = mid - 1; }
    }
    chosen.refs.commit(); return structuredClone(chosen.output);
  }
  private stateReadPage(id: string, plan: StateReadPlan, item: number, offset: number, budget: number, groupID: string, commit = true): AgentReadResponse {
    const planned = Math.min(100, plan.records.length - offset);
    const build = (count: number) => {
      const refs = this.pageReferences(groupID, plan.read), next = offset + count;
      const output = statePage(plan, offset, count, refs.ref, new Date(this.groups.get(groupID)!.expires).toISOString(),
        next < plan.records.length ? this.objectToken(id, { kind: 'state_read', item, offset: next, budget: this.maxPageBytes }) : null);
      return { refs, output };
    };
    let chosen = build(planned);
    if (!chosen.refs.fits(chosen.output, budget)) {
      let lo = Math.min(1, planned), hi = planned; chosen = build(lo);
      if (!chosen.refs.fits(chosen.output, budget)) throw new ToolError('PAGE_TOO_LARGE', 'State metadata exceeds page/ref budget; read fewer refs');
      while (lo < hi) { const mid = Math.ceil((lo + hi) / 2), candidate = build(mid);
        if (candidate.refs.fits(candidate.output, budget)) { lo = mid; chosen = candidate; } else hi = mid - 1; }
    }
    if (commit) chosen.refs.commit(); return structuredClone(chosen.output);
  }
  private objectSearchPage(id: string, plan: ObjectSearchPlan, start: PagePosition): AgentSearchResponse {
    const planned = selectHits(plan.queries, start, plan.limit), expires = new Date(this.groups.get(id)!.expires).toISOString();
    const indices = new Map<string, DiagramIndex>();
    const build = (count: number, connections: number) => {
      const refs = this.pageReferences(id, plan.metadata), hits = planned.slice(0, count), end = advance(start, hits, plan.queries.length);
      const more = plan.queries.some((q, i) => end.offsets[i] < q.total);
      const output = objectPage(plan, hits, end, refs.ref, expires, more ? this.objectToken(id, { kind: 'search', position: end }) : null, connections, indices);
      if (count < planned.length) output.limited_by = 'bytes';
      return { output, refs };
    };
    let chosen = build(planned.length, 6);
    if (!chosen.refs.fits(chosen.output, this.maxPageBytes)) chosen = build(planned.length, 0);
    if (!chosen.refs.fits(chosen.output, this.maxPageBytes)) {
      let lo = Math.min(1, planned.length), hi = planned.length; chosen = build(lo, 0);
      if (!chosen.refs.fits(chosen.output, this.maxPageBytes)) throw new ToolError('PAGE_TOO_LARGE', 'One object and its evidence exceed the page/ref budget; narrow the query');
      while (lo < hi) { const mid = Math.ceil((lo + hi) / 2), candidate = build(mid, 0);
        if (candidate.refs.fits(candidate.output, this.maxPageBytes)) { lo = mid; chosen = candidate; } else hi = mid - 1; }
    }
    chosen.refs.commit(); return structuredClone(chosen.output);
  }
  private localReadPage(id: string, plan: LocalReadPlan, item: number, offset: number, budget: number, groupID: string): AgentReadResponse {
    const index = new DiagramIndex(plan.graph);
    let count = 0, nodes = 0, edges = 0;
    for (const r of plan.records.slice(offset)) {
      if (count === 300 || (r.type === 'node' && nodes === 100) || (r.type === 'connection' && edges === 200)) break;
      count++; if (r.type === 'node') nodes++; if (r.type === 'connection') edges++;
    }
    const build = (n: number) => {
      const refs = this.pageReferences(groupID, plan.read), next = offset + n;
      const output = localPage(plan, plan.records.slice(offset, next), refs.ref, new Date(this.groups.get(groupID)!.expires).toISOString(),
        next < plan.records.length ? this.objectToken(id, { kind: 'read', item, offset: next, budget: this.maxPageBytes }) : null, index);
      return { refs, output };
    };
    let chosen = build(count);
    if (!chosen.refs.fits(chosen.output, budget)) {
      let lo = Math.min(1, count), hi = count; chosen = build(lo);
      if (!chosen.refs.fits(chosen.output, budget)) throw new ToolError('PAGE_TOO_LARGE', 'One local record exceeds the page/ref budget; use the Diagram ref');
      while (lo < hi) { const mid = Math.ceil((lo + hi) / 2), candidate = build(mid);
        if (candidate.refs.fits(candidate.output, budget)) { lo = mid; chosen = candidate; } else hi = mid - 1; }
    }
    chosen.refs.commit(); return structuredClone(chosen.output);
  }
  private group(page: SearchPageResponse, debug?: boolean, presentation: RefGroup['presentation'] = 'search', commit = true): RefGroup {
    let group = this.groups.get(page.snapshot_id);
    if (!group) {
      if (debug === undefined) throw new ToolError('CURSOR_EXPIRED', 'Query references were evicted; start a new search');
      if (commit) while (this.groups.size >= this.maxEntries) this.remove(this.groups.keys().next().value!);
      group = { prefix: 's' + this.prefix + (this.serial + 1).toString(36), expires: Date.parse(page.expires_utc), debug, presentation, docs: new Map() };
      if (commit) { this.serial++; this.groups.set(page.snapshot_id, group); }
    }
    return commit ? group : { ...group, docs: new Map(group.docs) };
  }
  private codeReadPage(id: string, plan: CodeReadPlan, item: number, offset: number, budget: number, groupID: string): AgentReadResponse {
    return codeReadPage(plan, offset, budget, new Date(this.groups.get(groupID)!.expires).toISOString(),
      next => this.objectToken(id, { kind: 'code_read', item, offset: next, budget: this.maxPageBytes }), value => this.responseFits(value, budget));
  }
  private compact(page: SearchPageResponse, debug?: boolean, presentation?: RefGroup['presentation'], commit = true): AgentSearchResponse | AgentFindResponse {
    const group = this.group(page, debug, presentation, commit);
    const key = (doc: PageDocument) => doc.document_id + ':' + doc.source_sha256;
    const fresh = new Map(page.searches.flatMap(q => q.results).filter(d => !group.docs.has(key(d))).map(d => [key(d), d]));
    if (group.docs.size + fresh.size > this.maxReferences) throw new ToolError('REFERENCES_TOO_LARGE', 'Too many ASCET code result refs; narrow the Component or Method scope');
    while (commit && this.references.size + fresh.size > this.maxReferences) {
      const victim = [...this.groups.keys()].find(id => id !== page.snapshot_id);
      if (!victim) throw new ToolError('REFERENCES_TOO_LARGE', 'ASCET code result ref budget exceeded');
      this.remove(victim);
    }
    for (const [identity, doc] of fresh) {
      const ref = group.prefix + ':d' + (group.docs.size + 1).toString(36);
      const target = { component_oid: doc.component_oid, document_id: doc.document_id, source_sha256: doc.source_sha256,
        database: page.database, ascet_pid: page.ascet_pid, kind: doc.kind, member_id: doc.member_id, member_name: doc.member_name,
        variant: doc.variant, implementation: doc.implementation_oid, diagram_oid: diagramOID(doc), diagram_type: doc.diagram_type, group_id: page.snapshot_id };
      group.docs.set(identity, { ref, target }); if (commit) this.references.set(ref, target);
    }
    const result: AgentSearchResponse = {
      status: page.source_read_complete ? 'ok' : 'partial',
      returned_hits: page.returned_occurrences, total_hits: page.total_occurrences,
      has_more: page.has_more, next_cursor: page.next_cursor, expires_utc: page.expires_utc,
      ...(page.page_limited_by === 'bytes' ? { limited_by: 'bytes' as const } : {}),
      searches: page.searches.map(q => ({ index: q.query_index, ...(q.id !== null ? { id: q.id as string } : {}),
        query: q.query, mode: q.mode === 'identifier_occurrence' ? 'identifier' : q.mode,
        ...(q.case_sensitive ? { case_sensitive: true as const } : {}), ...(q.multiline ? { multiline: true as const } : {}),
        ...(q.dotall ? { dotall: true as const } : {}),
        returned_hits: q.returned_occurrences, total_hits: q.total_occurrences, has_more: q.has_more,
        results: q.results.map(d => ({ ...agentTarget(d, group.docs.get(key(d))!.ref),
          ...agentSnippets(d) })) })),
      ...(!page.source_read_complete ? { issues: incompleteIssues(page.errors) } : {}),
      ...(group.debug ? { debug: { database: page.database, ascet_pid: page.ascet_pid, observed_utc: page.observed_utc,
        snapshot_id: page.snapshot_id, coverage_profile: page.coverage_profile, excluded: page.excluded,
        coverage: page.coverage, filters: page.filters, timings: page.timings } } : {}),
    };
    const response: AgentSearchResponse | AgentFindResponse = group.presentation === 'search' ? result : {
      status: result.status, target: group.presentation,
      returned_count: result.returned_hits, total_count: result.total_hits, has_more: result.has_more,
      next_cursor: result.next_cursor, expires_utc: result.expires_utc,
      ...(result.limited_by ? { limited_by: result.limited_by } : {}),
      results: page.searches[0].results.map(d => group.presentation === 'components'
        ? { ref: group.docs.get(key(d))!.ref, component_path: d.component_path, component_type: d.language }
        : agentTarget(d, group.docs.get(key(d))!.ref)),
      ...(result.issues ? { issues: result.issues } : {}), ...(result.debug ? { debug: result.debug } : {}),
    };
    if (commit && !this.responseFits(response, this.maxPageBytes)) throw new ToolError('PAGE_TOO_LARGE', 'Compact response exceeds the page budget; reduce limit or context');
    return response;
  }
  private async read(input: Record<string, unknown>): Promise<AgentReadResponse | AgentBatchReadResponse> {
    onlyKeys(input, ['operation', 'ref', 'if_unchanged', 'include_graph', 'debug', 'depth', 'direction', 'lines']);
    booleanOption(input, 'if_unchanged'); booleanOption(input, 'debug'); booleanOption(input, 'include_graph');
    if (Object.hasOwn(input, 'depth') && ![0, 1, 2].includes(input.depth as number)) throw new ToolError('INVALID_REQUEST', 'depth must be 0, 1 or 2');
    if (Object.hasOwn(input, 'direction') && !['incoming', 'outgoing', 'both'].includes(input.direction as string)) throw new ToolError('INVALID_REQUEST', 'direction must be incoming, outgoing or both');
    if (Object.hasOwn(input, 'lines')) {
      if (!isRecord(input.lines)) throw new ToolError('INVALID_REQUEST', 'lines must contain start and end');
      onlyKeys(input.lines, ['start', 'end']);
      if (!Number.isSafeInteger(input.lines.start) || !Number.isSafeInteger(input.lines.end) ||
        (input.lines.start as number) < 1 || (input.lines.end as number) < (input.lines.start as number)) throw new ToolError('INVALID_REQUEST', 'lines.start/end must be positive inclusive line numbers with end >= start');
      if (input.include_graph === true) throw new ToolError('INVALID_REQUEST', 'lines cannot be combined with include_graph; read graph separately');
    }
    const batch = Array.isArray(input.ref), refs = batch ? input.ref as unknown[] : [input.ref];
    if (!refs.length || refs.length > 32 || refs.some(ref => typeof ref !== 'string' || !ref || ref.length > 128)) {
      throw new ToolError('INVALID_REQUEST', 'ref must be one returned ref or an array of 1-32 returned refs');
    }
    if ((refs as string[]).some(ref => /^\s*[\["{]/u.test(ref))) {
      throw new ToolError('INVALID_REQUEST', 'ref contains JSON-encoded text. Copy one returned ref string unchanged, or pass an actual JSON array of ref strings. Do not JSON.stringify the ref or array; retry read with corrected arguments, not a new search.');
    }
    // Resolve the whole batch before touching ASCET, including expiry and database/process checks.
    const targets = (refs as string[]).map(ref => this.resolve(ref));
    if (targets.some(t => t.diagram_type === 'state_machine')) throw new ToolError('WRONG_REF_TYPE', 'State Diagram refs select in.diagram; find states/transitions in that scope, then read their refs. They are not BDE listings.');
    if (input.lines && targets.some(t => t.node || t.kind === 'state' || t.kind === 'transition')) throw new ToolError('INVALID_REQUEST', 'lines applies to saved code or diagram_text; read State/Transition code_slots refs for source');
    if (input.include_graph && targets.some(t => t.kind === 'state' || t.kind === 'transition')) throw new ToolError('INVALID_REQUEST', 'State/Transition refs return relations and code_slots; include_graph applies to BDE');
    if ((Object.hasOwn(input, 'depth') || Object.hasOwn(input, 'direction')) && targets.some(t => !t.node)) throw new ToolError('INVALID_REQUEST', 'depth/direction require Diagram object refs for every item');
    if (targets.some(t => t.kind === 'component')) throw new ToolError('INVALID_REQUEST', 'Component refs select in.component; use find target:members to obtain readable code refs');
    if (targets.some(target => target.database.toLowerCase() !== targets[0].database.toLowerCase())) {
      throw new ToolError('READ_DATABASE_MISMATCH', 'All refs in a batch must belong to the same database');
    }
    if (targets.some(target => target.ascet_pid !== targets[0].ascet_pid)) throw new ToolError('ASCET_RESTARTED', 'Refs belong to different ASCET processes; search again');
    for (const target of targets) this.readGroups.add(target.group_id!);
    this.readBatchSize = batch ? refs.length : undefined;
    const outcomes = await readDocuments(targets.map(target => ({ operation: 'read',
      target: { component_oid: target.component_oid, document_id: target.document_id }, expected_database: target.database,
      ...(input.if_unchanged || target.node || target.kind === 'state' || target.kind === 'transition' ? { expected_source_sha256: target.source_sha256 } : {}) })), this.reader, targets[0].ascet_pid, () => this.closed, projectAgentSnapshot, targets);
    const statuses: AgentBatchReadResponse['status'][] = [];
    const localSnapshots = new Map<string, { id: string; plans: LocalReadPlan[]; needsCache: boolean }>();
    const codeSnapshots = new Map<string, { id: string; plans: CodeReadPlan[]; needsCache: boolean }>();
    const stateSnapshots = new Map<string, { id: string; plans: StateReadPlan[]; needsCache: boolean }>();
    const localBudget = batch ? this.batchItemBudget(refs.length) : this.maxPageBytes;
    const documents = outcomes.map((outcome, i) => {
      try {
      if ('error' in outcome) {
        if (!batch) throw outcome.error;
        statuses.push('error');
        const { status: _status, ...error } = this.formatError(input, outcome.error);
        return { ref: refs[i] as string, error };
      }
      let read: AgentReadResponse | (AgentReadDeferred & { status: 'ok' });
      if (outcome.response.document.state_object) {
        const plan = prepareStateRead(outcome.response, outcome.state_documents!, refs[i] as string, input.debug === true);
        const groupID = targets[i].group_id!;
        let snapshot = stateSnapshots.get(groupID);
        if (!snapshot) { snapshot = { id: randomUUID(), plans: [], needsCache: false }; stateSnapshots.set(groupID, snapshot); }
        const item = snapshot.plans.length; snapshot.plans.push(plan);
        try { read = this.stateReadPage(snapshot.id, plan, item, 0, localBudget, groupID); }
        catch (error) {
          if (!batch || !(error instanceof ToolError) || error.code !== 'PAGE_TOO_LARGE') throw error;
          // Verify that continuation can deliver content before issuing a cursor.
          // The probe stages refs only: no unreachable endpoints consume ref slots.
          this.stateReadPage(snapshot.id, plan, item, 0, this.maxPageBytes, groupID, false);
          read = { status: 'ok', ref: refs[i] as string, deferred: true, has_more: true,
            next_cursor: this.objectToken(snapshot.id, { kind: 'state_read', item, offset: 0, budget: this.maxPageBytes }),
            expires_utc: new Date(this.groups.get(groupID)!.expires).toISOString() };
          if (!this.responseFits(read, localBudget)) throw error;
        }
        snapshot.needsCache ||= read.has_more === true;
      } else if (targets[i].node) {
        if (!outcome.diagram) throw new ToolError('READ_INCOMPLETE', 'Diagram data is missing');
        const plan = prepareLocalRead(outcome.response, outcome.diagram, targets[i].node!, refs[i] as string,
          (input.depth ?? 1) as number, (input.direction ?? 'both') as LocalReadPlan['direction'], input.include_graph === true, input.debug === true);
        const groupID = targets[i].group_id!;
        let snapshot = localSnapshots.get(groupID);
        if (!snapshot) { snapshot = { id: randomUUID(), plans: [], needsCache: false }; localSnapshots.set(groupID, snapshot); }
        const item = snapshot.plans.length; snapshot.plans.push(plan);
        read = this.localReadPage(snapshot.id, plan, item, 0, localBudget, groupID); snapshot.needsCache ||= read.has_more === true;
      } else {
        const plan = prepareCodeRead(this.compactRead(outcome.response, targets[i], refs[i] as string, input.debug === true,
          input.include_graph === true ? outcome.diagram : undefined), input.lines as AgentReadRequest['lines']);
        const groupID = targets[i].group_id!;
        let snapshot = codeSnapshots.get(groupID);
        if (!snapshot) { snapshot = { id: randomUUID(), plans: [], needsCache: false }; codeSnapshots.set(groupID, snapshot); }
        const item = snapshot.plans.length; snapshot.plans.push(plan);
        read = this.codeReadPage(snapshot.id, plan, item, plan.start, localBudget, groupID); snapshot.needsCache ||= read.has_more === true;
      }
      statuses.push(read.status);
      if (!batch) return read;
      const { status: _status, ...content } = read;
      return content;
      } catch (error) {
        if (!batch) throw error;
        statuses.push('error'); const { status: _status, ...failure } = this.formatError(input, error);
        return { ref: refs[i] as string, error: failure };
      }
    });
    const protectedSnapshots = new Set([...localSnapshots.values(), ...codeSnapshots.values(), ...stateSnapshots.values()].filter(s => s.needsCache).map(s => s.id));
    try {
      for (const [groupID, snapshot] of localSnapshots) if (snapshot.needsCache) {
        this.cacheObject(snapshot.id, { kind: 'read', plans: snapshot.plans }, groupID, protectedSnapshots);
      }
      for (const [groupID, snapshot] of codeSnapshots) if (snapshot.needsCache) {
        this.cacheObject(snapshot.id, { kind: 'code_read', plans: snapshot.plans }, groupID, protectedSnapshots);
      }
      for (const [groupID, snapshot] of stateSnapshots) if (snapshot.needsCache) {
        this.cacheObject(snapshot.id, { kind: 'state_read', plans: snapshot.plans }, groupID, protectedSnapshots);
      }
    } catch (error) { for (const id of protectedSnapshots) this.dropObjectCache(id); throw error; }
    if (!batch) return documents[0] as AgentReadResponse;
    const status = statuses.every(s => s === 'error') ? 'error'
      : statuses.some(s => s === 'partial' || s === 'error') ? 'partial'
      : statuses.includes('changed') ? 'changed' : 'ok';
    const result: AgentBatchReadResponse = { status, requested_count: refs.length, returned_count: statuses.filter(s => s !== 'error').length, results: documents };
    if (!this.responseFits(result, this.maxPageBytes)) {
      for (const id of protectedSnapshots) this.dropObjectCache(id);
      throw new ToolError('PAGE_TOO_LARGE', 'Batch metadata exceeds page budget; read fewer refs');
    }
    return result;
  }

  private compactRead(read: ReadResponse, target: Reference, ref: string, debug: boolean, diagram?: DiagramBody): AgentReadResponse {
    const d = read.document;
    const changed = d.source_sha256 !== target.source_sha256;
    const issues: AgentIssue[] = read.complete ? [] : incompleteIssues(read.errors);
    if (changed) issues.push({ code: 'SOURCE_CHANGED', message: 'Content changed since the search; this result contains the current content.' });
    const { issues: _diagramIssues, ...diagramData } = diagram ?? {} as DiagramBody;
    return { status: !read.complete ? 'partial' : changed ? 'changed' : 'ok', ...agentTarget(d, ref),
      ...(d.binding ? {} : d.representation === 'graphical_model' ? { diagram_text: d.text } : { code: d.text }),
      line_count: read.line_count,
      ...(diagram ? { graph: { ...diagramData, scope: 'diagram' as const } } : {}),
      ...(issues.length ? { issues } : {}),
      ...(debug ? { debug: { database: read.database, ascet_pid: read.ascet_pid, observed_utc: read.observed_utc,
        component_oid: d.component_oid, code_id: d.document_id, source_sha256: d.source_sha256,
        coverage: read.coverage, timings: read.timings } } : {}) };
  }
}

function incompleteIssues(errors: ReadError[]): AgentIssue[] {
  return errors.length ? errors.map(error => ({ ...error, code: 'READ_INCOMPLETE' as const }))
    : [{ code: 'READ_INCOMPLETE', message: 'The supported ASCET source could not be read completely.' }];
}
