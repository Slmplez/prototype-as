import assert from 'node:assert/strict';
import { appendFile } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { JsonLineClient, ROOT } from '../src/bridge.js';
import { fieldHits, graphHits, escapePattern } from '../test/diagram-generality-support.js';
import { objectOracle } from '../test/object-oracle.js';
import type { Snapshot, SourceDocument } from '../src/types.js';
import type { AgentCodeTarget, AgentFindResponse, AgentBatchReadResponse, AgentReadContent, AgentReadResponse, AgentSearchResponse, AgentSearchRequest, AgentQuery } from '../src/agent-types.js';

const sourceKey = (d: SourceDocument) => JSON.stringify([d.component_path, d.member_name, d.kind, d.variant, d.implementation_oid,
  d.location ? [d.location.diagram_source_oid, d.location.hierarchy_state_ids, d.location.element_id] : d.graphical_location?.specification_source_oid ?? null]);
const targetKey = (d: AgentCodeTarget) => JSON.stringify([d.component_path, d.method ?? d.process ?? d.state ?? d.transition ?? d.diagram ?? '', d.kind, d.variant, d.implementation ?? '',
  d.state !== undefined || d.transition !== undefined ? [d.diagram_oid, d.state_hierarchy_ids, d.state_id ?? d.transition_id] : d.diagram_oid ?? null]);
const chunks = <T>(a: T[], size: number) => Array.from({ length: Math.ceil(a.length / size) }, (_, i) => a.slice(i * size, (i + 1) * size));

