import { compareText } from './matcher.js';
import type { ContextBlock, NormalizedQuery, QueryResult, SearchDocument } from './types.js';
import type { PageContext, PageDocument, PageLineMatch, PageQueryResult, SourcePreview } from './paging-types.js';

export interface IndexedDocument { value: SearchDocument; ends: number[]; total: number; sourceContext?: ContextBlock[] }
export interface IndexedQuery {
  query: NormalizedQuery;
  docs: IndexedDocument[];
  ends: number[];
  total: number;
  total_lines: number;
  total_documents: number;
}
export interface PagePosition { offsets: number[]; turn: number }
export interface SelectedHit { query: number; document: number; line: number; column: number }

/** Index line counts instead of allocating one object per occurrence. */
export function indexQuery(value: QueryResult): IndexedQuery {
  const keys = ['component_oid', 'implementation_oid', 'variant', 'kind', 'member_id', 'document_id'] as const;
  const sorted = [...value.results].sort((a, b) => {
    for (const key of keys) { const order = compareText(a[key], b[key]); if (order) return order; }
    return 0;
  });
  let total = 0;
  const ends: number[] = [];
  const docs = sorted.map(value => {
    let n = 0;
    const lineEnds = value.matches!.map(m => n += m.columns.length);
    ends.push(total += n);
    return { value, ends: lineEnds, total: n };
  });
  const { id, query, mode, case_sensitive, multiline, dotall } = value;
  return { query: { id, query, mode, case_sensitive, ...(multiline !== undefined ? { multiline } : {}),
    ...(dotall !== undefined ? { dotall } : {}) }, docs, ends, total,
    total_lines: value.matched_lines, total_documents: value.matched_documents };
}

function after(ends: number[], offset: number): number {
  let lo = 0, hi = ends.length;
  while (lo < hi) { const mid = (lo + hi) >>> 1; if (ends[mid] <= offset) lo = mid + 1; else hi = mid; }
  return lo;
}

/** Selection is pure: replaying a cursor cannot advance another caller's progress. */
export function selectHits(queries: IndexedQuery[], start: PagePosition, limit: number): SelectedHit[] {
  const offsets = [...start.offsets], hits: SelectedHit[] = [];
  let turn = start.turn;
  while (hits.length < limit) {
    let q = -1;
    for (let n = 0; n < queries.length; n++) {
      const candidate = (turn + n) % queries.length;
      if (offsets[candidate] < queries[candidate].total) { q = candidate; break; }
    }
    if (q < 0) break;
    const index = queries[q], document = after(index.ends, offsets[q]);
    const doc = index.docs[document], local = offsets[q] - (index.ends[document - 1] ?? 0);
    const line = after(doc.ends, local), column = local - (doc.ends[line - 1] ?? 0);
    hits.push({ query: q, document, line, column });
    offsets[q]++; turn = (q + 1) % queries.length;
  }
  return hits;
}

export function advance(start: PagePosition, hits: SelectedHit[], count: number): PagePosition {
  const offsets = [...start.offsets];
  for (const hit of hits) offsets[hit.query]++;
  return { offsets, turn: hits.length ? (hits.at(-1)!.query + 1) % count : start.turn };
}

/** Bounded allocation even for a very long Unicode line. */
export function preview(text: string, column: number, size: number): SourcePreview {
  const start = Math.max(1, column - Math.floor(size / 3));
  let cp = 1, offset = 0, lo = 0;
  while (offset < text.length && cp < start) { offset += text.codePointAt(offset)! > 0xffff ? 2 : 1; cp++; }
  lo = offset;
  for (let n = 0; n < size && offset < text.length; n++) offset += text.codePointAt(offset)! > 0xffff ? 2 : 1;
  return { text: text.slice(lo, offset), start_column: cp, truncated_before: lo > 0, truncated_after: offset < text.length };
}

