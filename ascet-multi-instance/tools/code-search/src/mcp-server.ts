import { readFile } from 'node:fs/promises';
import { join } from 'node:path';
import { Server } from '@modelcontextprotocol/sdk/server/index.js';
import { CallToolRequestSchema, ListToolsRequestSchema, type Tool } from '@modelcontextprotocol/sdk/types.js';
import { AgentSession } from './agent-session.js';
import { ROOT } from './bridge.js';
import type { Reader } from './types.js';

/** One MCP connection owns all refs/cursors and serializes all business operations. */
export async function createSearchServer(reader: Reader): Promise<{ server: Server; session: AgentSession }> {
  // MCP sends both portable text and structured output; reserve space for both.
  const session = new AgentSession(reader, { maxPageBytes: 40 * 1024 });
  const tools: Tool[] = [];
  for (const kind of ['search', 'find', 'read']) {
    const definition = JSON.parse(await readFile(join(ROOT, `agent-simple-${kind}-tool-definition.json`), 'utf8'));
    // The MCP tool name selects the operation; JSONL keeps its explicit operation.
    for (const branch of definition.inputSchema.oneOf ?? []) {
      if (branch.properties?.operation) {
        delete branch.properties.operation;
        branch.required = branch.required?.filter((key: string) => key !== 'operation');
      }
    }
    definition.description = definition.description.replace(/operation:(find|read); /g, '');
    tools.push({ ...definition, inputSchema: { type: 'object', ...definition.inputSchema },
      annotations: { readOnlyHint: true, destructiveHint: false, idempotentHint: false, openWorldHint: false } });
  }
  const server = new Server({ name: 'ascet-code-search', version: '0.2.0' }, { capabilities: { tools: {} }, instructions:
    'Search saved ASCET code and BDE model fields. Use ascet_code_find for names. All three tools share refs/cursors in this MCP session. Paginate with cursor only. Partial results cannot prove absence. Dataset/Formula definitions and unsaved editors are outside this tool.' });
  server.setRequestHandler(ListToolsRequestSchema, async () => ({ tools }));
  server.setRequestHandler(CallToolRequestSchema, async request => {
    const { name, arguments: args = {} } = request.params;
    let value;
    try {
      if (!tools.some(tool => tool.name === name)) throw new Error('Unknown ASCET tool: ' + name);
      if ('cursor' in args) value = await session.execute(args);
      else {
        const operation = name === 'ascet_code_find' ? 'find' : name === 'ascet_code_read' ? 'read' : undefined;
        if ('operation' in args && args.operation !== operation) throw new Error('Operation does not match tool name');
        value = await session.execute(operation ? { ...args, operation } : args);
      }
    } catch (error) { value = session.formatError(args, error); }
    return { content: [{ type: 'text', text: JSON.stringify(value) }], structuredContent: value,
      ...(value.status === 'error' ? { isError: true } : {}) };
  });
  server.onclose = () => session.close();
  return { server, session };
}
