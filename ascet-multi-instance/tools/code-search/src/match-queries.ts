import { Worker } from 'node:worker_threads';
import { performance } from 'node:perf_hooks';
import { matchDocuments, PreparedText } from './matcher.js';
import { ToolError } from './patterns.js';
import type { NormalizedSearch, QueryResult, SourceDocument } from './types.js';

export interface MatchJob { documents: SourceDocument[]; request: NormalizedSearch; deferContext?: boolean; trackFields?: boolean }
export interface PackedMatchJob extends Omit<MatchJob, 'documents'> {
  texts: string[];
  documents: (Omit<SourceDocument, 'text' | 'diagram_fields'> & { textIndex: number })[];
}

export function packMatchJob(job: MatchJob): PackedMatchJob {
  const texts: string[] = [], indices = new Map<string, number>();
  const documents = job.documents.map(({ text, diagram_fields: _fields, ...metadata }) => {
    let textIndex = indices.get(text);
    if (textIndex === undefined) { textIndex = texts.length; texts.push(text); indices.set(text, textIndex); }
    return { ...metadata, textIndex };
  });
  return { ...job, documents, texts };
}

export function unpackMatchJob({ texts, documents, ...options }: PackedMatchJob): MatchJob {
  return { ...options, documents: documents.map(({ textIndex, ...metadata }) => ({ ...metadata, text: texts[textIndex] })) };
}
export const REGEX_TIMEOUT_MS = 1000;

export function matchQueries({ documents, request, deferContext, trackFields }: MatchJob): QueryResult[] {
  const prepared = new Map<string, PreparedText>();
  return request.queries.map(q => ({ ...q, ...matchDocuments(documents, q.query, q.mode, q.case_sensitive,
    request.result_format, prepared, { multiline: q.multiline, dotall: q.dotall,
      context_before: request.context_before, context_after: request.context_after, defer_context: deferContext, track_fields: trackFields }) }));
}

/** One serial reusable worker; it retains no source cache between messages.
 * A timeout kills only this worker, never the live ASCET connection.
 */
export class MatchExecutor {
  private worker?: Worker;
  private tail: Promise<unknown> = Promise.resolve();
  private closed = false;
  private serial = 0;
  private abort?: (error: Error) => void;

  close(): void {
    this.closed = true;
    this.abort?.(new ToolError('MATCHER_CLOSED', 'Matching executor closed'));
    const worker = this.worker; this.worker = undefined;
    if (worker) void worker.terminate();
  }

  run(job: MatchJob, metrics: Record<string, number> = {}): Promise<QueryResult[]> {
    const work = this.tail.then(async () => {
      if (this.closed) throw new ToolError('MATCHER_CLOSED', 'Matching executor closed');
      if (!job.request.queries.some(q => q.mode === 'regex')) return matchQueries(job);
      const created = !this.worker, started = performance.now();
      const worker = this.worker ??= new Worker(new URL('./match-worker.js', import.meta.url), {
        execArgv: process.execArgv.filter(arg => !arg.startsWith('--input-type')),
      });
      if (created) {
        // Idle failures must neither become unhandled events nor leave a dead
        // worker cached for the next request. Active jobs have their own handler.
        worker.on('error', () => { if (this.worker === worker) this.worker = undefined; });
        worker.on('exit', () => { if (this.worker === worker) this.worker = undefined; });
      }
      worker.ref();
      const id = ++this.serial;
      metrics.worker_created = created ? 1 : 0;
      try {
        return await new Promise<QueryResult[]>((resolve, reject) => {
          const cleanup = () => {
            clearTimeout(timer); this.abort = undefined;
            worker.off('message', onMessage); worker.off('error', onError); worker.off('exit', onExit); worker.off('online', onOnline);
          };
          const onOnline = () => { metrics.worker_startup_ms = performance.now() - started; };
          const onError = (error: Error) => { cleanup(); reject(error); };
          const onExit = (code: number) => onError(new Error('Matcher exited without a result: ' + code));
          const onMessage = (message: { id: number; results?: QueryResult[]; error?: string; compute_ms: number }) => {
            if (message.id !== id || message.error || !message.results) { onError(new Error(message.error ?? 'Invalid matcher response')); return; }
            metrics.worker_compute_ms = message.compute_ms;
            metrics.worker_roundtrip_ms = performance.now() - started;
            cleanup(); resolve(message.results);
          };
          const timer = setTimeout(() => onError(new ToolError('REGEX_TIMEOUT', 'Regular expression matching exceeded 1000ms; simplify the expression')), REGEX_TIMEOUT_MS);
          this.abort = onError;
          worker.once('message', onMessage); worker.once('error', onError); worker.once('exit', onExit);
          if (created) worker.once('online', onOnline);
          try { worker.postMessage({ id, job: packMatchJob(job) }); } catch (error) { onError(error as Error); }
        });
      } catch (error) {
        this.worker = undefined; await worker.terminate(); throw error;
      } finally { worker.unref(); }
    });
    this.tail = work.catch(() => undefined);
    return work;
  }
}

const defaultExecutor = new MatchExecutor();
export function runMatches(job: MatchJob, metrics?: Record<string, number>): Promise<QueryResult[]> { return defaultExecutor.run(job, metrics); }
