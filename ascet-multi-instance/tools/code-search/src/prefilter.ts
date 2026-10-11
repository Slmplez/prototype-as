import { asciiFold } from './matcher.js';
import type { NativeRequest, NormalizedSearch } from './types.js';

/** Conservative recognizer for concatenations. Unsupported constructs return
 * no filter: groups, alternation, backreferences, property/hex/control escapes.
 * It never treats arbitrary regex source text as a required substring.
 */
export function requiredLiteral(pattern: string, sensitive: boolean): string {
  let i = 0, run = '', best = '';
  const flush = () => { if (run.length > best.length) best = run; run = ''; };
  const add = (literal: string) => {
    // Under ECMAScript /iu, K and S also match Kelvin sign and long s. The
    // native ASCII substring filter cannot prove equivalence for those letters.
    for (const c of literal) {
      if (c < ' ' || c > '~' || (!sensitive && /[kKsS]/.test(c))) flush(); else run += c;
    }
  };
  while (i < pattern.length) {
    const c = pattern[i++];
    let atom: string | null = null;
    if ('()|'.includes(c)) return '';
    if (c === '[') {
      let closed = false;
      while (i < pattern.length) {
        const next = pattern[i++];
        if (next === '\\') i++; else if (next === ']') { closed = true; break; }
      }
      if (!closed) return '';
    } else if (c === '\\') {
      const escaped = pattern[i++];
      if (!escaped) return '';
      if ('\\^$.*+?()[]{}|/'.includes(escaped)) atom = escaped;
      else if (!'bBdDsSwWnrtvf'.includes(escaped)) return '';
    } else if (!'.^$'.includes(c)) {
      if ('*+?{}'.includes(c)) return '';
      atom = c;
    }
    let minimum = 1, exactOne = true;
    if (pattern[i] === '?' || pattern[i] === '*') { i++; minimum = 0; exactOne = false; }
    else if (pattern[i] === '+') { i++; exactOne = false; }
    else if (pattern[i] === '{') {
      const q = /^\{(\d+)(?:,(\d*))?\}/.exec(pattern.slice(i));
      if (!q) return '';
      i += q[0].length; minimum = Number(q[1]);
      exactOne = minimum === 1 && (q[2] === undefined || q[2] === '1');
    }
    if (!exactOne && pattern[i] === '?') i++;
    if (atom !== null && minimum > 0) add(atom); else flush();
    // Joining across a variable repetition would invent a required substring.
    if (!exactOne) flush();
  }
  flush();
  return best.length >= 2 ? best : '';
}

/** Each supported branch must contain one candidate. Unknown or empty branches
 * disable the whole filter; matching remains authoritative in the regex worker.
 */
export function requiredLiterals(pattern: string, sensitive: boolean): string[] {
  const single = requiredLiteral(pattern, sensitive);
  if (single) return [single];
  let core = pattern.replace(/^(?:\^|\\[bB])+/, '').replace(/(?:\$|\\[bB])+$/, '');
  if (core.startsWith('(?:') && core.endsWith(')')) core = core.slice(3, -1);
  else if (core.startsWith('(') && core.endsWith(')')) core = core.slice(1, -1);
  const branches: string[] = [];
  let start = 0, inClass = false;
  for (let i = 0; i < core.length; i++) {
    const char = core[i];
    if (char === '\\') { i++; continue; }
    if (inClass) { if (char === ']') inClass = false; continue; }
    if (char === '[') inClass = true;
    else if (char === '(' || char === ')') return [];
    else if (char === '|') {
      branches.push(core.slice(start, i)); start = i + 1;
      if (branches.length >= 64) return [];
    }
  }
  if (inClass) return [];
  branches.push(core.slice(start));
  const needles = branches.map(branch => requiredLiteral(branch, sensitive));
  return needles.every(Boolean) ? [...new Set(needles)] : [];
}

export function planNativeSearch(request: NormalizedSearch): NativeRequest {
  const ascii = (s: string) => /^[\x00-\x7f]*$/.test(s);
  const candidates = request.queries.map(q => q.mode === 'regex' ? requiredLiterals(q.query, q.case_sensitive)
    : ascii(q.query) ? [q.query.split(/\r\n?|\n/).sort((a, b) => b.length - a.length)[0]] : []);
  const needles = candidates.every(branch => branch.length && branch.every(Boolean)) ? candidates.flat() : [];
  const first = request.queries[0];
  const native: NativeRequest = request.batch || needles.length > 1
    ? { mode: 'search_many', needle: [...new Set(needles.map(asciiFold))].join('\n') }
    : { mode: first.case_sensitive ? 'search_sensitive' : 'search_insensitive', needle: first.case_sensitive ? needles[0] ?? '' : asciiFold(needles[0] ?? '') };
  if (request.expected_database !== undefined) native.expected_database = request.expected_database;
  if (request.filters !== undefined) native.filters = request.filters;
  return native;
}
