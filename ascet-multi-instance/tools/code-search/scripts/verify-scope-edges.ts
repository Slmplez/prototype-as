import assert from 'node:assert/strict';
import { writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { Bridge, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { search } from '../src/search.js';
import { readDocument } from '../src/read.js';
import { readStateMachine } from '../src/read-state-machine.js';
import { ToolError } from '../src/patterns.js';
import { fingerprint } from './oracle.js';
import { checkAdvanced } from './advanced-oracle.js';
import type { SourceDocument } from '../src/types.js';

const bridge = new Bridge(), checks: string[] = [];
const report: Record<string, unknown> = { started_utc: new Date().toISOString(), checks };
const output = join(ROOT, 'experiments/search-optimization/scope-edges-' + new Date().toISOString().replace(/[:.]/g, '-') + '.json');
try {
  const raw = await bridge.request({ mode: 'snapshot' }), before = decodeResponse(raw);
  assert.deepEqual(before.errors, []); assert.equal(raw.native_protocol_version, 3);
  report.database = raw.database; report.ascet_pid = raw.ascet_pid;
  const samples = ['header', 'external_c', 'external_h', 'transition_trigger_binding'].map(kind =>
    before.documents.find(d => d.kind === kind && /[A-Za-z_][A-Za-z_0-9]{2,}/.test(d.text))!).filter(Boolean);
  assert.ok(samples.some(d => d.kind === 'transition_trigger_binding'));
  for (const doc of samples) {
    const query = /[A-Za-z_][A-Za-z_0-9]{2,}/.exec(doc.text)![0];
    const filters = { component_oids: [doc.component_oid], member_ids: [doc.member_id], member_names: [doc.member_name],
      kinds: [doc.kind], implementation_oids: [doc.implementation_oid], variants: [doc.variant] };
    const result = await search({ query, filters }, bridge);
    assert.ok('results' in result); assert.equal(result.status, 'ok');
    checkAdvanced(result, [doc], { query }); assert.ok(result.total_occurrences > 0);
    assert.equal(result.coverage.candidate_objects, 1); checks.push(doc.kind + ' exact identity');
  }
  // 64 different identifiers, with a mixture of all three modes.
  const words = [...new Set(before.documents.flatMap(d => d.text.match(/\b[A-Za-z_][A-Za-z_0-9]{4,}\b/g) ?? []))].slice(0, 64);
  assert.equal(words.length, 64);
  const queries = words.map((query, i) => ({ id: i, query, mode: (['text', 'identifier_occurrence', 'regex'] as const)[i % 3] }));
  const batch = await search({ queries, result_format: 'shared' }, bridge);
  assert.ok('searches' in batch); assert.equal(batch.searches.length, 64);
  batch.searches.forEach((result, i) => checkAdvanced(result, before.documents, queries[i]));
  checks.push('64 distinct mixed queries against exhaustive oracle'); report.distinct_batch_internal_ms = batch.timings.search_ms;
  const missing = '040qm00100001m8714ag81ugur0dk'.slice(0, -4) + '0000';
  assert.ok(!before.components.some(c => c.oid === missing));
  const absent = await search({ query: 'AEB', filters: { component_oids: [missing] } }, bridge);
  assert.equal(absent.status, 'ok'); assert.ok('results' in absent); assert.equal(absent.total_occurrences, 0);
  checks.push('absent component scope returns zero');
  await assert.rejects(readDocument({ operation: 'read', target: { component_oid: missing, document_id: before.documents[0].document_id }, expected_database: raw.database }, bridge),
    (e: unknown) => e instanceof ToolError && e.code === 'DOCUMENT_NOT_FOUND');
  checks.push('absent direct read reports DOCUMENT_NOT_FOUND');
  await assert.rejects(readStateMachine({ operation: 'read_state_machine', component_oid: missing, expected_database: raw.database }, bridge),
    (e: unknown) => e instanceof ToolError && e.code === 'COMPONENT_NOT_FOUND');
  checks.push('absent state read reports COMPONENT_NOT_FOUND');
  const target = before.documents.find(d => d.text.includes('AEB')) as SourceDocument;
  const empty = await search({ query: 'AEB', filters: { component_oids: [target.component_oid], implementation_oids: ['__missing__'] } }, bridge);
  assert.ok('results' in empty); assert.equal(empty.status, 'ok'); assert.equal(empty.total_occurrences, 0);
  checks.push('nonexistent implementation scope returns zero');
  assert.equal(fingerprint(decodeResponse(await bridge.request({ mode: 'snapshot' }))), fingerprint(before));
  report.model_stable = true; report.status = 'passed';
} catch (error) { report.status = 'failed'; report.error = String(error); throw error; }
finally { await bridge.close(); await writeFile(output, JSON.stringify(report, null, 2) + '\n'); console.log(JSON.stringify({ output, ...report }, null, 2)); }
