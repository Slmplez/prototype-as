import test from 'node:test';
import assert from 'node:assert/strict';
import { performance } from 'node:perf_hooks';
import { mkdtemp, rm } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
import { createAgentSession, DefaultResourceLoader, SessionManager, SettingsManager } from '@earendil-works/pi-coding-agent';
import { validateToolArguments } from '@earendil-works/pi-ai';
import { AgentSession } from '../src/agent-session.js';
import { JsonLineClient } from '../src/bridge.js';
import { createAscetExtension } from '../src/pi-extension.js';
import { PiClient } from '../src/pi-client.js';
import { TOOL_CONTRACTS, COMMON_GUIDELINES, getToolContracts, validateToolInput, validateToolOutput } from '../src/tool-contracts.js';
import { renderAgentResult } from '../src/agent-result-view.js';
import { TASK_RULES } from '../src/task-tools.js';
import { response, rows, encode } from './fixtures.js';
import { generatedGraph, graphResponse } from './diagram-generality-support.js';
import type { AgentFindResponse, AgentSearchResponse, AgentReadResponse } from '../src/agent-types.js';

const names = ['ascet_code_find', 'ascet_code_search', 'ascet_code_read'] as const;
const prelude = `import {createInterface} from 'node:readline'; const input=createInterface({input:process.stdin});`;
const fake = (source: string, options = {}) => new JsonLineClient({ command: process.execPath,
  args: ['--input-type=module', '-e', prelude + source], timeoutMs: 3000, closeTimeoutMs: 500, ...options });

test('named cursor calls reject all six cross-tool combinations without consuming the valid cursor', async () => {
  const data = rows('foo\n' + 'foo '.repeat(5000));
  data.splice(2, 0, ['method', 'oid1', 'folder/class', '', 'ASDL', 'abc2', 'calc2', 'esdl', 'foo', '']);
  let reads = 0;
  const session = new AgentSession({ request: async () => { reads++; return { ...response(), payload: encode(data) }; } }, { maxPageBytes: 4096 });
  try {
    const found = await session.execute({ tool: names[0], arguments: { limit: 1 } }) as AgentFindResponse;
    const search = await session.execute({ tool: names[1], arguments: { query: 'foo', limit: 1, context: 0 } }) as AgentSearchResponse;
    const read = await session.execute({ tool: names[2], arguments: { ref: found.results[0].ref } }) as AgentReadResponse;
    for (const [index, result] of [found, search, read].entries()) {
      assert.ok(result.has_more && result.next_cursor);
      const before = reads;
      for (const wrong of names.filter(name => name !== names[index])) {
        await assert.rejects(session.execute({ tool: wrong, arguments: { cursor: result.next_cursor } }), { code: 'CURSOR_TOOL_MISMATCH' });
      }
      const next = await session.execute({ tool: names[index], arguments: { cursor: result.next_cursor } });
      validateToolOutput(names[index], next);
      assert.deepEqual(await session.execute({ cursor: result.next_cursor }), next);
      assert.equal(reads, before);
    }
  } finally { session.close(); }
});

test('object-search and structural-directory cursors retain originating tool identity', async () => {
  const graph = generatedGraph(1, 20, 0), session = new AgentSession({ request: async () =>
    graphResponse([graph], data => data.unshift(['#DIAGRAM_SCOPE', '1'])) });
  try {
    for (const [name, arguments_] of [[names[0], { target: 'objects', limit: 1 }],
      [names[1], { query: graph.nodes[0].name.slice(0, 1), group_by: 'object', limit: 1 }]] as const) {
      const page = await session.execute({ tool: name, arguments: arguments_ }) as AgentFindResponse;
      assert.ok(page.has_more);
      await assert.rejects(session.execute({ tool: names[2], arguments: { cursor: page.next_cursor } }), { code: 'CURSOR_TOOL_MISMATCH' });
      validateToolOutput(name, await session.execute({ tool: name, arguments: { cursor: page.next_cursor } }));
    }
  } finally { session.close(); }
});

