import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentEvidence, collectReturnedRefs } from '../src/agent-evidence.js';
import { AgentSession } from '../src/agent-session.js';
import { codeReadPage, prepareCodeRead } from '../src/code-read-pages.js';
import { response } from './fixtures.js';
import type { AgentReadResponse } from '../src/agent-types.js';

const expiry = '2099-01-01T00:00:00Z';
const member = (ref = 's1:d1', owner = 'Library/Class') => ({ ref, kind: 'method', component_path: owner, variant: 'ASDL' });
function find(e: AgentEvidence, request: Record<string, unknown> = {}, ref = 's1:d1') {
  e.record({ operation: 'find', ...request }, { status: 'ok', results: [member(ref)], total_count: 1, has_more: false, expires_utc: expiry });
}
const read = (ref = 's1:d1', fields: Record<string, unknown> = {}) => ({ status: 'ok', ...member(ref), code: 'x = 1;', ...fields });
const range = (start: number, end: number) => ({ start_line: 1, start_column: start, end_line: 1, end_column: end });

test('failed reads cannot introduce echoed refs; debug, graph and cursor are not selectors', () => {
  assert.deepEqual([...collectReturnedRefs({ status: 'partial', results: [member(), { ref: 'failed', error: {} }],
    next_cursor: 'cursor', graph: { ref: 'raw' }, debug: { ref: 'diagnostic' } })], ['s1:d1']);
  const e = new AgentEvidence();
  e.record({ operation: 'read', ref: 'failed' }, { status: 'error', results: [{ ref: 'failed', error: { code: 'READ_INCOMPLETE' } }] });
  assert.equal(e.refs().size, 0);
});

test('scoped find/search continuations inherit scope and returned owner identity', () => {
  const e = new AgentEvidence();
  e.record({ operation: 'find', component: 'Class' }, { status: 'ok', results: [member()], has_more: true, next_cursor: 'p1', expires_utc: expiry });
  e.record({ cursor: 'p1' }, { status: 'ok', results: [member('s1:d2')], has_more: false, expires_utc: expiry });
  e.record({ operation: 'read', ref: 's1:d2' }, read('s1:d2'));
  assert.equal(e.get('s1:d2')?.scoped, true); assert.equal(e.get('s1:d2')?.complete_text, true);
  const copy = e.get('s1:d2')!; copy.read = false;
  assert.equal(e.get('s1:d2')?.read, true);
});

test('a scoped graphical object does not scope text from its referenced Class', () => {
  const e = new AgentEvidence();
  e.record({ operation: 'search', in: { component: 'scope' } }, { status: 'ok', has_more: false,
    searches: [{ results: [{ ...member('diagram', 'App/Owner'), kind: 'diagram', hits: [
      { ref: 'placed', kind: 'element', component_path: 'Library/Class', referenced_component_path: 'Library/Class' }
    ] }] }], expires_utc: expiry });
  assert.equal(e.get('placed')?.component_path, 'App/Owner');
  find(e, {}, 'text'); e.record({ operation: 'read', ref: 'text' }, read('text'));
  assert.equal(e.get('text')?.scoped, false);
});

test('search completion, absence and regex proofs expire without new requests', () => {
  let now = 1000; const e = new AgentEvidence(() => now);
  e.record({ operation: 'search' }, { status: 'ok', total_hits: 0, has_more: false, expires_utc: new Date(2000).toISOString(),
    searches: [{ mode: 'regex', results: [{ ...member(), snippets: [{ matches: [{ ranges: [
      { start_line: 1, end_line: 2 }
    ] }] }] }] }] });
  assert.equal(e.hasCompleteZeroResult, true); assert.equal(e.allSearchPagesRead, true); assert.equal(e.hasMultilineRegexMatch, true);
  now = 2000;
  assert.equal(e.hasCompleteZeroResult, false); assert.equal(e.allSearchPagesRead, false); assert.equal(e.hasMultilineRegexMatch, false);
  assert.equal(e.get('s1:d1'), undefined);
});

test('partial zero results cannot prove absence or regex completeness', () => {
  const e = new AgentEvidence();
  e.record({ operation: 'search' }, { status: 'partial', total_hits: 0, has_more: false });
  assert.equal(e.hasCompleteZeroResult, false); assert.equal(e.allSearchPagesRead, false);
});

