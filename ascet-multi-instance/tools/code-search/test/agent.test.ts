import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentSession } from '../src/agent-session.js';
import { normalizeAgentSearch } from '../src/agent-validation.js';
import { SearchSession } from '../src/search-session.js';
import { JsonLineClient, ROOT } from '../src/bridge.js';
import { join } from 'node:path';
import { ToolError } from '../src/patterns.js';
import { docs, encode, Fake, diagramRows, response, rows, stateRows } from './fixtures.js';
import type { AgentReadResponse, AgentSearchResponse } from '../src/agent-types.js';
import type { Reader } from '../src/types.js';
import { linesOf, matchesOf } from './agent-output.js';

const fail = (code: string) => (e: unknown) => e instanceof ToolError && e.code === code;
const normalize = (value: unknown) => normalizeAgentSearch(value, () => { throw Error('unexpected ref'); });
async function search(session: AgentSession, input: unknown): Promise<AgentSearchResponse> {
  const value = await session.execute(input); assert.ok('searches' in value); return value;
}

test('simple input defaults, array shorthand, shared options and per-query overrides', () => {
  const one = normalize({ query: 'foo' }).request;
  assert.equal(one.limit, 50); assert.equal(one.operation, 'search_page'); assert.equal(one.result_format, 'expanded');
  assert.equal(one.context_before, 10); assert.equal(one.context_after, 10);
  const none = normalize({ query: 'foo', context: 0 }).request;
  assert.equal(none.context_before, 0); assert.equal(none.context_after, 0);
  assert.deepEqual(one.queries, [{ query: 'foo', mode: 'text', case_sensitive: false, multiline: false, dotall: false }]);
  const many = normalize({ query: ['foo', { text: 'bar.*', mode: 'regex', id: 'pattern' }], mode: 'identifier', case_sensitive: true, context: 2 }).request;
  assert.equal(many.queries![0].mode, 'identifier_occurrence'); assert.equal(many.queries![1].mode, 'regex');
  assert.equal(many.queries![1].case_sensitive, true); assert.equal(many.context_before, 2); assert.equal(many.context_after, 2);
  assert.equal(normalize({ query: 'a\nb' }).request.queries![0].multiline, true);
  assert.equal(normalize({ query: 'a.*b', mode: 'regex', dotall: true }).request.queries![0].multiline, true);
  assert.equal(normalize({ query: 'foo', context: { before: 3 } }).request.context_after, 0);
});

test('a single query object preserves batch overrides, labels and cross-line ranges through paging', async () => {
  const query = { text: 'foo.*bar', mode: 'regex', dotall: true, id: 'fragment' };
  const options = { mode: 'identifier', case_sensitive: true, context: 2, limit: 1 };
  assert.deepEqual(normalize({ query, ...options }), normalize({ query: [query], ...options }));
  const session = new AgentSession(new Fake('foo\r\nbar\nfoo\rbar'));
  try {
    const first = await search(session, { query: { ...query, text: 'foo\\s+bar' }, ...options });
    assert.equal(first.total_hits, 2); assert.equal(first.returned_hits, 1);
    assert.equal(first.searches[0].id, 'fragment'); assert.equal(first.searches[0].mode, 'regex');
    assert.equal(first.has_more, true);
    const next = await search(session, { cursor: first.next_cursor });
    assert.equal(next.returned_hits, 1); assert.equal(next.has_more, false);
    assert.equal(next.searches[0].id, 'fragment');
    assert.deepEqual(first.searches[0].results[0].snippets![0].matches[0].ranges,
      [{ start_line: 1, start_column: 1, end_line: 2, end_column: 4 }]);
    assert.deepEqual(next.searches[0].results[0].snippets![0].matches[0].ranges,
      [{ start_line: 3, start_column: 1, end_line: 4, end_column: 4 }]);
  } finally { session.close(); }
});