test('cancel settles immediately while the late response still owns pending; queued cancellation sends nothing', async () => {
  const client = fake(String.raw`let busy=false; input.on('line',line=>{if(busy)process.exit(2);busy=true;setTimeout(()=>{process.stdout.write(line+'\n');busy=false;},70);});`);
  const firstController = new AbortController(), queuedController = new AbortController();
  let started!: () => void; const start = new Promise<void>(resolve => { started = resolve; });
  const first = client.request({ id: 1 }, { signal: firstController.signal, onStart: started });
  const rejected = assert.rejects(first, { code: 'CANCELLED' });
  try {
    await start;
    const skipped = client.request({ id: 2 }, { signal: queuedController.signal });
    const skippedRejected = assert.rejects(skipped, { code: 'CANCELLED' });
    queuedController.abort();
    const began = performance.now(); firstController.abort(); await rejected;
    assert.ok(performance.now() - began < 100);
    await skippedRejected;
    assert.deepEqual(await client.request({ id: 3 }), { id: 3 });
    assert.equal(client.usable, true);
  } finally { await client.close(); }
});

test('close during a blocked request rejects the queue and confirms process exit within the whole deadline', async () => {
  const client = fake(`setInterval(()=>{},1000);`, { timeoutMs: 60_000, closeTimeoutMs: 500, drainGraceMs: 50 });
  let started!: () => void; const start = new Promise<void>(resolve => { started = resolve; });
  const first = client.request({ id: 1 }, { onStart: started });
  const second = client.request({ id: 2 });
  const outcomes = Promise.allSettled([first, second]);
  await start; const pid = client.pid!, began = performance.now();
  await client.close();
  assert.ok(performance.now() - began < 700);
  assert.ok((await outcomes).every(outcome => outcome.status === 'rejected'));
  assert.throws(() => process.kill(pid, 0));
});

test('undrainable cancellation invalidates the connection and queued requests instead of pairing a late response', async () => {
  const client = fake(`setInterval(()=>{},1000);`, { drainGraceMs: 40 });
  const controller = new AbortController();
  let started!: () => void; const start = new Promise<void>(resolve => { started = resolve; });
  const first = client.request({}, { signal: controller.signal, onStart: started });
  const rejected = assert.rejects(first, { code: 'CANCELLED' });
  try {
    await start; const queued = client.request({ id: 2 });
    const queueRejected = assert.rejects(queued, { code: 'TRANSPORT_RESET' });
    controller.abort(); await rejected; await queueRejected;
    assert.equal(client.usable, false);
  } finally { await client.close(); }
});

test('cancel at the dispatch callback skips wire output and preserves the next response', async () => {
  const client = fake(String.raw`input.on('line',line=>process.stdout.write(line+'\n'));`);
  const controller = new AbortController();
  try {
    await assert.rejects(client.request({ id: 1 }, { signal: controller.signal, onStart: () => controller.abort() }), { code: 'CANCELLED' });
    assert.deepEqual(await client.request({ id: 2 }), { id: 2 });
  } finally { await client.close(); }
});

test('shared Pi owner freezes submitted inputs, initializes once under concurrency, and rebuilds after transport failure', async () => {
  const owner = new PiClient({ client: { command: process.execPath, args: ['--input-type=module', '-e', prelude + String.raw`
    input.on('line',line=>{const value=JSON.parse(line);if(value.arguments.query==='die')process.exit(3);
    process.stdout.write(JSON.stringify({status:'error',code:String(process.pid),message:JSON.stringify(value.arguments)})+'\n');});`] } });
  try {
    const submitted = { query: 'original' };
    const first = owner.call(names[1], submitted); submitted.query = 'mutated';
    const calls = await Promise.all([first, owner.call(names[0], { name: 'x' }), owner.call(names[1], { query: 'next' })]);
    assert.deepEqual(calls.map(result => result.generation), [1, 1, 1]);
    assert.equal(new Set(calls.map(result => (result.response as { code: string }).code)).size, 1);
    assert.equal(JSON.parse((calls[0].response as { message: string }).message).query, 'original');
    await assert.rejects(owner.call(names[1], { query: 'die' }));
    const next = await owner.call(names[0], {});
    assert.equal(next.generation, 2);
    assert.notEqual((next.response as { code: string }).code, (calls[0].response as { code: string }).code);
  } finally { await owner.close(); }
  await assert.rejects(owner.call(names[0], {}), { code: 'SESSION_CLOSED' });
});

