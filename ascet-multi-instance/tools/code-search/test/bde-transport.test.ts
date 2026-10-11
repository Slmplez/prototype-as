import test from 'node:test';
import assert from 'node:assert/strict';
import { decodeResponse } from '../src/protocol.js';
import { diagramRows, encode, rows } from './fixtures.js';

const pad = (row: string[]) => [...row, ...Array(10 - row.length).fill('')];
function compact(records = diagramRows().slice(1)): string[][] {
  return [pad(['#BDE_CONTEXT', records[0][1], records[0][2], '1']),
    ...records.map(row => [row[0], '', '', ...row.slice(3)])];
}
const decode = (records: string[][]) => decodeResponse({ payload: encode(records) });

test('compact BDE identities preserve graph fields, listings and source revisions', () => {
  const original = [...rows(), ...diagramRows()];
  const packed = [...rows(), diagramRows()[0], ...compact()];
  assert.deepEqual(decode(packed), decode(original));
  assert.ok(encode(packed).length < encode(original).length);
});

test('adjacent contexts preserve distinct Diagram and Component identities', () => {
  const first = diagramRows().slice(1);
  const second = first.map(row => row.map((value, index) => index === 2 ? 'init2' : value));
  const third = first.map(row => row.map((value, index) => index === 1 ? 'oid2' : value));
  const component = rows()[0].map((value, index) => index === 1 ? 'oid2' : value);
  const textRows = rows();
  textRows.find(row => row[0] === '#STATS')!.splice(1, 2, '2', '2');
  const header = [...textRows, component, diagramRows()[0]];
  assert.deepEqual(decode([...header, ...compact(first), ...compact(second), ...compact(third)]),
    decode([...header, ...first, ...second, ...third]));
});

test('legacy and compact BDE records may coexist without leaking context', () => {
  const legacy = diagramRows().slice(1).map(row => row.map((value, i) => i === 2 ? 'init2' : value));
  const header = [rows()[0], diagramRows()[0]];
  assert.deepEqual(decode([...header, ...compact(), ...legacy, ...rows().slice(1)]),
    decode([...header, ...diagramRows().slice(1), ...legacy, ...rows().slice(1)]));
});

test('compact transport preserves escaped identities and non-ASCII model values', () => {
  const records = diagramRows().slice(1).map(row => row.map((value, i) => i === 2 ? 'init|%123;\u4e2d\u6587' : value));
  records.find(row => row[0] === '#BDE_NODE' && row[4] === '6')![6] = '\u4e2d\u6587|%123;';
  const header = [...rows(), diagramRows()[0]];
  assert.deepEqual(decode([...header, ...compact(records)]), decode([...header, ...records]));
});

test('invalid contexts fail before an ambiguous graph can be exposed', () => {
  const packed = compact(), header = [...rows(), diagramRows()[0]];
  const invalid = [
    [pad(['#BDE_CONTEXT', '', 'init1', '1'])],
    [pad(['#BDE_CONTEXT', 'oid1', '', '1'])],
    [pad(['#BDE_CONTEXT', 'oid1', 'init1', '2'])],
    [pad(['#BDE_CONTEXT', 'oid1', 'init1', '1', 'extra'])],
    [packed[0], packed[0]],
    [packed[0], rows()[0]],
    [packed[0], diagramRows()[0]],
    [packed[0], diagramRows()[1]],
    packed.slice(0, -1),
  ];
  for (const records of invalid) assert.throws(() => decode([...header, ...records]), /BDE transport context/);
});
