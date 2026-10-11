import test from 'node:test';
import assert from 'node:assert/strict';
import { Client } from '@modelcontextprotocol/sdk/client/index.js';
import { InMemoryTransport } from '@modelcontextprotocol/sdk/inMemory.js';
import { createSearchServer } from '../src/mcp-server.js';
import { response } from './fixtures.js';

test('MCP advertises three tools and shares discovered refs across calls', async () => {
  let calls = 0;
  const { server } = await createSearchServer({ request: async () => { calls++; return response(); } });
  const client = new Client({ name: 'test-agent', version: '1' });
  const [a, b] = InMemoryTransport.createLinkedPair();
  await server.connect(a); await client.connect(b);
  try {
    const listing = await client.listTools();
    assert.deepEqual(listing.tools.map(t => t.name), ['ascet_code_search', 'ascet_code_find', 'ascet_code_read']);
    assert.ok(listing.tools.every(t => t.annotations?.readOnlyHint && t.inputSchema.type === 'object'));
    assert.ok(listing.tools.every(t => !(t.inputSchema as any).properties.operation));
    const found = await client.callTool({ name: 'ascet_code_find', arguments: { target: 'members', member: 'calc' } });
    const value = found.structuredContent as any;
    assert.equal(value.status, 'ok'); assert.equal(value.results.length, 1);
    const read = await client.callTool({ name: 'ascet_code_read', arguments: { ref: value.results[0].ref } });
    assert.equal((read.structuredContent as any).code, 'x = foo;\r\nfoo(foo);');
    const searched = await client.callTool({ name: 'ascet_code_search', arguments: { query: 'foo', limit: 1 } });
    assert.equal((searched.structuredContent as any).has_more, true);
    const next = await client.callTool({ name: 'ascet_code_search', arguments: { cursor: (searched.structuredContent as any).next_cursor } });
    assert.equal((next.structuredContent as any).status, 'ok');
    const before = calls;
    for (const args of [{ query: '' }, { operation: 'read', ref: 'invalid' }]) {
      const invalid = await client.callTool({ name: 'ascet_code_search', arguments: args });
      assert.equal(invalid.isError, true); assert.equal((invalid.structuredContent as any).status, 'error');
    }
    assert.equal(calls, before);
  } finally { await client.close(); await server.close(); }
});

test('MCP text and structured read envelopes together stay below 128 KiB', async () => {
  const original = 'variable = "long value";\r\n'.repeat(80000);
  const { server } = await createSearchServer({ request: async () => response(original) });
  const client = new Client({ name: 'budget-agent', version: '1' });
  const [a, b] = InMemoryTransport.createLinkedPair(); await server.connect(a); await client.connect(b);
  try {
    const found = await client.callTool({ name: 'ascet_code_find', arguments: { member: 'calc' } });
    const ref = (found.structuredContent as any).results[0].ref;
    const first = await client.callTool({ name: 'ascet_code_read', arguments: { ref } });
    const page = first.structuredContent as any;
    assert.equal(page.has_more, true);
    assert.ok(Buffer.byteLength(JSON.stringify(first)) <= 128 * 1024);
    const next = await client.callTool({ name: 'ascet_code_read', arguments: { cursor: page.next_cursor } });
    assert.ok(Buffer.byteLength(JSON.stringify(next)) <= 128 * 1024);
    assert.equal((next.structuredContent as any).status, 'ok');
  } finally { await client.close(); await server.close(); }
});
