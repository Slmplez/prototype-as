/** Run through verify-paging.ps1: serial, read-only verification on the current ASCET database. */
import assert from 'node:assert/strict';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { Bridge, NativeBridgeError, ROOT } from '../src/bridge.js';
import { AgentSession } from '../src/agent-session.js';
import { decodeResponse } from '../src/protocol.js';
import { projectAgentSnapshot } from '../src/agent-projection.js';
import { fingerprint } from './oracle.js';
import type { AgentCodeTarget, AgentFindResponse, AgentReadResponse, AgentBatchReadResponse, AgentReadContent } from '../src/agent-types.js';

const directory = join(ROOT, 'experiments/read-pages', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const report: Record<string, unknown> = { status: 'running', started_utc: new Date().toISOString(), directory };
const bridge = new Bridge(90); let session: AgentSession | undefined;
const observations: unknown[] = [];
try {
  const beforeRaw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
  const before = decodeResponse(beforeRaw); assert.deepEqual(before.errors, []);
  report.database = beforeRaw.database; report.ascet_pid = beforeRaw.ascet_pid;
  session = new AgentSession(bridge, { maxPageBytes: 8192 });
  await assert.rejects(session.execute({ query: 'unused', database: '__CODE_SEARCH_WRONG_DATABASE__' }), error => {
    assert.ok(error instanceof NativeBridgeError); assert.equal(error.code, 'DATABASE_CHANGED'); assert.equal(error.recoverable, true);
    observations.push({ operation: 'database_precondition', error: session!.formatError({}, error) }); return true;
  });
  const recovered = await session.execute({ operation: 'find', target: 'components', limit: 1 }) as AgentFindResponse;
  assert.equal(recovered.status, 'ok'); assert.ok(recovered.results.length); report.same_bridge_recovered = true;
  const projected = projectAgentSnapshot(before);
  const document = projected.documents.filter(d => d.kind !== 'diagram' && !d.binding && d.text.length)
    .sort((a, b) => b.text.length - a.text.length)[0]; assert.ok(document);
  const found = await session.execute({ operation: 'find', in: { component: document.component_oid, member_id: document.member_id,
    kind: document.kind, variant: document.variant, implementation: document.implementation_oid }, limit: 1 }) as AgentFindResponse;
  const target = found.results[0] as AgentCodeTarget; assert.ok(target);
  const read = async (request: unknown) => {
    const value = await session!.execute(request); assert.ok(Buffer.byteLength(JSON.stringify(value)) <= 8192); return value;
  };
  let first = await read({ operation: 'read', ref: target.ref, if_unchanged: true }) as AgentReadResponse;
  assert.equal(first.status, 'ok'); const initial = first;
  let full = first.code!, pages = 1;
  while (first.has_more) { first = await read({ cursor: first.next_cursor }) as AgentReadResponse; full += first.code; assert.ok(++pages < 2000); }
  assert.equal(full, document.text); report.text_pages = pages;
  if (initial.next_cursor) {
    const a = await read({ cursor: initial.next_cursor }), b = await read({ cursor: initial.next_cursor }); assert.deepEqual(a, b);
    report.cursor_replay_stable = true;
  }
  const selected = await read({ operation: 'read', ref: target.ref, lines: { start: 1, end: 2 }, if_unchanged: true }) as AgentReadResponse;
  let subset = selected.code!, rangePages = 1, page = selected;
  while (page.has_more) { page = await read({ cursor: page.next_cursor }) as AgentReadResponse; subset += page.code; assert.ok(++rangePages < 2000); }
  const lineStarts = [0]; for (const m of document.text.matchAll(/\r\n|\r|\n/g)) lineStarts.push(m.index! + m[0].length);
  assert.equal(subset, document.text.slice(0, lineStarts[2] ?? document.text.length));
  const batch = await read({ operation: 'read', ref: [target.ref, target.ref], if_unchanged: true }) as AgentBatchReadResponse;
  assert.equal(batch.status, 'ok'); assert.equal(batch.returned_count, 2);
  for (const item of batch.results as AgentReadContent[]) {
    let text = item.code!, current = item;
    while (current.has_more) { current = await read({ cursor: current.next_cursor }) as AgentReadResponse; text += current.code; }
    assert.equal(text, document.text);
  }
  report.sample = { ...target, source_bytes: Buffer.byteLength(document.text), batch_bytes: Buffer.byteLength(JSON.stringify(batch)), range_pages: rangePages };
  const afterRaw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
  assert.equal(afterRaw.database, beforeRaw.database); assert.equal(afterRaw.ascet_pid, beforeRaw.ascet_pid);
  assert.equal(fingerprint(decodeResponse(afterRaw)), fingerprint(before)); report.source_fingerprint_stable = true;
  await writeFile(join(directory, 'examples.json'), JSON.stringify({ observations, read: initial, lines: selected, batch }, null, 2) + '\n');
  report.status = 'passed'; report.boundary = 'Shared-lock serial current-database reads; wrong expected database rejected before source access. No switch, restart, setters or saves. Offline tests cover Unicode/CRLF and mixed BDE/text batches.';
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally {
  session?.close(); await bridge.close();
  await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n'); console.log(JSON.stringify(report, null, 2));
}
