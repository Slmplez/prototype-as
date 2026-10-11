import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentSession } from '../src/agent-session.js';
import { encode, diagramRows, response, rows, stateRows } from './fixtures.js';
import type { AgentBatchReadResponse, AgentReadContent, AgentSearchResponse } from '../src/agent-types.js';

test('ASCET result fields distinguish Method, Process, State, Transition and Diagram without losing identities', async () => {
  const base = rows('foo method');
  const data = [base[0], base[1],
    ['process', 'oid1', 'folder/class', 'impl1', 'DefaultC', 'process1', 'tick', 'c', 'foo process', ''],
    ...['header', 'external_c', 'external_h'].map(kind => [kind, 'oid1', 'folder/class', '', 'DefaultC', '', '', 'c', 'foo ' + kind, '']),
    ...stateRows().slice(1, -1), ...diagramRows(), ['#STATS', '1', '1', '1', '9', '0', '0', '', '', '']];
  const session = new AgentSession({ request: async () => ({ ...response(), payload: encode(data) }) });
  try {
    const search = await session.execute({ query: ['foo', 'sm', 'AEBLockTime'] }) as AgentSearchResponse;
    const results = search.searches.flatMap(q => q.results);
    for (const result of results) {
      assert.equal(result.component_path, 'folder/class');
      for (const old of ['path', 'member', 'location', 'binding', 'graphical_location']) assert.equal(old in result, false);
    }
    const method = results.find(r => r.kind === 'method')!;
    assert.equal(method.method, 'calc'); assert.equal(method.process, undefined); assert.equal(method.diagram, undefined);
    const process = results.find(r => r.kind === 'process')!;
    assert.equal(process.process, 'tick'); assert.equal(process.method, undefined); assert.equal(process.implementation, 'impl1');
    const states = results.filter(r => r.kind === 'state_entry');
    assert.equal(states.length, 2);
    assert.ok(states.every(s => s.state === 'Main/Same/Same' && s.diagram === 'Main' && s.diagram_oid === 'spec1' && s.state_id === 7));
    assert.deepEqual(states.map(s => s.state_hierarchy_ids).sort(), [[4], [5]]);
    assert.notEqual(states[0].ref, states[1].ref);
    const transition = results.find(r => r.kind === 'transition_condition')!;
    assert.equal(transition.transition, 'Main/Same/Transition #7'); assert.equal(transition.transition_id, 7);
    assert.equal(transition.state, undefined); assert.equal(transition.diagram, 'Main');
    const graph = results.find(r => r.kind === 'diagram')!;
    assert.equal(graph.method, undefined); assert.deepEqual(graph.diagram_methods, [{ name: 'init', kind: 'method' }]); assert.equal(graph.diagram, 'Init'); assert.equal(graph.diagram_oid, 'init1');
    assert.equal(graph.representation, 'graphical_model');
    for (const kind of ['header', 'external_c', 'external_h']) {
      const result = results.find(r => r.kind === kind)!;
      assert.equal(result.method, undefined); assert.equal(result.process, undefined);
    }
    const batch = await session.execute({ operation: 'read', ref: results.map(r => r.ref), debug: true }) as AgentBatchReadResponse;
    assert.equal(batch.status, 'ok'); assert.equal(batch.requested_count, results.length); assert.equal(batch.returned_count, results.length);
    assert.equal('documents' in batch, false); assert.equal('requested_documents' in batch, false); assert.equal('returned_documents' in batch, false);
    for (let i = 0; i < batch.results.length; i++) {
      const read = batch.results[i] as AgentReadContent, result = results[i];
      assert.equal('status' in read, false); assert.equal('source_read_complete' in read, false); assert.equal('changed_since_search' in read, false); assert.equal(read.ref, result.ref); assert.equal('text' in read, false);
      assert.equal('document_id' in (read.debug as object), false); assert.ok('code_id' in (read.debug as object));
      if (read.kind === 'diagram') {
        assert.ok(read.diagram_text!.includes('AEBLockTime')); assert.equal(read.code, undefined);
      } else if (read.kind.endsWith('_binding')) {
        assert.deepEqual(read.method_binding, { method: 'sm', method_alias: 'abcd', component_oid: 'oid1' });
        assert.equal(read.code, undefined); assert.equal(read.diagram_text, undefined); assert.equal(read.method, undefined);
      } else {
        assert.equal(typeof read.code, 'string'); assert.equal(read.diagram_text, undefined); assert.equal(read.method_binding, undefined);
      }
    }
  } finally { session.close(); }
});