test('failed Pi initialization clears its promise and can be retried', async () => {
  const options = { command: process.execPath, args: ['--input-type=module', '-e', prelude + String.raw`
    input.on('line',()=>process.stdout.write('{"status":"error","code":"FIXTURE","message":"ok"}\n'));`], timeoutMs: -1 };
  const owner = new PiClient({ client: options });
  try {
    await assert.rejects(owner.call(names[0], {}), /timeout/);
    options.timeoutMs = 3000;
    assert.equal((await owner.call(names[0], {})).generation, 1);
  } finally { await owner.close(); }
});

test('model projections expose line counts, Diagram OIDs, root Hierarchies and exact Variants', () => {
  const variant = " 'ES1130'_Physical Experiment";
  const text = renderAgentResult({ status: 'ok', ref: 'header', kind: 'header', variant, line_count: 6944, code: 'first saved line',
    code_range: { start_line: 1, start_column: 1, end_line: 2, end_column: 1 } });
  assert.match(text, /line_count: 6944/);
  assert.equal(JSON.parse(text.split('\n').find(line => line.startsWith('variant: '))!.slice('variant: '.length)), variant);
  assert.match(renderAgentResult({ status: 'ok', ref: 'diagram', kind: 'diagram', diagram_oid: 'native-diagram', line_count: 6, diagram_text: 'Diagram root Init' }), /diagram_oid: native-diagram/);
  const root = renderAgentResult({ status: 'ok', object: { ref: 'object', name: 'AEBLockTime', kind: 'element' } });
  assert.equal(JSON.parse(root.split('\n').find(line => line.startsWith('object: '))!.slice('object: '.length)).hierarchy, 'root');
  assert.match(renderAgentResult({ status: 'ok', node_id: 6, name: 'AEBLockTime' }), /hierarchy: root/);
});

test('both response budgets bound search/read pages while full text reconstructs exactly', async () => {
  const text = 'needle\r\n' + 'literal "text" \\ \u4e2d\u6587\ud83d\ude42\r\n'.repeat(1000);
  const session = new AgentSession({ request: async () => response(text) }, { maxPageBytes: 8192, maxModelBytes: 2048 });
  try {
    const search = await session.execute({ tool: names[1], arguments: { query: 'needle', context: 0 } }) as AgentSearchResponse;
    validateToolOutput(names[1], search); assert.ok(Buffer.byteLength(renderAgentResult(search)) <= 2048);
    let page = await session.execute({ tool: names[2], arguments: { ref: search.searches[0].results[0].ref } }) as AgentReadResponse;
    let reconstructed = '', pages = 0;
    for (;;) {
      validateToolOutput(names[2], page); assert.ok(Buffer.byteLength(JSON.stringify(page)) <= 8192);
      assert.ok(Buffer.byteLength(renderAgentResult(page)) <= 2048);
      reconstructed += page.code; assert.ok(++pages < 200);
      if (!page.has_more) break;
      page = await session.execute({ tool: names[2], arguments: { cursor: page.next_cursor } }) as AgentReadResponse;
    }
    assert.equal(reconstructed, text);
  } finally { session.close(); }
});

