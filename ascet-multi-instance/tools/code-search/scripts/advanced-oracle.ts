import assert from 'node:assert/strict';
import type { ContextBlock, LineMatch, MatchResult, Query, SourceDocument } from '../src/types.js';

/** Deliberately independent: no production matcher, prepared text or regex compiler. */
export function checkAdvanced(result: MatchResult, documents: SourceDocument[], query: Query, before = 0, after = 0): void {
  const fold = (s: string): string => [...s].map(c => c >= 'A' && c <= 'Z' ? c.toLowerCase() : c).join('');
  let count = 0, linesCount = 0;
  const wanted: string[] = [];
  const lookup = new Map(result.results.map(d => [d.document_id, d]));
  for (const doc of documents) {
    const text = doc.text.replaceAll('\r\n', '\n').replaceAll('\r', '\n'), lines = text.split('\n');
    const offsets: [number, number][] = [];
    const normalizedQuery = query.query.replaceAll('\r\n', '\n').replaceAll('\r', '\n');
    if (query.mode === 'regex') {
      const regex = new RegExp(normalizedQuery, 'gmu' + (query.case_sensitive ? '' : 'i') + (query.dotall ? 's' : ''));
      let base = 0;
      for (const part of query.multiline ? [text] : lines) {
        for (const match of part.matchAll(regex)) offsets.push([base + match.index, base + match.index + match[0].length]);
        base += part.length + 1;
      }
    } else {
      const source = query.case_sensitive ? text : fold(text), needle = query.case_sensitive ? normalizedQuery : fold(normalizedQuery);
      const word = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_0123456789';
      for (let from = 0; from <= source.length;) {
        const start = source.indexOf(needle, from); if (start < 0) break;
        const end = start + needle.length;
        const accepted = query.mode !== 'identifier_occurrence' ||
          ((!start || !word.includes(source[start - 1])) && (end === source.length || !word.includes(source[end])));
        if (accepted) { offsets.push([start, end]); from = end; } else from = start + 1;
      }
    }
    if (!offsets.length) continue;
    wanted.push(doc.document_id);
    const returned = lookup.get(doc.document_id); assert.ok(returned, 'missing document: ' + doc.document_id);
    const { text: _body, ...metadata } = doc;
    const { matches: expanded, match_set: ref, context: expandedContext, ...actualMetadata } = returned;
    assert.deepEqual(actualMetadata, metadata, 'metadata');
    const expected: LineMatch[] = [], covered = new Set<number>(), windows = new Set<number>();
    const position = (offset: number): [number, number] => {
      const parts = text.slice(0, offset).split('\n'); return [parts.length, [...parts.at(-1)!].length + 1];
    };
    for (const [start, end] of offsets) {
      const [sl, sc] = position(start), [el, ec] = position(end);
      if (expected.at(-1)?.line !== sl) expected.push({ line: sl, columns: [], text: lines[sl - 1],
        ...(query.multiline || query.mode === 'regex' ? { ranges: [] } : {}) });
      expected.at(-1)!.columns.push(sc);
      expected.at(-1)!.ranges?.push({ start_line: sl, start_column: sc, end_line: el, end_column: ec });
      const last = end > start && ec === 1 ? Math.max(sl, el - 1) : el;
      for (let ln = sl; ln <= last; ln++) covered.add(ln);
      for (let ln = Math.max(1, sl - before); ln <= Math.min(lines.length, last + after); ln++) windows.add(ln);
    }
    assert.deepEqual(expanded ?? result.match_sets![ref!], expected, 'match spans/line text');
    if (query.multiline || before || after) {
      const context: ContextBlock[] = [];
      for (const ln of [...windows].sort((a, b) => a - b)) {
        const last = context.at(-1);
        if (last && last.end_line + 1 === ln) { last.end_line = ln; last.lines.push(lines[ln - 1]); }
        else context.push({ start_line: ln, end_line: ln, lines: [lines[ln - 1]] });
      }
      assert.deepEqual(expandedContext ?? result.context_sets![ref!], context, 'context windows');
    }
    count += offsets.length; linesCount += covered.size;
  }
  assert.deepEqual(result.results.map(d => d.document_id).sort(), wanted.sort(), 'extra/missing document');
  assert.equal(result.total_occurrences, count); assert.equal(result.matched_lines, linesCount); assert.equal(result.matched_documents, wanted.length);
}
