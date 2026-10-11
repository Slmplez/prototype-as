import test from 'node:test';
import assert from 'node:assert/strict';
import { SearchSession } from '../src/search-session.js';
import { JsonLineClient, ROOT } from '../src/bridge.js';
import { join } from 'node:path';
import { search, errorResponse } from '../src/search.js';
import { decodeResponse, sha256 } from '../src/protocol.js';
import type { SearchPageResponse } from '../src/paging-types.js';
import type { QueryResult, Reader, SearchResponse } from '../src/types.js';
import { encode, Fake, response, rows, stateRows } from './fixtures.js';

const code = (expected: string) => (error: unknown) => {
  assert.equal(errorResponse({}, error).code, expected); return true;
};
async function page(session: SearchSession, request: unknown): Promise<SearchPageResponse> {
  const value = await session.execute(request);
  assert.equal(value.schema_version, 2);
  return value as SearchPageResponse;
}
function fullKeys(full: SearchResponse): string[] {
  const qs: QueryResult[] = 'searches' in full ? full.searches : [full];
  return qs.flatMap((q, i) => q.results.flatMap(d => (d.matches ?? q.match_sets![d.match_set!]).flatMap(m =>
    m.columns.map((column, n) => JSON.stringify([i, d.document_id, d.source_sha256, m.line, column, m.ranges?.[n] ?? null]))))).sort();
}
function pageKeys(value: SearchPageResponse): string[] {
  const all: string[] = [];
  for (const q of value.searches) {
    let count = 0;
    for (const d of q.results) {
      const matches = d.matches ?? q.match_sets![d.match_set!];
      assert.ok(matches);
      for (const m of matches) {
        if (m.ranges) assert.equal(m.columns.length, m.ranges.length);
        for (let n = 0; n < m.columns.length; n++) {
          all.push(JSON.stringify([q.query_index, d.document_id, d.source_sha256, m.line, m.columns[n], m.ranges?.[n] ?? null])); count++;
        }
      }
    }
    assert.equal(count, q.returned_occurrences);
  }
  assert.equal(all.length, value.returned_occurrences);
  assert.ok(all.length <= value.limit);
  assert.equal(value.has_more, value.searches.some(q => q.has_more));
  assert.equal(value.has_more, value.next_cursor !== null);
  return all;
}
async function collect(session: SearchSession, request: unknown, maxBytes = 128 * 1024) {
  const pages: SearchPageResponse[] = [], keys: string[] = [];
  let next = request;
  for (let n = 0; n < 10000; n++) {
    const value = await page(session, next);
    assert.ok(Buffer.byteLength(JSON.stringify(value), 'utf8') <= maxBytes);
    pages.push(value); keys.push(...pageKeys(value));
    if (!value.has_more) return { pages, keys: keys.sort() };
    assert.ok(value.returned_occurrences > 0);
    next = { cursor: value.next_cursor };
  }
  throw new Error('Pagination failed to make progress');
}

test('v2 strict occurrence limit, defaults and legacy full-result compatibility', async () => {
  const b = new Fake('foo '.repeat(251)), session = new SearchSession(b);
  try {
    const initial = await page(session, { operation: 'search_page', query: 'foo' });
    assert.equal(initial.limit, 50); assert.equal(initial.returned_occurrences, 50);
    const legacy = await session.execute({ query: 'foo' });
    assert.equal(legacy.schema_version, 1); assert.equal((legacy as QueryResult).total_occurrences, 251);
    for (const limit of [0, -1, 201, 1.1, null, '50']) {
      await assert.rejects(session.execute({ operation: 'search_page', query: 'foo', limit }), code('INVALID_LIMIT'));
    }
    assert.equal(b.calls, 2);
    const one = await collect(session, { operation: 'search_page', query: 'foo', limit: 200 });
    assert.deepEqual(one.pages.map(p => p.returned_occurrences), [200, 51]);
    assert.equal(one.keys.length, 251); assert.equal(new Set(one.keys).size, 251);
    await assert.rejects(session.execute({ query: 'foo', limit: 5 }), /Unsupported fields/);
  } finally { session.close(); }
});

test('one occurrence per page traverses the same line and method without rereading', async () => {
  const b = new Fake('foo foo\nfoo foo'), expected = await search({ query: 'foo' }, b), session = new SearchSession(b);
  try {
    const all = await collect(session, { operation: 'search_page', query: 'foo', limit: 1 });
    assert.deepEqual(all.keys, fullKeys(expected)); assert.equal(all.pages.length, 4); assert.equal(b.calls, 2);
  } finally { session.close(); }
});

