import { ToolError } from './bridge.js';

type Value = number | string;
export type DcmEntry = { name: string; kind: string; line: number; shape: number[]; fields: Record<string, Value[]>; unsupported?: string };
export type DcmDocument = { version: string; entries: DcmEntry[] };
const kinds = new Set(['FESTWERT', 'FESTWERTEBLOCK', 'KENNLINIE', 'FESTKENNLINIE', 'KENNFELD', 'FESTKENNFELD', 'GRUPPENKENNLINIE', 'GRUPPENKENNFELD', 'STUETZSTELLENVERTEILUNG']);
const dataKeys = new Set(['WERT', 'TEXT', 'ST/X', 'ST/Y', 'ST_TX/X', 'ST_TX/Y']);
const fail = (line: number, message: string): never => { throw new ToolError('INVALID_DCM', `Line ${line}: ${message}`); };

function tokens(line: string, at: number): string[] {
  const result: string[] = [];
  let i = 0;
  while (i < line.length) {
    while (/\s/.test(line[i] ?? '') && i < line.length) i++;
    if (i === line.length || line[i] === '*') break;
    if (line[i] === '"') {
      let value = '', closed = false; i++;
      while (i < line.length) {
        if (line[i] === '"') {
          if (line[i + 1] === '"') { value += '"'; i += 2; continue; }
          i++; closed = true; break;
        }
        if (line[i] === '\\' && ['"', '\\'].includes(line[i + 1])) i++;
        value += line[i++];
      }
      if (!closed || (i < line.length && !/\s/.test(line[i]))) fail(at, 'Malformed quoted value.');
      // Prefix retains the distinction between a quoted numeric string and a number.
      result.push('\0' + value);
    } else {
      const start = i; while (i < line.length && !/\s/.test(line[i])) i++;
      const value = line.slice(start, i); if (value.includes('"')) fail(at, 'Malformed token.'); result.push(value);
    }
  }
  return result;
}
function value(token: string, at: number): Value {
  const raw = token.startsWith('\0') ? token.slice(1) : token;
  if (/^(true|false)$/i.test(raw)) return raw.toLowerCase();
  if (token.startsWith('\0')) return raw;
  if (/^[+-]?(?:\d+(?:\.\d*)?|\.\d+)(?:[eEdD][+-]?\d+)?$/.test(raw)) {
    const n = Number(raw.replace(/[dD]/, 'e')); if (!Number.isFinite(n)) fail(at, 'Nonfinite numeric value.'); return n;
  }
  if (/^[A-Za-z_][\w.]*$/.test(raw) && !/^(NaN|Infinity)$/i.test(raw)) return raw;
  return fail(at, 'Invalid data value.');
}

// Bounded offline parser. It never executes file contents or changes a model.
export function parseDcm(bytes: Buffer): DcmDocument {
  if (bytes.length > 16 * 1024 * 1024) throw new ToolError('DCM_TOO_LARGE', 'At most 16 MiB.');
  const lines = bytes.toString('latin1').split(/\r?\n/), entries: DcmEntry[] = [], names = new Set<string>();
  let version = '', current: DcmEntry | undefined, cells = 0, functions = false;
  const finish = (at: number) => {
    if (!current) fail(at, 'Unexpected END.');
    const entry = current!;
    const n = entry.shape.reduce((a, b) => a * b, 1);
    const values = entry.fields.WERT ?? entry.fields.TEXT ?? [];
    if (entry.fields.WERT && entry.fields.TEXT) fail(at, 'Mixed numeric and text values.');
    if (entry.kind === 'FESTWERT' && values.length !== 1) fail(at, 'Scalar requires exactly one value.');
    if (entry.shape.length && values.length !== n && entry.kind !== 'STUETZSTELLENVERTEILUNG') fail(at, 'Data count does not match dimensions.');
    if (entry.kind.includes('KENNLINIE') || entry.kind.includes('KENNFELD')) {
      if ((entry.fields['ST/X'] ?? entry.fields['ST_TX/X'] ?? []).length !== entry.shape[0]) fail(at, 'X axis count does not match dimensions.');
      if (entry.shape.length === 2 && (entry.fields['ST/Y'] ?? entry.fields['ST_TX/Y'] ?? []).length !== entry.shape[1]) fail(at, 'Y axis count does not match dimensions.');
    }
    if (!Object.keys(entry.fields).length) entry.unsupported = 'No recognized data fields.';
    if (entry.kind.startsWith('GRUPPEN') || entry.kind === 'STUETZSTELLENVERTEILUNG') entry.unsupported = 'Grouped and shared-axis parameters are not independently audited.';
    entries.push(entry); current = undefined;
    if (entries.length > 20000) fail(at, 'At most 20000 entries.');
  };
  for (let i = 0; i < lines.length; i++) {
    const at = i + 1, row = lines[i].trim(); if (!row || /^[*!]/.test(row)) continue;
    const ts = tokens(row, at), key = ts.shift(); if (!key) continue;
    if (key === 'KONSERVIERUNG_FORMAT') {
      if (current || version || ts.length !== 1 || !['1.0', '2.0'].includes(ts[0])) fail(at, 'Invalid format header.');
      version = ts[0]; continue;
    }
    if (!version) fail(at, 'Format header must precede data.');
    if (functions) { if (key === 'END') functions = false; continue; }
    if (key === 'FUNKTIONEN' && !current) { functions = true; continue; }
    if (kinds.has(key)) {
      if (current) fail(at, 'Previous entry is missing END.');
      const name = ts.shift(); if (!name || name.startsWith('\0') || names.has(name)) fail(at, 'Missing or duplicate parameter name.');
      names.add(name!);
      const shape = ts.map(t => { const n = Number(t); if (!/^\d+$/.test(t) || !Number.isSafeInteger(n) || n < 1 || n > 2000000) fail(at, 'Invalid dimensions.'); return n; });
      const dimensions = key === 'FESTWERT' ? 0 : key.includes('KENNFELD') ? 2 : 1;
      if (shape.length !== dimensions || shape.reduce((a, b) => a * b, 1) > 2000000) fail(at, 'Invalid shape.');
      current = { name: name!, kind: key, line: at, shape, fields: {} }; continue;
    }
    if (key === 'END') { if (ts.length) fail(at, 'Unexpected END arguments.'); finish(at); continue; }
    if (dataKeys.has(key)) {
      if (!current || !ts.length) fail(at, 'Data outside an entry or empty data row.');
      const xs = ts.map(t => value(t, at));
      const field = current!.fields[key] ??= []; for (const x of xs) field.push(x); cells += xs.length;
      if (cells > 2000000) fail(at, 'At most two million decoded cells.');
      continue;
    }
    const metadata = /^(LANGNAME|DISPLAYNAME|EINHEIT_[WXY]|FUNKTION|VARIANT|MODULKOPF)$/.test(key);
    if (!metadata) {
      if (!current) fail(at, `Unsupported top-level block ${key}.`);
      current!.unsupported = `Unrecognized field ${key}.`;
    }
  }
  if (!version || current || functions) fail(lines.length, 'Missing header or unterminated block.');
  return { version, entries };
}