test('bad simplified requests reject the whole batch before any live read', async () => {
  const reader = new Fake(), session = new AgentSession(reader);
  try {
    for (const input of [null, [], {}, { query: '' }, { query: [] }, { query: Array(65).fill('foo') },
      { query: ['foo', { text: '[', mode: 'regex' }] }, { query: { text: '[', mode: 'regex' } },
      { query: { text: 'foo', id: 1 } }, { query: { text: 'foo', typo: true } }, { query: {} },
      { query: 'foo', mode: null }, { query: 'foo', mode: 'fuzzy' }, { query: 'foo', case_sensitive: null },
      { query: ['foo', { text: 'bar', id: 1 }] }, { query: ['foo', { text: 'bar', typo: true }] },
      { query: 'foo', debug: null }, { query: 'foo', context: null }, { query: 'foo', context: { before: null } },
      { query: 'foo', context: 101 }, { query: 'foo', context: -1 }, { query: 'foo', context: 1.1 },
      { query: 'foo', context: { after: 101 } }, { query: 'foo', limit: null }, { query: 'foo', limit: 201 },
      { query: 'foo', in: { component: [] } }, { query: 'foo', in: { component: 'name-not-oid' } },
      { query: 'foo', in: { unknown: 'foo' } }, { query: 'foo', database: null },
      { query: 'foo', queries: ['foo'] }, { query: 'foo', dotall: true }, { query: 'foo\nbar', multiline: false },
      { query: 'foo', operation: 'search_page' }, { query: 'foo', cursor: 'x' }]) {
      await assert.rejects(session.execute(input), 'accepted ' + JSON.stringify(input));
    }
    assert.equal(reader.calls, 0);
  } finally { session.close(); }
});

test('scope scalar/list mapping, base implementation, and no hidden mode guessing', () => {
  const value = normalize({ query: '*.foo', in: { component: '040qm00100001m8714ag81ugur0dk', member: ['init', 'calc'],
    member_id: 'abc', kind: 'method', variant: ['PC', 'ASDL'], implementation: '' } });
  assert.equal(value.request.queries![0].mode, 'text');
  assert.deepEqual(value.request.filters, { component_oids: ['040qm00100001m8714ag81ugur0dk'], member_names: ['init', 'calc'],
    member_ids: ['abc'], kinds: ['method'], variants: ['PC', 'ASDL'], implementation_oids: [''] });
});

test('misplaced scope errors name the fields and guide correction before live access', async () => {
  const reader = new Fake(), session = new AgentSession(reader);
  try {
    for (const input of [
      { operation: 'find', component: 'AEB', kind: 'process' },
      { query: 'AxAct', kind: 'method', variant: 'ASDL' },
      { query: 'AxAct', component: 'AEB_Core' },
    ]) {
      const keys = Object.keys(input).filter(k => ['kind', 'variant', 'component'].includes(k) && !(input.operation === 'find' && k === 'component'));
      await assert.rejects(session.execute(input), (error: unknown) => {
        assert.ok(error instanceof ToolError); assert.equal(error.code, 'INVALID_REQUEST');
        for (const key of keys) { assert.ok(error.message.includes(JSON.stringify(key))); assert.ok(error.message.includes('in.' + key)); }
        assert.ok(!error.message.includes('AEB')); return true;
      });
    }
    assert.equal(reader.calls, 0);
    const longKey = 'typo'.repeat(1000);
    assert.throws(() => normalize({ query: 'AxAct', [longKey]: 'private-value' }), (error: unknown) => {
      assert.ok(error instanceof ToolError); assert.ok(error.message.length < 200);
      assert.ok(!error.message.includes('private-value')); return true;
    });
  } finally { session.close(); }
});

test('compact results keep counts, paths and positions with direct match arrays', async () => {
  const reader = new Fake('foo foo\nfoo'), session = new AgentSession(reader);
  try {
    const page = await search(session, { query: 'foo', limit: 2 });
    assert.equal(page.returned_hits, 2); assert.equal(page.total_hits, 3); assert.equal(page.has_more, true);
    assert.equal(reader.calls, 1); assert.equal(page.debug, undefined); assert.equal(page.issues, undefined);
    const d = page.searches[0].results[0];
    assert.equal(d.component_path, 'folder/class'); assert.equal(d.method, 'calc'); assert.equal(d.kind, 'method');
    assert.deepEqual(matchesOf(d), [{ line: 1, columns: [1, 5], text: 'foo foo' }]);
    assert.equal('matches' in d, false); assert.equal('context' in d, false);
    assert.ok(d.ref.length < 30); assert.equal('match_set' in d, false); assert.equal('source_sha256' in d, false);
    const next = await search(session, { cursor: page.next_cursor });
    assert.equal(next.returned_hits, 1); assert.equal(next.next_cursor, null);
    assert.equal(next.searches[0].results[0].ref, d.ref); assert.equal(reader.calls, 1);
    assert.deepEqual(await search(session, { cursor: page.next_cursor }), next);
  } finally { session.close(); }
});

