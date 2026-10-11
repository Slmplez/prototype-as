import test from 'node:test';
import assert from 'node:assert/strict';
import { requiredLiteral, requiredLiterals, planNativeSearch } from '../src/prefilter.js';
import { validateSearch } from '../src/validation.js';
import { filterDocuments } from '../src/filters.js';
import { search, searchWithSources } from '../src/search.js';
import { MatchExecutor, matchQueries, packMatchJob, unpackMatchJob } from '../src/match-queries.js';
import { SearchSession } from '../src/search-session.js';
import { ToolError } from '../src/patterns.js';
import { docs, Fake, encode, rows, diagramRows } from './fixtures.js';
import { decodeResponse } from '../src/protocol.js';
import type { Query, SearchResponse } from '../src/types.js';
import type { SearchPageResponse } from '../src/paging-types.js';

test('Diagram phase timings accept old headers and reject incomplete or negative phases', () => {
  const decode = (fields: string[]) => decodeResponse({ payload: encode([
    ['#DIAGRAM_READ_STATS', '2', '9', ...fields, ...Array(7 - fields.length).fill('')], ...rows(),
  ]) }).coverage;
  assert.equal(decode([]).native_bde_copy_ms, undefined);
  const measured = decode(['2', '3', '4']);
  assert.equal(measured.native_bde_copy_ms, 2);
  assert.equal(measured.native_bde_load_ms, 3);
  assert.equal(measured.native_bde_walk_ms, 4);
  assert.throws(() => decode(['2', '', '4']), /integer/);
  assert.throws(() => decode(['2', '-1', '4']), /phase timing/);
});

test('scope filters reject invalid lists and nested batch options before reading', async () => {
  const reader = new Fake();
  for (const filters of [null, [], { unknown: ['x'] }, { variants: [] }, { kinds: ['unknown'] },
    { component_oids: ['bad'] }, { member_names: ['x\ny'] }, { variants: Array(65).fill('PC') }]) {
    await assert.rejects(search({ query: 'foo', filters }, reader));
  }
  await assert.rejects(search({ queries: [{ query: 'foo', filters: { variants: ['PC'] } }] }, reader));
  assert.equal(reader.calls, 0);
});

test('filter lists are OR, fields are AND, exact case and base implementation are preserved', () => {
  const a = docs('foo')[0], b = { ...a, document_id: 'b', variant: 'PC', member_name: 'init' };
  const c = { ...b, document_id: 'c', implementation_oid: 'custom' };
  const source = [a, b, c];
  assert.deepEqual(filterDocuments(source, { variants: ['PC', 'ASDL'], implementation_oids: [''], member_names: ['calc', 'init'] }), [a, b]);
  assert.deepEqual(filterDocuments(source, { variants: ['pc'] }), []);
  assert.deepEqual(filterDocuments(source, { member_ids: [a.member_id], kinds: ['method'], member_names: ['init'] }), [b, c]);
  assert.deepEqual(validateSearch({ query: 'foo', filters: { variants: ['PC', 'PC'] } }).filters, { variants: ['PC'] });
  assert.deepEqual(validateSearch({ query: 'foo', filters: { component_oids: ['040qm00100001m8714ag81ugur0dk'] } }).filters,
    { component_oids: ['040qm00100001m8714ag81ugur0dk'] });
});

test('common filters forward once for a mixed batch and are applied before matching', async () => {
  const reader = new Fake('foo'), filters = { member_names: ['calc'], implementation_oids: [''], variants: ['ASDL'] };
  const result = await search({ filters, queries: [{ query: 'foo' }, { query: 'foo', mode: 'regex' }] }, reader);
  assert.equal(reader.calls, 1); assert.deepEqual(reader.requested!.filters, filters); assert.deepEqual(result.filters, filters);
  assert.ok('searches' in result); assert.deepEqual(result.searches.map(q => q.total_occurrences), [1, 1]);
  const absent = await search({ query: 'foo', filters: { member_names: ['other'] } }, reader);
  assert.ok('results' in absent); assert.equal(absent.total_occurrences, 0);
});

test('necessary regex literals are conservative across branches, escapes and optional pieces', () => {
  assert.equal(requiredLiteral('\\b[PC]_AEB[A-Za-z_0-9]*\\b', false), '_AEB');
  for (const pattern of ['alpha|beta', '(alpha)', '(?=alpha)', '\\u0061bc', '(a)\\1', '\\p{Letter}foo']) {
    assert.equal(requiredLiteral(pattern, false), '');
  }
  assert.equal(requiredLiteral('ab?cd', true), 'cd');
  assert.equal(requiredLiteral('abc*', true), 'ab');
  assert.equal(requiredLiteral('ab+cde', true), 'cde');
  assert.equal(requiredLiteral('SK', false), '');
  assert.equal(requiredLiteral('fooSKbar', false), 'foo');
  assert.equal(requiredLiteral('foo\\.bar', true), 'foo.bar');
});

