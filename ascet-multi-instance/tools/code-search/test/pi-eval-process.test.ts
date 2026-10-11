import assert from 'node:assert/strict';
import test from 'node:test';
import { runPiProcess } from '../scripts/pi-eval-process.js';

test('a print-mode child waiting for piped EOF completes with an empty stdin', async () => {
  const result = await runPiProcess(process.execPath, ['-e', "let text='';process.stdin.setEncoding('utf8');process.stdin.on('data',s=>text+=s);process.stdin.on('end',()=>process.stdout.write('READY:'+text.length));process.stdin.resume();"], { timeout: 2000 });
  assert.equal(result.stdout, 'READY:0');
});
test('failed subprocesses retain their exit code and diagnostic streams', async () => {
  await assert.rejects(runPiProcess(process.execPath, ['-e', "process.stdin.on('end',()=>{process.stdout.write('event');process.stderr.write('diagnostic');process.exitCode=7});process.stdin.resume();"], { timeout: 2000 }), (error: any) => {
    assert.equal(error.code, 7); assert.equal(error.stdout, 'event'); assert.equal(error.stderr, 'diagnostic'); return true;
  });
});
test('a child that hangs after EOF is still terminated by its deadline', async () => {
  await assert.rejects(runPiProcess(process.execPath, ['-e', 'process.stdin.resume();setInterval(()=>{},1000);'], { timeout: 200 }), (error: any) => {
    assert.equal(error.killed, true); return true;
  });
});