test('64 different entries, duplicate ids and mixed modes use one read and round-robin pagination', async () => {
  const reader = new Fake(Array.from({ length: 64 }, (_, i) => 'term' + i).join(' ')), session = new AgentSession(reader);
  try {
    const query = Array.from({ length: 64 }, (_, i) => ({ text: '\\bterm' + i + '\\b', mode: 'regex', id: 'same' }));
    let page = await search(session, { query, limit: 1 });
    for (let i = 0; i < 64; i++) {
      assert.equal(page.total_hits, 64); assert.equal(page.searches[i].returned_hits, 1); assert.equal(page.searches[i].id, 'same');
      assert.equal(page.searches.filter(q => q.returned_hits).length, 1);
      if (page.has_more) page = await search(session, { cursor: page.next_cursor });
    }
    assert.equal(reader.calls, 1);
  } finally { session.close(); }
});

test('context scalar, multiline auto-detection, regex flags and short output preserve ranges', async () => {
  const reader = new Fake('head\nfoo\nbar\ntail'), session = new AgentSession(reader);
  try {
    const page = await search(session, { query: ['foo\nbar', { text: 'foo.*bar', mode: 'regex', dotall: true }], context: { before: 1, after: 0 } });
    for (const q of page.searches) {
      assert.equal(q.multiline, true); assert.equal(q.total_hits, 1);
      assert.deepEqual(matchesOf(q.results[0])[0].ranges, [{ start_line: 2, start_column: 1, end_line: 3, end_column: 4 }]);
      assert.deepEqual(linesOf(q.results[0]).map(l => l.text), ['head', 'foo', 'bar']);
    }
    reader.text = Array.from({ length: 50 }, (_, i) => i === 24 ? 'needle' : 'line ' + (i + 1)).join('\n');
    const defaultPage = await search(session, { query: 'needle' });
    const expectedLines = Array.from({ length: 21 }, (_, i) => ({ line: i + 15, text: i === 10 ? 'needle' : 'line ' + (i + 15) }));
    assert.deepEqual(linesOf(defaultPage.searches[0].results[0]), expectedLines);
    assert.equal(defaultPage.searches[0].results[0].omitted_lines, undefined);
    const explicitPage = await search(session, { query: 'needle', context: 10 });
    assert.deepEqual(explicitPage.searches[0].results[0].snippets, defaultPage.searches[0].results[0].snippets);
    const noContext = await search(session, { query: 'needle', context: 0 });
    assert.equal(linesOf(noContext.searches[0].results[0]).length, 1);
    assert.deepEqual(matchesOf(noContext.searches[0].results[0]), matchesOf(defaultPage.searches[0].results[0]));
  } finally { session.close(); }
});

test('ref read works after a terminal page, returns live changes and supports hash precondition', async () => {
  const reader = new Fake('foo'), session = new AgentSession(reader);
  try {
    const page = await search(session, { query: 'foo' }), ref = page.searches[0].results[0].ref;
    assert.equal(page.has_more, false);
    let read = await session.execute({ operation: 'read', ref }) as AgentReadResponse;
    assert.equal(read.code, 'foo'); assert.equal(read.status, 'ok'); assert.equal(read.issues, undefined);
    assert.equal('source_read_complete' in read, false); assert.equal('changed_since_search' in read, false);
    reader.text = 'foo changed';
    read = await session.execute({ operation: 'read', ref }) as AgentReadResponse;
    assert.equal(read.code, 'foo changed'); assert.equal(read.status, 'changed'); assert.equal(read.issues![0].code, 'SOURCE_CHANGED');
    await assert.rejects(session.execute({ operation: 'read', ref, if_unchanged: true }), fail('SOURCE_CHANGED'));
    assert.equal(reader.calls, 4);
    assert.equal(reader.requested!.expected_database, 'db');
  } finally { session.close(); }
});

