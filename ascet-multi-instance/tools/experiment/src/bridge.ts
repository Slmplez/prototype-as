import { spawn, type ChildProcessWithoutNullStreams } from 'node:child_process';
import { createInterface } from 'node:readline';
import { fileURLToPath } from 'node:url';
import { resolve } from 'node:path';
import { randomUUID } from 'node:crypto';

export const ROOT = fileURLToPath(new URL('../../', import.meta.url));
export class ToolError extends Error {
  constructor(public code: string, message: string, public outcomeUnknown = false, public evidence?: unknown) { super(message); }
}
export interface Snapshot {
  token: string; database: string; pid: number; open: boolean;
  state?: 'stopped' | 'paused' | 'running' | 'stepping' | 'unknown';
  componentPath?: string; configuration?: string; simTimeSeconds?: number;
  nativeError: { code: number; message: string };
  recording?: { available: boolean; logging?: boolean; file?: string; channelCount?: number };
  [key: string]: any;
}
export interface NativeReply { result: Snapshot; nativeMs: number }
export interface Ready { pid: number; started: string; database: string; result: Snapshot }
export interface NativeClient {
  ready: Promise<Ready>;
  request(op: string, args?: string[], timeoutMs?: number): Promise<NativeReply>;
  close(): Promise<void>;
}
// One pending request, monotonic queue, strict response IDs. Never reconnect/replay.
export class Bridge implements NativeClient {
  readonly ready: Promise<Ready>;
  private child: ChildProcessWithoutNullStreams;
  private pending?: { id: string; mutating: boolean; resolve: (v: any) => void; reject: (e: Error) => void; timer: NodeJS.Timeout };
  private chain: Promise<unknown> = Promise.resolve();
  private dead?: ToolError;
  private readyResolve!: (r: Ready) => void;
  private readyReject!: (e: Error) => void;
  private startupTimer: NodeJS.Timeout;
  private readySeen = false;
  private closing = false;
  constructor(manifest: string, options: { command?: string; args?: string[]; startupMs?: number } = {}) {
    this.ready = new Promise((yes, no) => { this.readyResolve = yes; this.readyReject = no; });
    this.child = spawn(options.command ?? resolve(ROOT, 'ExperimentHost.exe'), options.args ?? [resolve(manifest)], { windowsHide: true, stdio: ['pipe', 'pipe', 'pipe'] });
    this.startupTimer = setTimeout(() => this.fail('ATTACH_TIMEOUT', 'ASCET host did not become ready.'), options.startupMs ?? 15_000);
    this.child.stderr.on('data', () => {}); // Vendor chatter must not enter MCP stdout.
    this.child.on('error', e => this.fail('HOST_FAILED', e.message));
    this.child.on('exit', () => { if (!this.closing) this.fail('HOST_EXITED', 'ASCET connection closed. Reattach explicitly and inspect before continuing.'); });
    this.child.stdin.on('error', e => this.fail('HOST_INPUT_FAILED', e.message));
    let bytes = 0;
    this.child.stdout.on('data', chunk => { bytes += chunk.length; if (bytes > 8 * 1024 * 1024) this.fail('RESPONSE_TOO_LARGE', 'Host response exceeded 8 MiB.'); });
    createInterface({ input: this.child.stdout }).on('line', line => {
      bytes = 0;
      try {
        const item = JSON.parse(line);
        if (item.kind === 'fatal') { this.fail('NATIVE_FAILED', item.error); return; }
        if (item.kind === 'ready' && !this.readySeen && !this.pending) {
          this.readySeen = true; clearTimeout(this.startupTimer); this.readyResolve(item); return;
        }
        if (!this.pending || item.id !== this.pending.id) { this.fail('PROTOCOL_ERROR', 'Unexpected native response ID.'); return; }
        const pending = this.pending; this.pending = undefined; clearTimeout(pending.timer);
        if (item.ok !== true) pending.reject(new ToolError(item.code ?? 'NATIVE_REJECTED', item.error, item.outcomeUnknown ?? false));
        else pending.resolve(item);
      } catch (e) { this.fail('PROTOCOL_ERROR', String(e)); }
    });
  }
  private fail(code: string, message: string) {
    if (this.dead) return;
    const pending = this.pending;
    this.dead = new ToolError(code, message, !!pending?.mutating);
    clearTimeout(this.startupTimer); this.readyReject(this.dead);
    if (pending) { clearTimeout(pending.timer); pending.reject(this.dead); this.pending = undefined; }
    this.child.kill();
  }
  request(op: string, args: string[] = [], timeoutMs = 5000): Promise<NativeReply> {
    const run = this.chain.then(async () => {
      await this.ready;
      if (this.dead) throw new ToolError('SESSION_INVALID', 'Connection invalidated; request was not dispatched.', false, this.dead.message);
      return new Promise<any>((yes, no) => {
        const id = randomUUID();
        this.pending = { id, mutating: !['inspect', 'read', 'signals', 'catalog', 'configuration', 'quit'].includes(op), resolve: yes, reject: no, timer: setTimeout(() => this.fail('NATIVE_TIMEOUT', 'Dispatched operation timed out. ASCET may still be executing; no automatic replay.'), timeoutMs) };
        this.child.stdin.write(JSON.stringify({ id, op, args }) + '\n');
      });
    });
    this.chain = run.catch(() => {});
    return run;
  }
  async close() {
    if (this.dead || this.closing) return;
    try { await this.request('quit', [], 1500); } catch { /* failure already invalidates */ }
    this.closing = true; this.child.stdin.end();
    const child = this.child;
    const killer = setTimeout(() => child.kill(), 1500); killer.unref();
  }
}
