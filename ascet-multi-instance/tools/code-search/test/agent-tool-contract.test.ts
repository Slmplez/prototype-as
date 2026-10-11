import test from 'node:test';
import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import { join } from 'node:path';
import { ROOT } from '../src/bridge.js';
import { AgentSession } from '../src/agent-session.js';
import { encode, response, rows } from './fixtures.js';
import { generatedGraph, graphResponse } from './diagram-generality-support.js';
import type { AgentFindResponse, AgentSearchResponse, AgentReadResponse } from '../src/agent-types.js';

test('find schema permits real ASCET names and Windows model paths but excludes control characters', async () => {
  const schema = JSON.parse(await readFile(join(ROOT, 'agent-simple-find-tool-definition.json'), 'utf8'));
  for (const field of ['component', 'member', 'diagram']) {
    const excluded = new RegExp(schema.inputSchema.properties[field].not.pattern);
    for (const value of ['AEB_AxCtrlConfigFF_Modify', 'calc_pre', 'init_trigger', 'Main/Transition #0', 'PlatformLibrary\\AEB_Core\\AEB_State_Machine']) {
      assert.equal(excluded.test(value), false, value);
    }
    for (const value of ['a\nb', 'a\rb', 'a\0b']) assert.equal(excluded.test(value), true);
  }
});

test('all prompt requests execute through the public Agent dispatcher after replacing returned selectors', async () => {
  const examples = JSON.parse(await readFile(join(ROOT, 'prompt-examples.json'), 'utf8')).examples;
  for (const example of examples) {
    if (example.input.target === 'diagrams' || JSON.stringify(example.input).includes('<diagram-ref>')) {
      const graph = generatedGraph(1, 8, 0); graph.source_oid = '00000000000000000000000001000'; graph.name = 'Init'; graph.visibility = 'public';
      const session = new AgentSession({ request: async () => graphResponse([graph], rows => rows.unshift(['#DIAGRAM_SCOPE', '1'])) });
      try {
        const seed = await session.execute({ operation: 'find', target: 'diagrams' }) as AgentFindResponse;
        const request = JSON.parse(JSON.stringify(example.input), (_key, value) => value === '<diagram-ref>' ? seed.results[0].ref : value);
        assert.equal((await session.execute({ tool: example.tool, arguments: request })).status, 'ok', example.scenario);
      } finally { session.close(); }
      continue;
    }
    if (JSON.stringify(example.input).match(/<(object-ref|local-cursor)>/)) {
      const graph = generatedGraph(1, 250, 0); graph.nodes[0].name = 'AnchorUnique';
      const session = new AgentSession({ request: async () => graphResponse([graph]) });
      try {
        const seed = await session.execute({ query: 'AnchorUnique', group_by: 'object' }) as AgentSearchResponse;
        const objectRef = seed.searches[0].results[0].hits![0].ref;
        const local = await session.execute({ operation: 'read', ref: objectRef }) as AgentReadResponse;
        assert.ok(local.next_cursor);
        const selectors: Record<string, string> = { '<object-ref>': objectRef, '<local-cursor>': local.next_cursor! };
        const input = JSON.parse(JSON.stringify(example.input), (_key, value) => typeof value === 'string' && value in selectors ? selectors[value] : value);
        assert.equal((await session.execute({ tool: example.tool, arguments: input })).status, 'ok', example.scenario);
      } finally { session.close(); }
      continue;
    }
    const data = rows('foo foo\nfoo').map(row => row.map(v => v === 'oid1' ? '040qm00100001m8714ag81ugur0dk' : v));
    const second = [...data[1]]; second[4] = 'DefaultC'; data.splice(2, 0, second);
    const session = new AgentSession({ request: async () => ({ ...response(), payload: encode(data) }) });
    try {
      const components = await session.execute({ operation: 'find', target: 'components' }) as AgentFindResponse;
      const seed = await session.execute(example.tool === 'ascet_code_find'
        ? { operation: 'find', limit: 1 } : { query: 'foo', limit: 1 }) as AgentFindResponse | AgentSearchResponse;
      const codeRef = 'results' in seed ? seed.results[0].ref : seed.searches[0].results[0].ref;
      const selectors: Record<string, string | null> = { '<ref>': codeRef, '<ref2>': codeRef,
        '<component-ref>': components.results[0].ref, '<cursor>': seed.next_cursor };
      const input = JSON.parse(JSON.stringify(example.input), (_key, value) => typeof value === 'string' && value in selectors ? selectors[value] : value);
      const result = await session.execute({ tool: example.tool, arguments: input });
      assert.equal(result.status, 'ok', example.scenario);
    } finally { session.close(); }
  }
});
