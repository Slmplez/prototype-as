import test from 'node:test';
import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';
import { join } from 'node:path';
import { ROOT } from '../src/bridge.js';
import { AgentSession } from '../src/agent-session.js';
import { projectTaskResponse } from '../src/task-tools.js';
import { renderAgentResult } from '../src/agent-result-view.js';
import { graphResponse } from './diagram-generality-support.js';
import type { DiagramBody } from '../src/types.js';
const graph: DiagramBody = JSON.parse(readFileSync(join(ROOT, 'test/fixtures/aeb-ax-tar-lim.graph.json'), 'utf8'));
const call = (s: AgentSession, tool: string, args: any): Promise<any> => s.execute({ tool, arguments: args });
process.env.ASCET_PI_TOOL_PROFILE = 'task';
for (const depth of [0, 1, 2]) for (const direction of ['incoming', 'outgoing', 'both'])
test(`local repeat recipe preserves depth ${depth} / ${direction} and the original object's interface`, async () => {
  const s = new AgentSession({ request: async () => graphResponse([graph], rows => rows.unshift(['#DIAGRAM_SCOPE', '1'])) }, { maxPageBytes: 32768, maxModelBytes: 32768 });
  try {
    const found = await call(s, 'ascet_find', { target: 'objects', name: 'AxCtrlLimGradAxMin' });
    assert.equal(found.results.length, 1); const target = found.results[0];
    const result = await call(s, 'ascet_read_bde', { refs: [target.ref], depth, direction });
    assert.equal(result.status, 'ok');
    const recipe = result.object.next_call;
    assert.deepEqual(recipe.arguments, { refs: [target.ref], depth, direction });
    assert.deepEqual(result.next_call, recipe);
    assert.deepEqual(projectTaskResponse(result), result, 'repeated projection cannot revert the recipe to defaults');
    const repeated = await call(s, recipe.tool, recipe.arguments);
    assert.equal(repeated.depth, depth); assert.equal(repeated.direction, direction);
    assert.deepEqual(repeated.pins, result.pins); assert.deepEqual(repeated.connections, result.connections);
    const pins = graph.pins.filter(p => p.node_id === target.node_id && p.scope === (target.hierarchy ?? 'root'));
    assert.equal(result.object.pin_count, pins.length);
    const model = JSON.parse(renderAgentResult(result, 'task'));
    assert.equal(model.requested_object.ref, target.ref); assert.equal(model.requested_object.pin_count, pins.length);
    assert.deepEqual(model.requested_object.pins, result.pins.filter((p: any) => p.object_ref === target.ref));
    assert.deepEqual(model.read_scope, { refs: [target.ref], depth, direction });
    const keys = Object.keys(model);
    assert.ok(keys.indexOf('read_scope') < keys.indexOf('requested_object'));
    assert.ok(keys.indexOf('requested_object') < keys.indexOf('connections'));
    assert.ok(keys.indexOf('connections') < keys.indexOf('neighbors'));
    assert.equal(model.requested_object.next_call, undefined);
    assert.equal(model.next_call, undefined);
    const objects = [model.requested_object, ...model.neighbors];
    const edges = [...model.connections, ...model.boundaries], originals = [...result.connections, ...result.boundaries];
    assert.equal(edges.length, originals.length);
    edges.forEach((edge: any, i: number) => Object.entries(edge).forEach(([side, endpoint]: [string, any]) => {
      const owner = objects.find((object: any) => object.ref === endpoint.ref);
      assert.ok(owner, 'every compact endpoint resolves on this page');
      for (const [key, fact] of Object.entries(originals[i][side])) if (key !== 'next_call')
        assert.deepEqual(endpoint[key] ?? owner[key], fact, `original ${side}.${key} remains available`);
      assert.equal(endpoint.pin_id, originals[i][side].pin_id);
      assert.equal(endpoint.name, originals[i][side].name, 'wire endpoints remain readable without resolving names by ref');
    }));
    assert.ok(Buffer.byteLength(renderAgentResult(result, 'task')) <= 32768);
  } finally { s.close(); }
});

test('local scope repair does not change the neighbor or Diagram recipes', () => {
  const source = { ref: 's1:n1', kind: 'element', name: 'Source' };
  const neighbor = { ref: 's1:n2', kind: 'element', name: 'Destination' };
  const value = { scope: 'local', ref: source.ref, kind: 'diagram', depth: 0, direction: 'incoming',
    object: source, nodes: [source, neighbor], connections: [{ from: source, to: neighbor }] };
  const result = projectTaskResponse(value);
  assert.deepEqual(result.connections[0].from.next_call.arguments, { refs: [source.ref], depth: 0, direction: 'incoming' });
  assert.deepEqual(result.connections[0].to.next_call.arguments, { refs: [neighbor.ref] });
  assert.equal(source.hasOwnProperty('next_call'), false);
  const diagram = projectTaskResponse({ ref: 's1:d1', kind: 'diagram' });
  assert.deepEqual(diagram.next_call.arguments, { refs: ['s1:d1'] });
});
