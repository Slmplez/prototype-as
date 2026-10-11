import test from 'node:test';
import assert from 'node:assert/strict';
import { matchDocuments } from '../src/matcher.js';
import { search, errorResponse } from '../src/search.js';
import { execute, readDocument } from '../src/read.js';
import { decodeResponse, sha256 } from '../src/protocol.js';
import { validateSearch } from '../src/validation.js';
import { docs, encode, Fake, response, rows, stateRows } from './fixtures.js';
import type { MatchResult, ReadRequest, Query, MatchRange } from '../src/types.js';

test('regex alternation, lookarounds, backreferences and Unicode casing', async () => {
  const b = new Fake('FOO foo foo_bar P_AEBdT C_AEBdT K k');
  const result = await search({ queries: [
    { query: '\\b[PC]_AEB[A-Za-z_0-9]*\\b', mode: 'regex' },
    { query: '(?<![A-Za-z_0-9])foo(?![A-Za-z_0-9])', mode: 'regex', case_sensitive: true },
    { query: '(foo) \\1', mode: 'regex' }, { query: 'k', mode: 'regex' },
  ] }, b);
  assert.ok('searches' in result);
  assert.deepEqual(result.searches.map(r => r.total_occurrences), [2, 1, 1, 2]);
  assert.equal(b.calls, 1); assert.equal(b.requested!.needle, '');
});
test('invalid regex, flags and context reject the entire request before reading', async () => {
  const b = new Fake();
  for (const request of [
    { query: '[', mode: 'regex' }, { query: 'foo', multiline: null }, { query: 'foo', dotall: true },
    { query: 'foo', mode: 'regex', dotall: true }, { query: 'foo', mode: 'identifier_occurrence', multiline: true },
    { query: 'foo', context_before: -1 }, { query: 'foo', context_after: 101 }, { query: 'foo', context_before: 1.5 },
    { query: 'foo', context_after: null }, { queries: [{ query: 'foo' }, { query: '[', mode: 'regex' }] },
    { queries: [{ query: 'foo', context_before: 1 }] },
  ]) await assert.rejects(search(request, b));
  assert.equal(b.calls, 0);
});
test('literal multiline normalizes CRLF/CR, retains exact spaces and code-point spans', async () => {
  const source = docs('🙂 foo\r\nbar 🙂\rEND');
  const result = matchDocuments(source, 'foo\rbar', 'text', true, 'expanded', undefined, { multiline: true });
  assert.equal(result.total_occurrences, 1); assert.equal(result.matched_lines, 2);
  assert.deepEqual(result.results[0].matches![0].ranges, [{ start_line: 1, start_column: 3, end_line: 2, end_column: 4 }]);
  assert.deepEqual(result.results[0].context, [{ start_line: 1, end_line: 2, lines: ['🙂 foo', 'bar 🙂'] }]);
  assert.equal(matchDocuments(source, 'foo\n bar', 'text', false, 'expanded', undefined, { multiline: true }).total_occurrences, 0);
  const b = new Fake(source[0].text);
  await search({ query: 'foo\r\nbar', multiline: true }, b);
  assert.equal(b.requested!.needle, 'foo');
  await search({ queries: [{ query: 'foo\r\nbar', multiline: true }, { query: 'END' }] }, b);
  assert.equal(b.requested!.needle, 'foo\nend');
});
test('regex cannot consume newlines without multiline; dotall is separate', () => {
  const source = docs('foo\r\nbar');
  const run = (query: string, multiline = false, dotall = false) => matchDocuments(source, query, 'regex', true, 'expanded', undefined, { multiline, dotall });
  assert.equal(run('foo\\s+bar').total_occurrences, 0);
  assert.equal(run('foo\\s+bar', true).total_occurrences, 1);
  assert.equal(run('foo.*bar', true).total_occurrences, 0);
  assert.equal(run('foo.*bar', true, true).total_occurrences, 1);
  assert.deepEqual(run('^bar$', true).results[0].matches![0].ranges, [{ start_line: 2, start_column: 1, end_line: 2, end_column: 4 }]);
});
test('zero-width regex progresses over emoji and empty documents', async () => {
  const b = new Fake('🙂a\n');
  const r = await search({ query: '(?:)', mode: 'regex', multiline: true }, b) as MatchResult;
  assert.equal(r.total_occurrences, 4);
  assert.deepEqual(r.results[0].matches!.map(m => m.columns), [[1, 2, 3], [1]]);
  const empty = matchDocuments(docs(''), '^$', 'regex');
  assert.equal(empty.total_occurrences, 1);
});
test('newline end is exclusive and does not add a covered empty line', () => {
  const r = matchDocuments(docs('foo\n'), 'foo\n', 'text', true, 'shared', undefined, { multiline: true });
  assert.equal(r.matched_lines, 1);
  assert.deepEqual(r.match_sets![0][0].ranges, [{ start_line: 1, start_column: 1, end_line: 2, end_column: 1 }]);
  assert.deepEqual(r.context_sets, [[{ start_line: 1, end_line: 1, lines: ['foo'] }]]);
});
test('context windows merge and clamp; shared indices survive sorting and version duplication', () => {
  const a = docs('zero\nfoo\nbar\nfoo\nlast\nend')[0];
  const b = { ...a, component_oid: 'a', text: 'foo' };
  const source = [a, b, { ...a, variant: 'PC', document_id: 'other' }];
  const options = { context_before: 1, context_after: 1 };
  const shared = matchDocuments(source, 'foo', 'text', false, 'shared', undefined, options);
  const expanded = matchDocuments(source, 'foo', 'text', false, 'expanded', undefined, options);
  assert.equal(shared.context_sets!.length, 2);
  assert.deepEqual(shared.context_sets![0], [{ start_line: 1, end_line: 5, lines: ['zero', 'foo', 'bar', 'foo', 'last'] }]);
  for (let i = 0; i < shared.results.length; i++) {
    assert.deepEqual(shared.context_sets![shared.results[i].match_set!], expanded.results[i].context);
  }
  assert.deepEqual(shared.context_sets![1], [{ start_line: 1, end_line: 1, lines: ['foo'] }]);
});
test('mixed batch applies context to every query and has no false-negative native filter', async () => {
  const b = new Fake('foo\r\nbar baz');
  const r = await search({ context_before: 1, context_after: 1, result_format: 'shared', queries: [
    { query: 'foo\nbar', multiline: true }, { query: 'b[a-z]+', mode: 'regex' }, { query: 'baz' },
  ] }, b);
  assert.ok('searches' in r);
  assert.equal(b.calls, 1); assert.equal(b.requested!.needle, '');
  assert.deepEqual(r.searches.map(s => s.total_occurrences), [1, 2, 1]);
  assert.ok(r.searches.every(s => s.context_sets!.length === 1));
});
test('backtracking timeout leaves event loop responsive and next search usable', async () => {
  const b = new Fake('a'.repeat(10000) + '!');
  let responsive = false;
  const timer = setTimeout(() => { responsive = true; }, 50);
  try {
    await assert.rejects(search({ query: '(a+)+$', mode: 'regex' }, b), error => {
      assert.equal(errorResponse({}, error).code, 'REGEX_TIMEOUT'); return true;
    });
    assert.equal(responsive, true);
    const next = await search({ query: '!' }, b) as MatchResult;
    assert.equal(next.total_occurrences, 1); assert.equal(b.calls, 2);
  } finally { clearTimeout(timer); }
});

