import assert from 'node:assert/strict';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { Broker } from '../src/broker.js';
import { ROOT } from '../src/bridge.js';
const manifest = process.env.ASCET_EXPERIMENT_MANIFEST, componentPath = process.env.ASCET_STRUCTURED_FIXTURE;
assert.ok(manifest && componentPath, 'Set isolated manifest and ASCET_STRUCTURED_FIXTURE. Fixture method must return ArrayParam[0] + MatrixParam[0][0].');
const root = join(ROOT, 'artifacts', 'structured-' + new Date().toISOString().replaceAll(/[:.]/g, '-'));
const broker = new Broker({ artifactRoot: root }); const report: any = { calls: [], checks: [] };
let sessionId = '';
async function call(name: string, args: any = {}, success = true) { const r = await broker.call(name, name === 'exp_attach' ? args : { sessionId, ...args }); report.calls.push({ name, args, ...r }); if (success) assert.equal(r.ok, true, JSON.stringify(r)); return r; }
try {
  const a = await call('exp_attach', { instanceRef: manifest }); sessionId = a.sessionId;
  if (a.observedState.open) await call('exp_control', { action: 'close', discardUnsaved: true });
  await call('exp_open', { componentPath, configuration: process.env.ASCET_STRUCTURED_CONFIGURATION ?? 'Default' });
  const discovered = await call('exp_signals'); report.signals = discovered.signals;
  const array = discovered.signals.find((s: any) => s.label.endsWith('\\ArrayParam'));
  const matrix = discovered.signals.find((s: any) => s.label.endsWith('\\MatrixParam'));
  const output = discovered.signals.find((s: any) => s.label.startsWith('return/')); assert.ok(array && matrix && output);
  const config = await call('exp_configure', { action: 'read' });
  await call('exp_configure', { action: 'apply', section: 'event', expectedRevision: config.revision, event: { name: 'compute', enabled: true, mode: 'timeSynchron', delay: .005 } });
  assert.equal(array.dataKind, 'array'); assert.equal(matrix.dataKind, 'matrix');
  await call('exp_step', { mode: 'events', value: 1 });
  const ar = (await call('exp_read_data', { signalRef: array.signalRef })).data;
  const mat = (await call('exp_read_data', { signalRef: matrix.signalRef })).data;
  report.baseline = { ar, mat };
  assert.deepEqual(ar.shape, [3]); assert.deepEqual(mat.shape, [3, 2]);
  const rejected = await call('exp_write_data', { signalRef: matrix.signalRef, shape: [3, 2], cells: [{ part: 'values', index: [0, 0], value: 100 }, { part: 'values', index: [3, 0], value: 1 }] }, false);
  assert.equal(rejected.error.code, 'PRECONDITION_FAILED'); assert.deepEqual((await call('exp_read_data', { signalRef: matrix.signalRef })).data, mat);
  await call('exp_write_data', { signalRef: array.signalRef, shape: ar.shape, cells: [{ part: 'values', index: [0], value: 7.5 }, { part: 'values', index: [2], value: -2.5 }] });
  const m = await call('exp_write_data', { signalRef: matrix.signalRef, shape: mat.shape, cells: [{ part: 'values', index: [0, 0], value: 11.5 }, { part: 'values', index: [2, 1], value: -3.5 }] });
  assert.equal(m.data.values[2][1], -3.5);
  await call('exp_step', { mode: 'duration', value: .03 });
  const out = await call('exp_read', { signalRefs: [output.signalRef] }); assert.equal(out.values[0].numericValue, 19);
  report.checks.push('array/matrix dimensions and boundary cells, whole-batch index rejection, live algorithm output changed to 19');
  await call('exp_write_data', { signalRef: array.signalRef, shape: ar.shape, cells: [{ part: 'values', index: [0], value: ar.values[0] }, { part: 'values', index: [2], value: ar.values[2] }] });
  await call('exp_write_data', { signalRef: matrix.signalRef, shape: mat.shape, cells: [{ part: 'values', index: [0, 0], value: mat.values[0][0] }, { part: 'values', index: [2, 1], value: mat.values[2][1] }] });
  assert.deepEqual((await call('exp_read_data', { signalRef: array.signalRef })).data, ar);
  assert.deepEqual((await call('exp_read_data', { signalRef: matrix.signalRef })).data, mat);
  report.checks.push('both structured values restored'); report.passed = true;
} catch (e) { report.passed = false; report.error = String(e); process.exitCode = 1; }
finally {
  if (sessionId) { report.cleanup = await broker.call('exp_control', { sessionId, action: 'close', discardUnsaved: true }); }
  await broker.close(); await mkdir(root, { recursive: true }); await writeFile(join(root, 'report.json'), JSON.stringify(report, null, 2));
  console.log(JSON.stringify({ passed: report.passed, checks: report.checks, error: report.error, report: join(root, 'report.json') }));
}
