import test from 'node:test';
import assert from 'node:assert/strict';
import { evaluateAssertions, normalizeCase } from '../src/cases.js';
import { parseMdf, previewWaveform } from '../src/waveform.js';
import { validate } from '../src/contracts.js';

test('temporal assertions detect order, duration, window and cancelled-run failures', () => {
  const samples = [0, .01, .02, .03, .04, .05].map((timeSeconds, i) => ({ timeSeconds, values: [{ signalRef: 'x', value: String([11, 21, 21, 21, 11, 11][i]), numericValue: [11, 21, 21, 21, 11, 11][i] }] }));
  const checks = [
    { signalRef: 'x', kind: 'transition', states: [11, 21, 11] },
    { signalRef: 'x', kind: 'transition', states: [11, 31, 11] },
    { signalRef: 'x', kind: 'hold', condition: { equals: 21 }, durationSeconds: .02 },
    { signalRef: 'x', kind: 'hold', condition: { equals: 21 }, durationSeconds: .03 },
    { signalRef: 'x', kind: 'range', condition: { min: 11, max: 21 } },
    { signalRef: 'x', kind: 'eventually', condition: { equals: 21 }, fromSeconds: .04 },
    { signalRef: 'x', kind: 'eventually', condition: { equals: 21 }, toSeconds: .06 },
    { signalRef: 'x', min: 11, max: 11 }
  ];
  assert.deepEqual(evaluateAssertions(checks, samples, 0, true).map(c => c.passed), [true, false, true, false, true, false, false, true]);
  assert.ok(evaluateAssertions(checks, samples, 0, false).every(c => !c.passed));
  assert.ok(evaluateAssertions(checks, [], 0, true).every(c => !c.passed));
  const extraState = [11, 31, 21, 11].map((value, i) => ({ timeSeconds: i, values: [{ signalRef: 'x', value: String(value), numericValue: value }] }));
  assert.equal(evaluateAssertions([checks[0]], extraState, 0, true)[0].passed, false);
  assert.equal(evaluateAssertions([{ ...checks[0], allowIntermediate: true }], extraState, 0, true)[0].passed, true);
});
test('stage payload limits, shape/index schemas and typed conditions reject unsafe inputs', () => {
  assert.throws(() => normalizeCase({ stages: [{ durationSeconds: 10000, sampleSeconds: .001 }] }));
  const input = { sessionId: 's', requestId: 'r', caseSpec: { initialization: 'reset', signalRefs: ['x'], stages: [{ name: 'one', durationSeconds: .1, sampleSeconds: .01 }], assertions: [{ signalRef: 'x', kind: 'final', condition: { equals: 'AEB_On' } }] } };
  assert.doesNotThrow(() => validate('exp_run_case', input));
  assert.throws(() => validate('exp_run_case', { ...input, caseSpec: { ...input.caseSpec, chunks: 1 } }));
  assert.throws(() => validate('exp_write_data', { sessionId: 's', signalRef: 'x', shape: [3], cells: [{ part: 'values', index: [-1], value: 1 }] }));
  assert.throws(() => validate('exp_write_data', { sessionId: 's', signalRef: 'x', shape: [3], cells: [{ part: 'evaluate:', index: [1], value: 1 }] }));
});
// Independent MDF fixture: signed 12-bit packed signal, linear physical conversion,
// float64 time master, fixed record group. No SDK or private model data.
function mdfFixture() {
  const hd = 64, dg = 228, cg = 252, time = 278, value = 500, tc = 722, vc = 784, data = 846;
  const b = Buffer.alloc(data + 30);
  b.write('MDF     3.30    TEST'); b.writeUInt16LE(330, 28);
  const block = (p: number, name: string, size: number) => { b.write(name, p); b.writeUInt16LE(size, p + 2); };
  block(hd, 'HD', 164); b.writeUInt32LE(dg, hd + 4);
  block(dg, 'DG', 24); b.writeUInt32LE(cg, dg + 8); b.writeUInt32LE(data, dg + 16); b.writeUInt16LE(1, dg + 20);
  block(cg, 'CG', 26); b.writeUInt32LE(time, cg + 8); b.writeUInt16LE(2, cg + 18); b.writeUInt16LE(10, cg + 20); b.writeUInt32LE(3, cg + 22);
  block(time, 'CN', 222); b.writeUInt32LE(value, time + 4); b.writeUInt32LE(tc, time + 8); b.writeUInt16LE(1, time + 24); b.write('TIME', time + 26); b.writeUInt16LE(64, time + 188); b.writeUInt16LE(3, time + 190);
  block(value, 'CN', 222); b.writeUInt32LE(vc, value + 8); b.write('Packed', value + 26); b.writeUInt16LE(68, value + 186); b.writeUInt16LE(12, value + 188); b.writeUInt16LE(1, value + 190);
  block(tc, 'CC', 62); b.write('s', tc + 22); b.writeUInt16LE(2, tc + 44); b.writeDoubleLE(1, tc + 54);
  block(vc, 'CC', 62); b.write('V', vc + 22); b.writeUInt16LE(2, vc + 44); b.writeDoubleLE(10, vc + 46); b.writeDoubleLE(.5, vc + 54);
  for (let i = 0; i < 3; i++) { b.writeDoubleLE(i * .1, data + i * 10); b.writeUInt16LE(([0, 4, -4][i] & 4095) << 4, data + i * 10 + 8); }
  return b;
}
test('MDF parser decodes packed signed values, applies conversions and analyzes all records before reduction', () => {
  const parsed = parseMdf(mdfFixture()), c = parsed.channels[1];
  assert.deepEqual(c.values, [10, 12, 8]); assert.equal(c.metrics.min, 8); assert.equal(c.metrics.max, 12); assert.equal(c.metrics.mean, 10);
  assert.equal(c.metrics.integralTrapezoidal, 2.1); assert.equal(c.transitions!.length, 2); assert.equal(c.metrics.transitionCount, 2); assert.equal(c.transitionsTruncated, false);
  const preview = previewWaveform(parsed, 1).channels[1];
  assert.deepEqual(preview.values, [8]); assert.equal(preview.metrics.count, 3); assert.equal(preview.totalSamples, 3); assert.equal(preview.downsampled, true);
});
test('MDF parser rejects corrupt chains, truncated records and unsupported conversions', () => {
  const cycle = mdfFixture(); cycle.writeUInt32LE(228, 232); assert.throws(() => parseMdf(cycle), /Cyclic/);
  assert.throws(() => parseMdf(mdfFixture().subarray(0, -1)), /Truncated/);
  const unsupported = mdfFixture(); unsupported.writeUInt16LE(10, 784 + 42); assert.throws(() => parseMdf(unsupported), /Conversion type/);
  const nonmonotonic = mdfFixture(); nonmonotonic.writeDoubleLE(-1, 846 + 10); assert.throws(() => parseMdf(nonmonotonic), /Nonmonotonic/);
  const missing = mdfFixture(); missing.writeUInt16LE(0, 278 + 24); assert.throws(() => parseMdf(missing), /time master/);
});
