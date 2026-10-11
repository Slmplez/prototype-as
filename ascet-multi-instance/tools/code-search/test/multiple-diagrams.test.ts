import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentSession } from '../src/agent-session.js';
import { normalizeAgentSearch } from '../src/agent-validation.js';
import { decodeResponse } from '../src/protocol.js';
import { filterDocuments } from '../src/filters.js';
import { encode, rows, stateRows } from './fixtures.js';
import { generatedGraph, graphResponse } from './diagram-generality-support.js';
import type { DiagramBody, NativeRequest, Reader } from '../src/types.js';
import type { AgentFindResponse, AgentCodeTarget, AgentSearchResponse, AgentReadResponse, AgentBatchReadResponse } from '../src/agent-types.js';

const oid = (n: number) => n.toString(36).padStart(29, '0');
function graphs(count: number, component = 1): DiagramBody[] {
  return Array.from({ length: count }, (_, i) => {
    const g = generatedGraph(i + 1, 4, 0); g.component_oid = oid(component); g.source_oid = oid(i + 1000);
    g.visibility = i % 2 ? 'private' : 'public'; g.name = i < 2 ? 'Same 中文🙂' : 'Diagram ' + i;
    g.scopes[0].name = g.name; g.nodes[0].name = 'Needle';
    if (i === 2) { g.methods = []; g.nodes = []; g.pins = []; g.sequences = []; g.connections = []; g.comments = []; }
    return g;
  });
}
/** Simulates transport only; native getter-count assertions are in the locked detached/live suite. */
class ModelReader implements Reader {
  calls: NativeRequest[] = []; loaded: number[] = []; pid = 10; database = 'synthetic-db'; extra: string[][] = [];
  failed = new Set<string>(); metadata = true;
  constructor(public graphs: DiagramBody[]) {}
  async request(request: NativeRequest) {
    this.calls.push(structuredClone(request)); const f = request.filters;
    const selected = this.graphs.filter(g => (!f?.component_oids || f.component_oids.includes(g.component_oid)) &&
      (request.mode !== 'read_component' || request.needle === g.component_oid) &&
      (!f?.diagram_ids || f.diagram_ids.includes(g.component_oid + '/' + g.source_oid)) &&
      (!request.read_diagram_ids || request.read_diagram_ids.includes(g.component_oid + '/' + g.source_oid)) &&
      (!f?.diagram_visibilities || (!!g.visibility && f.diagram_visibilities.includes(g.visibility))) &&
      (!f?.kinds || f.kinds.includes('diagram')) && (!request.diagram_name ||
        (request.diagram_name.match === 'exact' ? g.name.toLowerCase() === request.diagram_name.text.toLowerCase() : g.name.toLowerCase().includes(request.diagram_name.text.toLowerCase()))));
    this.loaded.push(selected.length);
    const raw = graphResponse(selected.filter(g => !this.failed.has(g.source_oid)), data => {
      if (this.metadata) data.unshift(['#DIAGRAM_SCOPE', '1']);
      for (const g of selected.filter(g => this.failed.has(g.source_oid))) {
        if (!data.some(r => r[0] === '#COMPONENT' && r[1] === g.component_oid)) data.push(['#COMPONENT', g.component_oid, 'Generated\\' + g.component_oid, '', '', '', '', 'SGClass']);
        data.push(['#ERROR', g.component_oid, 'Generated\\' + g.component_oid, g.source_oid, '', '', '', '', 'BDE diagram', 'TEST_SOURCE_UNAVAILABLE']);
      }
      data.push(...this.extra);
      data.find(r => r[0] === '#STATS')![2] = String(data.filter(r => r[0] === '#COMPONENT').length);
    });
    return { ...raw, ascet_pid: this.pid, database: this.database };
  }
}
const find = async (s: AgentSession, extra: Record<string, unknown> = {}) => s.execute({ operation: 'find', target: 'diagrams', limit: 200, ...extra }) as Promise<AgentFindResponse>;
const all = async (s: AgentSession, initial: AgentFindResponse) => {
  const result = [...initial.results] as AgentCodeTarget[]; let page = initial;
  while (page.next_cursor) { page = await s.execute({ cursor: page.next_cursor }) as AgentFindResponse; result.push(...page.results as AgentCodeTarget[]); }
  return result;
};

for (const size of [1, 10, 100, 500]) test(`${size} diagrams: complete discovery, stable paging, empty/shared diagrams and selective reads`, async () => {
  const reader = new ModelReader(graphs(size)), s = new AgentSession(reader);
  try {
    const result = await all(s, await find(s, { limit: 37 }));
    assert.equal(result.length, size); assert.equal(new Set(result.map(r => r.ref)).size, size);
    assert.equal(reader.calls.length, 1, 'Pagination does not revisit the model');
    assert.equal(result.filter(r => r.visibility === 'private').length, Math.floor(size / 2));
    const selected = result.slice(0, Math.min(2, size));
    const read = await s.execute({ operation: 'read', ref: [selected[0].ref, ...selected.map(d => d.ref)], if_unchanged: true }) as AgentBatchReadResponse;
    assert.equal(read.status, 'ok'); assert.equal(read.returned_count, selected.length + 1);
    assert.equal(reader.calls.length, 2); assert.equal(reader.loaded.at(-1), selected.length);
    assert.equal(reader.calls.at(-1)!.read_diagram_ids!.length, selected.length);
    if (size >= 10) assert.ok(result.some(d => d.diagram_methods!.length === 0));
  } finally { s.close(); }
});

