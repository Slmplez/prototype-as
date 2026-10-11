import { spawn, type ChildProcessWithoutNullStreams } from 'node:child_process';
import { createInterface } from 'node:readline';
import { fileURLToPath } from 'node:url';
import { gunzipSync, inflateSync } from 'node:zlib';
import type { NativeRequest, NativeResponse, Reader } from './types.js';
import { isRecord } from './validation.js';
import { ToolError } from './patterns.js';

export const ROOT = fileURLToPath(new URL('../../', import.meta.url));
interface Work {
  line: string; resolve: (response: unknown) => void; reject: (error: Error) => void;
  settled: boolean; signal?: AbortSignal; abort?: () => void; timeoutMs: number; onStart?: () => void;
}
interface Pending { work: Work; timer: NodeJS.Timeout; drainTimer?: NodeJS.Timeout }
export interface RequestOptions { signal?: AbortSignal; timeoutMs?: number; onStart?: () => void }
export interface ClientOptions {
  command: string; args?: string[]; env?: NodeJS.ProcessEnv;
  timeoutMs?: number; closeTimeoutMs?: number; drainGraceMs?: number;
}

/** One process and one outstanding wire request, including when callers race. */
export class JsonLineClient {
  private process?: ChildProcessWithoutNullStreams;
  private exit?: Promise<void>;
  private readonly queue: Work[] = [];
  private pending?: Pending;
  private failure?: Error;
  private closed = false;
  private closing?: Promise<void>;
  private diagnostics: string[] = [];
  private readonly timeoutMs: number;

  constructor(private readonly options: ClientOptions) {
    this.timeoutMs = options.timeoutMs ?? 30_000;
    if (!Number.isFinite(this.timeoutMs) || this.timeoutMs <= 0 || this.timeoutMs > 2_147_483_647) throw new Error('timeout must be positive and at most 2147483647ms');
    for (const value of [options.closeTimeoutMs ?? 5000, options.drainGraceMs ?? 2000]) {
      if (!Number.isFinite(value) || value <= 0 || value > 2_147_483_647) throw new Error('close/drain timeout must be positive and at most 2147483647ms');
    }
  }

  get usable(): boolean { return !this.closed && !this.failure; }
  get pid(): number | undefined { return this.process?.pid; }

  private settle(work: Work, error?: Error, value?: unknown): void {
    if (work.settled) return;
    work.settled = true;
    if (work.abort) work.signal?.removeEventListener('abort', work.abort);
    if (error) work.reject(error); else work.resolve(value);
  }

  private finish(error?: Error, value?: unknown): void {
    const pending = this.pending;
    if (!pending) return;
    this.pending = undefined;
    clearTimeout(pending.timer); clearTimeout(pending.drainTimer);
    this.settle(pending.work, error, value);
    if (this.closed) this.process?.stdin.end();
    else queueMicrotask(() => this.pump());
  }

  invalidate(error: Error): void {
    this.failure ??= error;
    this.finish(this.failure);
    for (const work of this.queue.splice(0)) this.settle(work, this.failure);
    this.process?.kill();
  }

  private start(): void {
    const child = this.process = spawn(this.options.command, this.options.args ?? [], { windowsHide: true, stdio: 'pipe', env: this.options.env });
    this.exit = new Promise(resolve => child.once('close', () => resolve()));
    child.on('error', error => this.invalidate(error));
    child.stdin.on('error', error => this.invalidate(error));
    child.stdout.setEncoding('utf8'); child.stderr.setEncoding('utf8');
    const output = createInterface({ input: child.stdout, crlfDelay: Infinity });
    // Keep diagnostics bounded even if a malfunctioning child never emits a newline.
    child.stderr.on('data', (chunk: string) => {
      this.diagnostics.push(chunk.slice(-4096));
      if (this.diagnostics.length > 20) this.diagnostics.shift();
    });
    output.on('line', line => {
      if (!this.pending) { this.invalidate(new Error('Unexpected bridge response without a request')); return; }
      let value: unknown;
      try { value = JSON.parse(line); }
      catch { this.invalidate(new Error('Malformed bridge JSON response')); return; }
      this.finish(undefined, value);
    });
    output.on('close', () => {
      if (this.pending || !this.closed) this.invalidate(new Error('ASCET bridge ended: ' + this.diagnostics.join('').trim()));
    });
    child.once('close', () => {
      if (this.pending || !this.closed) this.invalidate(new Error('ASCET bridge exited; restart the search process. ' + this.diagnostics.join('').trim()));
    });
  }