test('one combined search cursor exhausts all queries; replay does not lose completion', () => {
  const e = new AgentEvidence();
  e.record({ operation: 'search', query: ['a', 'b'] }, { status: 'ok', has_more: true, next_cursor: 'p', expires_utc: expiry });
  assert.equal(e.allSearchPagesRead, false);
  e.record({ cursor: 'p' }, { status: 'ok', has_more: false, expires_utc: expiry });
  assert.equal(e.allSearchPagesRead, true);
  e.record({ operation: 'find' }, { status: 'ok', has_more: true, next_cursor: 'directory', expires_utc: expiry });
  assert.equal(e.allSearchPagesRead, true);
  e.record({ operation: 'search' }, { status: 'ok', has_more: true, next_cursor: 'q', expires_utc: expiry });
  assert.equal(e.allSearchPagesRead, false);
});
test('a fresh equivalent query replaces abandoned pagination without forcing duplicate traversal', () => {
  const e = new AgentEvidence();
  e.record({ operation: 'search', query: ['a', 'b'], mode: 'identifier', limit: 1, in: { component: 'scope', kind: 'method' } },
    { status: 'ok', has_more: true, next_cursor: 'old', expires_utc: expiry });
  assert.deepEqual(e.pendingSearchCursors(), ['old']);
  e.record({ operation: 'search', in: { kind: 'method', component: 'scope' }, query: ['a', 'b'], mode: 'identifier', limit: 200, context: 0 },
    { status: 'ok', has_more: true, next_cursor: 'new', expires_utc: expiry });
  assert.deepEqual(e.pendingSearchCursors(), ['new']);
  e.record({ cursor: 'new' }, { status: 'ok', has_more: false });
  assert.equal(e.allSearchPagesRead, true); assert.deepEqual(e.pendingSearchCursors(), []);
});
test('different query predicates and scopes never replace outstanding proof', () => {
  const e = new AgentEvidence();
  e.record({ operation: 'search', query: 'a', in: { component: 'first' } }, { status: 'ok', has_more: true, next_cursor: 'old' });
  e.record({ operation: 'search', query: 'a', in: { component: 'second' } }, { status: 'ok', has_more: false });
  e.record({ operation: 'search', query: 'b', in: { component: 'first' } }, { status: 'ok', has_more: false });
  assert.equal(e.allSearchPagesRead, false); assert.deepEqual(e.pendingSearchCursors(), ['old']);
});

test('re-resolved Component refs prove equivalent queries only using returned unexpired owner identities', () => {
  let now = 0; const e = new AgentEvidence(() => now);
  const request = (ref: string, limit = 1) => ({ operation: 'search', query: ['a', 'b'], mode: 'identifier', in: { component: [ref], kind: ['method'] }, limit });
  const result = (ref: string, path: string, complete: boolean) => ({ status: 'ok', has_more: !complete, next_cursor: complete ? null : 'pending',
    expires_utc: new Date(1000).toISOString(), scope_identities: [{ ref, component_path: path, component_type: 'SGClass' }] });
  const first = request('s1:d1');
  e.record(first, result('s1:d1', 'Lib/Owner', false));
  e.record(request('s2:d1', 200), result('s2:d1', 'Lib/Owner', true));
  assert.equal(e.hasCompleteSearch(first), true); assert.equal(e.allSearchPagesRead, true);
  assert.deepEqual(e.pendingSearchCursors(first), []);
  assert.equal(e.hasCompleteSearch(request('unknown-ref')), false);
  e.record(request('s3:d1'), result('s3:d1', 'Other/Owner', false));
  assert.equal(e.hasCompleteSearch(request('s3:d1')), false);
  assert.equal(e.allSearchPagesRead, false);
  now = 1000; assert.equal(e.hasCompleteSearch(first), false);
});