const equal = (a: unknown, b: unknown) => JSON.stringify(a) === JSON.stringify(b);
const state = (e: DcmEntry) => ({ kind: e.kind.replace(/^FEST(?=KENN)/, ''), shape: e.shape, fields: Object.fromEntries(Object.entries(e.fields).sort(([a], [b]) => a.localeCompare(b))) });
export function auditDcm(input: DcmDocument, before: DcmDocument, after: DcmDocument) {
  const old = new Map(before.entries.map(e => [e.name, e])), actual = new Map(after.entries.map(e => [e.name, e]));
  const entries = input.entries.map(expected => {
    const prior = old.get(expected.name), found = actual.get(expected.name);
    const unsupported = expected.unsupported ?? found?.unsupported;
    const matchesRequested = !!found && !unsupported && equal(state(expected), state(found));
    const status = unsupported ? 'unsupported' : !found ? 'not_exported' : matchesRequested ? 'matched' : 'mismatch';
    const changedFromBaseline = !!prior && !!found && !equal(state(prior), state(found));
    const reason = unsupported ?? (status === 'not_exported' ? 'Native re-export contains no entry with this exact name; application cannot be established.' : status === 'mismatch' ? (changedFromBaseline ? 'Observed state changed but differs from the requested state.' : 'Requested state was not observed; entry may be ignored, dependent, rejected or quantized.') : changedFromBaseline ? 'Requested state observed after import and differs from baseline.' : 'Requested state observed; unchanged baseline does not prove a write occurred.');
    const differences: any[] = [];
    if (found && status === 'mismatch') {
      if (!equal(state(expected).kind, state(found).kind)) differences.push({ field: 'kind', expected: expected.kind, actual: found.kind });
      if (!equal(expected.shape, found.shape)) differences.push({ field: 'shape', expected: expected.shape, actual: found.shape });
      for (const field of new Set([...Object.keys(expected.fields), ...Object.keys(found.fields)])) {
        const xs = expected.fields[field] ?? [], ys = found.fields[field] ?? [];
        for (let index = 0; index < Math.max(xs.length, ys.length) && differences.length < 20; index++) if (xs[index] !== ys[index]) differences.push({ field, index, expected: xs[index] ?? null, actual: ys[index] ?? null });
      }
    }
    return { name: expected.name, kind: expected.kind, line: expected.line, status, matchesRequested, exportedBefore: !!prior, changedFromBaseline, reason, differences };
  });
  const counts = { matched: 0, mismatch: 0, not_exported: 0, unsupported: 0 };
  for (const e of entries) counts[e.status as keyof typeof counts]++;
  return { scope: 'all_input_entries_by_native_reexport', nativeApplicationProven: false, inputEntries: entries.length, allEntriesAccounted: true,
    allMatched: entries.length > 0 && entries.every(e => e.matchesRequested), counts, entries };
}