  request(value: unknown, options: RequestOptions = {}): Promise<unknown> {
    if (this.closed) return Promise.reject(new Error('Search connection is closed'));
    if (this.failure) return Promise.reject(this.failure);
    if (options.signal?.aborted) return Promise.reject(new ToolError('CANCELLED', 'Tool call cancelled before dispatch'));
    const timeoutMs = options.timeoutMs ?? this.timeoutMs;
    if (!Number.isFinite(timeoutMs) || timeoutMs <= 0 || timeoutMs > 2_147_483_647) return Promise.reject(new Error('Invalid request timeout'));
    let line: string;
    try { line = JSON.stringify(value) + '\n'; } catch (error) { return Promise.reject(error); }
    return new Promise((resolve, reject) => {
      const work: Work = { line, resolve, reject, settled: false, signal: options.signal, timeoutMs, onStart: options.onStart };
      work.abort = () => {
        this.settle(work, new ToolError('CANCELLED', 'Tool call cancelled'));
        if (this.pending?.work === work) {
          // External cancellation settles immediately; pending still owns the late response.
          this.pending.drainTimer = setTimeout(() => this.invalidate(new ToolError('TRANSPORT_RESET',
            'Cancelled request did not drain; find/search again after rebuilding the tool connection')),
          this.options.drainGraceMs ?? 2000);
        }
      };
      options.signal?.addEventListener('abort', work.abort, { once: true });
      this.queue.push(work);
      queueMicrotask(() => this.pump());
    });
  }

  private pump(): void {
    if (this.pending || this.closed || this.failure) return;
    let work: Work | undefined;
    while ((work = this.queue.shift()) && work.settled) { /* Skip cancelled queued calls. */ }
    if (!work) return;
    try {
      if (!this.process) this.start();
      const timer = setTimeout(() => this.invalidate(new ToolError('OPERATION_TIMEOUT',
        'ASCET read timed out; no complete result available')), work.timeoutMs);
      this.pending = { work, timer };
      work.onStart?.();
      if (work.settled) { this.finish(); return; }
      this.process!.stdin.write(work.line, 'utf8', error => { if (error) this.invalidate(error); });
    } catch (error) {
      this.settle(work, error instanceof Error ? error : new Error(String(error)));
      this.invalidate(error instanceof Error ? error : new Error(String(error)));
    }
  }

  close(): Promise<void> {
    if (this.closing) return this.closing;
    this.closed = true;
    for (const work of this.queue.splice(0)) this.settle(work, new ToolError('SESSION_CLOSED', 'Search connection is closed'));
    return this.closing = (async () => {
      if (!this.process || !this.exit) return;
      const deadline = this.options.closeTimeoutMs ?? 5000;
      const force = setTimeout(() => this.invalidate(new ToolError('TRANSPORT_RESET', 'Tool connection closed during request')),
        Math.min(this.options.drainGraceMs ?? 2000, deadline / 2));
      let timer: NodeJS.Timeout | undefined;
      if (!this.pending) this.process.stdin.end();
      try {
        await Promise.race([this.exit, new Promise<never>((_, reject) => {
          timer = setTimeout(() => reject(new ToolError('CLOSE_TIMEOUT', 'Tool process exit could not be confirmed')), deadline);
        })]);
      } finally { clearTimeout(force); clearTimeout(timer); }
    })();
  }
}

export class NativeBridgeError extends ToolError {
  constructor(code: string, message: string, public readonly recoverable: boolean) {
    super(code, recoverable ? message : message + '; recreate Bridge and AgentSession before retrying');
  }
}

