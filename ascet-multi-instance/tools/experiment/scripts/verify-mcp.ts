import assert from 'node:assert/strict';
import { Client } from '@modelcontextprotocol/sdk/client/index.js';
import { StdioClientTransport } from '@modelcontextprotocol/sdk/client/stdio.js';
import { ROOT } from '../src/bridge.js';
import { join } from 'node:path';
const manifest = process.env.ASCET_EXPERIMENT_MANIFEST;
assert.ok(manifest, 'Set ASCET_EXPERIMENT_MANIFEST.');
const transport = new StdioClientTransport({ command: process.execPath, args: [join(ROOT, 'dist/src/mcp.js')], env: { ...Object.fromEntries(Object.entries(process.env).filter((p): p is [string, string] => p[1] !== undefined)), ASCET_EXPERIMENT_MANIFEST: manifest } });
const client = new Client({ name: 'experiment-acceptance', version: '1.0.0' });
try {
  await client.connect(transport);
  const listed = await client.listTools(); assert.equal(listed.tools.length, 16);
  const attached = await client.callTool({ name: 'exp_attach', arguments: {} });
  const session = attached.structuredContent as any; assert.equal(session.ok, true, JSON.stringify(attached));
  const inspected = await client.callTool({ name: 'exp_inspect', arguments: { sessionId: session.sessionId } });
  assert.equal((inspected.structuredContent as any).ok, true);
  const invalid = await client.callTool({ name: 'exp_step', arguments: { sessionId: session.sessionId, mode: 'condition', value: 1 } });
  assert.equal(invalid.isError, true);
  await client.callTool({ name: 'exp_detach', arguments: { sessionId: session.sessionId } });
  console.log(JSON.stringify({ passed: true, tools: listed.tools.length, checked: ['initialize', 'listTools', 'attach', 'inspect', 'schema rejection', 'detach'] }));
} finally { await client.close(); }