function readRequest(text = 'foo'): ReadRequest {
  const d = docs(text)[0];
  return { operation: 'read', target: { component_oid: d.component_oid, document_id: d.document_id }, expected_database: 'db' };
}
test('read returns exact current complete source including original newlines and metadata', async () => {
  const b = new Fake('foo\r\nbar\r');
  const request = { ...readRequest(b.text), expected_source_sha256: sha256(b.text), id: 'r1' };
  const r = await execute(request, b);
  assert.ok('document' in r);
  assert.deepEqual(r.document, docs(b.text)[0]); assert.equal(r.line_count, 3); assert.equal(r.id, 'r1');
  assert.deepEqual(b.requested, { mode: 'read_component', needle: 'oid1', expected_database: 'db' });
  b.text = 'changed';
  await assert.rejects(readDocument(request, b), e => errorResponse(request, e).code === 'SOURCE_CHANGED');
  assert.equal((await readDocument(readRequest(), b)).document.text, 'changed');
});
test('read distinguishes absent identity, partial source and broken component', async () => {
  const b = new Fake('foo');
  const wrong = { ...readRequest(), target: { component_oid: 'oid1', document_id: '0'.repeat(64) } };
  await assert.rejects(readDocument(wrong, b), e => errorResponse(wrong, e).code === 'DOCUMENT_NOT_FOUND');
  b.error = true;
  await assert.rejects(readDocument(wrong, b), e => errorResponse(wrong, e).code === 'READ_INCOMPLETE');
  const partial = await readDocument(readRequest(), b);
  assert.equal(partial.status, 'partial'); assert.equal(partial.complete, false);
});
test('read disambiguates same method across variants and nested state locations', async () => {
  const data = stateRows();
  const snapshot = decodeResponse({ payload: encode(data) });
  for (const d of snapshot.documents) {
    const r = await readDocument({ operation: 'read', expected_database: 'db', target: { component_oid: d.component_oid, document_id: d.document_id } },
      { request: async () => ({ ...response(), payload: encode(data) }) });
    assert.deepEqual(r.document, d);
  }
  const versions = rows(); const second = [...versions[1]]; second[4] = 'PC'; second[8] = 'different'; versions.splice(2, 0, second);
  const pc = decodeResponse({ payload: encode(versions) }).documents[1];
  const r = await readDocument({ ...readRequest(), target: { component_oid: pc.component_oid, document_id: pc.document_id } },
    { request: async () => ({ ...response(), payload: encode(versions) }) });
  assert.equal(r.document.text, 'different'); assert.equal(r.document.variant, 'PC');
});
test('read validates target and database before ASCET access', async () => {
  const b = new Fake();
  for (const value of [
    {}, { ...readRequest(), expected_database: undefined }, { ...readRequest(), expected_source_sha256: '' },
    { ...readRequest(), query: 'foo' }, { ...readRequest(), target: { component_oid: 'oid1', document_id: 'short' } },
    { ...readRequest(), target: { ...readRequest().target, component_oid: 'x\n' } },
  ]) await assert.rejects(readDocument(value, b));
  assert.equal(b.calls, 0);
});

