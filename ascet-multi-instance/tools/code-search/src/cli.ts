import { createInterface } from 'node:readline';
import { Bridge } from './bridge.js';
import { SessionBridge } from './session-bridge.js';
import { SearchSession } from './search-session.js';
import { AgentSession } from './agent-session.js';
import { ToolError } from './patterns.js';

async function main(): Promise<void> {
  const args = process.argv.slice(2);
  if (args.length === 1 && (args[0] === '--help' || args[0] === '-h')) {
    process.stderr.write('ASCET live code search: node dist/src/cli.js [--agent] [--timeout 30] [--operation-timeout 120] [--max-page-bytes 131072] [--model-bytes 32768]\n--agent: compact input/output and ref reads. Accepts raw operation requests or {tool:"ascet_code_find|search|read",arguments:{...}}. One JSON request/result per line; keep this process alive.\n'); return;
  }
  const agent = args[0] === '--agent';
  if (agent) args.shift();
  const flags = new Map<string, number>();
  for (let i = 0; i < args.length; i += 2) {
    const key = args[i], value = Number(args[i + 1]);
    if (!['--timeout', '--operation-timeout', '--max-page-bytes', '--model-bytes'].includes(key) || flags.has(key)) throw new Error('Invalid CLI option: ' + key);
    if (!Number.isFinite(value) || value <= 0 || value > 2147483647 || (key.endsWith('bytes') && (!Number.isSafeInteger(value) || value < 1024))) throw new Error('Invalid timeout/byte budget');
    flags.set(key, value);
  }
  const timeout = flags.get('--timeout') ?? 30, operationMs = (flags.get('--operation-timeout') ?? 120) * 1000;
  if (timeout * 1000 > 2147483647 || operationMs > 2147483647) throw new Error('Invalid timeout');
  const bridge = new SessionBridge(() => new Bridge(timeout));
  const pageOptions = { ...(flags.has('--max-page-bytes') ? { maxPageBytes: flags.get('--max-page-bytes') } : {}),
    ...(flags.has('--model-bytes') ? { maxModelBytes: flags.get('--model-bytes') } : {}) };
  const session = agent ? new AgentSession(bridge, pageOptions) : new SearchSession(bridge, pageOptions);
  const input = createInterface({ input: process.stdin, crlfDelay: Infinity });
  const stop = (): void => { input.close(); process.stdin.destroy(); };
  process.once('SIGINT', stop); process.once('SIGTERM', stop);
  // A caller closing its pipe must not leave the ASCET child process connected.
  let outputError: Error | undefined;
  const onOutputError = (error: Error): void => { outputError = error; stop(); };
  process.stdout.on('error', onOutputError);
  try {
    for await (const line of input) {
      let request: unknown = null, response;
      let timer: NodeJS.Timeout | undefined, expired = false;
      try {
        request = JSON.parse(line); bridge.setDeadline(Date.now() + operationMs - Math.min(1000, operationMs / 10));
        response = await Promise.race([session.execute(request), new Promise<never>((_, reject) => {
          timer = setTimeout(() => { expired = true; reject(new ToolError('OPERATION_TIMEOUT', 'CLI business operation timed out; find/search again')); }, operationMs);
        })]);
      } catch (error) {
        response = session.formatError(request, error);
        if (expired) { session.close(); await bridge.close(); }
      } finally { clearTimeout(timer); bridge.setDeadline(undefined); }
      if (outputError) break;
      await new Promise<void>((resolve, reject) => process.stdout.write(JSON.stringify(response) + '\n', error => error ? reject(error) : resolve()));
      if (expired) break;
    }
  } finally {
    input.close();
    session.close();
    await bridge.close();
    process.off('SIGINT', stop); process.off('SIGTERM', stop);
  }
}

main().catch(error => { process.stderr.write(String(error) + '\n'); process.exitCode = 1; });