test('Diagram aliases require the same native owner and source OID and retain predicate restrictions', () => {
  const e = new AgentEvidence();
  const req = (ref: string) => ({ operation: 'search', query: 'a', in: { diagram: ref } });
  const result = (ref: string, oid: string, path = 'Lib/Owner') => ({ status: 'ok', has_more: false,
    scope_identities: [{ ref, component_path: path, kind: 'diagram', diagram: 'Main', diagram_oid: oid }] });
  e.record(req('s1:d1'), { ...result('s1:d1', 'oid1'), has_more: true, next_cursor: 'old' });
  e.record(req('s2:d1'), result('s2:d1', 'oid1'));
  assert.equal(e.hasCompleteSearch(req('s1:d1')), true);
  e.record(req('s3:d1'), { ...result('s3:d1', 'oid2'), has_more: true, next_cursor: 'another-diagram' });
  assert.equal(e.hasCompleteSearch(req('s3:d1')), false);
  e.record(req('s4:d1'), { ...result('s4:d1', 'oid1', 'Other/Owner'), has_more: true, next_cursor: 'another-owner' });
  assert.equal(e.hasCompleteSearch(req('s4:d1')), false);
  assert.equal(e.hasCompleteSearch({ ...req('s1:d1'), query: 'b' }), false);
  assert.equal(e.hasCompleteSearch({ ...req('s1:d1'), in: { diagram: 's1:d1', variant: 'DefaultC' } }), false);
  e.record(req('s5:d1'), { status: 'error', scope_identities: result('s5:d1', 'oid1').scope_identities });
  assert.equal(e.hasCompleteSearch(req('s5:d1')), false);
  e.record({}, { status: 'error', code: 'ASCET_RESTARTED' });
  assert.equal(e.hasCompleteSearch(req('s1:d1')), false);
});

test('read page replay preserves immutable chain progress', () => {
  const e = new AgentEvidence(); find(e);
  e.record({ operation: 'read', ref: 's1:d1' }, read('s1:d1', { code_range: range(1, 3), has_more: true, next_cursor: 'p1' }));
  const page = read('s1:d1', { code_range: range(3, 5), has_more: true, next_cursor: 'p2' });
  e.record({ cursor: 'p1' }, page); e.record({ cursor: 'p1' }, page);
  assert.equal(e.get('s1:d1')?.complete_source, false);
  e.record({ cursor: 'p2' }, read('s1:d1', { code_range: range(5, 7), has_more: false }));
  assert.equal(e.get('s1:d1')?.complete_source, true);
});

for (const issue of ['gap', 'unknown', 'wrong-ref', 'missing-range', 'limited-lines']) {
  test('full read proof rejects ' + issue, () => {
    const e = new AgentEvidence(); find(e); find(e, {}, 's1:d2');
    e.record({ operation: 'read', ref: 's1:d1', ...(issue === 'limited-lines' ? { lines: { start: 1, end: 1 } } : {}) },
      read('s1:d1', { code_range: range(1, 3), has_more: true, next_cursor: 'p' }));
    e.record({ cursor: issue === 'unknown' ? 'unknown' : 'p' }, read(issue === 'wrong-ref' ? 's1:d2' : 's1:d1', {
      ...(issue === 'missing-range' ? {} : { code_range: range(issue === 'gap' ? 4 : 3, 7) }), has_more: false
    }));
    assert.equal(e.get('s1:d1')?.complete_source, false);
    assert.equal(e.get('s1:d2')?.complete_source, false);
  });
}

for (const separator of ['\r', '\n', '\r\n']) {
  test('original Unicode coordinates and ' + JSON.stringify(separator) + ' support paged full reads', () => {
    const e = new AgentEvidence(); find(e);
    const text = Array.from({ length: 30 }, (_, i) => 'line' + i + '😀').join(separator);
    const plan = prepareCodeRead(read('s1:d1', { code: text }) as AgentReadResponse);
    let offset = 0, cursor: string | undefined, merged = '';
    do {
      let next = offset;
      const page = codeReadPage(plan, offset, 530, expiry, n => { next = n; return 'p' + n; });
      e.record(cursor ? { cursor } : { operation: 'read', ref: 's1:d1' }, page);
      merged += page.code; cursor = page.next_cursor ?? undefined; offset = next;
    } while (cursor);
    assert.equal(merged, text); assert.equal(e.get('s1:d1')?.complete_text, true);
  });
}

