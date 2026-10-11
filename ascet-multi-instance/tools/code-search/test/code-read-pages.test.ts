import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentSession } from '../src/agent-session.js';
import { ToolError } from '../src/patterns.js';
import { Fake, encode, response, rows, diagramRows } from './fixtures.js';
import type { AgentReadResponse, AgentBatchReadResponse, AgentReadContent, AgentSearchResponse } from '../src/agent-types.js';

const bytes = (value: unknown) => Buffer.byteLength(JSON.stringify(value));
const fails = (code: string) => (error: unknown) => error instanceof ToolError && error.code === code;
async function discover(session: AgentSession) {
  return (await session.execute({ query: 'needle', limit: 1, context: 0 }) as AgentSearchResponse).searches[0].results[0].ref;
}

test('inclusive coverage explicitly includes an empty requested line and clamps to saved lines', async () => {
  const session = new AgentSession(new Fake('needle\r\n\r\nthird\r\n'));
  try {
    const ref = await discover(session);
    const page = await session.execute({ operation: 'read', ref, lines: { start: 1, end: 2 } }) as AgentReadResponse;
    assert.equal(page.code, 'needle\r\n\r\n');
    assert.deepEqual(page.line_coverage, { selected: { start: 1, end: 2 }, page: { start: 1, end: 2 }, complete_lines: { start: 1, end: 2 } });
    assert.equal(page.code_range!.end_line, 3);
    const tail = await session.execute({ operation: 'read', ref, lines: { start: 4, end: 999 } }) as AgentReadResponse;
    assert.equal(tail.code, '');
    assert.deepEqual(tail.line_coverage, { selected: { start: 4, end: 4 }, page: { start: 4, end: 4 }, complete_lines: { start: 4, end: 4 } });
  } finally { session.close(); }
});

test('line coverage never claims a Unicode line split by byte paging as complete', async () => {
  const text = 'needle\r\n' + '🙂'.repeat(3000) + '\r\n\r\n';
  const session = new AgentSession(new Fake(text), { maxPageBytes: 4096 });
  try {
    const ref = await discover(session); let page = await session.execute({ operation: 'read', ref, lines: { start: 2, end: 3 } }) as AgentReadResponse;
    let actual = '', pages = 0;
    for (;;) {
      pages++; actual += page.code;
      assert.deepEqual(page.line_coverage!.selected, { start: 2, end: 3 });
      if (page.code_range!.start_column > 1) assert.ok(!page.line_coverage!.complete_lines || page.line_coverage!.complete_lines.start > 2);
      if (page.has_more) assert.equal(page.line_coverage!.complete_lines, null);
      else break;
      page = await session.execute({ cursor: page.next_cursor }) as AgentReadResponse;
      assert.ok(pages < 100);
    }
    assert.ok(pages > 1); assert.equal(actual, text.slice('needle\r\n'.length));
    assert.deepEqual(page.line_coverage!.complete_lines, { start: 3, end: 3 });
  } finally { session.close(); }
});

test('oversized Unicode/CRLF code pages reconstruct exactly, replay and remain immutable through edits', async () => {
  const original = 'needle\r\n' + '中文🙂"\\\r\n'.repeat(700), reader = new Fake(original);
  const session = new AgentSession(reader, { maxPageBytes: 4096 });
  try {
    const ref = await discover(session);
    let page = await session.execute({ operation: 'read', ref }) as AgentReadResponse;
    assert.equal(page.has_more, true); const cursor = page.next_cursor!;
    reader.text = 'needle updated'; const pages = [page];
    while (page.has_more) {
      page = await session.execute({ cursor: page.next_cursor }) as AgentReadResponse;
      pages.push(page); assert.ok(pages.length < 100);
    }
    assert.equal(pages.map(p => p.code).join(''), original); assert.equal(reader.calls, 2);
    assert.deepEqual(await session.execute({ cursor }), pages[1]);
    for (let i = 0; i < pages.length; i++) {
      assert.ok(bytes(pages[i]) <= 4096);
      assert.equal(/\r$|[\uD800-\uDBFF]$/.test(pages[i].code!), false);
      if (i) assert.deepEqual([pages[i].code_range!.start_line, pages[i].code_range!.start_column],
        [pages[i - 1].code_range!.end_line, pages[i - 1].code_range!.end_column]);
    }
    assert.equal((await session.execute({ operation: 'read', ref }) as AgentReadResponse).code, reader.text);
  } finally { session.close(); }
});

