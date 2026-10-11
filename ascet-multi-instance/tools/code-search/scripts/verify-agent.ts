/** Live read-only validation of the compact agent facade. */
import assert from 'node:assert/strict';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { projectAgentSnapshot } from '../src/agent-projection.js';
import { linesOf, matchesOf } from '../test/agent-output.js';
import { normalizeAgentSearch } from '../src/agent-validation.js';
import { fingerprint } from './oracle.js';
import { matchQueries } from '../src/match-queries.js';
import { validateSearch } from '../src/validation.js';
import { filterDocuments } from '../src/filters.js';
import { checkAdvanced } from './advanced-oracle.js';
import type { AgentBatchReadResponse, AgentCodeTarget, AgentReadContent, AgentReadResponse, AgentSearchRequest, AgentSearchResponse } from '../src/agent-types.js';
import { AgentSession } from '../src/agent-session.js';
import type { SearchPageResponse } from '../src/paging-types.js';
import type { SourceDocument } from '../src/types.js';

const directory = join(ROOT, 'experiments/agent-interface');
await mkdir(directory, { recursive: true });
const output = join(directory, 'validation-' + new Date().toISOString().replace(/[:.]/g, '-') + '.json');
const observations: { mode: string; case: string; kind: string; elapsed_ms: number; bytes: number }[] = [];
const report: Record<string, unknown> = { started_utc: new Date().toISOString(), observations,
  timing_boundary: 'Persistent JSONL client request through full JSON parsing; loaded database, startup separate. Serial legacy then agent sessions.', rounds: 3 };
const save = () => writeFile(output, JSON.stringify(report, null, 2) + '\n');
async function snapshot(diagrams = false) {
  const bridge = new Bridge();
  try { const raw = await bridge.request({ mode: 'snapshot', include_diagrams: diagrams }), decoded = decodeResponse(raw); assert.deepEqual(decoded.errors, []); return { raw, decoded }; }
  finally { await bridge.close(); }
}
const identity = (d: AgentCodeTarget) => {
  const location = d.state !== undefined || d.transition !== undefined ? {
    diagram_source_oid: d.diagram_oid, diagram_name: d.diagram, hierarchy_state_ids: d.state_hierarchy_ids,
    element_type: d.state !== undefined ? 'state' : 'transition', element_id: d.state_id ?? d.transition_id,
    slot: d.kind.replace(/_binding$/, '').split('_').slice(1).join('_'),
  } : null;
  const graph = d.kind === 'diagram' ? { specification_source_oid: d.diagram_oid, specification_name: d.diagram } : null;
  return JSON.stringify([d.component_path, d.method ?? d.process ?? d.state ?? d.transition ?? (d.kind === 'diagram' ? d.diagram : ''), d.kind, d.variant, d.implementation ?? '', location, graph]);
};
const readContent = (read: AgentReadContent) => read.code ?? read.diagram_text ?? read.method_binding?.method;
const sourceIdentity = (d: SourceDocument) => JSON.stringify([d.component_path, d.member_name, d.kind, d.variant, d.implementation_oid, d.location ?? null, d.graphical_location ?? null]);
const count = (values: number[]) => { const sorted = [...values].sort((a, b) => a - b); return { samples: sorted.length,
  median: (sorted[Math.floor((sorted.length - 1) / 2)] + sorted[Math.floor(sorted.length / 2)]) / 2, max: sorted.at(-1) }; };