test('whole raw graph explicitly fails over budget while local BDE read remains available', async () => {
  const graph = generatedGraph(1, 150, 0), session = new AgentSession({ request: async () =>
    graphResponse([graph], data => data.unshift(['#DIAGRAM_SCOPE', '1'])) }, { maxPageBytes: 4096 });
  try {
    const found = await session.execute({ tool: names[0], arguments: { target: 'diagrams' } }) as AgentFindResponse;
    await assert.rejects(session.execute({ tool: names[2], arguments: { ref: found.results[0].ref, include_graph: true } }), { code: 'PAGE_TOO_LARGE' });
    const objects = await session.execute({ tool: names[0], arguments: { target: 'objects', limit: 1 } }) as AgentFindResponse;
    validateToolOutput(names[2], await session.execute({ tool: names[2], arguments: { ref: objects.results[0].ref, depth: 0 } }));
  } finally { session.close(); }
});

test('shared contracts reject wrong result shapes and preserve cursor-only input', () => {
  for (const name of names) {
    validateToolInput(name, { cursor: 'opaque' });
    validateToolOutput(name, { status: 'error', code: 'CURSOR_TOOL_MISMATCH', message: 'Use the original tool' });
    assert.throws(() => validateToolOutput(name, { status: 'ok' }), { code: 'OUTPUT_CONTRACT_VIOLATION' });
    assert.throws(() => validateToolInput(name, { cursor: 'opaque', query: 'x' }), { code: 'INVALID_REQUEST' });
  }
  assert.equal(TOOL_CONTRACTS.length, 3);
});

test('optimized inputs keep types and bounds while CLI rejects invalid cross-field combinations', async () => {
  const optimized = getToolContracts('optimized');
  assert.equal(optimized.length, 3);
  const find = optimized.find(c => c.name === names[0])!;
  assert.equal(Object.hasOwn(find.inputSchema.properties as object, 'member'), false);
  validateToolInput(names[0], { target: 'members', component: 'Class', name: 'calc', match: 'exact' }, 'optimized');
  for (const [name, args] of [[names[1], {}], [names[2], {}], [names[1], { query: [] }],
    [names[1], { query: 'x', limit: 0 }], [names[2], { ref: ['a'], depth: 'one' }]] as const) {
    assert.throws(() => validateToolInput(name, args, 'optimized'), { code: 'INVALID_REQUEST' });
  }
  const session = new AgentSession({ request: async () => response() });
  try {
    const combined = { cursor: 'opaque', query: 'x' };
    validateToolInput(names[1], combined, 'optimized');
    await assert.rejects(session.execute({ tool: names[1], arguments: combined }), { code: 'INVALID_REQUEST' });
  } finally { session.close(); }
  assert.throws(() => validateToolInput(names[1], { cursor: 'opaque', query: 'x' }), { code: 'INVALID_REQUEST' });
});

test('optimized projection declares coverage and correct exclusive code line ranges', () => {
  const make = (code: string, end_line: number, end_column: number) => renderAgentResult({ status: 'ok', code,
    ref: 'method', kind: 'method', has_more: false, code_range: { start_line: 1, start_column: 1, end_line, end_column } }, 'optimized');
  assert.match(make('x;\n', 2, 1), /included_lines: {"start":1,"end":1}/);
  assert.match(make('x;\ny;', 2, 3), /included_lines: {"start":1,"end":2}/);
  assert.doesNotMatch(make('', 1, 1), /included_lines/);
  assert.match(make('x;', 1, 3), /has_more: false/);
  const scope = renderAgentResult({ status: 'ok', target: 'components', returned_count: 1, total_count: 1,
    has_more: false, results: [{ component_path: 'folder\\Class', ref: 'scope' }] }, 'optimized');
  assert.match(scope, /ref_usage: in.component/);
  assert.deepEqual(JSON.parse(scope.split('\n').find(line => line.startsWith('member_lookup: '))!.slice('member_lookup: '.length)),
    { target: 'members', in: { component: 'scope' } });
  assert.match(renderAgentResult({ status: 'error', code: 'REF_EXPIRED', message: 'expired' }, 'optimized'), /recovery: Find/);
  assert.match(renderAgentResult({ status: 'error', code: 'INVALID_REGEX', message: 'bad pattern' }, 'optimized'), /recovery: Use ECMAScript/);
});

