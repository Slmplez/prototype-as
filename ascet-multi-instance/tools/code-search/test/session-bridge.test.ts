import test from 'node:test';
import assert from 'node:assert/strict';
import { SessionBridge } from '../src/session-bridge.js';
import { NativeBridgeError } from '../src/bridge.js';
import { response } from './fixtures.js';

test('next queued operation replaces a broken connection without retrying the failed operation', async () => {
  let created = 0, reads = 0, closed = 0;
  const bridge = new SessionBridge(() => {
    const generation = ++created;
    return { request: async () => { reads++; if (generation === 1) throw new Error('transport lost'); return response(); }, close: async () => { closed++; } };
  });
  try {
    const results = await Promise.allSettled([bridge.request({ mode: 'catalog' }), bridge.request({ mode: 'catalog' })]);
    assert.equal(results[0].status, 'rejected'); assert.equal(results[1].status, 'fulfilled');
    assert.equal(created, 2); assert.equal(reads, 2); assert.equal(closed, 1);
  } finally { await bridge.close(); }
  assert.equal(closed, 2); await assert.rejects(bridge.request({ mode: 'catalog' }), /closed/);
});

test('recoverable database mismatch and busy errors retain the current connection', async () => {
  let created = 0, reads = 0;
  const bridge = new SessionBridge(() => {
    created++;
    return { request: async () => { reads++; if (reads < 3) throw new NativeBridgeError(reads === 1 ? 'DATABASE_CHANGED' : 'ASCET_BUSY', 'precondition', true); return response(); }, close: async () => {} };
  });
  try {
    await assert.rejects(bridge.request({ mode: 'catalog' }), /precondition/);
    await assert.rejects(bridge.request({ mode: 'catalog' }), /precondition/);
    assert.equal((await bridge.request({ mode: 'catalog' })).status, 'ok'); assert.equal(created, 1);
  } finally { await bridge.close(); }
});