try {
  const before = await snapshot(), sources = before.decoded.documents;
  report.database = before.raw.database; report.ascet_pid = before.raw.ascet_pid; report.source_fingerprint = fingerprint(before.decoded);
  const agentSources = projectAgentSnapshot((await snapshot(true)).decoded).documents;
  const lookup = new Map(agentSources.map(d => [sourceIdentity(d), d]));
  // This data set has distinct displayed member identities; refs disambiguate
  // collisions in general, tested separately with stable document identities.
  assert.equal(lookup.size, agentSources.length);
  const groups = new Map<string, SourceDocument[]>();
  for (const source of sources.filter(d => d.kind !== 'graphical_method')) {
    const group = groups.get(source.component_oid) ?? []; group.push(source); groups.set(source.component_oid, group);
  }
  const largest = [...groups.values()].sort((a, b) => b.length - a.length)[0];
  assert.ok(largest.length >= 5 && groups.size >= 3, 'Need same-component and cross-component batch samples');
  const batchCases = [{ name: 'read-same-component', docs: largest.slice(0, 5) },
    { name: 'read-mixed-components', docs: [...groups.values()].slice(0, 3).map(group => group[0]) }];
  const batchTimings: { case: string; round: number; single_ms: number; batch_ms: number }[] = [];
  const cases: { name: string; input: AgentSearchRequest }[] = [
    { name: 'simple', input: { query: 'AEBLockTime', limit: 3 } },
    { name: 'array', input: { query: ['AEBLockTime', 'AEB_FxTarPT'], mode: 'identifier', limit: 5 } },
    { name: 'mixed', input: { query: ['AEB_FxTarPT', { text: 'AEBLockTime', mode: 'identifier' }, { text: '\\b[PC]_AEB[A-Za-z_0-9]*\\b', mode: 'regex' }], context: { before: 10, after: 10 }, limit: 15 } },
    { name: 'multiline', input: { query: 'AEB_FxTarPT = 250000;\nAEB_LDMSelectedControllerPT = LDMSelectedController_None;', context: 10 } },
    { name: 'init-scope', input: { query: 'AEBLockTime', in: { component: '040qm00100001m8714ag81ugur0dk', member: 'init', kind: 'diagram', variant: 'BD' } } },
    { name: 'state-scope', input: { query: 'AEB', in: { kind: ['state_static', 'transition_condition'], implementation: '' }, limit: 7 } },
    { name: 'zero', input: { query: '__AGENT_NO_HIT_09831__' } },
  ];
  report.cases = cases;
  const oracle = new Map(['legacy', 'agent'].flatMap(mode => cases.map(c => {
    const normalized = normalizeAgentSearch(c.input, () => { throw Error('unexpected ref'); }).request;
    const { operation: _op, limit: _limit, ...request } = normalized;
    const documents = filterDocuments(mode === 'agent' ? agentSources : sources, request.filters), validated = validateSearch(request);
    const expected = matchQueries({ documents, request: validated });
    const textDocuments = documents.filter(d => d.kind !== 'diagram');
    matchQueries({ documents: textDocuments, request: validated }).forEach((q, i) => checkAdvanced(q, textDocuments, validated.queries[i], validated.context_before, validated.context_after));
    const keys = expected.flatMap((q, i) => q.results.flatMap(d => d.matches!.flatMap(m => m.columns.map((column, n) =>
      JSON.stringify([i, d.document_id, m.line, column, m.ranges?.[n] ?? null]))))).sort();
    return [mode + ':' + c.name, keys] as const;
  })));
  for (const mode of ['legacy', 'agent']) {
    const client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), ...(mode === 'agent' ? ['--agent'] : [])] });
    const refs = new Map<string, SourceDocument>();
    async function request(input: unknown, name: string, kind: string) {
      const start = performance.now(), result = await client.request(input) as AgentSearchResponse | AgentReadResponse | AgentBatchReadResponse | SearchPageResponse;
      observations.push({ mode, case: name, kind, elapsed_ms: performance.now() - start, bytes: Buffer.byteLength(JSON.stringify(result)) });
      assert.equal(result.status, 'ok', JSON.stringify(result)); return result;
    }
    try {
      await request(mode === 'agent' ? { query: 'AEBLockTime' } : { operation: 'search_page', query: 'AEBLockTime' }, 'startup', 'startup');
      for (let round = 0; round < 3; round++) for (const item of cases) {
        const initial = mode === 'agent' ? item.input : normalizeAgentSearch(item.input, () => { throw Error('unexpected ref'); }).request;
        let value = await request(initial, item.name, 'first');
        if (round === 0) await writeFile(join(directory, mode + '-' + item.name + '.json'), JSON.stringify(value, null, 2) + '\n');
        const got: string[] = [];
        while (true) {
          if (mode === 'agent') {
            const page = value as AgentSearchResponse;
            assert.equal(page.status, 'ok'); assert.equal('source_read_complete' in page, false); assert.equal(page.total_hits, oracle.get(mode + ':' + item.name)!.length);
            assert.ok(page.returned_hits <= (item.input.limit ?? 50)); assert.ok(Buffer.byteLength(JSON.stringify(page)) <= 128 * 1024);
            assert.equal(page.debug, undefined);
            for (const q of page.searches) for (const d of q.results) {
              const source = lookup.get(identity(d)); assert.ok(source);
              const existing = refs.get(d.ref); if (existing) assert.equal(existing.document_id, source.document_id);
              refs.set(d.ref, source);
              const lines = source.text.replace(/\r\n?/g, '\n').split('\n');
              for (const m of matchesOf(d)) {
                const lo = (m.start_column ?? 1) - 1;
                assert.equal(m.text, [...lines[m.line - 1]].slice(lo, lo + [...m.text].length).join(''));
                m.columns.forEach((c, n) => got.push(JSON.stringify([q.index, source.document_id, m.line, c, m.ranges?.[n] ?? null])));
              }
              for (const line of linesOf(d)) {
                const lo = (line.start_column ?? 1) - 1;
                assert.equal(line.text, [...lines[line.line - 1]].slice(lo, lo + [...line.text].length).join(''));
              }
            }
          } else {
            const page = value as SearchPageResponse;
            for (const q of page.searches) for (const d of q.results) for (const m of d.matches!) {
              m.columns.forEach((c, n) => got.push(JSON.stringify([q.query_index, d.document_id, m.line, c, m.ranges?.[n] ?? null])));
            }
          }
          const page = value as AgentSearchResponse | SearchPageResponse;
          if (!page.has_more) break;
          value = await request({ cursor: page.next_cursor }, item.name, 'next');
        }
        assert.deepEqual(got.sort(), oracle.get(mode + ':' + item.name));
        if (mode === 'agent' && item.name === 'init-scope') {
          const d = (value as AgentSearchResponse).searches[0].results[0];
          const read = await request({ operation: 'read', ref: d.ref, if_unchanged: true }, 'init-read', 'read') as AgentReadResponse;
          assert.equal(readContent(read), refs.get(d.ref)!.text); assert.equal(read.issues, undefined); assert.equal('changed_since_search' in read, false);
          if (!round) await writeFile(join(directory, 'agent-init-read.json'), JSON.stringify(read, null, 2) + '\n');
          const scoped = await request({ query: 'AEBLockTime', in: { component: d.ref }, debug: true }, 'scope-by-ref', 'first') as AgentSearchResponse;
          assert.equal((scoped.debug as { coverage: { candidate_objects: number } }).coverage.candidate_objects, 1);
          for (const result of scoped.searches[0].results) assert.equal(result.component_path, d.component_path);
        }
      }
      if (mode === 'agent') for (const item of batchCases) {
        // Absolute source start: one occurrence per document, including an empty body.
        const componentOids = [...new Set(item.docs.map(d => d.component_oid))];
        let page = await request({ query: '(?<![\\s\\S])', mode: 'regex', multiline: true,
          in: { component: componentOids }, limit: 32 }, item.name, 'seed') as AgentSearchResponse;
        const available = new Map<string, string>();
        while (true) {
          for (const doc of page.searches[0].results) available.set(identity(doc), doc.ref);
          if (item.docs.every(d => available.has(sourceIdentity(d)))) break;
          assert.equal(page.has_more, true, 'Missing requested batch source');
          page = await request({ cursor: page.next_cursor }, item.name, 'seed-next') as AgentSearchResponse;
        }
        const chosenRefs = item.docs.map(d => available.get(sourceIdentity(d))!);
        const validate = (read: AgentReadContent, index: number) => {
          assert.equal(read.issues, undefined); assert.equal('source_read_complete' in read, false);
          assert.equal(read.ref, chosenRefs[index]); assert.equal(readContent(read), item.docs[index].text);
          assert.equal(read.issues, undefined); assert.equal('changed_since_search' in read, false);
          assert.equal(identity(read), sourceIdentity(item.docs[index]));
        };
        for (let round = 0; round < 10; round++) {
          const measured = { case: item.name, round, single_ms: 0, batch_ms: 0 };
          for (const strategy of round % 2 ? ['batch', 'single'] : ['single', 'batch']) {
            if (strategy === 'single') {
              for (let i = 0; i < chosenRefs.length; i++) {
                const result = await request({ operation: 'read', ref: chosenRefs[i], if_unchanged: true }, item.name, 'single-read') as AgentReadResponse;
                measured.single_ms += observations.at(-1)!.elapsed_ms; validate(result, i);
              }
            } else {
              const result = await request({ operation: 'read', ref: chosenRefs, if_unchanged: true }, item.name, 'batch-read') as AgentBatchReadResponse;
              measured.batch_ms = observations.at(-1)!.elapsed_ms;
              assert.equal(result.status, 'ok'); assert.ok(result.results.every(r => !('status' in r))); assert.equal(result.requested_count, chosenRefs.length);
              assert.equal(result.returned_count, chosenRefs.length); assert.equal(result.results.length, chosenRefs.length);
              result.results.forEach((d, i) => validate(d as AgentReadContent, i));
              if (!round) await writeFile(join(directory, 'agent-' + item.name + '.json'), JSON.stringify(result, null, 2) + '\n');
            }
          }
          batchTimings.push(measured);
        }
      }
    } finally { await client.close(); }
  }
  // Instrument live library calls as well as the JSONL contract above.
  const countedBridge = new Bridge(); let liveCalls = 0;
  const countedSession = new AgentSession({ request: async r => { liveCalls++; return countedBridge.request(r); } });
  try {
    const page = await countedSession.execute({ query: '(?<![\\s\\S])', mode: 'regex', multiline: true,
      in: { component: largest[0].component_oid }, limit: 32 }) as AgentSearchResponse;
    const chosen = page.searches[0].results.slice(0, 5); assert.equal(chosen.length, 5);
    const beforeCalls = liveCalls;
    const read = await countedSession.execute({ operation: 'read', ref: chosen.map(d => d.ref), if_unchanged: true }) as AgentBatchReadResponse;
    assert.equal(read.status, 'ok'); assert.equal(liveCalls - beforeCalls, 1);
    report.batch_native_read_verification = { documents: chosen.length, component_reads: liveCalls - beforeCalls, library_requests: 2 };
  } finally { countedSession.close(); await countedBridge.close(); }
  const after = await snapshot(); assert.equal(fingerprint(after.decoded), fingerprint(before.decoded));
  report.model_stable = true; report.status = 'passed'; report.jsonl_requests = observations.length;
  report.batch_read_observations = batchTimings;
  report.batch_read_summary = batchCases.map(item => ({ case: item.name, documents: item.docs.length,
    components: new Set(item.docs.map(d => d.component_oid)).size,
    sources: item.docs.map(d => ({ path: d.component_path, member: d.member_name, kind: d.kind, variant: d.variant })),
    single_ms: count(batchTimings.filter(t => t.case === item.name).map(t => t.single_ms)),
    batch_ms: count(batchTimings.filter(t => t.case === item.name).map(t => t.batch_ms)) }));
  report.summary = cases.map(c => ({ case: c.name, ...Object.fromEntries(['legacy', 'agent'].map(mode => {
    const rows = observations.filter(o => o.mode === mode && o.case === c.name && o.kind === 'first');
    return [mode, { milliseconds: count(rows.map(r => r.elapsed_ms)), bytes: count(rows.map(r => r.bytes)) }];
  })) }));
  await save(); await writeFile(join(directory, 'latest.json'), JSON.stringify(report, null, 2) + '\n');
  console.log(JSON.stringify({ output, requests: observations.length, summary: report.summary, batch_read_summary: report.batch_read_summary,
    batch_native_read_verification: report.batch_native_read_verification }, null, 2));
} catch (error) { report.status = 'failed'; report.error = String(error); await save(); throw error; }
