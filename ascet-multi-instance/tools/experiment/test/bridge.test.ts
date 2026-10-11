import test from 'node:test';
import assert from 'node:assert/strict';
import { Bridge } from '../src/bridge.js';
const start = (handler: string) => new Bridge('unused', { command: process.execPath, args: ['-e', `
process.stdout.write(JSON.stringify({kind:'ready',pid:1,started:'1',database:'fixture',result:{token:'closed',open:false}})+'\\n');
require('node:readline').createInterface({input:process.stdin}).on('line', line => { const r=JSON.parse(line); ${handler} });
`], startupMs: 2000 });
test('strict request ID mismatch invalidates connection', async () => {
  const b = start(`process.stdout.write(JSON.stringify({id:'wrong',ok:true})+'\\n');`);
  await b.ready; await assert.rejects(b.request('inspect'), (e: any) => e.code === 'PROTOCOL_ERROR');
  await assert.rejects(b.request('write'), (e: any) => e.code === 'SESSION_INVALID' && !e.outcomeUnknown); await b.close();
});
test('timeout does not replay or dispatch the queued request', async () => {
  const b = start(`if(r.op!=='stall') process.stdout.write(JSON.stringify({id:r.id,ok:true})+'\\n');`);
  await b.ready;
  const a = b.request('stall', [], 40); const c = b.request('write');
  await assert.rejects(a, (e: any) => e.code === 'NATIVE_TIMEOUT' && e.outcomeUnknown);
  await assert.rejects(c, (e: any) => e.code === 'SESSION_INVALID' && !e.outcomeUnknown); await b.close();
});