test('optimized Header identity and executable search scope retain empty names and exact Variant whitespace', async () => {
  const variant = " 'Target'_Physical Experiment", data = rows('symbol = 1;').map(row =>
    row.map(value => value === 'oid1' ? '0'.repeat(28) + '1' : value));
  data[1][0] = 'header'; data[1][4] = variant; data[1][5] = ''; data[1][6] = '';
  const other = [...data[1]]; other[4] = variant.trimStart(); data.splice(2, 0, other);
  const session = new AgentSession({ request: async () => ({ ...response(), payload: encode(data) }) });
  try {
    const found = await session.execute({ tool: names[0], arguments: { in: { kind: 'header' } } }) as AgentFindResponse;
    const text = renderAgentResult(found, 'optimized');
    const field = (name: string) => JSON.parse(text.split('\n').find(line => line.startsWith(name + ': '))!.slice(name.length + 2));
    assert.deepEqual(field('identity'), { component_path: 'folder/class', kind: 'header', member: '', variant, implementation: '' });
    const scope = field('search_scope');
    validateToolInput(names[1], { query: 'symbol', in: scope }, 'optimized');
    const searched = await session.execute({ tool: names[1], arguments: { query: 'symbol', in: scope } }) as AgentSearchResponse;
    assert.equal(searched.total_hits, 1);
    assert.equal(searched.searches[0].results[0].variant, variant);
    const full = await session.execute({ tool: names[2], arguments: { ref: found.results[0].ref } }) as AgentReadResponse;
    assert.equal(full.code, 'symbol = 1;');
  } finally { session.close(); }
});

test('optimized graphical identity preserves document kind and all member names independently of a name match', () => {
  const source = { status: 'ok', ref: 'diagram-ref', component_path: 'Library\\Module', kind: 'diagram', diagram: 'Init', variant: 'BD',
    representation: 'graphical_model', diagram_methods: [{ name: 'InitProcess', kind: 'process' }, { name: 'getter', kind: 'method' }],
    matched_members: [{ name: 'getter', kind: 'method' }], has_more: false };
  const snapshot = structuredClone(source), text = renderAgentResult(source, 'optimized');
  const field = (name: string) => JSON.parse(text.split('\n').find(line => line.startsWith(name + ': '))!.slice(name.length + 2));
  assert.deepEqual(field('identity'), { component_path: source.component_path, kind: 'diagram', member: 'Init', variant: 'BD', implementation: '' });
  assert.deepEqual(field('member_names'), ['InitProcess', 'getter']);
  assert.deepEqual(field('matched_members'), source.matched_members);
  assert.match(text, /code_format: bde/);
  assert.deepEqual(source, snapshot);
});

test('optimized Diagram object lookup executes with explicit owner and Diagram scopes', async () => {
  const graph = generatedGraph(1, 8, 0);
  graph.component_oid = '0'.repeat(28) + '1'; graph.source_oid = '0'.repeat(28) + '2';
  const session = new AgentSession({ request: async () =>
    graphResponse([graph], data => data.unshift(['#DIAGRAM_SCOPE', '1'])) });
  try {
    const found = await session.execute({ tool: names[0], arguments: { target: 'diagrams' } }) as AgentFindResponse;
    const text = renderAgentResult(found, 'optimized');
    const args = JSON.parse(text.split('\n').find(line => line.startsWith('object_lookup: '))!.slice('object_lookup: '.length));
    const scope = JSON.parse(text.split('\n').find(line => line.startsWith('diagram_scope: '))!.slice('diagram_scope: '.length));
    assert.deepEqual(scope, args.in);
    for (const target of ['objects', 'states', 'transitions']) validateToolInput(names[0], { target, in: scope }, 'optimized');
    validateToolInput(names[0], args, 'optimized');
    const objects = await session.execute({ tool: names[0], arguments: args }) as AgentFindResponse;
    assert.equal(objects.total_count, graph.nodes.length);
    assert.ok(objects.results.every(item => 'diagram_oid' in item && item.diagram_oid === graph.source_oid));
  } finally { session.close(); }
});

