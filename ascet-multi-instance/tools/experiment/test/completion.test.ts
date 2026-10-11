import test from 'node:test';
import assert from 'node:assert/strict';
import { mkdtemp, writeFile, readFile } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
import { setTimeout as delay } from 'node:timers/promises';
import { Broker } from '../src/broker.js';
import { parseDcm, auditDcm } from '../src/dcm.js';
import { ToolError, type NativeClient, type Snapshot } from '../src/bridge.js';

const dcm = (body: string) => Buffer.from('KONSERVIERUNG_FORMAT 2.0\n' + body, 'latin1');
const scalar = (name: string, n: number) => `FESTWERT ${name}\n WERT ${n}\nEND\n`;
test('DCM audit accounts for all entries without inferring a write from an unchanged value', () => {
  const input = parseDcm(dcm(scalar('Changed', 3) + scalar('Same', 2) + scalar('Ignored', 4) + scalar('Unknown', 5)));
  const before = parseDcm(dcm(scalar('Changed', 1) + scalar('Same', 2) + scalar('Ignored', 1)));
  const after = parseDcm(dcm(scalar('Changed', 3) + scalar('Same', 2) + scalar('Ignored', 1)));
  const r = auditDcm(input, before, after);
  assert.deepEqual(r.counts, { matched: 2, mismatch: 1, not_exported: 1, unsupported: 0 });
  assert.equal(r.entries[0].changedFromBaseline, true); assert.equal(r.entries[1].changedFromBaseline, false);
  assert.equal(r.allMatched, false); assert.equal(r.nativeApplicationProven, false); assert.equal(r.allEntriesAccounted, true);
});
test('DCM parser audits numeric formatting, booleans, arrays and both map axes', () => {
  const body = 'FESTWERT Bool\n TEXT "true"\nEND\nFESTWERTEBLOCK Array 2\n WERT 1 2\nEND\nKENNFELD Map 2 2\n ST/X 0 1\n ST/Y 0\n WERT 3 4\n ST/Y 1\n WERT 5 6\nEND\n';
  const input = parseDcm(dcm(body)), after = parseDcm(dcm(body.replace('WERT 1 2', 'WERT 1.0 2D0')));
  assert.equal(auditDcm(input, input, after).allMatched, true);
  const changed = parseDcm(dcm(body.replace('ST/Y 1', 'ST/Y 1.5')));
  assert.equal(auditDcm(input, input, changed).entries[2].status, 'mismatch');
});
test('DCM parser rejects duplicates, missing END, bad dimensions and nonfinite data before mutation', () => {
  for (const body of [scalar('P', 1) + scalar('P', 2), 'FESTWERT P\n WERT 1\n', 'KENNLINIE C 2\n ST/X 0 1\n WERT 3\nEND', scalar('P', NaN), 'FESTWERT P\n TEXT "broken\nEND', 'WERT 2\n']) assert.throws(() => parseDcm(dcm(body)), /Line/);
});

