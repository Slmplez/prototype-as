import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentSession } from '../src/agent-session.js';
import { encode, response, rows } from './fixtures.js';
import { linesOf, matchesOf } from './agent-output.js';
import type { AgentFindResponse, AgentReadResponse, AgentSearchResponse, AgentCodeTarget } from '../src/agent-types.js';
import type { NativeRequest, Reader } from '../src/types.js';

const oid = '040qm00100001m8714ag81ugur0dk';
function fixture(text = 'first\nvalue = 1;\nvalue = 2;\nlast') {
  const data = rows(text).map(r => r.map(x => x === 'oid1' ? oid : x));
  data[1][6] = 'calc_pre';
  const calls: NativeRequest[] = [];
  const reader: Reader = { request: async r => { calls.push(r); return { ...response(), payload: encode(data) }; } };
  return { data, calls, session: new AgentSession(reader), reader };
}
const find = async (s: AgentSession, value: object) => await s.execute({ operation: 'find', ...value }) as AgentFindResponse;
const search = async (s: AgentSession, value: object) => await s.execute(value) as AgentSearchResponse;

test('name lookup finds a name absent from its body and preserves the source hash for subsequent reads', async () => {
  const { session, calls, data } = fixture();
  try {
    assert.equal((await search(session, { query: 'calc_pre' })).total_hits, 0);
    const result = await find(session, { component: 'class', member: 'calc_pre', match: 'exact' });
    assert.equal(result.total_count, 1); assert.equal(result.target, 'members');
    assert.equal((result.results[0] as AgentCodeTarget).method, 'calc_pre');
    for (const key of ['snippets', 'code', 'matches', 'context']) assert.equal(key in result.results[0], false);
    assert.equal(calls.at(-2)!.mode, 'catalog');
    assert.deepEqual(calls.at(-1)!.filters, { component_oids: [oid] });
    const read = await session.execute({ operation: 'read', ref: result.results[0].ref, if_unchanged: true }) as AgentReadResponse;
    assert.equal(read.code, data[1][8]); assert.equal(read.status, 'ok');
    data[1][8] += '\nchanged';
    await assert.rejects(session.execute({ operation: 'read', ref: result.results[0].ref, if_unchanged: true }), { code: 'SOURCE_CHANGED' });
  } finally { session.close(); }
});

test('component discovery returns scope refs and a fresh member directory without source bodies', async () => {
  const { session, calls } = fixture();
  try {
    const components = await find(session, { target: 'components', component: 'FOLDER/CLASS', match: 'exact' });
    assert.equal(components.total_count, 1); assert.equal(calls.length, 1);
    assert.equal('component_type' in components.results[0], true);
    const ref = components.results[0].ref;
    await assert.rejects(session.execute({ operation: 'read', ref }), { code: 'INVALID_REQUEST' });
    assert.equal(calls.length, 1);
    const members = await find(session, { in: { component: ref } });
    assert.equal(members.total_count, 1); assert.deepEqual(calls.at(-1)!.filters, { component_oids: [oid] });
    assert.equal((await search(session, { query: 'value', in: { component: ref } })).total_hits, 2);
  } finally { session.close(); }
});

test('exact/contains/case name filters, literal star and empty Methods have explicit behavior', async () => {
  const { session, calls } = fixture('');
  try {
    assert.equal((await find(session, { member: 'PRE' })).total_count, 1);
    assert.equal((await find(session, { member: 'PRE', case_sensitive: true })).total_count, 0);
    assert.equal((await find(session, { member: 'pre', match: 'exact' })).total_count, 0);
    assert.equal((await find(session, { member: '*' })).total_count, 0);
    const before = calls.length;
    assert.equal((await find(session, { component: 'missing' })).total_count, 0);
    assert.equal(calls.length - before, 1); assert.equal(calls.at(-1)!.mode, 'catalog');
  } finally { session.close(); }
});