test('regex span positions agree with an independent UTF-16-to-codepoint oracle', () => {
  const text = '🙂 foo\nBAR _foo foo2\n中文🙂bar\n\n';
  const patterns: Query[] = [
    { query: 'foo|bar', mode: 'regex' }, { query: '\\bfoo\\b', mode: 'regex' },
    { query: 'foo\\s+BAR', mode: 'regex', multiline: true }, { query: 'foo.*bar', mode: 'regex', multiline: true, dotall: true },
    { query: '^|$', mode: 'regex', multiline: true }, { query: '(?=🙂)', mode: 'regex', multiline: true },
  ];
  const position = (offset: number): [number, number] => {
    const prefix = text.slice(0, offset).split('\n'); return [prefix.length, [...prefix.at(-1)!].length + 1];
  };
  for (const pattern of patterns) {
    const expected: MatchRange[] = [];
    const regex = new RegExp(pattern.query, 'gmu' + (pattern.case_sensitive ? '' : 'i') + (pattern.dotall ? 's' : ''));
    let base = 0;
    for (const part of pattern.multiline ? [text] : text.split('\n')) {
      for (const match of part.matchAll(regex)) {
        const [start_line, start_column] = position(base + match.index);
        const [end_line, end_column] = position(base + match.index + match[0].length);
        expected.push({ start_line, start_column, end_line, end_column });
      }
      base += part.length + 1;
    }
    validateSearch(pattern);
    const got = matchDocuments(docs(text), pattern.query, 'regex', !!pattern.case_sensitive, 'expanded', undefined, pattern);
    assert.deepEqual(got.results.flatMap(d => d.matches!.flatMap(m => m.ranges!)), expected);
  }
});