export function validateNativeResponse(value: unknown): NativeResponse {
  if (!isRecord(value)) throw new Error('Invalid ASCET bridge response');
  if (value.status !== 'ok') {
    if (value.status !== 'error') throw new Error('Invalid ASCET bridge response status');
    const message = typeof value.message === 'string' ? value.message : 'ASCET read failed';
    const known = ['DATABASE_CHANGED', 'DATABASE_CHANGED_DURING_READ', 'ASCET_RESTARTED', 'ASCET_BUSY'];
    const code = typeof value.code === 'string' && known.includes(value.code) ? value.code
      : known.includes(message) ? message : 'ASCET_READ_FAILED';
    // Only the current native precondition response guarantees a usable connection.
    throw new NativeBridgeError(code, message, ['DATABASE_CHANGED', 'ASCET_BUSY'].includes(code) && value.recoverable === true);
  }
  if (typeof value.database !== 'string' || !value.database || !Number.isSafeInteger(value.ascet_pid) ||
      typeof value.observed_utc !== 'string' || typeof value.payload !== 'string' || !isRecord(value.timings) ||
      Object.values(value.timings).some(v => typeof v !== 'number' || !Number.isFinite(v)) ||
      (Object.hasOwn(value, 'first_connection') && typeof value.first_connection !== 'boolean')) {
    throw new Error('Malformed ASCET response metadata');
  }
  if (value.payload_encoding != null) {
    if (!['gzip-base64', 'zlib-base64'].includes(value.payload_encoding as string) || value.payload.length % 4 !== 0 || !/^[A-Za-z0-9+/]*={0,2}$/.test(value.payload)) {
      throw new Error('Invalid ASCET transport encoding');
    }
    const { payload_encoding: _encoding, payload_bytes: _bytes, ...decoded } = value;
    const bytes = Buffer.from(value.payload, 'base64');
    if (value.payload_encoding === 'zlib-base64') {
      if (!Number.isSafeInteger(value.payload_bytes) || (value.payload_bytes as number) < 1 || (value.payload_bytes as number) > 512 * 1024 * 1024) {
        throw new Error('Invalid ASCET uncompressed payload size');
      }
      const result = inflateSync(bytes, { maxOutputLength: value.payload_bytes as number, info: true }) as unknown as {
        buffer: Buffer; engine: { bytesWritten: number };
      };
      if (result.buffer.length !== value.payload_bytes || result.engine.bytesWritten !== bytes.length) throw new Error('ASCET compressed payload size mismatch');
      return { ...decoded, payload: new TextDecoder('utf-8', { fatal: true }).decode(result.buffer) } as unknown as NativeResponse;
    }
    return { ...decoded, payload: new TextDecoder('utf-8', { fatal: true }).decode(
      gunzipSync(bytes, { maxOutputLength: 512 * 1024 * 1024 })) } as unknown as NativeResponse;
  }
  const { payload_encoding: _encoding, payload_bytes: _bytes, ...decoded } = value;
  return decoded as unknown as NativeResponse;
}

export class Bridge implements Reader {
  private readonly client: JsonLineClient;
  private readonly trace: boolean;
  private readonly timeoutMs: number;
  constructor(timeoutSeconds = 30, options: Partial<Pick<ClientOptions, 'command' | 'args' | 'env'>> = {}) {
    this.trace = (options.env ?? process.env).ASCET_CODE_SEARCH_TRACE === '1';
    this.timeoutMs = timeoutSeconds * 1000;
    this.client = new JsonLineClient({ command: fileURLToPath(new URL('../../CodeSearchBridge.exe', import.meta.url)), ...options,
      env: { ...process.env, ...options.env, ASCET_CODE_SEARCH_OWNER_PID: String(process.pid) }, timeoutMs: this.timeoutMs });
  }
  async request(request: NativeRequest, execution: { deadlineMs?: number } = {}): Promise<NativeResponse> {
    try {
      const timeoutMs = Math.min(this.timeoutMs, execution.deadlineMs === undefined ? this.timeoutMs : execution.deadlineMs - Date.now());
      if (timeoutMs <= 0) throw new ToolError('OPERATION_TIMEOUT', 'CLI operation deadline exceeded');
      const result = validateNativeResponse(await this.client.request({ ...request, transport_encoding: 'gzip-base64' }, { timeoutMs }));
      if (request.include_diagrams && !result.payload.startsWith('#BDE_ENABLED|1|')) throw new Error('Rebuild CodeSearchBridge: generic BDE reader is required');
      if (request.filters && ![2, 3].includes(result.native_protocol_version ?? 0)) throw new Error('Rebuild CodeSearchBridge: native filters require protocol 2 or 3');
      if ((request.read_diagram_ids || request.diagram_name || request.filters?.diagram_ids || request.filters?.diagram_visibilities) && result.native_protocol_version !== 3) throw new Error('Rebuild CodeSearchBridge: Diagram selection requires protocol 3');
      if (this.trace) process.stderr.write(JSON.stringify({ event: 'ascet_native_read', mode: request.mode,
        ascet_pid: result.ascet_pid, timings: result.timings }) + '\n');
      return result;
    }
    catch (error) {
      if (!(error instanceof NativeBridgeError && error.recoverable)) this.client.invalidate(error instanceof Error ? error : new Error(String(error)));
      throw error;
    }
  }
  close(): Promise<void> { return this.client.close(); }
}