test('shared sets are rebuilt when identical source versions are split at 30 + 20', async () => {
  const data = rows('foo '.repeat(30)), second = [...data[1]]; second[4] = 'PC'; data.splice(2, 0, second);
  const b: Reader = { request: async () => ({ ...response(), payload: encode(data) }) };
  const session = new SearchSession(b);
  try {
    const first = await page(session, { operation: 'search_page', query: 'foo', result_format: 'shared', limit: 50, context_before: 1 });
    const q = first.searches[0];
    assert.equal(q.results.length, 2); assert.notEqual(q.results[0].match_set, q.results[1].match_set);
    assert.deepEqual(q.results.map(d => q.match_sets![d.match_set!][0].columns.length), [30, 20]);
    const token = first.next_cursor!;
    const next = await page(session, { cursor: token });
    assert.equal(next.returned_occurrences, 10);
    assert.deepEqual(next.searches[0].match_sets![0][0].columns, Array.from({ length: 10 }, (_, i) => 81 + i * 4));
    const replay = await page(session, { cursor: token });
    assert.deepEqual({ ...next, timings: null }, { ...replay, timings: null });
    assert.deepEqual([...pageKeys(first), ...pageKeys(next)].sort(), fullKeys(await search({ query: 'foo' }, b)));
    first.searches[0].match_sets![0][0].columns[0] = -999;
    first.coverage.changed = 1;
    assert.equal((await page(session, { cursor: token })).coverage.changed, undefined);
  } finally { session.close(); }
});

test('all modes, cross-line spans, zero-width matches, emoji and CRLF preserve full-result coordinates', async () => {
  const b = new Fake('🙂foo foo2 _foo\r\nBAR🙂\rfoo\n\n');
  const queries = [
    { query: 'foo' }, { query: 'foo', mode: 'identifier_occurrence' },
    { query: 'foo2 _foo\nBAR', multiline: true },
    { query: '(?:)', mode: 'regex', multiline: true },
    { query: 'foo.*BAR', mode: 'regex', multiline: true, dotall: true },
    { query: 'foo|BAR|🙂', mode: 'regex' }, { query: 'NO_MATCH' },
  ];
  const full = await search({ queries }, b), session = new SearchSession(b);
  try {
    for (const format of ['expanded', 'shared']) {
      const all = await collect(session, { operation: 'search_page', queries, limit: 3, result_format: format, context_before: 1, context_after: 1 });
      assert.deepEqual(all.keys, fullKeys(full));
      assert.equal(all.pages[0].total_occurrences, fullKeys(full).length);
    }
    assert.equal(b.calls, 3);
  } finally { session.close(); }
});

test('nested same-name state identities and method bindings survive pagination', async () => {
  const b: Reader = { request: async () => ({ ...response(), payload: encode(stateRows()) }) };
  const session = new SearchSession(b);
  try {
    const request = { queries: [{ query: 'foo' }, { query: 'sm' }] };
    const all = await collect(session, { ...request, operation: 'search_page', limit: 1 });
    assert.deepEqual(all.keys, fullKeys(await search(request, b)));
    const docs = all.pages.flatMap(p => p.searches.flatMap(q => q.results));
    assert.ok(docs.some(d => d.binding?.method_name === 'sm'));
    assert.ok(docs.every(d => d.location));
  } finally { session.close(); }
});

test('64 queries with duplicate ids and limit 1 are fair across page boundaries', async () => {
  const b = new Fake('foo foo'), session = new SearchSession(b);
  try {
    const queries = Array.from({ length: 64 }, () => ({ id: 'same', query: 'foo' }));
    const all = await collect(session, { operation: 'search_page', queries, limit: 1 });
    assert.equal(all.pages.length, 128);
    const winners = all.pages.map(p => p.searches.find(q => q.returned_occurrences === 1)!.query_index);
    assert.deepEqual(winners.slice(0, 64), Array.from({ length: 64 }, (_, i) => i));
    assert.deepEqual(winners.slice(64), winners.slice(0, 64)); assert.equal(b.calls, 1);
    assert.equal(all.pages[0].searches[63].returned_occurrences, 0);
    assert.equal(all.pages[0].searches[63].has_more, true);
    assert.equal(all.pages[0].searches[63].total_occurrences, 2);
  } finally { session.close(); }
});

test('context is rebuilt for each selected hit instead of returning other pages windows', async () => {
  const b = new Fake('zero\nfoo\ntwo\nthree\nfour\nfoo\nsix\nseven'), session = new SearchSession(b);
  try {
    const all = await collect(session, { operation: 'search_page', query: 'foo', limit: 1, context_before: 1, context_after: 1 });
    assert.deepEqual(all.pages.map(p => p.searches[0].results[0].context!.lines.map(l => l.line)), [[1, 2, 3], [5, 6, 7]]);
    assert.ok(all.pages.every(p => p.searches[0].results[0].context!.omitted_lines === 0));
  } finally { session.close(); }
});

