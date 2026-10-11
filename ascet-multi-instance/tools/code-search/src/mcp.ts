import { StdioServerTransport } from '@modelcontextprotocol/sdk/server/stdio.js';
import { SessionBridge } from './session-bridge.js';
import { createSearchServer } from './mcp-server.js';

const bridge = new SessionBridge();
const { server, session } = await createSearchServer(bridge);
let closing: Promise<void> | undefined;
const close = (): Promise<void> => closing ??= (async () => {
  session.close(); await server.close(); await bridge.close();
})();
server.onclose = () => { void close(); };
process.once('SIGINT', () => { void close(); });
process.once('SIGTERM', () => { void close(); });
await server.connect(new StdioServerTransport());