test('name directory preserves same-name Variants and replays pages without rereading the model', async () => {
  const { session, calls, data } = fixture();
  const second = [...data[1]]; second[4] = 'DefaultC'; second[8] = 'other'; data.splice(2, 0, second);
  try {
    const page = await find(session, { member: 'calc_pre', limit: 1 });
    assert.equal(page.total_count, 2); assert.equal(page.has_more, true);
    const before = calls.length;
    const next = await session.execute({ cursor: page.next_cursor }) as AgentFindResponse;
    assert.equal(next.target, 'members'); assert.equal(next.total_count, 2); assert.equal(next.has_more, false);
    assert.equal(calls.length, before); assert.notEqual(page.results[0].ref, next.results[0].ref);
    assert.deepEqual(await session.execute({ cursor: page.next_cursor }), next);
    const values = [];
    for (const d of [page.results[0], next.results[0]]) values.push((await session.execute({ operation: 'read', ref: d.ref }) as AgentReadResponse).code);
    assert.deepEqual(values.sort(), [data[1][8], second[8]].sort());
  } finally { session.close(); }
});

test('invalid discovery requests and graph flags fail before live access', async () => {
  const { session, calls } = fixture();
  try {
    for (const request of [{ target: 'unknown' }, { target: null }, { component: '' }, { member: null }, { component: 'a\nb' },
      { match: 'regex' }, { match: null }, { case_sensitive: null }, { limit: 201 }, { query: 'body' }, { target: 'components', member: 'calc' },
      { target: 'components', in: { kind: 'method' } }]) await assert.rejects(find(session, request));
    await assert.rejects(session.execute({ operation: 'read', ref: 'unused', include_graph: 'true' }));
    assert.equal(calls.length, 0);
  } finally { session.close(); }
});

test('name discovery detects Database/PID changes between its two live reads', async () => {
  for (const field of ['database', 'ascet_pid']) {
    let calls = 0;
    const { data } = fixture();
    const session = new AgentSession({ request: async () => ({ ...response(), payload: encode(data),
      ...(++calls === 2 ? { [field]: field === 'database' ? 'other' : 2 } : {}) }) });
    try { await assert.rejects(find(session, { component: 'class' }), { code: 'DATABASE_CHANGED' }); }
    finally { session.close(); }
    assert.equal(calls, 2);
  }
});

test('closing during catalog lookup prevents later live reads', async () => {
  let release!: () => void, calls = 0;
  const { data } = fixture();
  const session = new AgentSession({ request: async () => { calls++; await new Promise<void>(r => { release = r; }); return { ...response(), payload: encode(data) }; } });
  const promise = assert.rejects(find(session, { component: 'class' }), { code: 'SESSION_CLOSED' });
  await new Promise(r => setImmediate(r)); session.close(); release(); await promise;
  assert.equal(calls, 1);
});

test('snippets merge overlapping windows and include every physical line exactly once', async () => {
  const { session } = fixture();
  try {
    const d = (await search(session, { query: 'value', context: 10 })).searches[0].results[0];
    assert.equal(d.snippets!.length, 1); assert.equal(d.snippets![0].text, 'first\nvalue = 1;\nvalue = 2;\nlast');
    assert.deepEqual(matchesOf(d).map(m => m.line), [2, 3]);
    assert.equal(JSON.stringify(d).match(/value = 1;/g)!.length, 1);
    assert.equal('matches' in d, false); assert.equal('context' in d, false);
    const isolated = (await search(session, { query: ['first', 'last'], context: 0 })).searches;
    assert.equal(linesOf(isolated[0].results[0]).length, 1);
  } finally { session.close(); }
});

test('snippets restore omitted hit lines without losing Unicode preview positions', async () => {
  const text = Array.from({ length: 100 }, (_, i) => i === 50 ? '🙂'.repeat(600) + 'value' : 'line ' + i).join('\n');
  const { session } = fixture(text);
  try {
    const result = (await search(session, { query: 'value', context: 100 })).searches[0].results[0];
    const lines = linesOf(result), match = matchesOf(result)[0];
    assert.equal(new Set(lines.map(l => l.line)).size, lines.length);
    assert.equal(lines.length, 41); assert.equal(result.omitted_lines, 59);
    assert.equal(match.columns[0], 601); assert.equal(match.truncated_before, true);
    assert.equal(match.text, [...text.split('\n')[50]].slice(match.start_column! - 1, match.start_column! - 1 + [...match.text].length).join(''));
  } finally { session.close(); }
});