test('long Unicode previews keep original match coordinates and explicit window origin', async () => {
  const text = '🙂'.repeat(5000) + 'foo' + '中'.repeat(5000), b = new Fake(text), session = new SearchSession(b);
  try {
    const value = await page(session, { operation: 'search_page', query: 'foo' });
    const m = value.searches[0].results[0].matches![0];
    assert.deepEqual(m.columns, [5001]);
    assert.ok(m.preview.text.includes('foo')); assert.equal([...m.preview.text].length, 500);
    assert.equal(m.preview.text, [...text].slice(m.preview.start_column - 1, m.preview.start_column - 1 + 500).join(''));
    assert.equal(m.preview.truncated_before, true); assert.equal(m.preview.truncated_after, true);
  } finally { session.close(); }
});

test('one huge multiline occurrence returns bounded context without losing its range', async () => {
  const b = new Fake('start\n' + 'middle\n'.repeat(5000) + 'end'), session = new SearchSession(b);
  try {
    const p = await page(session, { operation: 'search_page', query: 'start.*end', mode: 'regex', multiline: true, dotall: true });
    const d = p.searches[0].results[0];
    assert.equal(p.returned_occurrences, 1); assert.equal(p.has_more, false);
    assert.equal(d.matches![0].ranges![0].end_line, 5002);
    assert.equal(d.context!.lines.length, 40); assert.equal(d.context!.omitted_lines, 4962);
    assert.equal(d.context!.lines.at(-1)!.line, 5002);
  } finally { session.close(); }
});

test('hard UTF-8 byte budget ends pages early while every continuation makes progress', async () => {
  const b = new Fake(('foo ' + '中'.repeat(120) + '\n').repeat(75)), session = new SearchSession(b, { maxPageBytes: 4096 });
  try {
    const expected = await search({ query: 'foo' }, b);
    const all = await collect(session, { operation: 'search_page', query: 'foo', limit: 200, context_before: 1, context_after: 1 }, 4096);
    assert.ok(all.pages.length > 1); assert.equal(all.pages[0].page_limited_by, 'bytes');
    assert.deepEqual(all.keys, fullKeys(expected));
    assert.equal(b.calls, 2);
  } finally { session.close(); }
});

test('oversized fixed metadata fails explicitly instead of creating an empty-page loop', async () => {
  const b = new Fake(), session = new SearchSession(b);
  try {
    const queries = Array.from({ length: 64 }, () => ({ query: '中'.repeat(1024) }));
    await assert.rejects(session.execute({ operation: 'search_page', queries }), code('PAGE_TOO_LARGE'));
    await assert.rejects(session.execute({ operation: 'search_page', query: 'foo', id: 'x'.repeat(140000) }), code('PAGE_TOO_LARGE'));
    assert.equal(b.calls, 0);
    const tiny = new SearchSession(b, { maxPageBytes: 100 });
    try { await assert.rejects(tiny.execute({ operation: 'search_page', query: 'foo' }), code('PAGE_TOO_LARGE')); }
    finally { tiny.close(); }
    assert.equal((await page(session, { operation: 'search_page', query: 'foo' })).source_read_complete, true);
  } finally { session.close(); }
});

test('TTL, fresh searches and source-hash reads have separate freshness semantics', async () => {
  let now = 1000;
  const b = new Fake('foo foo'), session = new SearchSession(b, { ttlMs: 100, now: () => now });
  try {
    const request = { operation: 'search_page', query: 'foo', limit: 1, id: { name: 'frozen' } };
    const first = await page(session, request), token = first.next_cursor!;
    request.id.name = 'mutated'; b.text = 'bar';
    const second = await page(session, { cursor: token });
    assert.deepEqual(second.id, { name: 'frozen' }); assert.equal(second.returned_occurrences, 1);
    assert.equal(second.observed_utc, first.observed_utc); assert.equal(second.freshness, 'query_snapshot'); assert.equal(b.calls, 1);
    const target = first.searches[0].results[0];
    await assert.rejects(session.execute({ operation: 'read', expected_database: 'db',
      target: { component_oid: target.component_oid, document_id: target.document_id }, expected_source_sha256: sha256('foo foo') }), code('SOURCE_CHANGED'));
    const fresh = await page(session, { operation: 'search_page', query: 'foo' });
    assert.equal(fresh.total_occurrences, 0); assert.equal(fresh.has_more, false); assert.equal(b.calls, 3);
    now = 1100;
    await assert.rejects(session.execute({ cursor: token }), code('CURSOR_EXPIRED'));
  } finally { session.close(); }
});

