import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentSession } from '../src/agent-session.js';
import { ToolError } from '../src/patterns.js';
import { encode, diagramRows, response, rows, stateRows } from './fixtures.js';
import type { AgentBatchReadResponse, AgentReadContent, AgentReadResponse, AgentSearchResponse } from '../src/agent-types.js';
import type { NativeRequest, NativeResponse, Reader } from '../src/types.js';

const fail = (code: string) => (error: unknown) => error instanceof ToolError && error.code === code;
class MutableReader implements Reader {
  calls: NativeRequest[] = [];
  database = 'db'; pid = 1;
  documents = [
    { oid: 'one', id: 'a', text: 'foo first\r\nreturn 1;' },
    { oid: 'one', id: 'b', text: 'foo second\nreturn 2;' },
    { oid: 'two', id: 'c', text: 'foo third\nreturn 3;' },
  ];
  partial = new Set<string>();
  active = 0; maximumActive = 0;
  async request(request: NativeRequest): Promise<NativeResponse> {
    this.calls.push(request); this.maximumActive = Math.max(this.maximumActive, ++this.active);
    await new Promise(resolve => setImmediate(resolve)); this.active--;
    const owners = request.mode === 'read_component' ? [request.needle!] : ['one', 'two'];
    const docs = this.documents.filter(d => owners.includes(d.oid));
    const data = owners.flatMap(oid => [
      ['#COMPONENT', oid, 'folder/' + oid, '', '', '', '', 'SGClass', '', ''],
      ...docs.filter(d => d.oid === oid).map(d => ['method', oid, 'folder/' + oid, '', 'ASDL', d.id, d.id, 'esdl', d.text, '']),
      ...(this.partial.has(oid) ? [['#ERROR', oid, 'folder/' + oid, '', '', '', '', '', 'load', 'Source unavailable']] : []),
    ]);
    data.push(['#STATS', String(owners.length), String(owners.length), String(owners.length), String(docs.length), '0', '0', '', '', '']);
    return { ...response(), database: this.database, ascet_pid: this.pid, payload: encode(data) };
  }
}
async function find(session: AgentSession): Promise<Record<string, string>> {
  const page = await session.execute({ query: 'foo' }) as AgentSearchResponse;
  return Object.fromEntries(page.searches[0].results.map(d => [d.method, d.ref]));
}

test('batch read preserves order/duplicates and reads each owning component once per call', async () => {
  const reader = new MutableReader(), session = new AgentSession(reader);
  try {
    const refs = await find(session), order = [refs.b, refs.c, refs.a, refs.b];
    const read = await session.execute({ operation: 'read', ref: order }) as AgentBatchReadResponse;
    assert.equal(read.status, 'ok'); assert.equal('source_read_complete' in read, false);
    assert.ok(read.results.every(r => !('status' in r) && !('source_read_complete' in r) && !('changed_since_search' in r)));
    assert.equal(read.requested_count, 4); assert.equal(read.returned_count, 4);
    assert.deepEqual(read.results.map(d => d.ref), order);
    assert.deepEqual(read.results.map(d => (d as AgentReadContent).code), [reader.documents[1].text, reader.documents[2].text, reader.documents[0].text, reader.documents[1].text]);
    assert.deepEqual(reader.calls.slice(1).map(r => r.needle), ['one', 'two']);
    assert.ok(reader.calls.slice(1).every(r => r.mode === 'read_component' && r.expected_database === 'db'));
    reader.documents[0].text = 'foo edited';
    const again = await session.execute({ operation: 'read', ref: [refs.a, refs.b] }) as AgentBatchReadResponse;
    assert.equal(reader.calls.length, 4); assert.equal(reader.maximumActive, 1);
    assert.equal((again.results[0] as AgentReadContent).code, 'foo edited');
    assert.equal(again.status, 'changed');
    assert.equal((again.results[0] as AgentReadContent).issues![0].code, 'SOURCE_CHANGED');
    assert.equal((again.results[1] as AgentReadContent).issues, undefined);
  } finally { session.close(); }
});

test('single ref keeps the existing response while one-item arrays use the batch envelope', async () => {
  const reader = new MutableReader(), session = new AgentSession(reader);
  try {
    const refs = await find(session);
    const single = await session.execute({ operation: 'read', ref: refs.a }) as AgentReadResponse;
    const batch = await session.execute({ operation: 'read', ref: [refs.a] }) as AgentBatchReadResponse;
    assert.equal('results' in single, false); assert.equal(single.debug, undefined);
    const { status, ...content } = single;
    assert.equal(status, batch.status); assert.deepEqual(batch.results, [content]);
    const debug = await session.execute({ operation: 'read', ref: [refs.a], debug: true }) as AgentBatchReadResponse;
    assert.ok((debug.results[0] as AgentReadContent).debug);
  } finally { session.close(); }
});

