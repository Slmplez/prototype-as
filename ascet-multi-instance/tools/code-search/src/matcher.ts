import type { ContextBlock, LineMatch, MatchResult, ResultFormat, SearchDocument, SearchMode, SourceDocument } from './types.js';
import { compileRegex } from './patterns.js';

export interface MatchOptions { multiline?: boolean; dotall?: boolean; context_before?: number; context_after?: number; defer_context?: boolean; track_fields?: boolean; search_spans?: { start: number; end: number }[] }
interface TextMatches { matches: LineMatch[]; count: number; matchedLines: number; context?: ContextBlock[] }

export const asciiFold = (value: string): string => /[^\x00-\x7f]/.test(value)
  ? value.replace(/[A-Z]+/g, run => run.toLowerCase()) : value.toLowerCase();
function upperBound(values: number[], position: number): number {
  let lo = 0, hi = values.length;
  while (lo < hi) {
    const mid = (lo + hi) >>> 1;
    if (values[mid] <= position) lo = mid + 1;
    else hi = mid;
  }
  return lo;
}

/** Lives only for the current request; never stored in the connection. */
export class PreparedText {
  private readonly normalized: string;
  private folded?: string;
  private lines?: string[];
  private starts: number[] = [];
  private lowSurrogates: number[] = [];

  constructor(text: string) { this.normalized = text.replace(/\r\n?/g, '\n'); }

  private prepareLines(): void {
    if (!this.lines) {
      this.lines = this.normalized.split('\n');
      let offset = 0;
      for (const line of this.lines) { this.starts.push(offset); offset += line.length + 1; }
      // Offset correction is logarithmic per match even for large lines with emoji.
      for (const pair of this.normalized.matchAll(/[\ud800-\udbff][\udc00-\udfff]/g)) this.lowSurrogates.push(pair.index + 1);
    }
  }

  private position(offset: number): { line: number; column: number } {
    const line = upperBound(this.starts, offset) - 1;
    const correction = upperBound(this.lowSurrogates, offset - 1) - upperBound(this.lowSurrogates, this.starts[line] - 1);
    return { line, column: offset - this.starts[line] - correction + 1 };
  }

  match(needle: string, regex: RegExp, sensitive: boolean, mode: SearchMode, options: MatchOptions): TextMatches {
    const isRegex = mode === 'regex';
    const haystack = sensitive || isRegex ? this.normalized : (this.folded ??= asciiFold(this.normalized));
    if (!isRegex && !haystack.includes(needle)) return { matches: [], count: 0, matchedLines: 0 };
    this.prepareLines();
    const matches: LineMatch[] = [];
    const intervals: [number, number][] = [];
    const withRanges = isRegex || options.multiline === true;
    const withContext = !options.defer_context && (options.multiline || (options.context_before ?? 0) > 0 || (options.context_after ?? 0) > 0);
    let count = 0, lastLine = -1, coveredUntil = -1, matchedLines = 0;
    const scan = (text: string, base: number, fieldIndex?: number): void => {
      regex.lastIndex = 0;
      for (let occurrence; (occurrence = regex.exec(text)) !== null;) {
        const offset = base + occurrence.index, endOffset = offset + occurrence[0].length;
        const start = this.position(offset), end = this.position(endOffset);
        if (start.line !== lastLine) {
          matches.push({ line: start.line + 1, columns: [], text: this.lines![start.line], ...(withRanges ? { ranges: [] } : {}) });
          lastLine = start.line;
        }
        const match = matches.at(-1)!;
        match.columns.push(start.column);
        if (options.track_fields && fieldIndex !== undefined) (match.field_indices ??= []).push(fieldIndex);
        if (withRanges) match.ranges!.push({ start_line: start.line + 1, start_column: start.column, end_line: end.line + 1, end_column: end.column });
        // End is exclusive: a match ending immediately after LF does not cover
        // the following empty line. A zero-width match covers its start line.
        const lastCovered = endOffset > offset && end.column === 1 ? Math.max(start.line, end.line - 1) : end.line;
        matchedLines += Math.max(0, lastCovered - Math.max(coveredUntil, start.line - 1));
        coveredUntil = Math.max(coveredUntil, lastCovered);
        if (withContext) {
          const lo = Math.max(0, start.line - (options.context_before ?? 0));
          const hi = Math.min(this.lines!.length - 1, lastCovered + (options.context_after ?? 0));
          const previous = intervals.at(-1);
          if (previous && lo <= previous[1] + 1) previous[1] = Math.max(previous[1], hi);
          else intervals.push([lo, hi]);
        }
        count++;
        if (occurrence[0].length === 0) {
          // JS RegExp.exec does not advance on empty matches. Advance a full
          // Unicode code point (including EOF), preserving all positions.
          const cp = text.codePointAt(regex.lastIndex);
          regex.lastIndex += cp !== undefined && cp > 0xffff ? 2 : 1;
        }
      }
    };
    if (options.search_spans) {
      for (const [fieldIndex, span] of options.search_spans.entries()) {
        const part = haystack.slice(span.start, span.end);
        if (isRegex && !options.multiline) {
          let offset = span.start;
          for (const line of part.split('\n')) { scan(line, offset, fieldIndex); offset += line.length + 1; }
        } else scan(part, span.start, fieldIndex);
      }
    } else if (isRegex && !options.multiline) this.lines!.forEach((line, i) => scan(line, this.starts[i]));
    else scan(haystack, 0);
    return { matches, count, matchedLines, ...(withContext ? { context: intervals.map(([lo, hi]) => ({
      start_line: lo + 1, end_line: hi + 1, lines: this.lines!.slice(lo, hi + 1),
    })) } : {}) };
  }
}

