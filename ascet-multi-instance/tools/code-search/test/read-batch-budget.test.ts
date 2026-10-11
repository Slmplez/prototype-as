import test from 'node:test';
import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';
import { join } from 'node:path';
import { ROOT } from '../src/bridge.js';
import { AgentSession } from '../src/agent-session.js';
import { renderAgentResult } from '../src/agent-result-view.js';
import { graphResponse, generatedGraph } from './diagram-generality-support.js';
import type { DiagramBody } from '../src/types.js';

process.env.ASCET_PI_TOOL_PROFILE = 'task';
const actual: DiagramBody = JSON.parse(readFileSync(join(ROOT, 'test/fixtures/aeb-ax-tar-lim.graph.json'), 'utf8'));
const records = ['nodes', 'pins', 'connections', 'boundaries'] as const;
const withoutRefs = (v: any): any => Array.isArray(v) ? v.map(withoutRefs) : v && typeof v === 'object'
  ? Object.fromEntries(Object.entries(v).filter(([k]) => !['ref', 'object_ref', 'component_path', 'next_call', 'read_tool'].includes(k)).map(([k, c]) => [k, withoutRefs(c)])) : v;
const normalize = (pages: any[], key: typeof records[number]) => pages.flatMap(p => p[key]).map(withoutRefs).map(v => JSON.stringify(v)).sort();

for (const [name, graph, names] of [
  ['actual ASCET two Class placements', actual, ['AxCtrlLimGradAxMin', 'AxCtrlLimGradAxMax']],
  ['generated cyclic fanout', { ...generatedGraph(11, 40, 0), visibility: 'public' }, undefined],
] as const) {
  for (const budget of [16384, 32768]) test(`${name}: nested batch fits ${budget} bytes and every local record survives continuation`, async () => {
    let nativeReads = 0;
    const reader = { request: async () => { nativeReads++; return graphResponse([graph], rows => rows.unshift(['#DIAGRAM_SCOPE', '1'])); } };
    const full = new AgentSession(reader, { maxPageBytes: 256 * 1024, maxModelBytes: 256 * 1024 });
    const small = new AgentSession(reader, { maxPageBytes: budget, maxModelBytes: budget });
    const call = (s: AgentSession, tool: string, args: any): Promise<any> => s.execute({ tool, arguments: args });
    try {
      const found: any = await small.execute({ operation: 'find', target: 'objects', limit: 200 });
      const all: any = await full.execute({ operation: 'find', target: 'objects', limit: 200 });
      const select = (v: any) => names ? names.map(n => v.results.find((r: any) => r.name === n)) : v.results.filter((r: any) => r.node_id === 1 || r.node_id === 3);
      const targets = select(found), fullTargets = select(all);
      assert.equal(targets.length, 2); assert.ok(targets.every(Boolean));
      const order = [targets[0].ref, targets[1].ref, targets[0].ref];
      const startReads = nativeReads;
      const batch = await call(small, 'ascet_read_bde', { refs: order, depth: 1, direction: 'both' });
      assert.equal(batch.status, 'ok'); assert.equal(batch.returned_count, 3);
      assert.equal(nativeReads - startReads, 1, 'one owner read, including duplicate refs');
      assert.deepEqual(batch.results.map((r: any) => r.ref), order);
      const fits = (p: any) => {
        assert.ok(Buffer.byteLength(JSON.stringify(p)) <= budget, 'structured output budget');
        assert.ok(Buffer.byteLength(renderAgentResult(p, 'task')) <= budget, 'model output budget');
      };
      fits(batch);
      const afterBatch = nativeReads;
      const gathered: any[][] = [];
      for (const first of batch.results) {
        const pages = [first]; let page = first;
        const native = graph.nodes.find(n => n.id === targets[order.indexOf(first.ref) % 2].node_id)!;
        assert.equal(first.object.pin_count, graph.pins.filter(p => p.node_id === native.id && p.scope === native.scope).length);
        assert.equal(page.error, undefined); assert.equal(page.depth, 1); assert.equal(page.direction, 'both');
        while (page.has_more) {
          assert.ok(pages.length < 100, 'bounded complete continuation');
          const args = { cursor: page.next_cursor };
          page = await call(small, 'ascet_read_bde', args);
          assert.deepEqual(await call(small, 'ascet_read_bde', args), page, 'cursor replay is immutable');
          fits(page); pages.push(page);
          assert.equal(page.object.pin_count, first.object.pin_count, 'pagination retains native target interface size');
        }
        gathered.push(pages);
      }
      assert.equal(nativeReads, afterBatch, 'continuation/replay perform no live reads');
      for (let i = 0; i < gathered.length; i++) {
        const expected = await call(full, 'ascet_read_bde', { refs: [fullTargets[i % 2].ref], depth: 1, direction: 'both' });
        assert.equal(expected.has_more, false);
        for (const key of records) assert.deepEqual(normalize(gathered[i], key), normalize([expected], key), key + ' exact native local records');
        assert.deepEqual(gathered[i].flatMap(p => p.pins).filter(p => p.object_ref === order[i]).map(p => p.id).sort((a, b) => a - b),
          graph.pins.filter(p => p.node_id === targets[i % 2].node_id && p.scope === (targets[i % 2].hierarchy ?? 'root')).map(p => p.id).sort((a, b) => a - b),
          'all target Pins retain their requested-object association');
      }
      for (const key of records) assert.deepEqual(normalize(gathered[0], key), normalize(gathered[2], key), 'duplicate target content');
      const clean = await call(small, 'ascet_read_bde', { refs: [targets[0].ref], depth: 0, direction: 'both' });
      assert.equal(clean.status, 'ok'); assert.equal(clean.depth, 0); fits(clean);
    } finally { full.close(); small.close(); }
  });
}
