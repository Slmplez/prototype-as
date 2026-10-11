import assert from 'node:assert/strict';
import { spawn } from 'node:child_process';
import { createInterface } from 'node:readline';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { ROOT } from '../src/bridge.js';

const directory = join(ROOT, 'experiments/cli-input', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const report: Record<string, unknown> = { status: 'running', directory };
const lines = ['', '{', 'null', '[]', 'true', '"text"',
  JSON.stringify({ operation: 'unknown' }), JSON.stringify({ query: '' }),
  JSON.stringify({ query: ['ok', ''] }), JSON.stringify({ query: 'x', limit: 0 }),
  JSON.stringify({ query: 'x', limit: 201 }), JSON.stringify({ query: 'x', context: 101 }),
  JSON.stringify({ query: '*', mode: 'regex' }),
  JSON.stringify({ operation: 'read', ref: 'not-a-ref' }),
  JSON.stringify({ cursor: 'not-a-cursor' }),
  JSON.stringify({ query: 'x', in: { component: ['not-an-oid'] } }),
  JSON.stringify({ query: 'x', in: { diagram: 'not-an-oid' } }),
  JSON.stringify({ query: ['x'.repeat(1025)] }),
  JSON.stringify({ operation: 'find', target: 'components', component: '__CLI_INPUT_ABSENT__', limit: 1 }),
  JSON.stringify({ query: '__CLI_INPUT_\u4e2d\u6587_\ud83d\ude42_ABSENT__', in: { component: '040qm00100001m8714ag81ugur0dk' } })];
const child = spawn(process.execPath, [join(ROOT, 'dist/src/cli.js'), '--agent'], { env: process.env, windowsHide: true });
let stderr = '';
child.stderr.on('data', value => stderr += value);
const output = createInterface({ input: child.stdout, crlfDelay: Infinity });
const responses: any[] = [];
output.on('line', line => { try { responses.push(JSON.parse(line)); } catch { responses.push({ malformed_output: line }); } });
const exit = new Promise<number | null>((accept, reject) => { child.once('error', reject); child.once('close', accept); });
const timer = setTimeout(() => child.kill(), 90_000);
try {
  const bytes = Buffer.from(lines.join('\r\n') + '\r\n', 'utf8');
  // Split a multi-byte character and send multiple JSONL records in a single stream.
  const unicode = bytes.indexOf(Buffer.from('\u4e2d', 'utf8'));
  assert.ok(unicode > 0);
  child.stdin.write(bytes.subarray(0, unicode + 1));
  child.stdin.end(bytes.subarray(unicode + 1));
  assert.equal(await exit, 0, stderr);
  assert.equal(responses.length, lines.length);
  for (const response of responses.slice(0, -2)) assert.equal(response.status, 'error', JSON.stringify(response));
  assert.equal(responses.at(-2).status, 'ok'); assert.equal(responses.at(-2).total_count, 0);
  assert.equal(responses.at(-1).status, 'ok'); assert.equal(responses.at(-1).total_hits, 0);
  assert.equal(stderr, '', 'No source or diagnostics may leak onto stderr in default mode');
  report.status = 'passed'; report.requests = lines.length;
  report.boundary = 'Real CLI stdin/stdout: malformed JSON, invalid contracts, CRLF, packed records, fragmented UTF-8, error recovery, and graceful EOF. Uses the isolated endpoint inherited from the regression runner.';
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally {
  clearTimeout(timer); output.close(); if (child.exitCode === null) { child.kill(); await exit; }
  await writeFile(join(directory, 'responses.json'), JSON.stringify({ lines, responses, stderr }, null, 2) + '\n');
  await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
  console.log(JSON.stringify(report, null, 2));
}
