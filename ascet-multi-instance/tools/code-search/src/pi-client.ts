import { performance } from 'node:perf_hooks';
import type { AgentToolClient, AgentToolName } from './agent-tools.js';
import type { ClientOptions } from './bridge.js';
import { ToolError } from './patterns.js';
import { validatePiFinalAnswer } from './pi-answer-validation.js';
import { TaskBdeEvidence } from './task-bde-evidence.js';

export interface PiClientOptions {
  client?: Partial<ClientOptions>;
  operationTimeoutMs?: number; nativeTimeoutMs?: number;
  maxPageBytes?: number; maxModelBytes?: number; drainGraceMs?: number; closeDeadlineMs?: number;
}
export interface PiCallResult { response: unknown; generation: number; timings: { client_setup_ms: number; queue_ms: number; execution_ms: number } }

/** Owns resources only. All scheduling stays in the shared CLI client. */
export class PiClient {
  private client?: AgentToolClient;
  private initializing?: Promise<AgentToolClient>;
  private closing?: Promise<void>;
  private closed = false;
  private generation = 0;
  private readonly bdeEvidence = new TaskBdeEvidence();
  constructor(private readonly options: PiClientOptions = {}) {}

  private get(): Promise<AgentToolClient> {
    if (this.closed) return Promise.reject(new ToolError('SESSION_CLOSED', 'ASCET extension is closed'));
    if (this.client?.usable) return Promise.resolve(this.client);
    if (this.initializing) return this.initializing;
    const initialization = (async () => {
      if (this.client) { await this.client.close(); this.client = undefined; this.bdeEvidence.clear(); }
      const { AgentToolClient } = await import('./agent-tools.js');
      const { ROOT } = await import('./bridge.js');
      const { join } = await import('node:path');
      if (this.closed) throw new ToolError('SESSION_CLOSED', 'ASCET extension closed during initialization');
      const operationMs = this.options.operationTimeoutMs ?? 120_000, closeMs = this.options.closeDeadlineMs ?? 5000;
      this.client = new AgentToolClient({
        timeoutMs: operationMs + 2 * closeMs, closeTimeoutMs: closeMs, drainGraceMs: this.options.drainGraceMs ?? 2000,
        args: [join(ROOT, 'dist/src/cli.js'), '--agent', '--timeout', String((this.options.nativeTimeoutMs ?? 30_000) / 1000),
          '--operation-timeout', String(operationMs / 1000), '--max-page-bytes', String(this.options.maxPageBytes ?? 32 * 1024),
          '--model-bytes', String(this.options.maxModelBytes ?? 32 * 1024)],
        ...this.options.client,
      });
      this.generation++; return this.client;
    })();
    this.initializing = initialization;
    void initialization.then(() => { if (this.initializing === initialization) this.initializing = undefined; },
      () => { if (this.initializing === initialization) this.initializing = undefined; });
    return initialization;
  }

  async call(name: AgentToolName, args: unknown, signal?: AbortSignal): Promise<PiCallResult> {
    if (signal?.aborted) throw new ToolError('CANCELLED', 'Tool call cancelled before initialization');
    const submitted = structuredClone(args);
    const began = performance.now(), client = await this.get(), ready = performance.now();
    if (signal?.aborted) throw new ToolError('CANCELLED', 'Tool call cancelled before dispatch');
    const generation = this.generation;
    let dispatched = ready;
    const response = await client.call(name, submitted, { signal, onStart: () => { dispatched = performance.now(); } });
    this.bdeEvidence.record(response, client.evidence.refs());
    return { response, generation, timings: { client_setup_ms: ready - began, queue_ms: dispatched - ready, execution_ms: performance.now() - dispatched } };
  }

  /** Validate a task answer against the live AgentEvidence ledger. */
  validateFinalAnswer(text: string) {
    const refs = this.client?.evidence.refs() ?? new Set<string>();
    const validation = validatePiFinalAnswer(text, this.client?.evidence ?? refs);
    try {
      const answer = JSON.parse(text);
      validation.errors.push(...this.bdeEvidence.validate(answer.facts, answer.evidence_refs, answer.outcome, refs));
      validation.valid = validation.errors.length === 0;
      if (!validation.valid) validation.answer = null;
    } catch { /* Format errors were already reported. */ }
    return validation;
  }

  close(): Promise<void> {
    this.closed = true;
    this.bdeEvidence.clear();
    return this.closing ??= (async () => {
      await this.initializing?.catch(() => {});
      await this.client?.close();
    })();
  }
}
