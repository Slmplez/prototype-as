import { createInterface } from 'node:readline';
import { Broker } from './broker.js';
const broker = new Broker();
for await (const line of createInterface({ input: process.stdin })) {
  try {
    const request = JSON.parse(line);
    const result = await broker.call(request.name, request.arguments ?? {});
    process.stdout.write(JSON.stringify({ id: request.id, ...result }) + '\n');
  } catch (e) { process.stdout.write(JSON.stringify({ ok: false, error: { code: 'INVALID_JSON', message: String(e) } }) + '\n'); }
}
await broker.close();