test('eviction, cross-session and malformed cursors fail without restarting a search', async () => {
  const b = new Fake('foo foo'), session = new SearchSession(b, { maxEntries: 1 }), other = new SearchSession(b);
  try {
    const request = { operation: 'search_page', query: 'foo', limit: 1 };
    const first = await page(session, request), second = await page(session, request);
    await assert.rejects(session.execute({ cursor: first.next_cursor }), code('CURSOR_EXPIRED'));
    await assert.rejects(other.execute({ cursor: second.next_cursor }), code('INVALID_CURSOR'));
    for (const cursor of ['', 'bad', 'x.' + '中'.repeat(43), second.next_cursor! + 'x']) {
      await assert.rejects(session.execute({ cursor }), code('INVALID_CURSOR'));
    }
    await assert.rejects(session.execute({ cursor: second.next_cursor, limit: 2 }), code('INVALID_CURSOR'));
    assert.equal((await page(session, { cursor: second.next_cursor })).returned_occurrences, 1); assert.equal(b.calls, 2);
  } finally { session.close(); other.close(); }
});

test('snapshot admission fails before returning a cursor and leaves the session usable', async () => {
  const b = new Fake('foo foo'), session = new SearchSession(b, { maxSnapshotBytes: 1 });
  try {
    await assert.rejects(session.execute({ operation: 'search_page', query: 'foo', limit: 1 }), code('SNAPSHOT_TOO_LARGE'));
    const one = await page(session, { operation: 'search_page', query: 'foo', limit: 2 });
    assert.equal(one.has_more, false); assert.equal(one.next_cursor, null);
  } finally { session.close(); }
});

test('partial reads preserve errors and supported coverage independently of pagination', async () => {
  const b = new Fake('foo foo', true), session = new SearchSession(b);
  try {
    const all = await collect(session, { operation: 'search_page', query: 'foo', limit: 1 });
    for (const p of all.pages) {
      assert.equal(p.status, 'partial'); assert.equal(p.source_read_complete, false);
      assert.equal(p.total_scope, 'successfully_read_sources'); assert.equal(p.total_occurrences, 2);
      assert.equal(p.errors.length, 1); assert.ok(p.excluded.length > 0);
    }
    assert.equal(all.pages.at(-1)!.has_more, false);
  } finally { session.close(); }
});

test('regex deadline produces no cursor and a later paged search remains usable', async () => {
  const b = new Fake('a'.repeat(10000) + '!'), session = new SearchSession(b);
  try {
    await assert.rejects(session.execute({ operation: 'search_page', query: '(a+)+$', mode: 'regex', limit: 1 }), code('REGEX_TIMEOUT'));
    const next = await page(session, { operation: 'search_page', query: '!' });
    assert.equal(next.returned_occurrences, 1); assert.equal(next.next_cursor, null);
  } finally { session.close(); }
});

test('session serializes live calls and close invalidates future requests', async () => {
  let inflight = 0, peak = 0;
  const b: Reader = { request: async () => {
    inflight++; peak = Math.max(peak, inflight);
    await new Promise(resolve => setTimeout(resolve, 5));
    inflight--; return response('foo foo');
  } };
  const session = new SearchSession(b);
  await Promise.all([session.execute({ operation: 'search_page', query: 'foo', limit: 1 }), session.execute({ query: 'foo' })]);
  assert.equal(peak, 1);
  session.close();
  await assert.rejects(session.execute({ operation: 'search_page', query: 'foo' }), code('SESSION_CLOSED'));
});

test('in-flight close cannot repopulate the result cache', async () => {
  let release!: () => void;
  const gate = new Promise<void>(resolve => { release = resolve; });
  const session = new SearchSession({ request: async () => { await gate; return response('foo foo'); } });
  const pending = session.execute({ operation: 'search_page', query: 'foo', limit: 1 });
  await new Promise(resolve => setImmediate(resolve));
  session.close(); release();
  await assert.rejects(pending, code('SESSION_CLOSED'));
});

test('real JSONL CLI bounds oversized paging errors and retains legacy error schema', async () => {
  const client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js')] });
  try {
    for (const request of [
      { operation: 'search_page', query: 'foo', id: 'x'.repeat(140000) },
      { operation: 'search_page', query: 'foo', ['x'.repeat(140000)]: true },
    ]) {
      const value = await client.request(request) as Record<string, unknown>;
      assert.equal(value.schema_version, 2); assert.equal(value.status, 'error'); assert.equal(value.code, 'PAGE_TOO_LARGE');
      assert.ok(Buffer.byteLength(JSON.stringify(value), 'utf8') <= 128 * 1024);
    }
    const old = await client.request({ query: 'foo', limit: 1 }) as Record<string, unknown>;
    assert.equal(old.schema_version, 1); assert.equal(old.status, 'error');
  } finally { await client.close(); }
});
