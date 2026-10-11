import { Server } from '@modelcontextprotocol/sdk/server/index.js';
import { StdioServerTransport } from '@modelcontextprotocol/sdk/server/stdio.js';
import { CallToolRequestSchema, ListToolsRequestSchema } from '@modelcontextprotocol/sdk/types.js';
import { Broker } from './broker.js';
import { tools } from './contracts.js';
const broker = new Broker();
const server = new Server({ name: 'ascet-experiment', version: '0.2.0' }, { capabilities: { tools: {} } });
server.setRequestHandler(ListToolsRequestSchema, async () => ({ tools: tools.map(t => ({ ...t, inputSchema: { type: 'object', ...t.inputSchema } })) }));
server.setRequestHandler(CallToolRequestSchema, async request => {
  const result = await broker.call(request.params.name, request.params.arguments ?? {});
  return { isError: !result.ok, content: [{ type: 'text', text: JSON.stringify(result) }], structuredContent: result };
});
server.onclose = () => { void broker.close(); };
await server.connect(new StdioServerTransport());
