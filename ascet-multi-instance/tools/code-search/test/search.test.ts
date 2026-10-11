import test from 'node:test';
import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import { decodeResponse, identityJson, sha256 } from '../src/protocol.js';
import { matchDocuments } from '../src/matcher.js';
import { search } from '../src/search.js';
import { validateRequest, validateSearch } from '../src/validation.js';
import type { MatchResult } from '../src/types.js';
import { actual, baseline } from '../scripts/oracle.js';
import { docs, encode, Fake, response, rows, stateRows } from './fixtures.js';

test('literal metacharacters and nonoverlapping matches', () => {
  const r = matchDocuments(docs('x.* xxy x.*'), '.*');
  assert.equal(r.total_occurrences, 2);
  assert.deepEqual(r.results[0].matches![0].columns, [2, 10]);
  assert.equal(matchDocuments(docs('aaaaa'), 'aa').total_occurrences, 2);
});
test('identifier boundaries, comments and strings', () => {
  assert.equal(matchDocuments(docs('foo foo_bar _foo foo2 (foo) foo'), 'foo', 'identifier_occurrence').total_occurrences, 3);
  assert.equal(matchDocuments(docs('foo; // foo\n"foo"'), 'foo', 'identifier_occurrence').total_occurrences, 3);
});
test('ASCII folding and Unicode code point columns', () => {
  const source = docs('中文🙂 FOO foo K k İ i\n🙂🙂foo');
  const r = matchDocuments(source, 'foo');
  assert.equal(r.total_occurrences, 3);
  assert.deepEqual(r.results[0].matches!.map(m => m.columns), [[5, 9], [3]]);
  assert.equal(matchDocuments(source, 'foo', 'text', true).total_occurrences, 2);
  assert.equal(matchDocuments(source, 'k').total_occurrences, 1);
  assert.equal(matchDocuments(source, 'i').total_occurrences, 1);
  assert.deepEqual(matchDocuments(source, '🙂').results[0].matches!.map(m => m.columns), [[3], [1, 2]]);
});
test('mixed newline normalization', () => {
  assert.deepEqual(matchDocuments(docs('foo\r\nfoo\rfoo\nfoo'), 'foo').results[0].matches!.map(m => m.line), [1, 2, 3, 4]);
});
test('transport escapes decode once', () => {
  const text = '中文🙂 | %124; 100%\t\n';
  assert.equal(docs(text)[0].text, text);
});
test('all text source kinds, no result, and versions remain separate', () => {
  const a = docs('foo')[0];
  assert.equal(matchDocuments(['method', 'process', 'header', 'external_c', 'external_h'].map(kind => ({ ...a, kind })), 'foo').matched_documents, 5);
  assert.deepEqual(matchDocuments([a], 'never').results, []);
  assert.equal(matchDocuments([a, { ...a, variant: 'PC', document_id: 'other' }], 'foo').matched_documents, 2);
});
test('nested same-name states retain identity and method binding locations', () => {
  const decoded = decodeResponse({ payload: encode(stateRows()) });
  const r = matchDocuments(decoded.documents, 'foo', 'text', false, 'shared');
  assert.equal(r.matched_documents, 3);
  assert.equal(new Set(r.results.map(d => d.document_id)).size, 3);
  assert.deepEqual(new Set(r.results.map(d => JSON.stringify(d.location!.hierarchy_state_ids))), new Set(['[4]', '[5]']));
  const binding = matchDocuments(decoded.documents, 'sm').results[0];
  assert.deepEqual(binding.binding, { component_oid: 'oid1', method_alias: 'abcd', method_name: 'sm' });
  assert.equal(binding.location!.element_type, 'transition');
  assert.equal(binding.location!.slot, 'trigger');
  assert.equal(decoded.coverage.states, 4);
});
test('missing/invalid state metadata fails closed', () => {
  for (const marker of ['#STATE_DIAGRAM', '#BINDING_transition_trigger_binding']) {
    assert.throws(() => decodeResponse({ payload: encode(stateRows().filter(r => r[0] !== marker)) }));
  }
  for (const path of ['spec1/t4/s7', 'spec1/s4/t7', 'absent/s7']) {
    const data = stateRows(); data[2][5] = path;
    assert.throws(() => decodeResponse({ payload: encode(data) }));
  }
});
test('duplicate and orphan binding metadata fails closed', () => {
  const data = stateRows();
  for (const bad of [[...data, data[6]], data.filter(r => r[0] !== 'transition_trigger_binding')]) {
    assert.throws(() => decodeResponse({ payload: encode(bad) }));
  }
});
test('transport truncation, missing stats, duplicate identities and unknown records fail', () => {
  assert.throws(() => decodeResponse({ payload: response().payload.slice(0, -1) }));
  assert.throws(() => decodeResponse({ payload: encode(rows().slice(0, -1)) }));
  assert.throws(() => decodeResponse({ payload: encode([...rows(), rows()[1]]) }));
  assert.throws(() => decodeResponse({ payload: encode([...rows(), rows()[0]]) }));
  assert.throws(() => decodeResponse({ payload: encode([...rows(), rows().at(-1)!]) }));
  const data = rows(); data[1][0] = 'unknown';
  assert.throws(() => decodeResponse({ payload: encode(data) }));
});
function sharedRows(): string[][] {
  const text = '中文🙂 foo | %124;\r\nFOO';
  return [rows()[0], ['#SOURCE', '1', '', '', '', '', '', '', text, ''],
    ['method', 'oid1', 'folder/class', '', 'ASDL', 'abc', 'calc', 'esdl', '1', '#SOURCE_REF'],
    ['method', 'oid1', 'folder/class', 'impl', 'PC', 'abc', 'calc', 'c', '1', '#SOURCE_REF'],
    ['#STATS', '1', '1', '1', '2', String([...text].length * 2), '2', '', '', '']];
}
test('shared source transport preserves versions and Unicode', () => {
  const decoded = decodeResponse({ payload: encode(sharedRows()) });
  assert.equal(decoded.documents.length, 2);
  assert.equal(decoded.coverage.transported_unique_sources, 1);
  assert.equal(decoded.coverage.transported_unique_characters, [...decoded.documents[0].text].length);
  const result = matchDocuments(decoded.documents, 'foo', 'text', false, 'shared');
  assert.equal(result.total_occurrences, 4);
  assert.equal(result.match_sets!.length, 1);
  assert.deepEqual(result.results.map(d => d.match_set), [0, 0]);
  assert.deepEqual(actual(result), actual(matchDocuments(decoded.documents, 'foo')));
});
test('missing, duplicate and orphan sources fail closed', () => {
  const data = sharedRows();
  for (const bad of [data.filter(r => r[0] !== '#SOURCE'), [...data, data[1]], data.filter(r => r[0] !== 'method')]) {
    assert.throws(() => decodeResponse({ payload: encode(bad) }));
  }
});
test('partial read never claims complete', async () => {
  const r = await search({ query: 'foo' }, new Fake('foo', true));
  assert.equal(r.status, 'partial'); assert.equal(r.complete, false);
});
test('subsequent requests read changed model', async () => {
  const b = new Fake('old');
  assert.equal((await search({ query: 'old' }, b) as MatchResult).total_occurrences, 1);
  b.text = 'new';
  assert.equal((await search({ query: 'old' }, b) as MatchResult).total_occurrences, 0);
  assert.equal((await search({ query: 'new' }, b) as MatchResult).total_occurrences, 1);
  assert.equal(b.calls, 3);
});
test('expected database forwarding and conservative Unicode prefilter', async () => {
  const b = new Fake('中文');
  assert.equal((await search({ query: '中文', expected_database: 'db' }, b) as MatchResult).total_occurrences, 1);
  assert.deepEqual(b.requested, { mode: 'search_insensitive', needle: '', expected_database: 'db' });
});
test('batch shares one fresh read; absent ids are null', async () => {
  const b = new Fake();
  const request = { id: 'batch', result_format: 'shared', expected_database: 'db', queries: [
    { id: 'exact', query: 'foo', mode: 'identifier_occurrence', case_sensitive: true }, { query: 'FOO' }, { query: '中文' }, { query: 'absent' }] };
  const result = await search(request, b);
  assert.ok('searches' in result);
  assert.equal(b.calls, 1); assert.equal(result.id, 'batch');
  assert.deepEqual(b.requested, { mode: 'search_many', needle: '', expected_database: 'db' });
  assert.deepEqual(result.searches.map(r => r.total_occurrences), [1, 3, 1, 0]);
  assert.equal(result.searches[0].id, 'exact'); assert.equal(result.searches[1].id, null);
  b.text = 'new';
  const changed = await search(request, b); assert.ok('searches' in changed);
  assert.equal(b.calls, 2); assert.deepEqual(changed.searches.map(r => r.total_occurrences), [0, 0, 0, 0]);
});
test('batch union deduplication and partial status', async () => {
  const b = new Fake('foo BAR', true);
  const r = await search({ queries: [{ query: 'FOO', case_sensitive: true }, { query: 'bar' }, { query: 'foo' }] }, b);
  assert.ok('searches' in r);
  assert.deepEqual(b.requested, { mode: 'search_many', needle: 'foo\nbar' });
  assert.deepEqual(r.searches.map(s => s.total_occurrences), [0, 1, 1]);
  assert.equal(r.status, 'partial'); assert.equal(r.complete, false);
});
test('invalid requests rejected before any read, including explicit null', async () => {
  const invalid = [null, [], {}, { query: '' }, { query: '\n' }, { query: 'x\0' }, { query: 'x', mode: 'symbol_reference' },
    { query: 'foo.bar', mode: 'identifier_occurrence' }, { query: 'foo', limit: 5 }, { query: 'x', case_sensitive: 1 },
    { query: 'x', scope: 'project' }, { query: 'x', include_comments: false }, { query: 'x', expected_database: null },
    ...['mode', 'case_sensitive', 'scope', 'result_format'].map(k => ({ query: 'x', [k]: null })),
    { queries: [] }, { queries: ['foo'] }, { query: 'foo', queries: [{ query: 'bar' }] },
    { queries: Array(65).fill({ query: 'foo' }) }, { queries: [{ query: 'foo' }, { query: 'bad\n' }] },
    { queries: [{ query: 'foo', scope: 'database' }] }, { queries: [{ query: 'foo' }], result_format: 'truncated' }];
  const b = new Fake();
  for (const r of invalid) await assert.rejects(search(r, b), Error);
  assert.equal(b.calls, 0);
});
test('query length counts Unicode code points and batch accepts 64', () => {
  assert.equal(validateRequest({ query: '🙂'.repeat(1024) }).query.length, 2048);
  assert.throws(() => validateRequest({ query: '🙂'.repeat(1025) }));
  assert.equal(validateSearch({ queries: Array(64).fill({ query: 'foo' }) }).queries.length, 64);
});
test('document ID JSON matches Python ensure_ascii including DEL and emoji', () => {
  const text = identityJson(['method', '中文🙂', '\x7f', '\n', '"']);
  assert.equal(text, '["method", "\\u4e2d\\u6587\\ud83d\\ude42", "\\u007f", "\\n", "\\\""]');
  assert.equal(docs('foo')[0].document_id, sha256('["method", "oid1", "", "ASDL", "abc"]'));
});
test('shared match set indices survive result sorting', () => {
  const a = docs('foo')[0], b = { ...a, component_oid: 'a', text: 'foo foo' };
  const r = matchDocuments([a, b], 'foo', 'text', false, 'shared');
  assert.deepEqual(r.results.map(d => d.match_set), [1, 0]);
  assert.deepEqual(actual(r), baseline([a, b], { query: 'foo' }));
});
test('random Unicode scans agree with independent exhaustive oracle', () => {
  let seed = 20261002;
  const random = (max: number): number => { seed = (Math.imul(seed, 1664525) + 1013904223) >>> 0; return seed % max; };
  const alphabet = [...'abAB_01中文🙂Kİ *+\r\n\t\u2028'];
  for (let i = 0; i < 100; i++) {
    const chars = Array.from({ length: 150 }, () => alphabet[random(alphabet.length)]);
    const text = chars.join(''), start = random(145), query = chars.slice(start, start + random(4) + 1).join('').replace(/[\r\n]/g, ' ');
    for (const sensitive of [false, true]) for (const format of ['expanded', 'shared'] as const) {
      assert.deepEqual(actual(matchDocuments(docs(text), query, 'text', sensitive, format)), baseline(docs(text), { query, case_sensitive: sensitive }));
    }
  }
});
test('frozen Python results match TS decode, metadata, hashes and positions', async () => {
  const fixtures = JSON.parse(await readFile(new URL('../../test/python-golden.json', import.meta.url), 'utf8'));
  for (const fixture of fixtures) {
    const decoded = decodeResponse(fixture.raw);
    // The legacy golden predates the retained State Diagram directory. Preserve
    // every original decode/hash/match assertion; test the added directory separately.
    const { state_diagrams: _directory, ...legacy } = decoded;
    assert.deepEqual(legacy, fixture.decoded);
    for (const { query, mode, sensitive, format, expected } of fixture.cases) {
      assert.deepEqual(matchDocuments(decoded.documents, query, mode, sensitive, format), expected);
    }
  }
});
