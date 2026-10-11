import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
import { createAgentSession, DefaultResourceLoader, SessionManager, SettingsManager } from '@earendil-works/pi-coding-agent';
import { validateToolArguments } from '@earendil-works/pi-ai';
import { Bridge, ROOT } from '../dist/src/bridge.js';
import { decodeResponse } from '../dist/src/protocol.js';
import { createAscetExtension } from '../dist/src/pi-extension.js';
import { PiClient } from '../dist/src/pi-client.js';
import { fingerprint } from '../dist/scripts/oracle.js';
import { verifyRunningAgentInstance, retainAgentInstance } from '../dist/scripts/agent-instance-retention.js';
import { taskSearchScopeError } from '../dist/src/task-scope-guard.js';

// This script only attaches to a verified, retained instance. It never launches
// ASCET, switches databases, or invokes a lifecycle stop command.
const directory = path.resolve(process.argv[2] ?? path.join(ROOT, 'experiments/task-acceptance', new Date().toISOString().replace(/[:.]/g, '-')));
const manifest = path.resolve(process.env.ASCET_AGENT_LATENCY_MANIFEST ?? path.join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json'));
const instance = JSON.parse(await fs.readFile(manifest, 'utf8'));
const identity = JSON.parse((await fs.readFile(path.join(path.dirname(manifest), 'process.json'), 'utf8')).replace(/^\uFEFF/, ''));
await verifyRunningAgentInstance(identity);
assert.equal(await retainAgentInstance(manifest, identity), true, 'A retention marker is required');
await fs.mkdir(directory, { recursive: true });
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0', ASCET_PI_TOOL_PROFILE: 'task' };
const report = { status: 'running', started_utc: new Date().toISOString(), identity, checks: [], calls: [] };
let session, before;
const audit = new Bridge(90, { env });
const owner = new PiClient({ client: { env } });
const save = () => fs.writeFile(path.join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
const check = async (name, action) => {
  try { await action(); report.checks.push({ name, passed: true }); }
  catch (error) { report.checks.push({ name, passed: false, error: String(error) }); }
  await save();
};
try {
  const raw = await audit.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
  assert.equal(raw.ascet_pid, identity.pid); assert.equal(raw.database, instance.database);
  before = decodeResponse(raw);
  await fs.writeFile(path.join(directory, 'before-snapshot.json'), JSON.stringify(before) + '\n');
  const settings = SettingsManager.inMemory();
  const loader = new DefaultResourceLoader({ cwd: directory, agentDir: directory, settingsManager: settings,
    noExtensions: true, noSkills: true, noThemes: true, noPromptTemplates: true, noContextFiles: true,
    extensionFactories: [createAscetExtension({ toolProfile: 'task', requireIntent: false, client: { env } })] });
  await loader.reload();
  ({ session } = await createAgentSession({ cwd: directory, agentDir: directory, resourceLoader: loader,
    settingsManager: settings, sessionManager: SessionManager.inMemory(directory), noTools: 'builtin' }));
  const call = async (toolName, args, expectedError) => {
    const tool = session.agent.state.tools.find(t => t.name === toolName);
    const input = validateToolArguments(tool, { type: 'toolCall', id: String(report.calls.length), name: toolName, arguments: args });
    const result = await tool.execute('live-' + report.calls.length, input);
    const model = JSON.parse(result.content.filter(c => c.type === 'text').map(c => c.text).join('\n'));
    const response = result.structuredContent;
    report.calls.push({ tool: toolName, arguments: args, response, model });
    if (expectedError) assert.equal(response.code, expectedError);
    else assert.ok(!result.isError, JSON.stringify(response));
    return { response, model };
  };
  let target;
  await check('native BDE object discovery', async () => {
    const page = await call('ascet_find', { target: 'objects', name: 'C_AEB_AXCDeadZoneNeg',
      scope: { components: [{ name: 'AEB_dFxTar' }], diagrams: [{ name: 'Main' }] } });
    assert.equal(page.response.total_count, 1); target = page.response.results[0].ref;
  });
  const c = before.components.find(c => c.path.split('\\').at(-1) === 'AEB_dFxTar');
  const d = before.diagrams.find(d => d.component_oid === c.oid && d.name === 'Main');
  const node = d.nodes.find(n => n.name === 'C_AEB_AXCDeadZoneNeg');
  const nativePins = d.pins.filter(p => p.node_id === node.id && p.scope === node.scope).map(p => p.id).sort((a, b) => a - b);
  for (const depth of [0, 1, 2]) for (const direction of ['incoming', 'outgoing', 'both']) await check(`BDE role/depth/direction ${depth}/${direction}`, async () => {
    const { response, model } = await call('ascet_read_bde', { refs: [target], depth, direction });
    assert.equal(model.requested_object.ref, target);
    assert.deepEqual(model.requested_object.pin_ids_on_page.sort((a, b) => a - b), nativePins);
    assert.equal(model.depth, depth); assert.equal(model.direction, direction);
    assert.equal(model.read_scope.depth, depth); assert.equal(model.read_scope.direction, direction);
    assert.equal(model.facts_mapping.requested_object_ref, target);
    assert.ok(model.neighbors.every(n => n.ref !== target && n.endpoint_pins.every(p => p.object_ref === n.ref)));
    if (depth === 0) { assert.deepEqual(model.connections, []); assert.deepEqual(model.neighbors, []); }
    const pinOwner = new Map(d.pins.filter(p => p.scope === node.scope).map(p => [p.id, p.node_id]));
    let frontier = new Set([node.id]), seen = new Set([node.id]), edges = new Set();
    for (let hop = 0; hop < depth; hop++) {
      const next = new Set();
      for (const edge of d.connections.filter(e => e.scope === node.scope)) {
        const from = pinOwner.get(edge.from_pin), to = pinOwner.get(edge.to_pin);
        if ((direction !== 'incoming' && frontier.has(from)) || (direction !== 'outgoing' && frontier.has(to))) {
          edges.add(edge.from_pin + ':' + edge.to_pin);
          for (const other of [from, to]) if (!seen.has(other)) next.add(other);
        }
      }
      next.forEach(n => seen.add(n)); frontier = next;
    }
    assert.deepEqual([...new Set(response.connections.map(e => e.from.pin_id + ':' + e.to.pin_id))].sort(), [...edges].sort());
  });
  await check('Module interface does not expand referenced Class', async () => {
    const found = await call('ascet_find', { target: 'objects', name: 'LDMAxRaw', scope: { components: [{ name: 'AEB5ms' }], diagrams: [{ name: 'Main' }] } });
    const { model } = await call('ascet_read_bde', { refs: [found.response.results[0].ref], depth: 0, direction: 'both' });
    assert.equal(model.requested_object.name, 'LDMAxRaw'); assert.deepEqual(model.connections, []);
    assert.equal(model.requested_object.pin_ids_complete, true);
  });
  await check('SDK stale cursor reaches mismatch and original tool resumes', async () => {
    const first = await call('ascet_search_code', { queries: [{ text: 'AxTarLim', mode: 'identifier' }], limit: 1 });
    assert.equal(first.response.has_more, true);
    assert.deepEqual(first.model.continuation_call, { tool: 'ascet_search_code', arguments: { cursor: first.response.next_cursor } });
    await call('ascet_find', { target: 'objects', cursor: first.response.next_cursor }, 'CURSOR_TOOL_MISMATCH');
    const page = await call('ascet_search_code', { cursor: first.response.next_cursor });
    assert.equal(page.response.status, 'ok');
    assert.deepEqual((await call('ascet_search_code', { cursor: first.response.next_cursor })).response, page.response);
  });
  await check('complete code equals native source and duplicate batch order is retained', async () => {
    const found = await call('ascet_find', { target: 'members', name: 'Init', scope: { components: [{ name: 'DBR_Force2Pressure' }], variants: ['ASDL'] } });
    const ref = found.response.results[0].ref;
    const { response } = await call('ascet_read_code', { refs: [ref, ref] });
    assert.deepEqual(response.results.map(r => r.ref), [ref, ref]);
    const native = before.documents.find(doc => doc.component_path.endsWith('\\DBR_Force2Pressure') && doc.member_name === 'Init' && doc.variant === 'ASDL');
    assert.ok(response.results.every(r => r.code === native.text));
  });
  await check('State action uses source refs and endpoints are separately inspectable', async () => {
    const found = await call('ascet_find', { target: 'states', name: 'Main/AEB_State_Off', scope: { components: [{ name: 'AEB_State_Machine' }] } });
    const { response } = await call('ascet_inspect_state', { refs: [found.response.results[0].ref] });
    const slot = response.code_slots.find(s => s.kind === 'state_static'); assert.ok(slot);
    const code = await call('ascet_read_code', { refs: [slot.ref] });
    const native = before.documents.find(doc => doc.component_path.endsWith('\\AEB_State_Machine') && doc.kind === 'state_static' && doc.member_name === 'Main/AEB_State_Off');
    assert.equal(code.response.code, native.text);
  });
  await check('live Evidence accepts returned refs and rejects invented nested refs', async () => {
    const found = (await owner.call('ascet_find', { target: 'components', name: 'AEB_dFxTar' })).response;
    const ref = found.results[0].ref;
    const answer = { outcome: 'located', answer: 'Saved Component located', evidence_refs: [ref], missing_evidence: [], facts: {} };
    assert.equal(owner.validateFinalAnswer(JSON.stringify(answer)).valid, true);
    answer.facts.requested_object_ref = ref + 'bad';
    assert.equal(owner.validateFinalAnswer(JSON.stringify(answer)).valid, false);
  });
  await check('live owner evidence validates code-ref scope and rejects global or foreign scope before dispatch', async () => {
    const found = (await owner.call('ascet_find', { target: 'members', name: 'calc_pre', scope: { components: [{ name: 'AEB_AxCtrlConfigFF_Modify' }], variants: ['ASDL'] } })).response;
    const ref = found.results[0].ref;
    const intent = { action: 'search', scope: { components: ['AEB_AxCtrlConfigFF_Modify'], members: ['calc_pre'] } };
    const queries = [{ text: 'AxTarRaw', mode: 'identifier' }];
    const lookup = candidate => owner.referenceEvidence(candidate);
    assert.equal(lookup(ref).member, 'calc_pre');
    assert.equal(taskSearchScopeError(intent, 'ascet_search_code', { queries, scope: { code_ref: ref } }, lookup), undefined);
    assert.match(taskSearchScopeError(intent, 'ascet_search_code', { queries }, lookup), /INTENT_SCOPE_MISMATCH/);
    assert.match(taskSearchScopeError(intent, 'ascet_search_code', { queries, scope: { components: [{ name: 'AEB_dFxTar' }], members: ['calc_pre'] } }, lookup), /INTENT_SCOPE_MISMATCH/);
    const response = (await owner.call('ascet_search_code', { queries, scope: { code_ref: ref } })).response;
    assert.equal(response.total_hits, 2); assert.equal(response.has_more, false);
    report.calls.push({ tool: 'ascet_search_code', arguments: { queries, scope: { code_ref: ref } }, response });
  });
  await check('live final BDE facts reject neighbor Pins and altered read scope', async () => {
    const found = (await owner.call('ascet_find', { target: 'objects', name: 'C_AEB_AXCDeadZoneNeg',
      scope: { components: [{ name: 'AEB_dFxTar' }], diagrams: [{ name: 'Main' }] } })).response;
    const ref = found.results[0].ref;
    const read = (await owner.call('ascet_read_bde', { refs: [ref], depth: 1, direction: 'both' })).response;
    report.calls.push({ tool: 'ascet_read_bde', arguments: { refs: [ref], depth: 1, direction: 'both' }, response: read,
      purpose: 'PiClient final BDE validation' });
    const neighbor = read.connections.flatMap(edge => [edge.from, edge.to]).find(endpoint => endpoint.ref !== ref);
    assert.ok(neighbor && !nativePins.includes(neighbor.pin_id));
    const answer = { outcome: 'located', answer: 'Inspected saved object Pins', evidence_refs: [ref], missing_evidence: [],
      facts: { requested_object_ref: ref, name: 'C_AEB_AXCDeadZoneNeg', pin_ids: nativePins, depth: 1, direction: 'both' } };
    assert.equal(owner.validateFinalAnswer(JSON.stringify(answer)).valid, true);
    answer.facts.pin_ids = [neighbor.pin_id];
    assert.equal(owner.validateFinalAnswer(JSON.stringify(answer)).valid, false);
    answer.facts.pin_ids = nativePins; answer.facts.direction = 'incoming';
    assert.equal(owner.validateFinalAnswer(JSON.stringify(answer)).valid, false);
    answer.facts.direction = 'both'; answer.facts.name = 'AxCtrlDevDeadZone';
    assert.equal(owner.validateFinalAnswer(JSON.stringify(answer)).valid, false);
  });
} catch (error) { report.error = String(error); }
finally {
  await owner.close();
  if (session) { await session.extensionRunner.emit({ type: 'session_shutdown', reason: 'quit' }); session.dispose(); }
  try {
    const raw = await audit.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    const after = decodeResponse(raw);
    assert.equal(raw.ascet_pid, identity.pid); assert.equal(raw.database, instance.database);
    assert.equal(fingerprint(after), fingerprint(before)); assert.deepEqual(after.diagrams, before.diagrams);
    await verifyRunningAgentInstance(identity);
    report.sources_and_graphs_unchanged = true; report.instance_retained = true;
  } catch (error) { report.audit_error = String(error); }
  await audit.close();
  report.status = !report.error && !report.audit_error && report.checks.every(c => c.passed) ? 'passed' : 'failed';
  report.completed_utc = new Date().toISOString(); await save();
}
console.log(JSON.stringify({ directory, status: report.status, passed: report.checks.filter(c => c.passed).length, total: report.checks.length,
  failures: report.checks.filter(c => !c.passed), error: report.error, audit_error: report.audit_error, retained_pid: identity.pid }));
if (report.status !== 'passed') process.exitCode = 1;
