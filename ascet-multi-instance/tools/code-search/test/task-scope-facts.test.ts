import test from 'node:test';
import assert from 'node:assert/strict';
import { taskSearchScopeError } from '../src/task-scope-guard.js';
import { TaskFactsSchema } from '../src/task-facts-schema.js';
import { AgentEvidence } from '../src/agent-evidence.js';
import { createAscetExtension } from '../src/pi-extension.js';

const intent = { action: 'search', decision: 'execute', terms: ['speed'], scope: { components: ['Controller'], members: [] }, clarification_fields: [] };
const queries = [{ text: 'speed', mode: 'identifier' }, { text: 'speed', mode: 'identifier' }];
test('declared search owners reject global fallback and wrong owners without mutating the batch or filters', () => {
  for (const scope of [undefined, { members: ['Controller'] }, { components: [{ name: 'Other' }] }]) {
    const args = { queries, scope, limit: 1, context: { before: 3 }, marker: 'original' };
    const before = structuredClone(args);
    const error = taskSearchScopeError(intent, 'ascet_search_code', args)!;
    assert.match(error, /INTENT_SCOPE_MISMATCH/); assert.deepEqual(args, before);
    const call = JSON.parse(error.split('Suggested corrected call: ')[1]);
    assert.deepEqual(call.arguments.queries, queries); assert.equal(call.arguments.limit, 1);
    assert.deepEqual(call.arguments.context, args.context);
    assert.deepEqual(call.arguments.scope.components, [{ name: 'Controller' }]);
  }
});
test('OR owner sets must retain every owner, with paths and returned identities resolving literal suffixes', () => {
  const dual = { ...intent, scope: { components: ['Controller', 'Other'], members: [] } };
  assert.match(taskSearchScopeError(dual, 'ascet_search_bde', { queries, scope: { components: [{ name: 'Controller' }] } })!, /MISMATCH/);
  assert.equal(taskSearchScopeError(dual, 'ascet_search_bde', { queries, scope: { components: [{ path: 'Root/Controller' }, { name: 'Other' }] } }), undefined);
  assert.match(taskSearchScopeError(intent, 'ascet_search_code', { queries, scope: { components: [{ name: 'ControllerExtra' }] } })!, /MISMATCH/);
  assert.match(taskSearchScopeError(intent, 'ascet_search_code', { queries, scope: { components: [{ name: 'controller' }] } })!, /MISMATCH/);
  const pathIntent = { ...intent, scope: { components: ['Root/Controller'], members: [] } };
  assert.match(taskSearchScopeError(pathIntent, 'ascet_search_code', { queries, scope: { components: [{ name: 'Controller' }] } })!, /MISMATCH/);
  assert.equal(taskSearchScopeError(pathIntent, 'ascet_search_code', { queries, scope: { components: [{ path: 'Root\\Controller' }] } }), undefined);
});
test('code and Diagram refs require current owner evidence; member constraints remain exact', () => {
  const ledger = new AgentEvidence();
  ledger.record({ operation: 'find' }, { status: 'ok', has_more: false, results: [
    { ref: 'sabc:d1', kind: 'method', method: 'calc', variant: 'ASDL', component_path: 'Root\\Controller' },
    { ref: 'sabc:d2', kind: 'diagram', variant: 'BD', component_path: 'Root\\Other' },
  ] });
  const scoped = { ...intent, scope: { components: ['Controller'], members: ['calc'] } };
  const lookup = (ref: string) => ledger.get(ref);
  assert.equal(taskSearchScopeError(scoped, 'ascet_search_code', { queries, scope: { code_ref: 'sabc:d1' } }, lookup), undefined);
  assert.match(taskSearchScopeError(scoped, 'ascet_search_code', { queries, scope: { code_ref: 'sabc:d9' } }, lookup)!, /MISMATCH/);
  assert.match(taskSearchScopeError(intent, 'ascet_search_bde', { queries, scope: { diagrams: [{ ref: 'sabc:d2' }] } }, lookup)!, /MISMATCH/);
  assert.match(taskSearchScopeError(scoped, 'ascet_search_code', { queries, scope: { components: [{ name: 'Controller' }] } }, lookup)!, /scope.members/);
  ledger.clear();
  assert.match(taskSearchScopeError(scoped, 'ascet_search_code', { queries, scope: { code_ref: 'sabc:d1' } }, lookup)!, /MISMATCH/);
});
test('search scope checks preserve cursor ownership handling and allow discovery and referenced implementation reads', () => {
  assert.equal(taskSearchScopeError(intent, 'ascet_search_code', { cursor: 'original' }), undefined);
  assert.equal(taskSearchScopeError(intent, 'ascet_find', { target: 'members' }), undefined);
  assert.equal(taskSearchScopeError(intent, 'ascet_read_code', { refs: ['sabc:d1'] }), undefined);
  assert.equal(taskSearchScopeError({ ...intent, action: 'connections' }, 'ascet_search_bde', { queries }), undefined);
  assert.equal(taskSearchScopeError({ ...intent, scope: { components: [], members: [] } }, 'ascet_search_code', { queries }), undefined);
});
test('Pin name/ID and completion types follow caller Schema, with no coercion or payload rewriting', () => {
  const schema = new TaskFactsSchema({ type: 'object', properties: { from_pin: { type: 'string' }, from_pin_id: { type: 'integer' }, shared_diagram: { type: 'boolean' } }, required: ['from_pin', 'from_pin_id', 'shared_diagram'] });
  const wrong = { from_pin: { name: 'get/get' }, from_pin_id: '79', shared_diagram: 'Main' };
  const before = structuredClone(wrong);
  assert.equal(schema.validate(wrong).length, 3); assert.deepEqual(wrong, before);
  assert.deepEqual(schema.validate({ from_pin: 'get/get', from_pin_id: 79, shared_diagram: true }), []);
  assert.deepEqual(new TaskFactsSchema().validate(wrong), []);
  assert.throws(() => new TaskFactsSchema('not a schema'), /JSON Schema object/);
  assert.throws(() => new TaskFactsSchema({ type: 'invalid-type' }));
  assert.throws(() => new TaskFactsSchema({ description: 'x'.repeat(17 * 1024) }), /16 KiB/);
});
test('actual Pi hooks block a missing declared owner before ASCET access and reject typed final facts once', async () => {
  const handlers = new Map<string, any>(), tools: any[] = [];
  createAscetExtension({ toolProfile: 'task', factsSchema: { type: 'object', properties: { error_observed: { type: 'boolean' } }, required: ['error_observed'] } })({
    on: (event: string, fn: any) => handlers.set(event, fn), registerTool: (tool: any) => tools.push(tool),
  } as any);
  handlers.get('before_agent_start')();
  handlers.get('message_end')({ message: { role: 'assistant', content: [{ type: 'text', text: JSON.stringify({ intent }) }] } });
  const result = handlers.get('tool_call')({ toolName: 'ascet_search_code', input: { queries } });
  assert.equal(result.block, true); assert.match(result.reason, /INTENT_SCOPE_MISMATCH/);
  assert.equal(handlers.get('tool_call')({ toolName: 'ascet_search_code', input: { queries, scope: { components: [{ name: 'Controller' }] } } }), undefined);
  assert.ok(tools.every(tool => tool.promptGuidelines.some((rule: string) => rule.includes('facts_schema:'))));
  const settle = handlers.get('agent_before_settle');
  const answer = (facts: unknown) => ({ outcome: 'completed', context: { contextMessages: [{ role: 'assistant', content: [{ type: 'text', text: JSON.stringify({ outcome: 'partial', answer: 'No query executed', evidence_refs: [], missing_evidence: ['query'], intent, facts }) }] }] } });
  assert.equal((await settle(answer({ error_observed: { code: 'ERROR' } }))).continue, true);
  assert.equal((await settle(answer({ error_observed: true }))).entries[0].data.status, 'accepted');
  await handlers.get('session_shutdown')();
});