function waveformFixture() {
  const b = Buffer.alloc(846 + 48);
  const block = (p: number, tag: string, n: number) => { b.write(tag, p); b.writeUInt16LE(n, p + 2); };
  b.write('MDF     3.30    TEST'); b.writeUInt16LE(330, 28);
  block(64, 'HD', 164); b.writeUInt32LE(228, 68);
  block(228, 'DG', 24); b.writeUInt32LE(252, 236); b.writeUInt32LE(846, 244); b.writeUInt16LE(1, 248);
  block(252, 'CG', 26); b.writeUInt32LE(278, 260); b.writeUInt16LE(2, 270); b.writeUInt16LE(16, 272); b.writeUInt32LE(3, 274);
  block(278, 'CN', 222); b.writeUInt32LE(500, 282); b.writeUInt32LE(722, 286); b.writeUInt16LE(1, 302); b.write('TIME', 304); b.writeUInt16LE(64, 466); b.writeUInt16LE(3, 468);
  block(500, 'CN', 222); b.writeUInt32LE(784, 508); b.write('P', 526); b.writeUInt16LE(64, 686); b.writeUInt16LE(64, 688); b.writeUInt16LE(3, 690);
  for (const p of [722, 784]) { block(p, 'CC', 62); b.writeUInt16LE(2, p + 44); b.writeDoubleLE(1, p + 54); } b.write('s', 744);
  for (let i = 0; i < 3; i++) { b.writeDoubleLE(i * .01, 846 + 16 * i); b.writeDoubleLE(i, 854 + 16 * i); }
  return b;
}
class Fixture implements NativeClient {
  state: Snapshot = { token: 'fixture', database: 'fixture', pid: 1, open: true, state: 'paused', simTimeSeconds: 0, nativeError: { code: 0, message: '' }, recording: { available: true, logging: false, file: join(tmpdir(), 'old-capture.dat'), channelCount: 0 } };
  ready = Promise.resolve({ pid: 1, started: 'fixture', database: 'fixture', result: structuredClone(this.state) });
  operations: { op: string; args: string[] }[] = []; channels: string[] = []; stepDelay = 0; failStep = false; failRead = false; p = 1;
  async request(op: string, args: string[] = []) {
    this.operations.push({ op, args });
    const extra: any = {};
    if (op === 'signals') { extra.signals = [{ label: 'P', scalar: true, calibratable: true, readable: true }]; extra.total = 1; }
    if (op === 'configuration') { extra.events = { EventSimChannels: { compute: { enabled: true } } }; extra.stimuli = []; }
    if (op === 'step') { await delay(this.stepDelay); if (this.failStep) throw new ToolError('NATIVE_TIMEOUT', 'Uncertain step', true); this.state.simTimeSeconds! += Number(args[1]); }
    if (op === 'read') { if (this.failRead) throw new ToolError('PRECONDITION_FAILED', 'read guard'); extra.values = [{ label: 'P', value: String(this.p), code: 0 }]; }
    if (op === 'record') {
      if (args[0] === 'configure') { extra.previousChannels = this.channels; this.channels = args.slice(1); extra.channelsConfigured = true; this.state.recording!.channelCount = this.channels.length; }
      if (args[0] === 'set_output') this.state.recording!.file = args[1];
      if (args[0] === 'start') this.state.recording!.logging = true;
      if (args[0] === 'stop') { await writeFile(this.state.recording!.file!, waveformFixture()); this.state.recording!.logging = false; this.state.recording!.file += '.next'; }
    }
    if (op === 'parameters') {
      if (args[0] === 'save') await writeFile(args[1], dcm(scalar('P', this.p)));
      if (args[0] === 'load') { const entries = parseDcm(await readFile(args[1])).entries; const entry = entries.find(e => e.name === 'P'); if (entry) this.p = Number(entry.fields.WERT[0]); }
    }
    return { result: { ...structuredClone(this.state), ...extra }, nativeMs: 1 };
  }
  async close() {}
}
async function fixture() {
  const root = await mkdtemp(join(tmpdir(), 'experiment-completion-')), client = new Fixture();
  const broker = new Broker({ artifactRoot: root, factory: () => client });
  const sessionId = (await broker.call('exp_attach', { instanceRef: 'fixture.json' })).sessionId;
  const signalRef = (await broker.call('exp_signals', { sessionId })).signals[0].signalRef;
  const submit = () => broker.call('exp_run_case', { sessionId, requestId: 'case', caseSpec: { initialization: 'preserve', signalRefs: [signalRef], stages: [{ name: 'one', durationSeconds: .03, sampleSeconds: .01 }], recording: { path: join(root, 'case.dat'), maxPoints: 1 } } });
  const finish = async (jobId: string) => { let job; do { await delay(5); job = await broker.call('exp_job', { jobId, action: 'get' }); } while (['queued', 'running'].includes(job.status)); return job; };
  return { root, client, broker, sessionId, signalRef, submit, finish };
}
test('case recording stops actual file before logger increments and restores an empty channel list', async () => {
  const f = await fixture(), job = await f.finish((await f.submit()).jobId);
  assert.equal(job.status, 'completed', JSON.stringify(job));
  const r = await f.broker.call('exp_results', { runId: job.runId });
  assert.equal(r.nativeRecording.artifact.path, join(f.root, 'case.dat'));
  assert.equal(r.nativeRecording.waveform.channels[1].metrics.count, 3);
  assert.equal(r.nativeRecording.waveform.channels[1].values.length, 1);
  assert.equal(r.nativeRecording.restoration.restored, true); assert.deepEqual(f.client.channels, []);
  assert.equal(f.client.state.recording!.logging, false); assert.equal(f.client.state.recording!.file, join(tmpdir(), 'old-capture.dat'));
  assert.equal(r.completeWaveform, false); await f.broker.close();
});
test('cooperative cancellation still finalizes owned recorder and retains partial waveform', async () => {
  const f = await fixture(); f.client.stepDelay = 30;
  const submitted = await f.submit();
  while (!f.client.operations.some(o => o.op === 'step')) await delay(5);
  await f.broker.call('exp_job', { jobId: submitted.jobId, action: 'cancel' });
  const job = await f.finish(submitted.jobId); assert.equal(job.status, 'cancelled');
  const r = await f.broker.call('exp_results', { runId: job.runId });
  assert.equal(r.nativeRecording.status, 'parsed'); assert.equal(r.nativeRecording.restoration.restored, true);
  assert.equal(r.nativeRecording.completeSimulation, false); await f.broker.close();
});
test('known case failure finalizes recording; uncertain dispatch issues no cleanup native calls', async () => {
  for (const uncertain of [false, true]) {
    const f = await fixture(); if (uncertain) f.client.failStep = true; else f.client.failRead = true;
    const job = await f.finish((await f.submit()).jobId);
    assert.equal(job.status, uncertain ? 'outcome_unknown' : 'failed');
    const stops = f.client.operations.filter(o => o.op === 'record' && o.args[0] === 'stop'); assert.equal(stops.length, uncertain ? 0 : 1);
    const r = await f.broker.call('exp_results', { runId: job.runId });
    assert.equal(r.nativeRecording.status, uncertain ? 'outcome_unknown' : 'parsed'); await f.broker.close();
  }
});
test('case recording refuses existing output before submitting native mutations', async () => {
  const f = await fixture(); await writeFile(join(f.root, 'case.dat'), 'keep');
  const result = await f.submit(); assert.equal(result.error.code, 'FILE_EXISTS');
  assert.equal(f.client.operations.some(o => o.op === 'record'), false); assert.equal(await readFile(join(f.root, 'case.dat'), 'utf8'), 'keep'); await f.broker.close();
});
test('audited native import compares all entries, preserves exact input and reports strict failures after mutation', async () => {
  const f = await fixture(), path = join(f.root, 'external.dcm'); await writeFile(path, dcm(scalar('P', 3) + scalar('Unknown', 5)));
  const result = await f.broker.call('exp_parameters', { sessionId: f.sessionId, action: 'load', path, audit: true, strictAudit: true });
  assert.equal(result.error.code, 'DCM_AUDIT_MISMATCH'); assert.equal(f.client.p, 3);
  const audit = result.error.evidence.audit;
  assert.deepEqual(audit.counts, { matched: 1, mismatch: 0, not_exported: 1, unsupported: 0 });
  assert.equal(audit.entries[0].changedFromBaseline, true); assert.equal(audit.pinnedInput.sha256, audit.source.sha256);
  assert.equal(JSON.parse(await readFile(audit.rawArtifact, 'utf8')).entries.length, 2);
  assert.deepEqual(f.client.operations.filter(o => o.op === 'parameters').map(o => o.args[0]), ['save', 'load', 'save']); await f.broker.close();
});
test('malformed audit input is rejected before native import or baseline export', async () => {
  const f = await fixture(), path = join(f.root, 'bad.dcm'); await writeFile(path, dcm(scalar('P', 1) + scalar('P', 3)));
  const result = await f.broker.call('exp_parameters', { sessionId: f.sessionId, action: 'load', path, audit: true });
  assert.equal(result.error.code, 'INVALID_DCM'); assert.equal(f.client.operations.some(o => o.op === 'parameters'), false); await f.broker.close();
});
test('uncertain DCM import is never replayed or followed by native re-export', async () => {
  const f = await fixture(), path = join(f.root, 'uncertain.dcm'); await writeFile(path, dcm(scalar('P', 3)));
  const original = f.client.request.bind(f.client);
  f.client.request = async (op, args = []) => {
    if (op === 'parameters' && args[0] === 'load') { f.client.operations.push({ op, args }); throw new ToolError('NATIVE_TIMEOUT', 'Import reply lost', true); }
    return original(op, args);
  };
  const result = await f.broker.call('exp_parameters', { sessionId: f.sessionId, action: 'load', path, audit: true });
  assert.equal(result.error.outcomeUnknown, true);
  assert.deepEqual(f.client.operations.filter(o => o.op === 'parameters').map(o => o.args[0]), ['save', 'load']);
  assert.equal((await f.broker.call('exp_inspect', { sessionId: f.sessionId })).error.code, 'SESSION_INVALID'); await f.broker.close();
});
test('known native import error retains per-entry post-import audit evidence', async () => {
  const f = await fixture(), path = join(f.root, 'partial.dcm'); await writeFile(path, dcm(scalar('P', 3)));
  const original = f.client.request.bind(f.client);
  f.client.request = async (op, args = []) => {
    const reply = await original(op, args);
    if (op === 'parameters' && args[0] === 'load') reply.result.nativeError = { code: 42, message: 'Partial import reported' };
    return reply;
  };
  const result = await f.broker.call('exp_parameters', { sessionId: f.sessionId, action: 'load', path, audit: true });
  assert.equal(result.error.code, 'ASCET_OPERATION_FAILED'); assert.equal(result.error.evidence.audit.counts.matched, 1);
  assert.equal(result.error.evidence.audit.nativeImportError.evidence.nativeError.code, 42); assert.equal(f.client.p, 3); await f.broker.close();
});
test('missing post-import export is reported as incomplete audit with preserved baseline', async () => {
  const f = await fixture(), path = join(f.root, 'missing.dcm'); await writeFile(path, dcm(scalar('P', 3)));
  const original = f.client.request.bind(f.client); let exports = 0;
  f.client.request = async (op, args = []) => {
    if (op === 'parameters' && args[0] === 'save' && ++exports === 2) throw new ToolError('PRECONDITION_FAILED', 'Export failed');
    return original(op, args);
  };
  const result = await f.broker.call('exp_parameters', { sessionId: f.sessionId, action: 'load', path, audit: true });
  assert.equal(result.error.code, 'DCM_AUDIT_INCOMPLETE'); assert.equal(f.client.p, 3);
  assert.ok(result.error.evidence.baseline.sha256); await f.broker.close();
});
