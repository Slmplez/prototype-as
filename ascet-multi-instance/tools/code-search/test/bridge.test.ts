import test from 'node:test';
import assert from 'node:assert/strict';
import { spawn } from 'node:child_process';
import { fileURLToPath } from 'node:url';
import { gzipSync, deflateSync } from 'node:zlib';
import { Bridge, JsonLineClient, validateNativeResponse, NativeBridgeError } from '../src/bridge.js';
import { AgentSession } from '../src/agent-session.js';
import { response } from './fixtures.js';

function client(source: string, timeoutMs = 3000): JsonLineClient {
  return new JsonLineClient({ command: process.execPath, args: ['--input-type=module', '-e', source], timeoutMs, closeTimeoutMs: 100 });
}
const prelude = `import {createInterface} from 'node:readline'; const input=createInterface({input:process.stdin});`;

test('concurrent callers receive serial, correctly paired responses', async () => {
  const c = client(prelude + String.raw`let busy=false; input.on('line', line=>{if(busy) process.exit(2); busy=true; setTimeout(()=>{process.stdout.write(line+'\n'); busy=false;},10);});`);
  try {
    const values = Array.from({ length: 10 }, (_, id) => ({ id, text: '中文🙂' }));
    assert.deepEqual(await Promise.all(values.map(v => c.request(v))), values);
  } finally { await c.close(); }
  await assert.rejects(c.request({}), /closed/);
});
test('large fragmented UTF-8 response and stdin backpressure', async () => {
  const c = client(prelude + String.raw`input.on('line', async line=>{const b=Buffer.from(line+'\n'); for(let i=0;i<b.length;i+=4093) await new Promise((resolve,reject)=>process.stdout.write(b.subarray(i,i+4093),e=>e?reject(e):resolve()));});`, 10000);
  const value = { text: '🙂中文'.repeat(300000) };
  try { assert.deepEqual(await c.request(value), value); } finally { await c.close(); }
});
test('timeout poisons connection and rejects queued requests without reconnect', async () => {
  const c = client('setInterval(()=>{},1000);', 150);
  try {
    const requests = await Promise.allSettled([c.request({}), c.request({})]);
    assert.ok(requests.every(r => r.status === 'rejected' && /timed out/.test(String(r.reason))));
    await assert.rejects(c.request({}), /timed out/);
  } finally { await c.close(); }
});
test('malformed JSON, early exit and spawn error reject safely', async () => {
  for (const source of [prelude + String.raw`input.on('line',()=>process.stdout.write('bad\n'));`, `process.stderr.write('fixture exit');process.exit(2);`]) {
    const c = client(source);
    try { await assert.rejects(c.request({}), /Malformed|ended|exited/); } finally { await c.close(); }
  }
  const c = new JsonLineClient({ command: 'does-not-exist-code-search-fixture', timeoutMs: 1000 });
  try { await assert.rejects(c.request({}), /ENOENT/); } finally { await c.close(); }
});
test('close rejects unsent queued requests and remains idempotent', async () => {
  const c = client(prelude + String.raw`input.on('line',line=>process.stdout.write(line+'\n'));setInterval(()=>{},1000);`);
  const a = c.request({ id: 1 }), b = c.request({ id: 2 });
  const closing = c.close();
  const outcomes = await Promise.allSettled([a, b]);
  assert.ok(outcomes.every(r => r.status === 'rejected' && r.reason.code === 'SESSION_CLOSED'));
  await closing; await c.close();
});
test('invalid metadata and explicit bridge errors do not pass as success', () => {
  assert.deepEqual(validateNativeResponse(response()), response());
  for (const raw of [null, [], {}, { status: 'broken', code: 'DATABASE_CHANGED', recoverable: true }, { status: 'error', message: 'DATABASE_CHANGED' }, { ...response(), payload: null },
    { ...response(), timings: { time: 'oops' } }, { ...response(), ascet_pid: '1' }]) assert.throws(() => validateNativeResponse(raw));
});

test('compressed native transport preserves fields and rejects corrupt or unknown encodings', () => {
  const original = response('percent %37; | Unicode \u4e2d\u6587 \ud83d\ude42\r\n'.repeat(12000));
  const encoded = gzipSync(Buffer.from(original.payload, 'utf8')).toString('base64');
  assert.deepEqual(validateNativeResponse({ ...original, payload: encoded, payload_encoding: 'gzip-base64' }), original);
  assert.deepEqual(validateNativeResponse({ ...original, payload_encoding: null }), original);
  for (const raw of [
    { ...original, payload: encoded, payload_encoding: 'unknown' },
    { ...original, payload: '***', payload_encoding: 'gzip-base64' },
    { ...original, payload: 'AAAA', payload_encoding: 'gzip-base64' },
    { ...original, payload: gzipSync(Buffer.from([0xff])).toString('base64'), payload_encoding: 'gzip-base64' },
  ]) assert.throws(() => validateNativeResponse(raw));
});