test('optimized Component directory supplies executable owner and Diagram scopes without accepting path placeholders', async () => {
  const graph = generatedGraph(1, 8, 0);
  graph.component_oid = '0'.repeat(28) + '1'; graph.source_oid = '0'.repeat(28) + '2';
  const session = new AgentSession({ request: async () => graphResponse([graph], data => data.unshift(['#DIAGRAM_SCOPE', '1'])) });
  try {
    const found = await session.execute({ tool: names[0], arguments: { target: 'components' } }) as AgentFindResponse;
    assert.ok(found.results.length);
    const text = renderAgentResult(found, 'optimized');
    const field = (name: string) => JSON.parse(text.split('\n').find(line => line.startsWith(name + ': '))!.slice(name.length + 2));
    const scope = field('owner_scope'), lookup = field('diagram_lookup');
    assert.deepEqual(scope, { component: found.results[0].ref });
    assert.deepEqual(lookup.in, scope);
    validateToolInput(names[0], lookup, 'optimized');
    const diagrams = await session.execute({ tool: names[0], arguments: lookup }) as AgentFindResponse;
    assert.equal(diagrams.total_count, 1);
    await assert.rejects(session.execute({ tool: names[0], arguments: { target: 'diagrams', in: { component: 'PLACEHOLDER' } } }),
      (error: any) => error.code === 'INVALID_REQUEST');
  } finally { session.close(); }
});

test('optimized model budget and paged source reconstruction use the same renderer as Pi', async () => {
  const previous = process.env.ASCET_PI_TOOL_PROFILE;
  process.env.ASCET_PI_TOOL_PROFILE = 'optimized';
  const code = 'first;\r\n' + 'saved "text" \\\r\n'.repeat(1200);
  const session = new AgentSession({ request: async () => response(code) }, { maxPageBytes: 8192, maxModelBytes: 2048 });
  try {
    const found = await session.execute({ tool: names[0], arguments: {} }) as AgentFindResponse;
    let page = await session.execute({ tool: names[2], arguments: { ref: found.results[0].ref } }) as AgentReadResponse;
    let full = '', pages = 0;
    for (;;) {
      assert.ok(Buffer.byteLength(renderAgentResult(page, 'optimized')) <= 2048);
      full += page.code; assert.ok(++pages < 200);
      if (!page.has_more) break;
      page = await session.execute({ tool: names[2], arguments: { cursor: page.next_cursor } }) as AgentReadResponse;
    }
    assert.equal(full, code);
  } finally {
    session.close();
    if (previous === undefined) delete process.env.ASCET_PI_TOOL_PROFILE;
    else process.env.ASCET_PI_TOOL_PROFILE = previous;
  }
});

test('optimized BDE projection preserves target and neighbor Pin ownership without changing evidence', () => {
  const original = { status: 'ok', object: { ref: 'target', kind: 'element', name: 'saved' }, has_more: true,
    pins: [{ id: 33, object_ref: 'target', name: 'get/get', output: true },
      { id: 29, object_ref: 'neighbor', name: 'set/aValue', input: true }],
    connections: [{ from_pin_id: 33, to_pin_id: 29 }], next_cursor: 'continuation' };
  const snapshot = structuredClone(original), text = renderAgentResult(original, 'optimized');
  const field = (name: string) => JSON.parse(text.split('\n').find(line => line.startsWith(name + ': '))!.slice(name.length + 2));
  assert.deepEqual(field('target_pins'), [original.pins[0]]);
  assert.deepEqual(field('endpoint_pins'), [original.pins[1]]);
  assert.deepEqual(field('connections'), original.connections);
  assert.match(text, /Consume all pages for complete target Pins/);
  assert.match(text, /depth:0 for its complete Pins/);
  assert.deepEqual(original, snapshot);
  const baseline = renderAgentResult(original, 'baseline');
  assert.match(baseline, /pins: /); assert.doesNotMatch(baseline, /target_pins/);
});

