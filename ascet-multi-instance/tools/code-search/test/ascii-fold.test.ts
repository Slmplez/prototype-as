import test from 'node:test';
import assert from 'node:assert/strict';
import { asciiFold, matchDocuments } from '../src/matcher.js';
import { docs } from './fixtures.js';

test('fast folding changes only ASCII capitals, including mixed Unicode and lone surrogates', () => {
 const ascii = Array.from({ length: 128 }, (_, i) => String.fromCharCode(i)).join('');
 for (const text of [ascii, ascii.repeat(20000), 'ABC\u0130\u0131\u017f\u212a\u00c9\u4e2d\u6587 XYZ', '\ud800ABC\udc00', '\ud83d\ude42ABC']) {
  const original = text.replace(/[A-Z]/g, c => String.fromCharCode(c.charCodeAt(0) + 32));
  assert.equal(asciiFold(text), original);
 }
});

test('native surrogate scanning preserves code point columns around malformed pairs', () => {
 const result = matchDocuments(docs('\ud800\ud83d\ude42foo \udc00foo'), 'foo');
 assert.deepEqual(result.results[0].matches![0].columns, [3, 8]);
});
