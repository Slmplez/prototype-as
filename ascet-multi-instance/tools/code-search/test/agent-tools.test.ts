import test from 'node:test';
import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import { createRequire } from 'node:module';
import { join } from 'node:path';
import { agentToolRequest, AgentToolClient } from '../src/agent-tools.js';
import { AgentSession } from '../src/agent-session.js';
import { ROOT } from '../src/bridge.js';
import { response, rows, encode } from './fixtures.js';
import { generatedGraph, graphResponse } from './diagram-generality-support.js';
import { projectAgentSnapshot } from '../src/agent-projection.js';
import { decodeResponse } from '../src/protocol.js';
import type { AgentFindResponse, AgentCodeTarget, AgentSearchResponse, AgentReadResponse } from '../src/agent-types.js';

const Ajv = createRequire(import.meta.url)('ajv');
const validator = new Ajv({ strict: false });

test('named schemas accept normal requests and cursor-only continuation without operation', async () => {
  for (const operation of ['find', 'search', 'read']) {
    const definition = JSON.parse(await readFile(join(ROOT, 'agent-simple-' + operation + '-tool-definition.json'), 'utf8'));
    const validate = validator.compile(definition.inputSchema);
    const args = operation === 'find' ? { member: 'calc' } : operation === 'search' ? { query: ['AxAct', 'VxAct'] } : { ref: ['s1:d1', 's1:d2'] };
    if (operation === 'find') assert.equal(validate({}), true);
    if (operation === 'find') for (const target of ['components', 'members', 'diagrams', 'objects', 'states', 'transitions']) {
      assert.equal(validate({ target, name: 'ActualName' }), true, target);
    }
    assert.equal(validate(args), true, JSON.stringify(validate.errors));
    if (operation === 'search') {
      assert.equal(validate({ query: { text: 'foo.*bar', mode: 'regex', dotall: true, id: 'one' } }), true);
      for (const query of [{}, { text: '' }, { text: 'foo', id: 1 }, { text: 'foo', typo: true }]) {
        assert.equal(validate({ query }), false);
      }
    }
    assert.equal(validate({ cursor: 'returned-cursor' }), true);
    assert.equal(validate({ ...args, operation }), false);
    assert.equal(validate({ ...args, cursor: 'returned-cursor' }), false);
    assert.equal('operation' in definition.inputSchema.properties, false);
    if (operation === 'read') for (const ref of ['["s1:d1"]', '"s1:d1"', ['["s1:d1"]']]) assert.equal(validate({ ref }), false);
  }
});

test('named operation injection preserves args and cursor selectors and rejects conflicts', () => {
  const ref = 's1:d1', input = { ref: [ref, ref], if_unchanged: true };
  assert.deepEqual(agentToolRequest('ascet_code_read', input), { ...input, operation: 'read' });
  assert.equal('operation' in input, false);
  for (const name of ['ascet_code_find', 'ascet_code_search', 'ascet_code_read']) {
    assert.deepEqual(agentToolRequest(name, { cursor: 'opaque' }), { cursor: 'opaque' });
  }
  for (const [name, args] of [['__proto__', {}], ['ascet_code_read', []], ['ascet_code_read', {}],
    ['ascet_code_search', {}], ['ascet_code_read', { ref, operation: 'find' }],
    ['ascet_code_read', { ref, cursor: 'opaque' }]] as const) {
    assert.throws(() => agentToolRequest(name, args), { code: 'INVALID_REQUEST' });
  }
});

test('named envelopes and raw requests share refs, batch reads, scope and stable pagination', async () => {
  let calls = 0;
  const data = rows('foo foo\nfoo').map(row => row.map(v => v === 'oid1' ? '040qm00100001m8714ag81ugur0dk' : v));
  const session = new AgentSession({ request: async () => { calls++; return { ...response(), payload: encode(data) }; } });
  try {
    const found = await session.execute({ tool: 'ascet_code_find', arguments: { member: 'calc', match: 'exact' } }) as AgentFindResponse;
    const target = found.results[0] as AgentCodeTarget;
    assert.equal(target.component_type, 'SGClass');
    const raw = await session.execute({ operation: 'read', ref: target.ref }) as AgentReadResponse;
    const batch = await session.execute({ tool: 'ascet_code_read', arguments: { ref: [target.ref, target.ref] } });
    assert.ok('results' in batch); assert.equal(batch.results.length, 2);
    const page = await session.execute({ tool: 'ascet_code_search', arguments: { query: 'foo', in: { component: target.ref }, limit: 1 } }) as AgentSearchResponse;
    assert.equal(page.total_hits, 3); assert.equal(page.has_more, true);
    const before = calls;
    const next = await session.execute({ tool: 'ascet_code_search', arguments: { cursor: page.next_cursor } });
    assert.equal(calls, before);
    assert.deepEqual(await session.execute({ cursor: page.next_cursor }), next);
    assert.equal(raw.code, 'foo foo\nfoo'); assert.equal(raw.component_type, 'SGClass');
    await assert.rejects(session.execute({ tool: 'ascet_code_read', arguments: { ref: JSON.stringify([target.ref]) } }), { code: 'INVALID_REQUEST' });
    assert.equal((await session.execute({ tool: 'ascet_code_read', arguments: { ref: target.ref } })).status, 'ok');
  } finally { session.close(); }
});