test('cross-component Diagram refs preserve pairs even with reused source and node IDs', async () => {
  const reader = new ModelReader([...graphs(2, 1), ...graphs(2, 2)]), s = new AgentSession(reader);
  try {
    const results = (await find(s)).results as AgentCodeTarget[];
    const selected = [results.find(r => r.component_path.endsWith(oid(1)) && r.visibility === 'public')!, results.find(r => r.component_path.endsWith(oid(2)) && r.visibility === 'private')!];
    const hit = await s.execute({ query: 'Needle', in: { diagram: selected.map(d => d.ref) }, group_by: 'object' }) as AgentSearchResponse;
    assert.equal(hit.searches[0].results.length, 2); assert.equal(reader.loaded.at(-1), 2);
    assert.deepEqual(reader.calls.at(-1)!.filters!.diagram_ids!.sort(), [oid(1) + '/' + oid(1000), oid(2) + '/' + oid(1001)]);
    const objects = hit.searches[0].results.map(d => d.hits![0].ref);
    assert.equal(new Set(objects).size, 2);
    const local = await s.execute({ operation: 'read', ref: objects, include_graph: true }) as AgentBatchReadResponse;
    assert.equal(local.status, 'ok'); assert.deepEqual(local.results.map(d => 'visibility' in d ? d.visibility : ''), ['public', 'private']);
    for (const r of local.results) assert.ok('graph' in r && r.graph?.visibility === ('visibility' in r ? r.visibility : undefined));
  } finally { s.close(); }
});

test('literal Diagram names and member intersection retain exact scope without duplicating shared Methods', async () => {
  const reader = new ModelReader(graphs(10)), s = new AgentSession(reader);
  try {
    const same = await find(s, { diagram: 'same 中文🙂', match: 'exact' }); assert.equal(same.total_count, 2);
    const privateResult = await find(s, { diagram: '中文', in: { visibility: 'private', member: 'calc' } }); assert.equal(privateResult.total_count, 1);
    const ref = privateResult.results[0].ref;
    const empty = await s.execute({ query: 'Needle', in: { diagram: ref, member: 'wrong' } }) as AgentSearchResponse;
    assert.equal(empty.total_hits, 0);
    const explicit = await s.execute({ query: 'Needle', in: { component: oid(1), diagram: oid(1001), member: 'calc' } }) as AgentSearchResponse;
    assert.equal(explicit.searches[0].results.length, 1);
  } finally { s.close(); }
});

test('rename and visibility move change revision; deleted/recreated diagram never reuses the old ref', async () => {
  const reader = new ModelReader(graphs(2)), s = new AgentSession(reader);
  try {
    const before = (await find(s)).results[0] as AgentCodeTarget;
    reader.graphs[0].visibility = 'private'; reader.graphs[0].name = 'Renamed';
    await assert.rejects(s.execute({ operation: 'read', ref: before.ref, if_unchanged: true }), { code: 'SOURCE_CHANGED' });
    const fresh = await s.execute({ operation: 'read', ref: before.ref }) as AgentReadResponse;
    assert.equal(fresh.status, 'changed'); assert.equal(fresh.visibility, 'private'); assert.equal(fresh.diagram, 'Renamed');
    const search = await s.execute({ query: 'Needle', in: { diagram: before.ref } }) as AgentSearchResponse;
    assert.equal(search.searches[0].results[0].visibility, 'private', 'Scope selects fresh source without a revision precondition');
    reader.graphs[0].source_oid = oid(3000);
    await assert.rejects(s.execute({ operation: 'read', ref: before.ref }), { code: 'CODE_NOT_FOUND' });
  } finally { s.close(); }
});

