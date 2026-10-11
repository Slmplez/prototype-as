import assert from 'node:assert/strict';

function canonical(value: unknown): unknown {
  if (Array.isArray(value)) return value.map(canonical);
  if (value !== null && typeof value === 'object') return Object.fromEntries(Object.entries(value)
    .sort(([a], [b]) => a < b ? -1 : a > b ? 1 : 0).map(([key, item]) => [key, canonical(item)]));
  return value;
}

/** Compare unordered records without ignoring multiplicity, identities or nested array order. */
export function assertSameRecords(actual: unknown[], expected: unknown[], message: string): void {
  const encode = (items: unknown[]) => items.map(item => JSON.stringify(canonical(item))).sort();
  assert.deepEqual(encode(actual), encode(expected), message);
}