test('a single huge line pages without splitting Unicode and returns exclusive original codepoint columns', async () => {
  const original = 'needle' + '🙂'.repeat(3000), session = new AgentSession(new Fake(original), { maxPageBytes: 4096 });
  try {
    const ref = await discover(session); let page = await session.execute({ operation: 'read', ref }) as AgentReadResponse;
    let column = 1, result = '';
    for (;;) {
      const r = page.code_range!; assert.equal(r.start_line, 1); assert.equal(r.end_line, 1);
      assert.equal(r.start_column, column); column += [...page.code!].length; assert.equal(r.end_column, column);
      result += page.code; if (!page.has_more) break;
      page = await session.execute({ cursor: page.next_cursor }) as AgentReadResponse;
    }
    assert.equal(result, original);
  } finally { session.close(); }
});

test('inclusive line ranges preserve separators, clamp end and reject absent lines', async () => {
  const reader = new Fake('needle\r\nsecond🙂\rthird\nfourth'), session = new AgentSession(reader);
  try {
    const ref = await discover(session);
    const selected = await session.execute({ operation: 'read', ref, lines: { start: 2, end: 3 } }) as AgentReadResponse;
    assert.equal(selected.code, 'second🙂\rthird\n'); assert.equal(selected.line_count, 4);
    assert.deepEqual(selected.code_range, { start_line: 2, start_column: 1, end_line: 4, end_column: 1 });
    assert.equal(selected.has_more, false); assert.equal(selected.next_cursor, null);
    assert.equal((await session.execute({ operation: 'read', ref, lines: { start: 4, end: 999 } }) as AgentReadResponse).code, 'fourth');
    await assert.rejects(session.execute({ operation: 'read', ref, lines: { start: 5, end: 6 } }), fails('LINE_RANGE_NOT_FOUND'));
    const before = reader.calls;
    for (const lines of [null, {}, { start: 0, end: 1 }, { start: 3, end: 2 }, { start: 1.5, end: 2 }, { start: 1, end: 2, extra: 1 }]) {
      await assert.rejects(session.execute({ operation: 'read', ref, lines }), fails('INVALID_REQUEST'));
    }
    await assert.rejects(session.execute({ operation: 'read', ref, lines: { start: 1, end: 2 }, include_graph: true }), fails('INVALID_REQUEST'));
    assert.equal(reader.calls, before);
  } finally { session.close(); }
});

test('32 full reads share a hard response budget and each cursor reconstructs its own complete content', async () => {
  const original = 'needle\n' + 'x'.repeat(200000), reader = new Fake(original), session = new AgentSession(reader);
  try {
    const ref = await discover(session);
    const batch = await session.execute({ operation: 'read', ref: Array(32).fill(ref) }) as AgentBatchReadResponse;
    assert.ok(bytes(batch) <= 128 * 1024); assert.equal(batch.returned_count, 32); assert.equal(reader.calls, 2);
    assert.ok(batch.results.every(r => !('error' in r) && r.has_more && !('status' in r)));
    let page = batch.results[0] as AgentReadContent, text = page.code!;
    while (page.has_more) { page = await session.execute({ cursor: page.next_cursor }) as AgentReadResponse; text += page.code; }
    assert.equal(text, original); assert.equal(reader.calls, 2);
  } finally { session.close(); }
});