// Python tuple sorting uses Unicode code points; JS string comparison uses UTF-16.
export function compareText(a: string, b: string): number {
  if (a === b) return 0;
  const aa = a[Symbol.iterator](), bb = b[Symbol.iterator]();
  while (true) {
    const x = aa.next(), y = bb.next();
    if (x.done || y.done) return x.done ? -1 : 1;
    const d = x.value.codePointAt(0)! - y.value.codePointAt(0)!;
    if (d) return d;
  }
}

export function matchDocuments(documents: SourceDocument[], query: string, mode: SearchMode = 'text',
  caseSensitive = false, resultFormat: ResultFormat = 'expanded', prepared = new Map<string, PreparedText>(), options: MatchOptions = {}): MatchResult {
  if (!query || query.includes('\0') || (!options.multiline && /[\r\n]/u.test(query))) throw new Error('Invalid matcher query');
  const normalizedQuery = query.replace(/\r\n?/g, '\n');
  const needle = caseSensitive ? normalizedQuery : asciiFold(normalizedQuery);
  let pattern = needle.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
  if (mode === 'identifier_occurrence') pattern = '(?<![A-Za-z_0-9])' + pattern + '(?![A-Za-z_0-9])';
  const regex = mode === 'regex' ? compileRegex(query, caseSensitive, options.dotall) : new RegExp(pattern, 'gu');
  const cached = new Map<string, TextMatches & { ref: number }>();
  const results: SearchDocument[] = [], matchSets: LineMatch[][] = [], contextSets: ContextBlock[][] = [];
  const withContext = !options.defer_context && (options.multiline || (options.context_before ?? 0) > 0 || (options.context_after ?? 0) > 0);
  let occurrences = 0, lines = 0;
  for (const doc of documents) {
    const cacheKey = doc.search_spans ? "model:" + JSON.stringify([doc.text, doc.search_spans]) : "source:" + doc.text;
    let matched = cached.get(cacheKey);
    if (!matched) {
      let text = prepared.get(doc.text);
      if (!text) { text = new PreparedText(doc.text); prepared.set(doc.text, text); }
      matched = { ...text.match(needle, regex, caseSensitive, mode, { ...options, search_spans: doc.search_spans }), ref: matchSets.length };
      if (matched.matches.length && resultFormat === 'shared') {
        matchSets.push(matched.matches);
        if (withContext) contextSets.push(matched.context!);
      }
      cached.set(cacheKey, matched);
    }
    if (matched.matches.length) {
      occurrences += matched.count;
      lines += matched.matchedLines;
      const { text: _text, search_spans: _spans, diagram_fields: _fields, ...metadata } = doc;
      results.push({ ...metadata, ...(resultFormat === 'shared' ? { match_set: matched.ref } : {
        matches: matched.matches, ...(withContext ? { context: matched.context } : {}),
      }) });
    }
  }
  const sortKeys = ['component_oid', 'implementation_oid', 'variant', 'kind', 'member_id'] as const;
  results.sort((a, b) => {
    for (const key of sortKeys) { const comparison = compareText(a[key], b[key]); if (comparison) return comparison; }
    return 0;
  });
  return { result_format: resultFormat, ...(resultFormat === 'shared' ? { match_sets: matchSets } : {}),
    ...(resultFormat === 'shared' && withContext ? { context_sets: contextSets } : {}),
    results, total_occurrences: occurrences, matched_lines: lines, matched_documents: results.length };
}