test('malformed, unknown and mixed database/process refs reject before a batch live read', async () => {
  const reader = new MutableReader(), session = new AgentSession(reader);
  try {
    const refs = await find(session), count = reader.calls.length;
    for (const ref of [[], [refs.a, null], Array(33).fill(refs.a), 12, 'x'.repeat(129),
      JSON.stringify([refs.a]), JSON.stringify(refs.a), '  ' + JSON.stringify([refs.a]), [JSON.stringify([refs.a])]]) {
      await assert.rejects(session.execute({ operation: 'read', ref }), fail('INVALID_REQUEST'));
    }
    await assert.rejects(session.execute({ operation: 'read', ref: [refs.a, 'unknown'] }), fail('REF_EXPIRED'));
    await assert.rejects(session.execute({ operation: 'read', ref: [refs.a], if_unchanged: 'true' }), fail('INVALID_REQUEST'));
    assert.equal(reader.calls.length, count);
    reader.database = 'other'; const other = await find(session);
    await assert.rejects(session.execute({ operation: 'read', ref: [refs.a, other.a] }), fail('READ_DATABASE_MISMATCH'));
    assert.equal(reader.calls.length, count + 1);
    reader.database = 'db'; reader.pid = 2; const restarted = await find(session);
    await assert.rejects(session.execute({ operation: 'read', ref: [refs.a, restarted.a] }), fail('ASCET_RESTARTED'));
    assert.equal(reader.calls.length, count + 2);
  } finally { session.close(); }
});

test('expired batches do no live read and a new search recovers', async () => {
  let now = 0; const reader = new MutableReader(), session = new AgentSession(reader, { now: () => now, ttlMs: 10 });
  try {
    const old = await find(session); now = 11;
    await assert.rejects(session.execute({ operation: 'read', ref: [old.a, old.b] }), fail('REF_EXPIRED'));
    assert.equal(reader.calls.length, 1);
    const fresh = await find(session);
    assert.equal((await session.execute({ operation: 'read', ref: [fresh.a, fresh.b] })).status, 'ok');
  } finally { session.close(); }
});

test('changed and deleted members report per-ref failures without dropping successful bodies', async () => {
  const reader = new MutableReader(), session = new AgentSession(reader);
  try {
    const refs = await find(session);
    reader.documents[0].text = 'foo edited'; reader.documents.splice(1, 1);
    const read = await session.execute({ operation: 'read', ref: [refs.a, refs.b, refs.c], if_unchanged: true }) as AgentBatchReadResponse;
    assert.equal(read.status, 'partial'); assert.equal('source_read_complete' in read, false);
    assert.equal(read.returned_count, 1); assert.equal(read.requested_count, 3);
    assert.deepEqual(read.results.map(d => 'error' in d ? d.error.code : 'deferred' in d ? 'deferred' : d.code), ['SOURCE_CHANGED', 'CODE_NOT_FOUND', 'foo third\nreturn 3;']);
    const failed = await session.execute({ operation: 'read', ref: [refs.a, refs.b], if_unchanged: true }) as AgentBatchReadResponse;
    assert.equal(failed.status, 'error'); assert.equal(failed.returned_count, 0); assert.equal(failed.results.length, 2);
    assert.ok(failed.results.every(r => 'error' in r && !('status' in r)));
    await assert.rejects(session.execute({ operation: 'read', ref: refs.a, if_unchanged: true }), fail('SOURCE_CHANGED'));
    await assert.rejects(session.execute({ operation: 'read', ref: refs.b }), fail('CODE_NOT_FOUND'));
  } finally { session.close(); }
});

test('read errors remain partial and missing source is not reported as a definitive deletion', async () => {
  const reader = new MutableReader(), session = new AgentSession(reader);
  try {
    const refs = await find(session); reader.partial.add('one'); reader.documents.splice(1, 1);
    reader.documents[0].text = 'foo changed while incompletely read';
    const read = await session.execute({ operation: 'read', ref: [refs.a, refs.b, refs.c] }) as AgentBatchReadResponse;
    assert.equal(read.status, 'partial'); assert.equal(read.returned_count, 2);
    assert.deepEqual((read.results[0] as AgentReadContent).issues!.map(i => i.code), ['READ_INCOMPLETE', 'SOURCE_CHANGED']);
    assert.equal('error' in read.results[1] && read.results[1].error.code, 'READ_INCOMPLETE');
    assert.equal((read.results[2] as AgentReadContent).issues, undefined);
    assert.ok(read.results.every(r => !('status' in r)));
    const single = await session.execute({ operation: 'read', ref: refs.a }) as AgentReadResponse;
    assert.equal(single.status, 'partial'); assert.deepEqual(single.issues!.map(i => i.code), ['READ_INCOMPLETE', 'SOURCE_CHANGED']);
  } finally { session.close(); }
});