/** Expected matches use unfiltered captured text/model fields; never the production search implementation. */
export async function verifyModelAgent(data: Snapshot, category: Map<string, string>, directory: string) {
  const observations: { name: string; ms: number; bytes: number }[] = [];
  const coverage: Record<string, { components: number; read_documents: number; read_pages: number; query_checks: number }> = {};
  const byKey = new Map(data.documents.map(d => [sourceKey(d), d]));
  assert.equal(byKey.size, data.documents.length, 'Displayed identity collision needs ref-based disambiguation in this verifier');
  const client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), '--agent'], timeoutMs: 90_000 });
  async function request<T>(name: string, input: unknown): Promise<T> {
    const start = performance.now(), output: any = await client.request(input), ms = performance.now() - start;
    observations.push({ name, ms, bytes: Buffer.byteLength(JSON.stringify(output)) });
    await appendFile(join(directory, 'requests.jsonl'), JSON.stringify({ name, ms, input, output }) + '\n');
    assert.equal(output.status, 'ok', JSON.stringify(output).slice(0, 3000)); return output;
  }
  async function search(input: AgentSearchRequest, docs: SourceDocument[], name: string) {
    const queries: AgentQuery[] = (Array.isArray(input.query) ? input.query : [input.query]).map(q => ({
      mode: input.mode, case_sensitive: input.case_sensitive, multiline: input.multiline,
      ...(typeof q === 'string' ? { text: q } : q),
    })).map(q => ({ ...q, multiline: q.multiline ?? /[\r\n]/.test(q.text) }));
    const expected = queries.map(q => new Map(docs.map(d => {
      const graph = d.kind === 'diagram' ? data.diagrams!.find(g => g.component_oid === d.component_oid && g.source_oid === d.graphical_location!.specification_source_oid)! : undefined;
      return [sourceKey(d), graph ? (input.group_by === 'object' ? objectOracle(graph, q).size : graphHits(graph, q)) : fieldHits(d.text, q)];
    })));
    const counts = queries.map(() => new Map<string, number>());
    const totals = expected.map(m => [...m.values()].reduce((a, b) => a + b, 0));
    let page = await request<AgentSearchResponse>(name, input), pages = 0;
    const cursors = new Set<string>();
    for (;;) {
      assert.deepEqual(page.searches.map(s => s.total_hits), totals, name + ': query totals');
      assert.equal(page.total_hits, totals.reduce((a, b) => a + b, 0));
      assert.ok(page.returned_hits <= (input.limit ?? 50));
      let returned = 0;
      for (const s of page.searches) for (const hit of s.results) {
        const key = targetKey(hit); assert.ok(expected[s.index].has(key), 'Unexpected target ' + key);
        const count = hit.hits?.length ?? hit.snippets!.reduce((n, block) => n + block.matches.reduce((m, line) => m + line.columns.length, 0), 0);
        counts[s.index].set(key, (counts[s.index].get(key) ?? 0) + count); returned += count;
      }
      assert.equal(returned, page.returned_hits);
      assert.ok(Buffer.byteLength(JSON.stringify(page)) <= 128 * 1024);
      if (!page.has_more) { assert.equal(page.next_cursor, null); break; }
      assert.ok(page.next_cursor && !cursors.has(page.next_cursor) && ++pages < 10000);
      cursors.add(page.next_cursor); page = await request<AgentSearchResponse>(name + '-page', { cursor: page.next_cursor });
    }
    for (let i = 0; i < queries.length; i++) for (const [key, count] of expected[i]) assert.equal(counts[i].get(key) ?? 0, count, name + ': target count ' + key);
    return queries.length;
  }
  try {
    const components = [...new Set(data.documents.map(d => d.component_oid))];
    for (const [index, component] of components.entries()) {
      const docs = data.documents.filter(d => d.component_oid === component), kind = category.get(component)!;
      const c = coverage[kind] ??= { components: 0, read_documents: 0, read_pages: 0, query_checks: 0 }; c.components++;
      let found = await request<AgentFindResponse>(index === 0 ? 'startup-find' : 'find-all-members', { operation: 'find', in: { component }, limit: 7 });
      const targets: AgentCodeTarget[] = [];
      for (;;) {
        targets.push(...found.results as AgentCodeTarget[]); if (!found.has_more) break;
        found = await request<AgentFindResponse>('find-page', { cursor: found.next_cursor });
      }
      assert.deepEqual(targets.map(targetKey).sort(), docs.map(sourceKey).sort(), 'Missing member: ' + component);
      for (const batch of chunks(targets, 32)) {
        const read = await request<AgentBatchReadResponse>('batch-read', { operation: 'read', ref: batch.map(d => d.ref), if_unchanged: true });
        assert.equal(read.returned_count, batch.length);
        assert.ok(Buffer.byteLength(JSON.stringify(read)) <= 128 * 1024);
        for (const value of read.results as AgentReadContent[]) {
          const original = byKey.get(targetKey(value))!; assert.ok(original);
          assert.ok(!('status' in value));
          let page: AgentReadContent = value;
          let text = value.code ?? value.diagram_text ?? value.method_binding?.method;
          const cursors = new Set<string>(); c.read_pages++;
          while (page.has_more) {
            assert.ok(page.next_cursor && !cursors.has(page.next_cursor) && cursors.size < 10000);
            cursors.add(page.next_cursor);
            page = await request<AgentReadResponse>('batch-read-page', { cursor: page.next_cursor });
            assert.equal(page.ref, value.ref);
            assert.equal(targetKey(page), targetKey(value));
            assert.ok(Buffer.byteLength(JSON.stringify(page)) <= 128 * 1024);
            const part = page.code ?? page.diagram_text;
            assert.equal(typeof part, 'string'); assert.equal(typeof text, 'string');
            text! += part; c.read_pages++;
          }
          assert.equal(page.next_cursor ?? null, null);
          assert.equal(text, original.text); c.read_documents++;
        }
      }
      const texts = [...new Set(docs.filter(d => d.kind !== 'diagram' && d.text.trim()).map(d => d.text.split(/\r\n?|\n/).find(s => s.trim())!.trim().slice(0, 64)))];
      const queries: AgentQuery[] = texts.flatMap(text => [{ text, case_sensitive: true }, { text: escapePattern(text), mode: 'regex', case_sensitive: true }]);
      const identifiers = [...new Set(docs.filter(d => d.kind !== 'diagram').map(d => d.text.match(/[A-Za-z_][A-Za-z_0-9]{2,}/)?.[0]).filter((s): s is string => !!s))];
      queries.push(...identifiers.map(text => ({ text, mode: 'identifier' as const })));
      const multiline = docs.find(d => d.kind !== 'diagram' && /[\r\n]/.test(d.text) && d.text.length < 256);
      if (multiline) queries.push({ text: multiline.text, multiline: true, case_sensitive: true });
      queries.push({ text: '__GENERALITY_NO_MATCH_17B9__' });
      for (const query of chunks(queries, 16)) c.query_checks += await search({ query, in: { component }, group_by: 'object', context: 0, limit: 50 }, docs, 'mixed-source-search');
      // Each stored source kind has its own exact Method/State path, Variant and Implementation scope.
      for (const sourceKind of new Set(docs.map(d => d.kind))) {
        const d = docs.find(d => d.kind === sourceKind)!;
        const selected = docs.filter(x => x.kind === d.kind && x.member_name === d.member_name && x.variant === d.variant && x.implementation_oid === d.implementation_oid);
        c.query_checks += await search({ query: [{ text: '^', mode: 'regex' }], in: { component, ...(d.member_name ? { member: d.member_name } : {}), kind: d.kind, variant: d.variant, implementation: d.implementation_oid }, context: 0, limit: 200 }, selected, 'source-scope');
      }
      if ((index + 1) % 20 === 0 || index === components.length - 1) console.log(JSON.stringify({ model_agent_components: index + 1, total: components.length, requests: observations.length }));
    }
    return { coverage, requests: observations.length, observations };
  } finally { await client.close(); }
}