test('optimized paged local BDE output stays within model budget and retains complete target Pins', async () => {
  const previous = process.env.ASCET_PI_TOOL_PROFILE;
  process.env.ASCET_PI_TOOL_PROFILE = 'optimized';
  const graph = generatedGraph(1, 20, 0), target = graph.nodes[0];
  const session = new AgentSession({ request: async () => graphResponse([graph], data => data.unshift(['#DIAGRAM_SCOPE', '1'])) },
    { maxPageBytes: 8192, maxModelBytes: 2048 });
  try {
    const found = await session.execute({ tool: names[0], arguments: { target: 'objects', name: target.name, match: 'exact' } }) as AgentFindResponse;
    let page = await session.execute({ tool: names[2], arguments: { ref: found.results[0].ref, depth: 1, direction: 'both' } }) as any;
    const ids = new Set<number>(); let pages = 0;
    for (;;) {
      assert.ok(Buffer.byteLength(renderAgentResult(page, 'optimized')) <= 2048);
      for (const pin of page.pins ?? []) if (pin.object_ref === page.object.ref) ids.add(pin.id);
      assert.ok(++pages < 100);
      if (!page.has_more) break;
      page = await session.execute({ tool: names[2], arguments: { cursor: page.next_cursor } });
    }
    assert.deepEqual([...ids].sort((a, b) => a - b), graph.pins.filter(p => p.node_id === target.id && p.scope === target.scope).map(p => p.id).sort((a, b) => a - b));
  } finally {
    session.close();
    if (previous === undefined) delete process.env.ASCET_PI_TOOL_PROFILE;
    else process.env.ASCET_PI_TOOL_PROFILE = previous;
  }
});

test('real Pi task system prompt deduplicates shared rules and includes scoped-search and evidence guidance', async () => {
  const directory = await mkdtemp(join(tmpdir(), 'ascet-pi-task-prompt-'));
  const settings = SettingsManager.inMemory();
  const loader = new DefaultResourceLoader({ cwd: directory, agentDir: directory, settingsManager: settings,
    noExtensions: true, noSkills: true, noThemes: true, noPromptTemplates: true, noContextFiles: true,
    extensionFactories: [createAscetExtension({ toolProfile: 'task' })] });
  await loader.reload();
  const { session } = await createAgentSession({ cwd: directory, agentDir: directory, resourceLoader: loader,
    settingsManager: settings, sessionManager: SessionManager.inMemory(directory), noTools: 'builtin' });
  try {
    assert.equal(session.agent.state.tools.length, 6);
    for (const rule of TASK_RULES) assert.equal(session.systemPrompt.split(rule).length - 1, 1);
    assert.ok(session.systemPrompt.includes('members:["calc"]'));
    assert.ok(session.systemPrompt.includes('read_evidence'));
    assert.ok(session.systemPrompt.includes('scope:{code_ref}'));
    assert.ok(session.agent.state.tools.every(tool => tool.executionMode === 'parallel'));
  } finally { session.dispose(); await rm(directory, { recursive: true, force: true }); }
});

