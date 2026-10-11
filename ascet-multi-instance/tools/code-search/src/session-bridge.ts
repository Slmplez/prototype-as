import { Bridge, NativeBridgeError } from './bridge.js';
import type { NativeRequest, NativeResponse, Reader } from './types.js';
import { ToolError } from './patterns.js';

type Connection = Reader & { close(): Promise<void> };

/** A failed operation is reported once; the next operation creates a fresh connection. */
export class SessionBridge implements Reader {
  private connection?: Connection;
  private tail: Promise<unknown> = Promise.resolve();
  private closed = false;
  private closing?: Promise<void>;
  private deadlineMs?: number;
  constructor(private readonly create: () => Connection = () => new Bridge(90)) {}
  setDeadline(deadlineMs: number | undefined): void { this.deadlineMs = deadlineMs; }
  request(request: NativeRequest): Promise<NativeResponse> {
    if (this.closed) return Promise.reject(new Error('Search connection is closed'));
    const work = this.tail.then(async () => {
      if (this.closed) throw new ToolError('SESSION_CLOSED', 'Search connection is closed');
      const connection = this.connection ??= this.create();
      try { return await connection.request(request, { deadlineMs: this.deadlineMs }); }
      catch (error) {
        if (!(error instanceof NativeBridgeError && error.recoverable)) {
          this.connection = undefined;
          await connection.close().catch(() => {});
          if (error instanceof NativeBridgeError) throw new ToolError(error.code,
            error.message.replace('; recreate Bridge and AgentSession before retrying', '') + '; the next find/search will rebuild the tool connection');
        }
        throw error;
      }
    });
    this.tail = work.catch(() => {}); return work;
  }
  close(): Promise<void> {
    this.closed = true;
    return this.closing ??= (async () => { await this.connection?.close(); this.connection = undefined; })();
  }
}
