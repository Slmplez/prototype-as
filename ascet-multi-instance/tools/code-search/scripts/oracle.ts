import { identity, sha256 } from '../src/protocol.js';
import type { MatchResult, Query, Snapshot, SourceDocument } from '../src/types.js';

// Independent exhaustive code-point scan: no prepared texts, regex or prefilter.
export function baseline(documents: SourceDocument[], query: Query): string[] {
  const fold = (s: string): string => [...s].map(c => c >= 'A' && c <= 'Z' ? String.fromCharCode(c.charCodeAt(0) + 32) : c).join('');
  const q = [...(query.case_sensitive ? query.query : fold(query.query))];
  const word = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_0123456789';
  const hits: string[] = [];
  for (const doc of documents) {
    const lines = doc.text.replaceAll('\r\n', '\n').replaceAll('\r', '\n').split('\n');
    lines.forEach((line, ln) => {
      const chars = [...(query.case_sensitive ? line : fold(line))];
      for (let p = 0; p <= chars.length - q.length;) {
        const equal = q.every((c, i) => chars[p + i] === c);
        const boundary = query.mode !== 'identifier_occurrence' ||
          ((p === 0 || !word.includes(chars[p - 1])) && (p + q.length === chars.length || !word.includes(chars[p + q.length])));
        if (equal && boundary) { hits.push(JSON.stringify([...identity(doc), ln + 1, p + 1])); p += q.length; }
        else p++;
      }
    });
  }
  return hits.sort();
}
export function actual(result: MatchResult): string[] {
  return result.results.flatMap(d => (d.matches ?? result.match_sets![d.match_set!])
    .flatMap(m => m.columns.map(c => JSON.stringify([...identity(d), m.line, c])))).sort();
}
export function fingerprint(snapshot: Snapshot): string {
  return sha256(JSON.stringify(snapshot.documents.map(d => JSON.stringify(d)).sort()));
}