test('actual Pi SDK loads three parallel tools, exposes direct guidelines, maps CLI errors, and reloads cleanly', async () => {
  const directory = await mkdtemp(join(tmpdir(), 'ascet-pi-sdk-'));
  const settings = SettingsManager.inMemory();
  const factory = createAscetExtension({ client: { command: process.execPath, args: ['--input-type=module', '-e',
    prelude + String.raw`input.on('line',line=>process.stdout.write(JSON.stringify({status:'error',code:'ASCET_BUSY',message:'fixture busy'})+'\n'));`] } });
  const loader = new DefaultResourceLoader({ cwd: directory, agentDir: directory, settingsManager: settings,
    noExtensions: true, noSkills: true, noThemes: true, noPromptTemplates: true, noContextFiles: true, extensionFactories: [factory] });
  await loader.reload();
  const { session } = await createAgentSession({ cwd: directory, agentDir: directory, resourceLoader: loader,
    settingsManager: settings, sessionManager: SessionManager.inMemory(directory), noTools: 'builtin' });
  try {
    assert.deepEqual(session.agent.state.tools.map(tool => tool.name).sort(), [...names].sort());
    for (const rule of COMMON_GUIDELINES) assert.ok(session.systemPrompt.includes(rule));
    for (const tool of session.agent.state.tools) {
      const valid: Record<string, string> = tool.name === names[0] ? { target: 'components' } : tool.name === names[1] ? { query: 'foo' } : { ref: 'opaque' };
      assert.deepEqual(validateToolArguments(tool, { type: 'toolCall', id: 'validation', name: tool.name, arguments: valid }), valid);
      assert.throws(() => validateToolArguments(tool, { type: 'toolCall', id: 'invalid', name: tool.name, arguments: { cursor: 'opaque', extra: true } }));
    }
    const search = session.agent.state.tools.find(tool => tool.name === names[1])!;
    assert.equal(search.executionMode, 'parallel');
    const error = await search.execute('fixture-busy', { query: 'foo' });
    assert.equal(error.isError, true); assert.equal((error.structuredContent as { code: string }).code, 'ASCET_BUSY');
    const invalid = await search.execute('fixture-invalid', { query: '' });
    assert.equal(invalid.isError, true);
    await session.reload();
    assert.equal(session.agent.state.tools.length, 3);
  } finally {
    await session.abort(); await session.extensionRunner.emit({ type: 'session_shutdown', reason: 'quit' }); session.dispose();
    await rm(directory, { recursive: true, force: true });
  }
});

test('actual Pi reload closes a cancelled blocked CLI and the new owner remains callable', async () => {
  const directory = await mkdtemp(join(tmpdir(), 'ascet-pi-cancel-reload-'));
  const settings = SettingsManager.inMemory();
  const factory = createAscetExtension({ drainGraceMs: 50, closeDeadlineMs: 300,
    client: { command: process.execPath, args: ['--input-type=module', '-e', prelude + String.raw`
      input.on('line',line=>{const value=JSON.parse(line);if(value.arguments.query==='block')return;
      process.stdout.write('{"status":"error","code":"FIXTURE","message":"new owner"}\n');});`] } });
  const loader = new DefaultResourceLoader({ cwd: directory, agentDir: directory, settingsManager: settings,
    noExtensions: true, noSkills: true, noThemes: true, noPromptTemplates: true, noContextFiles: true, extensionFactories: [factory] });
  await loader.reload();
  const { session } = await createAgentSession({ cwd: directory, agentDir: directory, resourceLoader: loader,
    settingsManager: settings, sessionManager: SessionManager.inMemory(directory), noTools: 'builtin' });
  try {
    const controller = new AbortController();
    const tool = session.agent.state.tools.find(tool => tool.name === names[1])!;
    const pending = tool.execute('blocked', { query: 'block' }, controller.signal);
    await new Promise(resolve => setTimeout(resolve, 30));
    const began = performance.now(); controller.abort();
    assert.equal((await pending).isError, true);
    assert.ok(performance.now() - began < 100);
    const reloadStarted = performance.now(); await session.reload();
    assert.ok(performance.now() - reloadStarted < 800);
    const result = await session.agent.state.tools.find(tool => tool.name === names[1])!.execute('new', { query: 'ready' });
    assert.equal((result.structuredContent as { code: string }).code, 'FIXTURE');
  } finally {
    await session.abort(); await session.extensionRunner.emit({ type: 'session_shutdown', reason: 'quit' }); session.dispose();
    await rm(directory, { recursive: true, force: true });
  }
});