test('mixed text/Diagram read preserves text and isolates a failing Diagram', async () => {
  const reader = new ModelReader(graphs(2));
  reader.extra = rows('Needle').filter(r => r[0] === 'method').map(r => r.map(v => v === 'oid1' ? oid(1) : v));
  const s = new AgentSession(reader);
  try {
    const result = await s.execute({ operation: 'find', limit: 20 }) as AgentFindResponse;
    const text = (result.results as AgentCodeTarget[]).find(d => d.kind === 'method')!, ds = (result.results as AgentCodeTarget[]).filter(d => d.kind === 'diagram');
    reader.failed.add(ds[0].diagram_oid!);
    const mixed = await s.execute({ operation: 'read', ref: [text.ref, ds[0].ref, ds[1].ref] }) as AgentBatchReadResponse;
    assert.equal(mixed.status, 'partial'); assert.equal(mixed.returned_count, 2);
    assert.ok('code' in mixed.results[0]); assert.ok('error' in mixed.results[1]); assert.ok('diagram_text' in mixed.results[2]);
    assert.equal(reader.calls.at(-1)!.read_diagram_ids!.length, 2);
    const textOnly = await s.execute({ operation: 'read', ref: text.ref }); assert.equal(textOnly.status, 'ok');
    assert.deepEqual(reader.calls.at(-1)!.read_diagram_ids, []);
  } finally { s.close(); }
});

test('missing metadata is partial with modern transport and old bridge rejects explicit Diagram scope', async () => {
  const reader = new ModelReader(graphs(1)), s = new AgentSession(reader);
  try {
    reader.graphs[0].visibility = undefined;
    const result = await find(s); assert.equal(result.status, 'partial'); assert.equal('visibility' in result.results[0], false);
    reader.metadata = false;
    await assert.rejects(find(s), { code: 'BRIDGE_UPGRADE_REQUIRED' });
    await assert.rejects(s.execute({ query: 'Needle', in: { component: oid(1), diagram: oid(1000) } }), { code: 'BRIDGE_UPGRADE_REQUIRED' });
  } finally { s.close(); }
});

test('invalid Diagram selectors, incompatible kinds and expired refs fail before live access', async () => {
  let now = 0; const reader = new ModelReader(graphs(1)), s = new AgentSession(reader, { now: () => now, ttlMs: 100 });
  try {
    const ref = (await find(s)).results[0].ref, before = reader.calls.length;
    for (const scope of [{ diagram: 'Main' }, { diagram: oid(1000) }, { component: [oid(1), oid(2)], diagram: oid(1000) },
      { diagram: ref, kind: 'method' }, { visibility: 'public', kind: 'header' }, { visibility: 'all' }]) {
      await assert.rejects(s.execute({ query: 'Needle', in: scope }), { code: 'INVALID_REQUEST' });
    }
    assert.equal(reader.calls.length, before); now = 101;
    await assert.rejects(s.execute({ query: 'Needle', in: { diagram: ref } }), { code: 'REF_EXPIRED' }); assert.equal(reader.calls.length, before);
  } finally { s.close(); }
});

test('mixed database/process refs fail before access and current PID mismatch fails after the read', async () => {
  const reader = new ModelReader(graphs(1)), s = new AgentSession(reader);
  try {
    const first = (await find(s)).results[0].ref;
    reader.pid++; const second = (await find(s)).results[0].ref; let before = reader.calls.length;
    await assert.rejects(s.execute({ query: 'Needle', in: { diagram: [first, second] } }), { code: 'ASCET_RESTARTED' }); assert.equal(reader.calls.length, before);
    for (const input of [{ query: 'Needle' }, { query: 'Needle', group_by: 'object' }, { operation: 'find', target: 'diagrams' }]) {
      await assert.rejects(s.execute({ ...input, in: { diagram: first } }), { code: 'ASCET_RESTARTED' });
    }
    reader.database = 'another-db'; const third = (await find(s)).results[0].ref; before = reader.calls.length;
    await assert.rejects(s.execute({ query: 'Needle', in: { diagram: [second, third] } }), { code: 'SCOPE_DATABASE_MISMATCH' }); assert.equal(reader.calls.length, before);
  } finally { s.close(); }
});

test('State visibility is owning Diagram metadata, participates in revisions, and filters without changing text', () => {
  const input = stateRows(); const withVisibility = (visibility: string) => decodeResponse({ payload: encode(input.map(r => r[0] === '#STATE_DIAGRAM' ? r.map((v, i) => i === 4 ? visibility : v) : r)) });
  const a = withVisibility('public'), b = withVisibility('private');
  for (const d of a.documents.filter(d => d.location)) {
    assert.equal(d.visibility, 'public'); const after = b.documents.find(v => v.document_id === d.document_id)!;
    assert.equal(after.text, d.text); assert.notEqual(after.source_sha256, d.source_sha256);
  }
  assert.equal(filterDocuments(a.documents, { diagram_visibilities: ['private'] }).length, 0);
});

test('raw OIDs are paired with exactly one explicit Component; ref scope intersects Component filters', () => {
  const resolve = () => ({ component_oid: oid(2), diagram_oid: oid(1000), database: 'db', ascet_pid: 3, kind: 'diagram' });
  const norm = normalizeAgentSearch({ query: 'Needle', in: { component: oid(1), diagram: 'returned:d1' } }, resolve);
  assert.deepEqual(norm.request.filters, { component_oids: [oid(1)], diagram_ids: [oid(2) + '/' + oid(1000)] });
  assert.equal(norm.expectedPid, 3);
});