test('mixed batch keeps successful proofs and rejects SOURCE_CHANGED/failed echoes', () => {
  const e = new AgentEvidence(); find(e); find(e, {}, 'changed');
  e.record({ operation: 'read', ref: 'changed' }, read('changed'));
  e.record({ operation: 'read', ref: ['s1:d1', 'changed', 'unknown'] }, { status: 'partial', results: [read(),
    { ref: 'changed', error: { code: 'SOURCE_CHANGED' } }, { ref: 'unknown', error: { code: 'READ_INCOMPLETE' } }] });
  assert.equal(e.get('s1:d1')?.complete_source, true); assert.equal(e.get('changed'), undefined); assert.equal(e.get('unknown'), undefined);
  assert.deepEqual([...collectReturnedRefs({ status: 'changed', results: [read(), read('changed', { issues: [{ code: 'SOURCE_CHANGED' }] })] })], ['s1:d1']);
});

for (const status of ['changed', 'partial']) {
  test('a ' + status + ' reread revokes previous completeness', () => {
    const e = new AgentEvidence(); find(e); e.record({ operation: 'read', ref: 's1:d1' }, read());
    e.record({ operation: 'read', ref: 's1:d1' }, read('s1:d1', { status, issues: [{ code: status === 'changed' ? 'SOURCE_CHANGED' : 'READ_INCOMPLETE' }] }));
    assert.equal(Boolean(e.get('s1:d1')?.complete_source), false);
  });
}

for (const code of ['DATABASE_CHANGED', 'ASCET_RESTARTED', 'DATABASE_CHANGED_DURING_READ']) {
  test(code + ' clears all facts', () => {
    const e = new AgentEvidence(); find(e);
    e.record({ operation: 'read', ref: 's1:d1' }, { status: 'error', code }); assert.equal(e.refs().size, 0);
  });
}

test('debug PID/database changes clear old evidence even after successful reconnect', () => {
  const e = new AgentEvidence();
  e.record({ operation: 'find' }, { status: 'ok', results: [member()], debug: { database: 'db', ascet_pid: 1 } });
  e.record({ operation: 'find' }, { status: 'ok', results: [member('new')], debug: { database: 'DB', ascet_pid: 2 } });
  assert.deepEqual([...e.refs()], ['new']);
  e.record({ operation: 'find' }, { status: 'ok', results: [], debug: { database: 'other', ascet_pid: 2 } });
  assert.equal(e.refs().size, 0);
});

test('database/process failures inside a mixed batch revoke every previous identity', () => {
  const e = new AgentEvidence(); find(e);
  e.record({ operation: 'read', ref: ['s1:d1', 'other'] }, { status: 'partial', results: [read(),
    { ref: 'other', error: { code: 'DATABASE_CHANGED' } }] });
  assert.equal(e.refs().size, 0);
});

test('ledger growth is bounded and eviction cannot certify forgotten searches', () => {
  const e = new AgentEvidence(Date.now, 1); find(e); find(e, {}, 'new');
  assert.deepEqual([...e.refs()], ['new']);
  e.record({ operation: 'search', query: 'old' }, { status: 'ok', has_more: true, next_cursor: 'old' });
  e.record({ operation: 'search', query: 'new' }, { status: 'ok', has_more: false }); assert.equal(e.allSearchPagesRead, false);
  e.clear(); e.record({ operation: 'search' }, { status: 'ok', has_more: false }); assert.equal(e.allSearchPagesRead, true);
  for (const n of [0, -1, 1.5, Infinity]) assert.throws(() => new AgentEvidence(Date.now, n));
});

test('actual session find/read/search metadata produces scoped complete evidence', async () => {
  const session = new AgentSession({ request: async () => response('if (x) {\r\n y = 1;\r\n} else { y = 0; }') });
  const e = new AgentEvidence();
  try {
    const request = { operation: 'find', component: 'class', name: 'calc' };
    const found: any = await session.execute(request); e.record(request, found);
    const r = { operation: 'read', ref: found.results[0].ref }; e.record(r, await session.execute(r));
    assert.equal(e.get(r.ref)?.complete_text, true); assert.equal(e.get(r.ref)?.scoped, true);
    const q = { operation: 'search', query: { text: 'if.*else', mode: 'regex', multiline: true, dotall: true } };
    e.record(q, await session.execute(q)); assert.equal(e.hasMultilineRegexMatch, true);
  } finally { session.close(); }
});
