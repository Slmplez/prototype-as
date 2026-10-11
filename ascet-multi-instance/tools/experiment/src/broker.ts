import { randomUUID, createHash } from 'node:crypto';
import { mkdir, readFile, open, rename, access } from 'node:fs/promises';
import { isAbsolute, resolve, join } from 'node:path';
import { setTimeout as delay } from 'node:timers/promises';
import { Bridge, ROOT, ToolError, type NativeClient, type Snapshot, type NativeReply } from './bridge.js';
import { validate } from './contracts.js';

const hash = (value: unknown) => createHash('sha256').update(JSON.stringify(value)).digest('hex');
const stamp = () => new Date().toISOString();
const mutations = new Set(['open', 'close', 'start', 'pause', 'stop', 'start_os', 'stop_os', 'start_measurement', 'stop_measurement', 'step', 'write', 'stimulus', 'create_stimulus', 'event', 'save', 'parameters', 'record']);
type Signal = { signalRef: string; label: string; epoch: number; scalar: boolean; calibratable: boolean; readable: boolean; displayLabel: string };
type Session = { id: string; client: NativeClient; snapshot: Snapshot; epoch: number; refs: Map<string, Signal>; tail: Promise<unknown>; busyJob?: string; invalid?: boolean };
type Job = { jobId: string; runId: string; sessionId: string; requestId: string; fingerprint: string; status: string; stage: string; completedChunks: number; requestedChunks: number; cancelRequested: boolean; submittedAt: string; error?: any; result?: any };
export const capabilities = {
  offlinePC: true, nativeBatchRead: true, scalarCalibration: true, boundedStep: true,
  existingNumericStimuli: ['constant', 'pulse'], configurationRead: true,
  snapshotCases: true, cooperativeCaseCancellation: true,
  online: false, onlineControlAdapter: true, arrays: false, conditionStep: true, hardCancellation: false,
  createStimulusChannel: true, eventEditing: true, configurationSave: true,
  nativeRecordingControl: true, nativeLogParsing: false,
  dcmRoundTripVerified: false,
};
export class Broker {
  private sessions = new Map<string, Session>();
  private jobs = new Map<string, Job>();
  private reservations = new Map<string, string>();
  private fileQueues = new Map<string, Promise<unknown>>();
  private factory: (manifest: string) => NativeClient;
  readonly artifactRoot: string;
  constructor(options: { artifactRoot?: string; factory?: (manifest: string) => NativeClient } = {}) {
    this.artifactRoot = resolve(options.artifactRoot ?? join(ROOT, 'artifacts'));
    this.factory = options.factory ?? (manifest => new Bridge(manifest));
  }
  async call(name: string, input: unknown): Promise<Record<string, any>> {
    const start = performance.now(); const requestId = randomUUID();
    try {
      validate(name, input);
      const args = input as Record<string, any>;
      let result: any;
      if (name === 'exp_attach') result = await this.attach(args);
      else if (name === 'exp_job') result = await this.job(args);
      else if (name === 'exp_results') result = await this.results(args);
      else {
        const session = this.sessions.get(args.sessionId);
        if (!session || (session.invalid && name !== 'exp_detach')) throw new ToolError('SESSION_INVALID', 'Detach the invalid session, then attach explicitly and inspect.');
        if (session.busyJob) throw new ToolError('SESSION_BUSY', 'A case owns this session.', false, { jobId: session.busyJob });
        result = await this.enqueue(session, async () => {
          if (session.busyJob) throw new ToolError('SESSION_BUSY', 'A case owns this session.');
          if (name === 'exp_run_case') return this.submit(session, args);
          return this.execute(session, name, args);
        });
      }
      return { ok: true, requestId, ...result, elapsedMs: performance.now() - start };
    } catch (error) {
      const e = error instanceof ToolError ? error : new ToolError('TOOL_FAILED', String(error));
      return { ok: false, requestId, error: { code: e.code, message: e.message, outcomeUnknown: e.outcomeUnknown, evidence: e.evidence }, elapsedMs: performance.now() - start };
    }
  }
  private enqueue<T>(s: Session, fn: () => Promise<T>): Promise<T> {
    const run = s.tail.then(fn); s.tail = run.catch(() => {}); return run;
  }
  private async journal(s: Session, record: any) {
    const directory = join(this.artifactRoot, s.id); await mkdir(directory, { recursive: true });
    const file = await open(join(directory, 'operations.jsonl'), 'a');
    try { await file.write(JSON.stringify({ at: stamp(), ...record }) + '\n'); await file.sync(); } finally { await file.close(); }
  }
  private async native(s: Session, op: string, args: string[] = [], timeout = 5000): Promise<NativeReply> {
    if (s.invalid) throw new ToolError('SESSION_INVALID', 'Request was not dispatched.');
    const request = randomUUID(); const mutate = mutations.has(op);
    if (mutate) await this.journal(s, { request, op, args, phase: 'before_dispatch', epoch: s.epoch, observed: s.snapshot });
    let reply: NativeReply;
    try { reply = await s.client.request(op, args, timeout); }
    catch (error) {
      const guarded = error instanceof ToolError && ['PRECONDITION_FAILED', 'INVALID_ARGUMENT'].includes(error.code);
      s.invalid = !guarded || /DATABASE_CHANGED|EXPERIMENT_CHANGED/.test(String(error));
      if (mutate) await this.journal(s, { request, phase: guarded ? 'rejected' : 'unknown', error: String(error) });
      throw error;
    }
    const previous = s.snapshot; s.snapshot = reply.result;
    if (previous.token !== s.snapshot.token || op === 'open' || op === 'close') { s.epoch++; s.refs.clear(); }
    if (mutate) {
      try { await this.journal(s, { request, phase: 'observed', result: reply.result, nativeMs: reply.nativeMs }); }
      catch (error) { s.invalid = true; throw new ToolError('JOURNAL_WRITE_FAILED', 'Operation returned, but its durable outcome record failed.', true, { result: reply.result, error: String(error) }); }
    }
    const failure = reply.result.nativeError;
    if (failure.code !== 0) {
      if (op === 'parameters' && args[0] === 'save' && reply.result.transferableParameterCount === 0)
        throw new ToolError('NO_TRANSFERABLE_PARAMETERS', 'This experiment has no DCM-exportable parameters or nonvolatile variables.', false, reply.result);
      throw new ToolError(op === 'open' && failure.code === 1005 ? 'OPEN_OR_BUILD_FAILED' : 'ASCET_OPERATION_FAILED', failure.message, false, reply.result);
    }
    return reply;
  }
  private envelope(s: Session, extra: any = {}, nativeMs?: number) {
    const { token, database, pid, open, state, componentPath, configuration, simTimeSeconds, recording, nativeError, viewClass } = s.snapshot;
    return { sessionId: s.id, experimentEpoch: s.epoch, observedState: { token, database, pid, open, state, componentPath, configuration, simTimeSeconds, recording, nativeError, viewClass }, nativeMs, ...extra };
  }
  private async attach(args: any) {
    const manifest = args.instanceRef ?? process.env.ASCET_EXPERIMENT_MANIFEST;
    if (!manifest) throw new ToolError('INSTANCE_REQUIRED', 'Provide instanceRef or ASCET_EXPERIMENT_MANIFEST.');
    const key = resolve(manifest).toLowerCase();
    if (this.reservations.has(key)) throw new ToolError('ALREADY_ATTACHED', 'Instance already reserved by this broker.');
    const id = randomUUID(); this.reservations.set(key, id);
    let client: NativeClient | undefined;
    try {
      client = this.factory(manifest);
      const ready = await client.ready;
      const s: Session = { id, client, snapshot: ready.result, epoch: 1, refs: new Map(), tail: Promise.resolve() };
      await this.journal(s, { phase: 'attached', instanceRef: resolve(manifest), pid: ready.pid, started: ready.started });
      this.sessions.set(id, s);
      return this.envelope(s, { capabilities, processStart: ready.started, journal: join(this.artifactRoot, id, 'operations.jsonl') });
    } catch (e) { this.reservations.delete(key); await client?.close(); throw e; }
  }
  private signal(s: Session, ref: string, writable = false): Signal {
    const item = s.refs.get(ref);
    if (!item || item.epoch !== s.epoch) throw new ToolError('STALE_SIGNAL_REF', 'Rediscover signals in the current experiment.');
    if (!item.scalar) throw new ToolError('SCALAR_ONLY', 'Array and matrix operations are disabled.');
    if (writable && !item.calibratable) throw new ToolError('NOT_CALIBRATABLE', item.label);
    return item;
  }
  private async read(s: Session, refs: string[], representation = 'physical') {
    const items = refs.map(ref => this.signal(s, ref));
    const r = await this.native(s, 'read', [representation, ...items.map(i => i.label)]);
    const values = r.result.values.map((v: any, i: number) => ({ ...v, signalRef: items[i].signalRef, numericValue: representation === 'physical' ? (v.value === 'true' ? 1 : v.value === 'false' ? 0 : v.value.trim() !== '' && Number.isFinite(Number(v.value)) ? Number(v.value) : null) : null }));
    if (values.some((v: any) => v.code !== 0)) throw new ToolError('READ_FAILED', 'One or more scalar reads failed.', false, values);
    return { values, timeBefore: r.result.timeBefore, timeAfter: r.result.simTimeSeconds, consistency: r.result.state === 'paused' || r.result.state === 'stopped' ? 'quiescent_sequential' : 'running_sequential', nativeMs: r.nativeMs };
  }
  private validateWrites(s: Session, writes: any[]) {
    const seen = new Set<string>();
    return writes.map(w => {
      const item = this.signal(s, w.signalRef, true);
      if (seen.has(item.label)) throw new ToolError('DUPLICATE_WRITE', item.label);
      seen.add(item.label); return { ...w, label: item.label };
    });
  }
  private async write(s: Session, writes: any[]) {
    const inputs = this.validateWrites(s, writes);
    const r = await this.native(s, 'write', ['physical', ...inputs.flatMap(w => [w.label, String(w.value)])]);
    if (!r.result.validationPassed || r.result.writes.some((w: any) => w.status !== 'applied')) throw new ToolError('PARTIAL_OR_REJECTED_WRITE', 'Inspect per-item outcomes before proceeding; no automatic replay.', false, r.result.writes);
    return { writes: r.result.writes.map((w: any, i: number) => ({ ...w, signalRef: inputs[i].signalRef, matchesRequested: typeof inputs[i].value === 'number' ? Number(w.after.value) === inputs[i].value : w.after.value === String(inputs[i].value) })), nativeMs: r.nativeMs };
  }
  private async step(s: Session, mode: string, value: number, timeout = 10_000) {
    if (mode === 'events' && !Number.isInteger(value)) throw new ToolError('INVALID_ARGUMENT', 'events requires an integer.');
    if (mode === 'duration' && value > 10) throw new ToolError('INVALID_ARGUMENT', 'One duration step is limited to 10 simulation seconds; use exp_run_case for chunking.');
    const before = s.snapshot.simTimeSeconds;
    const deadline = performance.now() + timeout;
    let r = await this.native(s, 'step', [mode === 'events' ? 'Steps' : 'Seconds', String(value)], timeout);
    let polls = 0; let nativeMs = r.nativeMs;
    while (r.result.state === 'stepping') {
      const remaining = deadline - performance.now();
      if (remaining <= 0) { s.invalid = true; await s.client.close(); throw new ToolError('STEP_TIMEOUT', 'Step may still be executing. Detach, reattach and inspect; no automatic replay or stop.', true, r.result); }
      await delay(Math.min(polls < 3 ? 10 : 25, remaining));
      try { r = await this.native(s, 'inspect', [], Math.max(1, Math.floor(deadline - performance.now()))); }
      catch (error) { throw new ToolError('STEP_MONITOR_FAILED', 'Step was dispatched but its completion could not be observed. Detach, reattach and inspect.', true, { lastObserved: s.snapshot, error: String(error) }); }
      polls++; nativeMs += r.nativeMs;
    }
    if (r.result.state !== 'paused') throw new ToolError('STEP_INTERRUPTED', 'Step did not finish paused.', false, r.result);
    return { requested: { mode, value }, timeBefore: before, timeAfter: r.result.simTimeSeconds, advancedSeconds: r.result.simTimeSeconds! - before!, terminalState: 'paused', polls, nativeMs };
  }
  private async conditionStep(s: Session, a: any) {
    const item = this.signal(s, a.signalRef);
    const before = s.snapshot.simTimeSeconds;
    const deadline = performance.now() + (a.maxWallTimeMs ?? 10_000);
    let last: any = null;
    for (let event = 1; event <= a.maxEvents; event++) {
      const remaining = deadline - performance.now();
      if (remaining <= 0) throw new ToolError('STEP_TIMEOUT', 'Condition step reached its wall-time bound before the condition was met.', true, { last });
      await this.step(s, 'events', 1, Math.max(100, Math.floor(remaining)));
      const data = await this.read(s, [item.signalRef]);
      last = data.values[0];
      const value = last.numericValue;
      const met = typeof value === 'number' && ({
        '<': value < a.threshold,
        '<=': value <= a.threshold,
        '==': value === a.threshold,
        '>=': value >= a.threshold,
        '>': value > a.threshold,
      } as any)[a.operator];
      if (met) return { requested: { mode: 'condition', signalRef: a.signalRef, operator: a.operator, threshold: a.threshold, maxEvents: a.maxEvents }, timeBefore: before, timeAfter: s.snapshot.simTimeSeconds, advancedSeconds: s.snapshot.simTimeSeconds! - before!, terminalState: 'paused', termination: 'condition_met', eventsExecuted: event, lastValue: last };
    }
    return { requested: { mode: 'condition', signalRef: a.signalRef, operator: a.operator, threshold: a.threshold, maxEvents: a.maxEvents }, timeBefore: before, timeAfter: s.snapshot.simTimeSeconds, advancedSeconds: s.snapshot.simTimeSeconds! - before!, terminalState: 'paused', termination: 'max_events', eventsExecuted: a.maxEvents, lastValue: last };
  }
  private configuration(r: Snapshot) { return { events: r.events, stimuli: r.stimuli }; }
  private async execute(s: Session, name: string, a: any): Promise<any> {
    switch (name) {
      case 'exp_detach': {
        await s.client.close(); this.sessions.delete(s.id);
        for (const [key, value] of this.reservations) if (value === s.id) this.reservations.delete(key);
        return { detached: true, sessionId: s.id };
      }
      case 'exp_inspect': { const r = await this.native(s, 'inspect'); return this.envelope(s, {}, r.nativeMs); }
      case 'exp_catalog': { const query = (a.query ?? '').replaceAll('/', '\\').replace(/^\\+/, ''); const r = await this.native(s, 'catalog', [query], 30_000); return this.envelope(s, { components: r.result.components, limit: 200, truncated: r.result.components.length === 200 }, r.nativeMs); }
      case 'exp_open': {
        const before = (await this.native(s, 'inspect')).result;
        const componentPath = a.componentPath.replaceAll('/', '\\').replace(/^\\+/, '');
        if (before.open) {
          if (before.componentPath?.toLowerCase() === componentPath.toLowerCase() && before.configuration === a.configuration) return this.envelope(s, { reused: true });
          throw new ToolError('EXPERIMENT_ALREADY_OPEN', 'Close the existing experiment explicitly before opening another.', false, before);
        }
        const r = await this.native(s, 'open', [componentPath, a.configuration], 120_000);
        if (!r.result.open || r.result.configuration !== a.configuration || r.result.componentPath?.toLowerCase() !== componentPath.toLowerCase())
          throw new ToolError('OPEN_IDENTITY_MISMATCH', 'ASCET did not load the requested component/configuration. Inspect actual state before continuing.', false, r.result);
        return this.envelope(s, {}, r.nativeMs);
      }
      case 'exp_signals': {
        const offset = a.offset ?? 0, limit = a.limit ?? 100;
        const r = await this.native(s, 'signals', [a.query ?? '', a.kind ?? 'all', String(offset), String(limit)]);
        const signals = r.result.signals.map((item: any) => {
          const signalRef = hash([s.id, s.epoch, item.label]).slice(0, 32);
          const signal = { ...item, signalRef, epoch: s.epoch }; s.refs.set(signalRef, signal); return signal;
        });
        return this.envelope(s, { signals, total: r.result.total, nextOffset: offset + signals.length < r.result.total ? offset + signals.length : null }, r.nativeMs);
      }
      case 'exp_read': return this.envelope(s, await this.read(s, a.signalRefs, a.representation));
      case 'exp_write': return this.envelope(s, await this.write(s, a.writes));
      case 'exp_parameters': {
        if (a.path) {
          if (!isAbsolute(a.path)) throw new ToolError('ABSOLUTE_PATH_REQUIRED', a.path);
          if (a.action === 'load') await access(a.path);
          else { try { await access(a.path); throw new ToolError('FILE_EXISTS', 'Parameter save refuses to overwrite an existing file.'); } catch (e: any) { if (e.code !== 'ENOENT') throw e; } }
        }
        const r = await this.native(s, 'parameters', a.path ? [a.action, a.path] : [a.action]);
        return this.envelope(s, { action: a.action, path: a.path }, r.nativeMs);
      }
      case 'exp_control': {
        const r = await this.native(s, a.action);
        const expected = ({ start: 'running', pause: 'paused', stop: 'stopped' } as any)[a.action];
        if (['start', 'pause', 'stop'].includes(a.action) && r.result.state !== expected) throw new ToolError('CONTROL_STATE_MISMATCH', 'Unexpected state after control operation.', false, r.result);
        if (a.action === 'close' && r.result.open) throw new ToolError('CONTROL_STATE_MISMATCH', 'Unexpected state after control operation.', false, r.result);
        return this.envelope(s, { warnings: a.action === 'start' ? ['ASCET may initialize variables and parameters at start according to its current options.'] : [] }, r.nativeMs);
      }
      case 'exp_step': return this.envelope(s, a.mode === 'condition' ? await this.conditionStep(s, a) : await this.step(s, a.mode, a.value, a.maxWallTimeMs));
      case 'exp_record': {
        if (a.action === 'set_output') {
          if (!isAbsolute(a.path)) throw new ToolError('ABSOLUTE_PATH_REQUIRED', a.path);
          try { await access(a.path); throw new ToolError('FILE_EXISTS', 'Recording output refuses to overwrite an existing file.'); } catch (e: any) { if (e.code !== 'ENOENT') throw e; }
          const r = await this.native(s, 'record', ['set_output', a.path]);
          return this.envelope(s, { recording: r.result.recording, action: a.action }, r.nativeMs);
        }
        if (a.action === 'start' || a.action === 'stop') {
          const r = await this.native(s, 'record', [a.action]);
          return this.envelope(s, { recording: r.result.recording, action: a.action }, r.nativeMs);
        }
        const r = await this.native(s, 'inspect'); return this.envelope(s, { recording: r.result.recording, nativeRecordingControl: true }, r.nativeMs);
      }
      case 'exp_configure': {
        const r = await this.native(s, 'configuration'); const configuration = this.configuration(r.result);
        const revision = hash([s.id, s.epoch, r.result.configurationStamp]);
        if (a.action === 'read') return this.envelope(s, { configuration, revision }, r.nativeMs);
        if (a.expectedRevision !== revision) throw new ToolError('CONFIGURATION_CHANGED', 'Read current configuration and use its revision.', false, { revision, configuration });
        if (!['stopped', 'paused'].includes(r.result.state ?? '')) throw new ToolError('CONFIGURATION_REQUIRES_QUIESCENT', 'Pause or stop before validating/applying stimulus.');
        if (a.action === 'save') {
          const saved = await this.native(s, 'save', [r.result.configurationStamp, a.commitDatabase ? 'commit_database' : 'environment_only'], a.commitDatabase ? 30_000 : 5000);
          const databaseCommitted = saved.result.databaseCommitted === true;
          if (a.commitDatabase && !databaseCommitted) throw new ToolError('CONFIG_READBACK_MISMATCH', 'Environment save returned without confirming database commit.', true, saved.result);
          return this.envelope(s, { saved: true, databaseCommitted, revision: hash([s.id, s.epoch, saved.result.configurationStamp]) }, saved.nativeMs);
        }
        if (a.action === 'create') {
          const v = a.stimulus; const item = this.signal(s, v.signalRef);
          if (configuration.stimuli.some((c: any) => c.channel === v.channel)) throw new ToolError('CHANNEL_EXISTS', v.channel);
          if (a.expectedRevision !== revision) throw new ToolError('CONFIGURATION_CHANGED', 'Read current configuration and use its revision.', false, { revision, configuration });
          const after = await this.native(s, 'create_stimulus', [r.result.configurationStamp, v.channel, item.label, v.mode, String(v.offset), String(v.amplitude), String(v.frequencyHz), String(v.phase)]);
          const actual = after.result.stimuli.find((c: any) => c.channel === v.channel);
          if (!actual) throw new ToolError('CONFIG_READBACK_MISMATCH', 'Created stimulus channel was not returned by readback.', false, after.result);
          return this.envelope(s, { created: true, actual, revision: hash([s.id, s.epoch, after.result.configurationStamp]) }, after.nativeMs);
        }
        if (a.section === 'event') {
          const event = configuration.events?.EventSimChannels?.[a.event.name];
          if (!event) throw new ToolError('EVENT_NOT_CONFIGURED', a.event.name);
          const mode = a.event.mode ?? event.Mode;
          const period = a.event.delay ?? event.Delay;
          if (mode === 'timeSynchron' && !(typeof period === 'number' && period > 0))
            throw new ToolError('INVALID_ARGUMENT', 'A timeSynchron event requires a positive delay in seconds.');
          const requested: string[] = [];
          for (const [key, nativeKey] of [['enabled', 'enabled'], ['delay', 'Delay'], ['phase', 'Phase'], ['priority', 'Prio'], ['mode', 'Mode']] as const) if (a.event[key] !== undefined) requested.push(nativeKey, String(a.event[key]));
          if (!requested.length) throw new ToolError('INVALID_ARGUMENT', 'At least one event property is required.');
          if (a.action === 'validate') return this.envelope(s, { valid: true, before: event, requested: a.event, revision });
          const after = await this.native(s, 'event', [r.result.configurationStamp, a.event.name, ...requested]);
          const actual = after.result.events?.EventSimChannels?.[a.event.name];
          const keys = { enabled: 'enabled', delay: 'Delay', phase: 'Phase', priority: 'Prio', mode: 'Mode' };
          if (!actual || Object.entries(keys).some(([key, nativeKey]) => a.event[key] !== undefined && actual[nativeKey] !== a.event[key]))
            throw new ToolError('CONFIG_READBACK_MISMATCH', 'Event may be partially applied. Inspect readback.', false, { before: event, requested: a.event, actual });
          return this.envelope(s, { before: event, actual, revision: hash([s.id, s.epoch, after.result.configurationStamp]) }, after.nativeMs);
        }
        const old = configuration.stimuli.find((c: any) => c.channel === a.stimulus.channel);
        if (!old) throw new ToolError('CHANNEL_NOT_FOUND', 'First release modifies existing numeric stimulus channels only.');
        if (typeof old.offset !== 'number' || typeof old.amplitude !== 'number') throw new ToolError('NUMERIC_STIMULUS_ONLY', 'Boolean and enumeration channels are not published.');
        if (a.action === 'validate') return this.envelope(s, { valid: true, before: old, requested: a.stimulus, revision });
        const v = a.stimulus;
        const after = await this.native(s, 'stimulus', [v.channel, v.mode, String(v.offset), String(v.amplitude), String(v.frequencyHz), String(v.phase), r.result.configurationStamp]);
        const actual = after.result.stimuli.find((c: any) => c.channel === v.channel);
        if (!actual || ['mode', 'offset', 'amplitude', 'frequencyHz', 'phase'].some(k => actual[k] !== v[k])) throw new ToolError('CONFIG_READBACK_MISMATCH', 'Stimulus may be partially applied. Inspect readback.', false, { before: old, requested: v, actual });
        return this.envelope(s, { before: old, actual, revision: hash([s.id, s.epoch, after.result.configurationStamp]) }, after.nativeMs);
      }
      default: throw new ToolError('UNKNOWN_TOOL', name);
    }
  }
  private async persist(directory: string, name: string, value: unknown) {
    const target = join(directory, name); const body = JSON.stringify(value, null, 2);
    const operation = (this.fileQueues.get(target) ?? Promise.resolve()).then(async () => {
      await mkdir(directory, { recursive: true });
      const temporary = target + '.' + randomUUID() + '.tmp';
      const f = await open(temporary, 'wx');
      try { await f.writeFile(body); await f.sync(); } finally { await f.close(); }
      await rename(temporary, target);
    });
    this.fileQueues.set(target, operation.catch(() => {}));
    await operation;
  }
  private async saveJob(job: Job) {
    await this.persist(join(this.artifactRoot, 'jobs'), job.jobId + '.json', job);
  }
  private async submit(s: Session, a: any) {
    const spec = a.caseSpec; const fingerprint = hash([s.snapshot.database, spec]);
    const jobId = hash([s.snapshot.database, a.requestId]).slice(0, 40);
    const previous = this.jobs.get(jobId) ?? await this.loadJob(jobId);
    if (previous) {
      if (previous.fingerprint !== fingerprint) throw new ToolError('REQUEST_ID_REUSED', 'requestId already identifies a different case.');
      return { jobId, runId: previous.runId, status: previous.status, reused: true };
    }
    spec.signalRefs.forEach((r: string) => this.signal(s, r));
    if (spec.writes) this.validateWrites(s, spec.writes);
    for (const check of spec.assertions ?? []) {
      if (!spec.signalRefs.includes(check.signalRef) || check.min > check.max) throw new ToolError('INVALID_ASSERTION', 'Assertions require selected signals and min <= max.');
    }
    const job: Job = { jobId, runId: jobId, sessionId: s.id, requestId: a.requestId, fingerprint, status: 'queued', stage: 'queued', completedChunks: 0, requestedChunks: spec.chunks, cancelRequested: false, submittedAt: stamp() };
    await this.saveJob(job); this.jobs.set(jobId, job); s.busyJob = jobId;
    void this.enqueue(s, () => this.runCase(s, job, spec));
    return { jobId, runId: jobId, status: 'queued' };
  }
  private async runCase(s: Session, job: Job, spec: any) {
    const samples: any[] = [];
    const run: any = { runId: job.runId, source: 'quiescent_snapshot_series', completeWaveform: false, sampling: 'after_each_bounded_step', requested: spec, samples, startedAt: stamp() };
    try {
      job.status = 'running'; job.stage = 'preflight'; await this.saveJob(job);
      await this.saveRun(run);
      const config = (await this.native(s, 'configuration')).result;
      if (config.recording?.available && config.recording.logging !== false)
        throw new ToolError('LOGGER_CASE_UNSUPPORTED', 'Stop the existing Data Logger explicitly before running a snapshot case.');
      run.recordingBefore = config.recording;
      if (!Object.entries(config.events.EventSimChannels).some(([name, v]: [string, any]) => name !== 'generateData' && v.enabled)) throw new ToolError('NO_ACTIVE_MODEL_EVENTS', 'No enabled model events.');
      if (!['stopped', 'paused'].includes(config.state ?? '')) throw new ToolError('CASE_REQUIRES_QUIESCENT', 'Pause or stop before running a case.');
      if (spec.initialization === 'preserve' && config.state !== 'paused') throw new ToolError('PRESERVE_REQUIRES_PAUSED', 'First step from stopped can auto-initialize.');
      if (job.cancelRequested) { job.status = 'cancelled'; return; }
      if (spec.initialization === 'reset') {
        job.stage = 'initialization'; await this.saveJob(job);
        if (config.state !== 'stopped') await this.native(s, 'stop');
        await this.native(s, 'parameters', ['reset_variables']);
        await this.native(s, 'parameters', ['reset_parameters']);
        await this.step(s, 'events', 1);
      }
      if (spec.writes?.length) { job.stage = 'calibration'; await this.saveJob(job); await this.write(s, spec.writes); }
      run.startSimTimeSeconds = s.snapshot.simTimeSeconds;
      for (let i = 0; i < spec.chunks && !job.cancelRequested; i++) {
        job.stage = 'step'; await this.saveJob(job);
        const step = await this.step(s, 'duration', spec.stepSeconds);
        if (step.advancedSeconds <= 0) throw new ToolError('NO_SIMULATION_PROGRESS', 'A timed segment did not advance simulation time.', false, step);
        job.stage = 'collect';
        const data = await this.read(s, spec.signalRefs);
        const sample = { timeSeconds: s.snapshot.simTimeSeconds, values: data.values, advancedSeconds: step.advancedSeconds };
        samples.push(sample);
        job.completedChunks++;
        const log = await open(join(this.artifactRoot, 'runs', job.runId + '.samples.jsonl'), 'a');
        try { await log.write(JSON.stringify(sample) + '\n'); await log.sync(); } finally { await log.close(); }
        await this.saveJob(job);
      }
      run.metrics = spec.signalRefs.map((ref: string) => {
        const xs = samples.map(p => p.values.find((v: any) => v.signalRef === ref)?.numericValue).filter((x: any) => typeof x === 'number');
        return { signalRef: ref, count: xs.length, min: xs.length ? Math.min(...xs) : null, max: xs.length ? Math.max(...xs) : null, final: xs.at(-1) ?? null };
      });
      run.assertions = (spec.assertions ?? []).map((check: any) => {
        const metric = run.metrics.find((m: any) => m.signalRef === check.signalRef);
        return { ...check, actual: metric?.final ?? null, passed: typeof metric?.final === 'number' && metric.final >= check.min && metric.final <= check.max, scope: 'final_snapshot' };
      });
      job.status = job.cancelRequested ? 'cancelled' : run.assertions.every((c: any) => c.passed) ? 'completed' : 'assertion_failed';
      job.result = { samples: samples.length, assertions: run.assertions, runId: job.runId };
    } catch (e) {
      const error = e instanceof ToolError ? e : new ToolError('CASE_FAILED', String(e));
      job.status = error.outcomeUnknown ? 'outcome_unknown' : 'failed';
      job.error = { code: error.code, message: error.message, outcomeUnknown: error.outcomeUnknown, evidence: error.evidence };
    } finally {
      job.stage = 'finished'; run.status = job.status; run.finishedAt = stamp(); run.error = job.error;
      try { await this.saveRun(run); await this.saveJob(job); }
      catch (e) { job.status = 'outcome_unknown'; job.error = { code: 'ARTIFACT_WRITE_FAILED', message: String(e), outcomeUnknown: true }; }
      s.busyJob = undefined;
    }
  }
  private async saveRun(run: any) {
    await this.persist(join(this.artifactRoot, 'runs'), run.runId + '.json', run);
  }
  private async loadJob(jobId: string): Promise<Job | undefined> {
    if (!/^[a-f0-9]{40}$/.test(jobId)) return undefined;
    try {
      const job = JSON.parse(await readFile(join(this.artifactRoot, 'jobs', jobId + '.json'), 'utf8')) as Job;
      if (['queued', 'running'].includes(job.status)) { job.status = 'outcome_unknown'; job.stage = 'recovered_without_replay'; job.error = { code: 'BROKER_RESTARTED', outcomeUnknown: true }; }
      this.jobs.set(jobId, job); return job;
    } catch (e: any) { if (e.code === 'ENOENT') return undefined; throw e; }
  }
  private async job(a: any) {
    const job = this.jobs.get(a.jobId) ?? await this.loadJob(a.jobId);
    if (!job) throw new ToolError('JOB_NOT_FOUND', a.jobId);
    if (a.action === 'cancel' && ['queued', 'running'].includes(job.status)) { job.cancelRequested = true; await this.saveJob(job); }
    const finishing = this.sessions.get(job.sessionId)?.busyJob === job.jobId && !['queued', 'running'].includes(job.status);
    return { ...job, status: finishing ? 'running' : job.status, stage: finishing ? 'persisting_results' : job.stage, cancellation: 'between_completed_steps_only' };
  }
  private async results(a: any) {
    if (!/^[a-f0-9]{40}$/.test(a.runId)) throw new ToolError('RUN_NOT_FOUND', a.runId);
    const job = this.jobs.get(a.runId) ?? await this.loadJob(a.runId);
    if (job && (['queued', 'running'].includes(job.status) || this.sessions.get(job.sessionId)?.busyJob === job.jobId))
      throw new ToolError('RUN_NOT_FINISHED', 'Use exp_job until the result artifacts are finished.');
    const file = join(this.artifactRoot, 'runs', a.runId + '.json');
    const run = JSON.parse(await readFile(file, 'utf8'));
    const maxPoints = a.maxPoints ?? 200; const total = run.samples.length;
    const samples = total <= maxPoints ? run.samples : maxPoints === 1 ? run.samples.slice(-1) : Array.from({ length: maxPoints }, (_, i) => run.samples[Math.round(i * (total - 1) / (maxPoints - 1))]);
    return { ...run, status: job?.status ?? run.status, samples, totalSamples: total, returnedSamples: samples.length, rawArtifact: file, sampleJournal: join(this.artifactRoot, 'runs', a.runId + '.samples.jsonl'), downsampled: total > maxPoints };
  }
  async close() {
    for (const job of this.jobs.values()) if (['queued', 'running'].includes(job.status)) job.cancelRequested = true;
    await Promise.all([...this.sessions.values()].map(async s => { await s.tail; await s.client.close(); }));
  }
}