test('refs cannot be reused after expiry, eviction, close or in a different session', async () => {
  let now = 1000;
  const reader = new Fake(), a = new AgentSession(reader, { ttlMs: 100, maxEntries: 1, now: () => now }), b = new AgentSession(reader);
  try {
    const old = await search(a, { query: 'foo', limit: 1 }), ref = old.searches[0].results[0].ref;
    await assert.rejects(b.execute({ operation: 'read', ref }), fail('REF_EXPIRED'));
    const second = await search(a, { query: 'foo' }), ref2 = second.searches[0].results[0].ref;
    assert.notEqual(ref, ref2); await assert.rejects(a.execute({ operation: 'read', ref }), fail('REF_EXPIRED'));
    await assert.rejects(a.execute({ cursor: old.next_cursor }), fail('CURSOR_EXPIRED'));
    now += 100;
    await assert.rejects(a.execute({ operation: 'read', ref: ref2 }), fail('REF_EXPIRED'));
    assert.equal(reader.calls, 2);
    a.close(); await assert.rejects(a.execute({ query: 'foo' }), fail('SESSION_CLOSED'));
  } finally { a.close(); b.close(); }
});

test('scope ref pins database and mixed-database refs reject before live access', async () => {
  const oid = '040qm00100001m8714ag81ugur0dk';
  let database = 'db'; const requests: unknown[] = [];
  const reader: Reader = { request: async r => {
    requests.push(r); const data = rows('foo'); data[0][1] = data[1][1] = oid;
    return { ...response(), database, payload: encode(data) };
  } };
  const session = new AgentSession(reader);
  try {
    const first = await search(session, { query: 'foo' }), ref = first.searches[0].results[0].ref;
    await search(session, { query: 'foo', in: { component: ref } });
    assert.deepEqual(requests.at(-1), { mode: 'search_many', needle: 'foo', include_diagrams: true, expected_database: 'db', filters: { component_oids: [oid] } });
    database = 'other';
    const other = await search(session, { query: 'foo' }), ref2 = other.searches[0].results[0].ref;
    await assert.rejects(session.execute({ query: 'foo', in: { component: [ref, ref2] } }), fail('SCOPE_DATABASE_MISMATCH'));
    await assert.rejects(session.execute({ query: 'foo', database: 'other', in: { component: ref } }), fail('SCOPE_DATABASE_MISMATCH'));
    assert.equal(requests.length, 3);
  } finally { session.close(); }
});

test('reference cap evicts old groups and never silently rebinds an old ref', async () => {
  const session = new AgentSession(new Fake('foo'), { maxReferences: 1 });
  try {
    const first = await search(session, { query: 'foo' }), old = first.searches[0].results[0].ref;
    const second = await search(session, { query: ['foo', 'foo'] });
    assert.equal(second.searches[0].results[0].ref, second.searches[1].results[0].ref);
    await assert.rejects(session.execute({ operation: 'read', ref: old }), fail('REF_EXPIRED'));
  } finally { session.close(); }
});

test('same displayed member names retain distinct refs and read the right source', async () => {
  const data = rows('foo one');
  const second = [...data[1]]; second[5] = 'def'; second[8] = 'foo two'; data.splice(2, 0, second);
  const session = new AgentSession({ request: async () => ({ ...response(), payload: encode(data) }) });
  try {
    const page = await search(session, { query: 'foo' }), results = page.searches[0].results;
    assert.equal(results.length, 2); assert.equal(results[0].method, results[1].method);
    assert.notEqual(results[0].ref, results[1].ref);
    const actual = [];
    for (const result of results) actual.push((await session.execute({ operation: 'read', ref: result.ref }) as AgentReadResponse).code);
    assert.deepEqual(actual.sort(), ['foo one', 'foo two']);
  } finally { session.close(); }
});