test('native zlib transport preserves Unicode and rejects invalid sizes or trailing input', () => {
  const original = response('percent %37; | Unicode \u4e2d\u6587 \ud83d\ude42\r\n'.repeat(12000));
  const bytes = Buffer.from(original.payload, 'utf8');
  const encoded = deflateSync(bytes, { level: 1 });
  const raw = { ...original, payload: encoded.toString('base64'), payload_encoding: 'zlib-base64', payload_bytes: bytes.length };
  assert.deepEqual(validateNativeResponse(raw), original);
  for (const size of [undefined, null, '1', 0, -1, 1.5, 512 * 1024 * 1024 + 1, bytes.length - 1, bytes.length + 1]) {
    assert.throws(() => validateNativeResponse({ ...raw, payload_bytes: size }));
  }
  for (const payload of [encoded.subarray(0, -1), Buffer.from([0]), Buffer.concat([encoded, Buffer.from([0])])]) {
    assert.throws(() => validateNativeResponse({ ...raw, payload: payload.toString('base64') }));
  }
  assert.throws(() => validateNativeResponse({ ...raw, payload: deflateSync(Buffer.from([0xff])).toString('base64'), payload_bytes: 1 }));
});

test('native database precondition preserves its code and permits a fresh find on the same Bridge', async () => {
  const healthy = { ...response(), native_protocol_version: 3 };
  healthy.payload = '#BDE_ENABLED|1|||||||||' + healthy.payload;
  const c = client(prelude + `const healthy=${JSON.stringify(healthy)};` + String.raw`
    input.on('line',line=>{const r=JSON.parse(line); process.stdout.write(JSON.stringify(r.expected_database==='old-db'
      ? {status:'error',code:'DATABASE_CHANGED',message:'DATABASE_CHANGED',recoverable:true} : healthy)+'\n');});`);
  const bridge = new Bridge(); Object.defineProperty(bridge, 'client', { value: c });
  const session = new AgentSession(bridge);
  try {
    await assert.rejects(session.execute({ query: 'foo', database: 'old-db' }), error => {
      assert.ok(error instanceof NativeBridgeError); assert.equal(error.recoverable, true);
      assert.equal(session.formatError({}, error).code, 'DATABASE_CHANGED'); return true;
    });
    assert.equal((await session.execute({ operation: 'find', target: 'components' })).status, 'ok');
    assert.equal((await session.execute({ query: 'foo' })).status, 'ok');
  } finally { session.close(); await bridge.close(); }
});

test('legacy or fatal native errors require rebuilding the connection and cannot be declared recoverable', async () => {
  for (const raw of [
    { status: 'error', message: 'DATABASE_CHANGED' },
    { status: 'error', code: 'DATABASE_CHANGED_DURING_READ', message: 'DATABASE_CHANGED_DURING_READ', recoverable: true },
    { status: 'error', code: 'ASCET_RESTARTED', message: 'ASCET_RESTARTED', recoverable: false },
    { status: 'error', code: 'unknown', message: 'failed', recoverable: true },
  ]) {
    const c = client(prelude + `input.on('line',()=>process.stdout.write(${JSON.stringify(JSON.stringify(raw) + '\n')}));`);
    const bridge = new Bridge(); Object.defineProperty(bridge, 'client', { value: c });
    try {
      for (let i = 0; i < 2; i++) await assert.rejects(bridge.request({ mode: 'catalog' }), error => {
        assert.ok(error instanceof NativeBridgeError); assert.equal(error.recoverable, false);
        assert.match(error.message, /recreate Bridge/); return true;
      });
    } finally { await bridge.close(); }
  }
});
test('CLI responds to multiple invalid lines without opening ASCET', async () => {
  const c = new JsonLineClient({ command: process.execPath, args: [fileURLToPath(new URL('../src/cli.js', import.meta.url))] });
  try {
    for (const value of [null, { query: '', id: 'bad' }, { queries: [] }]) {
      const r = await c.request(value) as Record<string, unknown>;
      assert.equal(r.status, 'error'); assert.equal(r.complete, false);
      assert.equal(r.id, value?.id ?? null);
    }
  } finally { await c.close(); }
});
test('CLI rejects invalid timeout before starting a bridge', async () => {
  const child = spawn(process.execPath, [fileURLToPath(new URL('../src/cli.js', import.meta.url)), '--timeout', 'NaN'], { windowsHide: true });
  let stdout = '', stderr = '';
  child.stdout.on('data', c => stdout += c); child.stderr.on('data', c => stderr += c);
  const code = await new Promise(resolve => child.once('close', resolve));
  assert.equal(code, 1); assert.equal(stdout, ''); assert.match(stderr, /timeout/);
});