test('generated concatenation regexes never prefilter a real match, including Unicode case folding', () => {
  const atoms = ['a', 'b', 'S', 'K', '.', '[ab]', '[^a]', '\\w', '\\s', '\\b', '\\.', '\\n'];
  const quantifiers = ['', '?', '*', '+', '{0,2}', '{1,2}', '{2}', '+?'];
  const texts = ['', 'a', 'b', 'ab', 'aabb', 'fooabbar', 'fooSSbar', 'fooſſbar', 'fooKbar', 'a.b', 'foo\nbar', 'aa bar', 'fooaaabbar'];
  let seed = 0x334411, tested = 0;
  const random = (n: number) => { seed = (Math.imul(seed, 1664525) + 1013904223) >>> 0; return seed % n; };
  for (let i = 0; i < 4000; i++) {
    let pattern = i % 2 ? 'foo' : '';
    for (let j = 0; j < 3; j++) pattern += atoms[random(atoms.length)] + quantifiers[random(quantifiers.length)];
    if (i % 3 === 0) pattern += 'bar';
    for (const sensitive of [false, true]) {
      let regex: RegExp;
      try { regex = new RegExp(pattern, sensitive ? 'u' : 'iu'); } catch { continue; }
      const needle = requiredLiteral(pattern, sensitive);
      for (const text of texts) if (regex.test(text)) {
        tested++;
        assert.ok(!needle || (sensitive ? text : text.toLowerCase()).includes(sensitive ? needle : needle.toLowerCase()), pattern + ' / ' + text + ' / ' + needle);
      }
    }
  }
  assert.ok(tested > 1000);
});

test('batch native filter uses a union and disables filtering if any regex has no necessary literal', () => {
  assert.equal(planNativeSearch(validateSearch({ queries: [{ query: 'foo' }, { query: 'bar.*', mode: 'regex' }] })).needle, 'foo\nbar');
  assert.equal(planNativeSearch(validateSearch({ queries: [{ query: 'foo' }, { query: 'bar|baz', mode: 'regex' }] })).needle, 'foo\nbar\nbaz');
  assert.equal(planNativeSearch(validateSearch({ queries: [{ query: 'foo' }, { query: 'bar|.*', mode: 'regex' }] })).needle, '');
});

test('simple regex branches use an OR filter and reject optional groups or unknown structure', () => {
  assert.deepEqual(requiredLiterals('\\b(get|set)\\b', false), ['get', 'et']);
  assert.deepEqual(requiredLiterals('^(?:alpha|beta)$', true), ['alpha', 'beta']);
  assert.deepEqual(requiredLiterals('foo\\|bar|baz', true), ['foo|bar', 'baz']);
  assert.deepEqual(requiredLiterals('(alpha)', false), ['alpha']);
  for (const pattern of ['(alpha|beta)?', '(alpha|beta)*', '(?=alpha)', '(alpha)|(beta)',
    'foo|(bar|baz)', 'foo|.*', 'foo|', '|foo', '(a)\\1', '(?:a|b)', '(alpha|\\u0062eta)']) {
    assert.deepEqual(requiredLiterals(pattern, false), [], pattern);
  }
  assert.deepEqual(requiredLiterals(Array(65).fill('alpha').join('|'), true), []);
  assert.deepEqual(planNativeSearch(validateSearch({ query: '\\b(get|set)\\b', mode: 'regex' })),
    { mode: 'search_many', needle: 'get\net' });
});

test('generated branch filters never drop matches, including Unicode folds and assertions', () => {
  const branches = ['foo', 'bar', 'set', 'SK', 'foo\\|bar', 'ab?cd', 'ab+cde', '[ab]foo',
    'foo\\.bar', 'foo|bar', '', '.*', '\\u0061bc', 'foo\\sbar', 'foo[|]bar'];
  const texts = ['', 'foo', 'bar', 'set', 'ſet', 'SK', 'ſK', 'foo|bar', 'abcd', 'acd', 'abbcde',
    'afoo', 'bfoo', 'foo.bar', 'abc', 'foo bar', 'x\nfoo\ny', 'prefixfoosuffix'];
  let tested = 0;
  for (const left of branches) for (const right of branches) for (const wrapper of [
    (value: string) => value, (value: string) => '(' + value + ')',
    (value: string) => '^(?:' + value + ')$', (value: string) => '\\b(' + value + ')\\b',
    (value: string) => '(?:' + value + ')?', (value: string) => '(?:' + value + ')*',
  ]) for (const sensitive of [true, false]) {
    const pattern = wrapper(left + '|' + right), regex = new RegExp(pattern, sensitive ? 'mu' : 'miu');
    const needles = requiredLiterals(pattern, sensitive);
    for (const text of texts) if (regex.test(text)) {
      tested++;
      assert.ok(!needles.length || needles.some(needle => (sensitive ? text : text.toLowerCase())
        .includes(sensitive ? needle : needle.toLowerCase())), JSON.stringify({ pattern, text, needles, sensitive }));
    }
  }
  assert.ok(tested > 10000);
});