test('database/process changes or transport failure stop the batch before subsequent components', async () => {
  for (const issue of ['database', 'pid', 'transport']) {
    const reader = new MutableReader(); let broken = false;
    const session = new AgentSession({ request: async request => {
      if (broken && issue === 'transport') { reader.calls.push(request); throw new ToolError('TRANSPORT_FAILED', 'Connection unavailable'); }
      return reader.request(request);
    } });
    try {
      const refs = await find(session); broken = true;
      if (issue === 'database') reader.database = 'other';
      if (issue === 'pid') reader.pid = 2;
      const code = issue === 'database' ? 'DATABASE_CHANGED' : issue === 'pid' ? 'ASCET_RESTARTED' : 'TRANSPORT_FAILED';
      await assert.rejects(session.execute({ operation: 'read', ref: [refs.a, refs.c] }), fail(code));
      assert.equal(reader.calls.length, 2);
    } finally { session.close(); }
  }
});

test('closing an in-flight batch stops later component reads and queued work', async () => {
  const reader = new MutableReader(); let paused = false, release!: () => void;
  const session = new AgentSession({ request: async request => {
    if (paused) await new Promise<void>(resolve => { release = resolve; });
    return reader.request(request);
  } });
  const refs = await find(session); paused = true;
  const first = session.execute({ operation: 'read', ref: [refs.a, refs.c] }), second = session.execute({ query: 'foo' });
  const failures = [assert.rejects(first, fail('SESSION_CLOSED')), assert.rejects(second, fail('SESSION_CLOSED'))];
  await new Promise(resolve => setImmediate(resolve)); session.close(); release();
  await Promise.all(failures); assert.equal(reader.calls.length, 2);
});

test('batch reads keep state slot, binding and graphical representation metadata', async () => {
  const data = [rows()[0], ...stateRows().slice(1, -1), ...diagramRows(), ['#STATS', '1', '1', '0', '4', '0', '0', '', '', '']];
  let calls = 0;
  const session = new AgentSession({ request: async () => { calls++; return { ...response(), payload: encode(data) }; } });
  try {
    const page = await session.execute({ query: ['foo', 'sm', 'AEBLockTime'] }) as AgentSearchResponse;
    const docs = page.searches.flatMap(q => q.results);
    const batch = await session.execute({ operation: 'read', ref: docs.map(d => d.ref) }) as AgentBatchReadResponse;
    assert.equal(calls, 2); assert.equal(batch.status, 'ok');
    for (let i = 0; i < docs.length; i++) {
      const read = batch.results[i] as AgentReadContent;
      assert.equal(read.kind, docs[i].kind); assert.deepEqual(read.diagram, docs[i].diagram);
      assert.deepEqual(read.method_binding, docs[i].method_binding); assert.equal(read.representation, docs[i].representation);
    }
    assert.ok(batch.results.some(d => 'representation' in d && d.representation === 'graphical_model'));
  } finally { session.close(); }
});

test('invalid search arguments use public parameter names and actionable error codes without a live read', async () => {
  const reader = new MutableReader(), session = new AgentSession(reader);
  try {
    for (const [input, code, word] of [
      [{ query: 'a.b', mode: 'identifier' }, 'INVALID_REQUEST', 'identifier'],
      [{ query: '[', mode: 'regex' }, 'INVALID_REGEX', 'regular expression'],
      [{ query: 'foo', in: { component: 'display name' } }, 'INVALID_REQUEST', 'in.component'],
      [{ query: 'foo', context: 101 }, 'INVALID_REQUEST', 'context.before'],
    ] as const) {
      await assert.rejects(session.execute(input), error => {
        assert.ok(error instanceof ToolError); const response = session.formatError(input, error);
        assert.equal(response.code, code); assert.ok(response.message.includes(word));
        assert.equal(response.message.includes('identifier_occurrence'), false); return true;
      });
    }
    assert.equal(reader.calls.length, 0);
  } finally { session.close(); }
});