test('mixed code, whole Diagram and object reads stay bounded with per-item immutable continuations', async () => {
  const text = 'needle\n' + 'x'.repeat(20000), data = [...rows(text), ...diagramRows()];
  let calls = 0;
  const session = new AgentSession({ request: async () => { calls++; return { ...response(), payload: encode(data) }; } }, { maxPageBytes: 8192 });
  try {
    const found = await session.execute({ query: ['needle', 'AEBLockTime'], group_by: 'object', context: 0 }) as AgentSearchResponse;
    const code = found.searches[0].results[0].ref, diagram = found.searches[1].results[0];
    const batch = await session.execute({ operation: 'read', ref: [code, diagram.ref, diagram.hits![0].ref] }) as AgentBatchReadResponse;
    assert.equal(batch.status, 'ok'); assert.equal(batch.returned_count, 3); assert.ok(bytes(batch) <= 8192);
    assert.equal(calls, 2); assert.ok((batch.results[0] as AgentReadContent).next_cursor);
    assert.ok((batch.results[1] as AgentReadContent).diagram_text); assert.equal((batch.results[2] as AgentReadContent).scope, 'local');
    let continued = batch.results[0] as AgentReadContent, joined = continued.code!;
    while (continued.has_more) {
      const cursor = continued.next_cursor;
      continued = await session.execute({ cursor }) as AgentReadResponse;
      assert.ok(bytes(continued) <= 8192, 'independent continuation uses the public page budget');
      assert.deepEqual(await session.execute({ cursor }), continued, 'immutable replay');
      joined += continued.code;
    }
    assert.equal(joined, text); assert.equal(calls, 2);
  } finally { session.close(); }
});

test('paged read snapshots expire at discovery expiry and cannot be resumed in another session', async () => {
  let now = 0; const reader = new Fake('needle\n' + 'x'.repeat(10000)), session = new AgentSession(reader, { maxPageBytes: 4096, ttlMs: 10, now: () => now });
  const other = new AgentSession(reader);
  try {
    const ref = await discover(session); now = 9;
    const page = await session.execute({ operation: 'read', ref }) as AgentReadResponse;
    assert.equal(page.expires_utc, new Date(10).toISOString());
    await assert.rejects(other.execute({ cursor: page.next_cursor }), fails('INVALID_CURSOR'));
    now = 10; await assert.rejects(session.execute({ cursor: page.next_cursor }), fails('CURSOR_EXPIRED'));
    assert.equal(reader.calls, 2);
  } finally { session.close(); other.close(); }
});

test('paged reads reject snapshots over cache admission budget before returning an unusable cursor', async () => {
  const reader = new Fake('needle\n' + 'x'.repeat(10000)), session = new AgentSession(reader, { maxPageBytes: 4096, maxSnapshotBytes: 10000 });
  try {
    const ref = await discover(session);
    await assert.rejects(session.execute({ operation: 'read', ref }), fails('SNAPSHOT_TOO_LARGE'));
  } finally { session.close(); }
});

test('a ranged large body stops at the requested line boundary and does not resume the rest of the method', async () => {
  const selected = '🙂'.repeat(5000) + '\r\n', reader = new Fake('needle\r\n' + selected + 'excluded'), session = new AgentSession(reader, { maxPageBytes: 4096 });
  try {
    const ref = await discover(session);
    let page = await session.execute({ operation: 'read', ref, lines: { start: 2, end: 2 } }) as AgentReadResponse, text = '';
    for (;;) {
      assert.ok(bytes(page) <= 4096); text += page.code;
      if (!page.has_more) break;
      page = await session.execute({ cursor: page.next_cursor }) as AgentReadResponse;
    }
    assert.equal(text, selected); assert.equal(page.code_range!.end_line, 3); assert.equal(page.code_range!.end_column, 1);
    assert.equal(reader.calls, 2);
  } finally { session.close(); }
});