test('one worker handles sequential and concurrent submissions without stale results', async () => {
  const executor = new MatchExecutor();
  try {
    const metrics: Record<string, number>[] = [{}, {}, {}];
    const values = await Promise.all(['foo', 'bar', 'foofoo'].map((text, i) => executor.run({ documents: docs(text), request: validateSearch({ query: 'foo', mode: 'regex' }) }, metrics[i])));
    assert.deepEqual(values.map(v => v[0].total_occurrences), [1, 0, 2]);
    assert.deepEqual(metrics.map(m => m.worker_created), [1, 0, 0]);
  } finally { executor.close(); }
});

test('packed worker preserves per-document spans, metadata, Unicode, multiline and mixed queries', async () => {
  const text = 'head\r\n中文😀 foo\r\nbar foo\r\ntail';
  const base = docs(text)[0];
  const diagram = decodeResponse({ payload: encode([...rows(), ...diagramRows()]) }).documents.find(doc => doc.kind === 'diagram')!;
  const documents = [base, { ...base, document_id: 'same-text-other-method', member_id: 'def', member_name: 'other' },
    { ...base, document_id: 'restricted', search_spans: [{ start: 5, end: 14 }] }, diagram];
  const executor = new MatchExecutor();
  try {
    for (const result_format of ['expanded', 'shared'] as const) for (const deferContext of [false, true]) {
      const job = { documents, request: validateSearch({ queries: [
        { query: 'foo' }, { query: 'foo\\nbar', mode: 'regex', multiline: true },
        { query: '中文😀.*foo', mode: 'regex' }, { query: 'AEBLockTime|set', mode: 'regex' },
      ], result_format, context_before: 2, context_after: 2 }), deferContext, trackFields: true };
      const packed = packMatchJob(job);
      assert.equal(packed.texts.length, 2);
      assert.ok(packed.documents.every(doc => !('text' in doc) && !('diagram_fields' in doc)));
      assert.deepEqual(matchQueries(unpackMatchJob(packed)), matchQueries(job));
      assert.deepEqual(await executor.run(job), matchQueries(job));
    }
  } finally { executor.close(); }
});

test('timed out worker is killed and recreated, close rejects queued work', async () => {
  const executor = new MatchExecutor();
  try {
    await assert.rejects(executor.run({ documents: docs('a'.repeat(30000) + '!'), request: validateSearch({ query: '(a+)+$', mode: 'regex' }) }), (e: unknown) => e instanceof ToolError && e.code === 'REGEX_TIMEOUT');
    const metrics: Record<string, number> = {};
    const result = await executor.run({ documents: docs('foo'), request: validateSearch({ query: 'foo', mode: 'regex' }) }, metrics);
    assert.equal(result[0].total_occurrences, 1); assert.equal(metrics.worker_created, 1);
    const queued = executor.run({ documents: docs('foo'), request: validateSearch({ query: 'foo', mode: 'regex' }) });
    executor.close();
    await assert.rejects(queued, /closed/);
  } finally { executor.close(); }
});

test('deferred context preserves match spans but allocates no full context output', async () => {
  const reader = new Fake('head\nfoo\nbar\ntail');
  const { response } = await searchWithSources({ query: 'foo\nbar', multiline: true, context_before: 1, context_after: 1 }, reader, { deferContext: true });
  assert.ok('results' in response); assert.equal(response.results[0].context, undefined);
  assert.deepEqual(response.results[0].matches![0].ranges, [{ start_line: 2, start_column: 1, end_line: 3, end_column: 4 }]);
});

test('lazy page context matches full result windows in mixed batches and reuses session worker', async () => {
  const session = new SearchSession(new Fake('head\nfoo\nbar\nfoo\ntail'));
  const queries: Query[] = [{ query: 'foo' }, { query: 'foo\\nbar', mode: 'regex', multiline: true }];
  try {
    const full = await session.execute({ queries, context_before: 1, context_after: 1 }) as SearchResponse;
    assert.equal(full.timings.worker_created, 1);
    const again = await session.execute({ queries }) as SearchResponse;
    assert.equal(again.timings.worker_created, 0);
    const page = await session.execute({ operation: 'search_page', queries, context_before: 1, context_after: 1, limit: 1, filters: { variants: ['ASDL'] } }) as SearchPageResponse;
    assert.deepEqual(page.filters, { variants: ['ASDL'] });
    assert.deepEqual(page.searches[0].results[0].context!.lines.map(l => l.preview.text), ['head', 'foo', 'bar']);
    const next = await session.execute({ cursor: page.next_cursor }) as SearchPageResponse;
    assert.deepEqual(next.searches[1].results[0].context!.lines.map(l => l.preview.text), ['head', 'foo', 'bar', 'foo']);
  } finally { session.close(); }
});