test('component_type is taken from current native owner metadata, never source language or code kind', async () => {
  const data = rows('value = 0;');
  const session = new AgentSession({ request: async () => ({ ...response(), payload: encode(data) }) });
  try {
    for (const type of ['SGClass', 'SGModule', 'SGSmClass', '']) {
      data[0][7] = type;
      const found = await session.execute({ operation: 'find', member: 'calc' }) as AgentFindResponse;
      assert.equal((found.results[0] as AgentCodeTarget).component_type, type || undefined);
      const body = await session.execute({ operation: 'read', ref: found.results[0].ref }) as AgentReadResponse;
      assert.equal(body.component_type, type || undefined); assert.equal(body.kind, 'method');
    }
    const saved = decodeResponse({ payload: encode(data) });
    data[0][7] = 'SGModule';
    const original = decodeResponse({ payload: encode(data) }), projected = projectAgentSnapshot(original);
    assert.equal(original.documents[0].component_type, undefined);
    assert.equal(projected.documents[0].source_sha256, saved.documents[0].source_sha256);
  } finally { session.close(); }
});

test('BDE hits, neighbors and endpoints distinguish the referenced Class from the owner', async () => {
  const graph = generatedGraph(1, 8, 0);
  graph.nodes[0].name = 'PlacedClass'; graph.nodes[0].component_path = 'Library\\ReferencedClass';
  const session = new AgentSession({ request: async () => graphResponse([graph]) });
  try {
    const search = await session.execute({ tool: 'ascet_code_search', arguments: { query: 'PlacedClass', group_by: 'object' } }) as AgentSearchResponse;
    const owner = search.searches[0].results[0], hit = owner.hits![0];
    assert.equal(hit.referenced_component_path, graph.nodes[0].component_path);
    assert.notEqual(owner.component_path, hit.referenced_component_path);
    const read = await session.execute({ tool: 'ascet_code_read', arguments: { ref: hit.ref, depth: 1 } }) as AgentReadResponse;
    assert.equal(read.object!.referenced_component_path, hit.referenced_component_path);
    assert.equal(read.object!.component_path, hit.referenced_component_path);
    const endpoints = read.connections!.flatMap(c => [c.from, c.to]).filter(e => e.ref === hit.ref);
    assert.ok(endpoints.length);
    assert.ok(endpoints.every(e => e.referenced_component_path === hit.referenced_component_path));
  } finally { session.close(); }
});

test('adapter validation does not start a CLI process on invalid named arguments', async () => {
  const client = new AgentToolClient({ command: 'nonexistent-ascet-test-command' });
  try { await assert.rejects(client.call('ascet_code_read', {}), { code: 'INVALID_REQUEST' }); }
  finally { await client.close(); }
});

test('find.name consistently selects Components and members and rejects conflicting aliases before reads', async () => {
  let calls = 0;
  const session = new AgentSession({ request: async () => { calls++; return response(); } });
  try {
    const components = await session.execute({ tool: 'ascet_code_find', arguments: { target: 'components', name: 'class', match: 'exact' } }) as AgentFindResponse;
    assert.equal(components.total_count, 1);
    const member = await session.execute({ tool: 'ascet_code_find', arguments: { name: 'calc', component: 'class', match: 'exact' } }) as AgentFindResponse;
    assert.equal(member.total_count, 1); assert.equal((member.results[0] as AgentCodeTarget).method, 'calc');
    const before = calls;
    for (const args of [{ target: 'components', name: 'class', component: 'other' }, { name: 'calc', member: 'other' },
      { target: 'diagrams', name: 'Init', diagram: 'other' }, { name: '' }, { name: ['calc'] }]) {
      await assert.rejects(session.execute({ tool: 'ascet_code_find', arguments: args }), { code: 'INVALID_REQUEST' });
    }
    assert.equal(calls, before);
  } finally { session.close(); }
});

test('find.name selects a Diagram by name using the same native scope as diagram', async () => {
  const graph = generatedGraph(1, 8, 0); graph.name = 'Init';
  const data = graphResponse([graph], rows => rows.unshift(['#DIAGRAM_SCOPE', '1', '', '', '', '', '', '', '', '']));
  const session = new AgentSession({ request: async () => data });
  try {
    const found = await session.execute({ tool: 'ascet_code_find', arguments: { target: 'diagrams', name: 'Init', match: 'exact' } }) as AgentFindResponse;
    assert.equal(found.total_count, 1); assert.equal((found.results[0] as AgentCodeTarget).diagram, 'Init');
    const body = await session.execute({ tool: 'ascet_code_read', arguments: { ref: found.results[0].ref } }) as AgentReadResponse;
    assert.ok(body.diagram_text);
  } finally { session.close(); }
});
