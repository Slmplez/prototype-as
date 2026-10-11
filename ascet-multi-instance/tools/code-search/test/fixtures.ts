import type { NativeResponse, NativeRequest, Reader, SourceDocument } from '../src/types.js';
import { decodeResponse } from '../src/protocol.js';

export function encode(rows: string[][]): string {
  return rows.flatMap(row => row.map(value => [...value].map(c => c.codePointAt(0)! > 126 || '%|'.includes(c) ? `%${c.codePointAt(0)};` : c).join('') + '|')).join('');
}
export function rows(text = 'x = foo;\r\nfoo(foo);', error = false): string[][] {
  return [
    ['#COMPONENT', 'oid1', 'folder/class', '', '', '', '', 'SGClass', '', ''],
    ['method', 'oid1', 'folder/class', '', 'ASDL', 'abc', 'calc', 'esdl', text, ''],
    ...(error ? [['#ERROR', 'oid2', 'folder/failed', '', '', '', '', '', 'load', 'denied']] : []),
    ['#STATS', '2', '1', '1', '1', String([...text].length), '1', '', '', ''],
  ];
}
export function response(text?: string, error = false): NativeResponse {
  return { status: 'ok', database: 'db', ascet_pid: 1, observed_utc: 'now', payload: encode(rows(text, error)), timings: {} };
}
export const docs = (text: string): SourceDocument[] => decodeResponse(response(text)).documents;
export function diagramRows(): string[][] {
  const pad = (r: string[]) => [...r, ...Array(10 - r.length).fill('')];
  return [pad(['#BDE_ENABLED', '1']), ...[
    ['#BDE_DIAGRAM', 'Init'], ['#BDE_MEMBER', 'cdef', 'init', 'false'], ['#BDE_SCOPE', 'root', 'Init'],
    ['#BDE_NODE', 'root', '4', 'literal', '0.0'], ['#BDE_PIN', 'root', '4', '5', '', 'false', 'true'],
    ['#BDE_NODE', 'root', '6', 'element', 'AEBLockTime', 'aaaa', 'SGVariable'],
    ['#BDE_PIN', 'root', '6', '7', 'set.aValue', 'true', 'false'], ['#BDE_SEQUENCE', 'root', '7', '10', 'init'],
    ['#BDE_EDGE', 'root', '1', '5', '7', '0'], ['#BDE_END', '9'],
  ].map(r => pad([r[0], 'oid1', 'init1', ...r.slice(1)]))];
}
export class Fake implements Reader {
  calls = 0;
  requested?: NativeRequest;
  constructor(public text = 'foo FOO\n中文 foo2', public error = false) {}
  async request(native: NativeRequest): Promise<NativeResponse> { this.calls++; this.requested = native; return response(this.text, this.error); }
}
export function stateRows(): string[][] {
  return [rows()[0],
    ['#STATE_DIAGRAM', 'oid1', 'spec1', 'Main', '', '', '', '', '', ''],
    ['state_entry', 'oid1', 'folder/class', '', 'ASDL', 'spec1/s4/s7', 'Main/Same/Same', 'esdl', 'foo = 1;', ''],
    ['state_entry', 'oid1', 'folder/class', '', 'ASDL', 'spec1/s5/s7', 'Main/Same/Same', 'esdl', 'foo = 2;', ''],
    ['transition_condition', 'oid1', 'folder/class', '', 'ASDL', 'spec1/s4/t7', 'Main/Same/Transition #7', 'esdl', 'foo > 1', ''],
    ['transition_trigger_binding', 'oid1', 'folder/class', '', 'ASDL', 'spec1/s4/t7', 'Main/Same/Transition #7', 'method_reference', 'sm', ''],
    ['#BINDING_transition_trigger_binding', 'oid1', 'folder/class', '', 'ASDL', 'spec1/s4/t7', '', '', 'abcd', ''],
    ['#STATE_STATS', '1', '1', '4', '1', '1', '2', '', '', ''],
    ['#STATS', '1', '1', '0', '4', '25', '0', '', '', '']];
}

/** Storage values independently inspected in AEB_State_Machine/Init; OIDs shortened for tests. */
export function graphRows(): string[][] {
  const row = (tag: string, ...values: string[]) => [tag, 'oid1', 'init1', ...values];
  return [
    row('#GRAPH_NODE', 'root', '-1', 'SGCodeGODB', '', '', '', ''),
    row('#GRAPH_NODE', 'root', '4', 'SGLiteralGODB', '', '', '0.0', ''),
    row('#GRAPH_PORT', 'root', '4', '5', 'return', 'literal', 'return', ''),
    row('#GRAPH_NODE', 'root', '6', 'SGDataGODB', 'abcd01', 'AEBLockTime', '', 'SGVariable'),
    row('#GRAPH_PORT', 'root', '6', '8', 'return', 'get', 'return', 'true/false/false'),
    row('#GRAPH_PORT', 'root', '6', '7', 'selector', 'set', 'aValue', 'true/false/false'),
    row('#GRAPH_SEQUENCE', 'root', '6', '9', 'cdef', '10', 'set', 'nil/false'),
    row('#GRAPH_EDGE', 'root', '1', '5', '7', 'nil', 'nil', 'SGConnectionGODB'),
    row('#GRAPH_METHOD', 'cdef', 'init', 'false', '', '', '', ''),
    row('#GRAPH_SPEC', 'Init', '3', '3', '1', '1', '1', '1'),
  ];
}