function pageContext(blocks: ContextBlock[], matches: PageLineMatch[], before: number, afterLines: number,
  lineBudget: number, textBudget: number): PageContext {
  const intervals: [number, number][] = [];
  for (const match of matches) {
    for (let i = 0; i < match.columns.length; i++) {
      const range = match.ranges?.[i];
      const end = range ? Math.max(match.line, range.end_line - (range.end_column === 1 && range.end_line > match.line ? 1 : 0)) : match.line;
      const lo = Math.max(1, match.line - before), hi = end + afterLines;
      const last = intervals.at(-1);
      if (last && lo <= last[1] + 1) last[1] = Math.max(last[1], hi);
      else intervals.push([lo, hi]);
    }
  }
  const slices: { block: ContextBlock; lo: number; hi: number }[] = [];
  let total = 0;
  for (const [lo, hi] of intervals) for (const block of blocks) {
    const start = Math.max(lo, block.start_line), end = Math.min(hi, block.end_line);
    if (start <= end) { slices.push({ block, lo: start, hi: end }); total += end - start + 1; }
  }
  const first = Math.ceil(lineBudget / 2), last = Math.floor(lineBudget / 2);
  const lines: PageContext['lines'] = [];
  let consumed = 0;
  for (const slice of slices) {
    const count = slice.hi - slice.lo + 1;
    // Only visit retained head/tail lines, even for a match spanning a huge body.
    const indexes = new Set<number>();
    for (let i = 0; i < Math.min(count, Math.max(0, first - consumed)); i++) indexes.add(i);
    for (let i = Math.max(0, total - last - consumed); i < count; i++) indexes.add(i);
    for (const i of indexes) {
      const line = slice.lo + i;
      lines.push({ line, preview: preview(slice.block.lines[line - slice.block.start_line], 1, textBudget) });
    }
    consumed += count;
  }
  return { lines, omitted_lines: total - lines.length };
}

export function projectQueries(queries: IndexedQuery[], hits: SelectedHit[], end: PagePosition,
  format: 'expanded' | 'shared', before: number, afterLines: number, textBudget: number, contextBudget: number): PageQueryResult[] {
  const selected = new Map<number, Map<number, Map<number, number[]>>>();
  for (const hit of hits) {
    let q = selected.get(hit.query); if (!q) selected.set(hit.query, q = new Map());
    let d = q.get(hit.document); if (!d) q.set(hit.document, d = new Map());
    let line = d.get(hit.line); if (!line) d.set(hit.line, line = []);
    line.push(hit.column);
  }
  return queries.map((q, query_index) => {
    const results: PageDocument[] = [], match_sets: PageLineMatch[][] = [], context_sets: PageContext[] = [];
    const shared = new Map<string, number>();
    let returned = 0;
    for (const [docIndex, selectedLines] of selected.get(query_index) ?? []) {
      const indexed = q.docs[docIndex], doc = indexed.value;
      const matches: PageLineMatch[] = [];
      for (const [lineIndex, indexes] of selectedLines) {
        const line = doc.matches![lineIndex]; returned += indexes.length;
        matches.push({ line: line.line, columns: indexes.map(i => line.columns[i]),
          ...(line.ranges ? { ranges: indexes.map(i => line.ranges![i]) } : {}),
          preview: preview(line.text, line.columns[indexes[0]], textBudget) });
      }
      const blocks = indexed.sourceContext ?? doc.context;
      const context = blocks ? pageContext(blocks, matches, before, afterLines, contextBudget, textBudget) : undefined;
      const { matches: _matches, context: _context, match_set: _ref, ...metadata } = doc;
      if (format === 'expanded') results.push({ ...metadata, matches, ...(context ? { context } : {}) });
      else {
        const key = JSON.stringify([matches, context]);
        let ref = shared.get(key);
        if (ref === undefined) {
          ref = match_sets.length; shared.set(key, ref); match_sets.push(matches);
          context_sets.push(context ?? { lines: [], omitted_lines: 0 });
        }
        results.push({ ...metadata, match_set: ref });
      }
    }
    return { ...q.query, query_index, result_format: format, results,
      ...(format === 'shared' ? { match_sets, context_sets } : {}),
      returned_occurrences: returned, total_occurrences: q.total,
      total_matched_lines: q.total_lines, total_matched_documents: q.total_documents,
      has_more: end.offsets[query_index] < q.total };
  });
}