test('shortened previews and context retain explicit truncation while pages stay bounded', async () => {
  const session = new AgentSession(new Fake('🙂'.repeat(400) + 'foo\n' + ('body\n'.repeat(500)) + 'end'));
  try {
    const page = await search(session, { query: [{ text: 'foo' }, { text: 'foo.*end', mode: 'regex', dotall: true }] });
    assert.ok(Buffer.byteLength(JSON.stringify(page)) <= 128 * 1024);
    const first = matchesOf(page.searches[0].results[0])[0];
    assert.equal(first.columns[0], 401); assert.equal(first.truncated_before, true); assert.ok(first.start_column! > 1);
    assert.ok(page.searches[1].results[0].omitted_lines! > 0);
    assert.equal(page.searches[1].has_more, false);
  } finally { session.close(); }
});

test('partial sources expose errors, and debug diagnostics are opt-in and persist over pages', async () => {
  const session = new AgentSession(new Fake('foo foo', true));
  try {
    const page = await search(session, { query: 'foo', limit: 1, debug: true });
    assert.equal(page.status, 'partial'); assert.equal('source_read_complete' in page, false); assert.equal(page.issues!.length, 1);
    assert.equal(page.issues![0].code, 'READ_INCOMPLETE');
    assert.ok(page.debug);
    const next = await search(session, { cursor: page.next_cursor }); assert.ok(next.debug);
  } finally { session.close(); }
});

test('state locations and graphical representation remain explicit in compact search/read', async () => {
  for (const data of [stateRows(), [rows()[0], ...diagramRows(), ['#STATS', '1', '1', '0', '0', '0', '0', '', '', '']]]) {
    const session = new AgentSession({ request: async () => ({ ...response(), payload: encode(data) }) });
    try {
      const page = await search(session, { query: ['foo', 'AEBLockTime'] });
      const result = page.searches.flatMap(q => q.results)[0]; assert.ok(result);
      if (result.kind === 'diagram') assert.equal(result.representation, 'graphical_model'); else assert.ok(result.diagram);
      const read = await session.execute({ operation: 'read', ref: result.ref }) as AgentReadResponse;
      assert.equal(read.kind, result.kind); assert.equal(read.representation, result.representation); assert.deepEqual(read.diagram, result.diagram);
    } finally { session.close(); }
  }
});

test('read refuses a ref after ASCET process identity changes', async () => {
  let pid = 1;
  const session = new AgentSession({ request: async () => ({ ...response('foo'), ascet_pid: pid }) });
  try {
    const page = await search(session, { query: 'foo' }); pid = 2;
    await assert.rejects(session.execute({ operation: 'read', ref: page.searches[0].results[0].ref }), fail('ASCET_RESTARTED'));
  } finally { session.close(); }
});

test('CLI --agent rejects invalid input without ASCET, and legacy session still has full v1 output', async () => {
  const client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), '--agent'] });
  try {
    const result = await client.request({ query: [], debug: true }) as Record<string, unknown>;
    assert.equal(result.status, 'error'); assert.equal(result.code, 'INVALID_REQUEST'); assert.equal('schema_version' in result, false);
    const oversized = await client.request({ ['x'.repeat(200000)]: true, query: 'foo' });
    assert.ok(JSON.stringify(oversized).length < 2000);
  } finally { await client.close(); }
  const old = new SearchSession(new Fake('foo'));
  try { assert.equal((await old.execute({ query: 'foo' })).schema_version, 1); } finally { old.close(); }
});

test('in-flight close and queued requests cannot revive refs or bypass serial live access', async () => {
  let release!: () => void, active = 0, max = 0;
  const session = new AgentSession({ request: async () => { max = Math.max(max, ++active); await new Promise<void>(r => { release = r; }); active--; return response(); } });
  const first = session.execute({ query: 'foo' }), second = session.execute({ query: 'foo' });
  const check1 = assert.rejects(first, fail('SESSION_CLOSED')), check2 = assert.rejects(second, fail('SESSION_CLOSED'));
  await new Promise(r => setImmediate(r)); session.close(); release();
  await Promise.all([check1, check2]); assert.equal(max, 1);
});
