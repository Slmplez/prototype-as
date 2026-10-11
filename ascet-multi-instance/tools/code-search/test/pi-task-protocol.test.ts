import test from 'node:test';
import assert from 'node:assert/strict';
import { createAscetExtension } from '../src/pi-extension.js';
import { getToolContracts } from '../src/tool-contracts.js';
import { validateToolArguments } from '@earendil-works/pi-ai';
import { TaskIntentState } from '../src/task-intent.js';
import { validatePiFinalAnswer } from '../src/pi-answer-validation.js';
import { projectTaskModel } from '../src/task-tools.js';
import { AgentEvidence } from '../src/agent-evidence.js';
import { splitPiEvalAnswer, acceptedTaskSettlements } from '../scripts/pi-eval-answer.js';

const intent = { action: 'connections', decision: 'execute', terms: ['Stage'], scope: { components: ['Controller'], members: [] }, clarification_fields: [] };
const answer = (refs: string[] = []) => JSON.stringify({ outcome: 'partial', answer: 'Need saved evidence', evidence_refs: refs, missing_evidence: ['read'], facts: {}, intent });

test('Pi public schemas admit stale cursor arguments on all six facades while non-cursor inputs stay strict', () => {
  for (const tool of getToolContracts('task')) {
    const declaration = { ...tool, parameters: tool.inputSchema } as any;
    const args = { cursor: 'page-copy', target: 'objects', queries: [] };
    assert.deepEqual(validateToolArguments(declaration, { type: 'toolCall', id: 'page', name: tool.name, arguments: args }), args);
    assert.throws(() => validateToolArguments(declaration, { type: 'toolCall', id: 'invalid', name: tool.name, arguments: { nonsense: true } }));
    assert.throws(() => validateToolArguments(declaration, { type: 'toolCall', id: 'invalid', name: tool.name, arguments: { cursor: {} } }));
  }
});

test('intent guard keeps the first declaration across model turns and resets only for a new user prompt', () => {
  const state = new TaskIntentState();
  assert.match(state.beforeTool()!, /INTENT_REQUIRED/);
  state.observe(JSON.stringify({ intent: { ...intent, scope: { components: [{ name: 'Controller' }], members: [] } } }));
  assert.match(state.beforeTool()!, /intent.scope.components.*arrays of strings/);
  state.observe('Invented prose'); assert.match(state.beforeTool()!, /INTENT_REQUIRED/);
  state.observe(JSON.stringify({ intent })); assert.equal(state.beforeTool(), undefined);
  state.observe(JSON.stringify({ intent: { ...intent, action: 'read' } }));
  assert.deepEqual(state.validateFinal(intent), []);
  assert.equal(state.validateFinal({ ...intent, action: 'read' }).length, 1);
  assert.equal(state.validateFinal(undefined).length, 1);
  state.reset(); assert.match(state.beforeTool()!, /INTENT_REQUIRED/);
  state.observe(JSON.stringify({ intent: { ...intent, decision: 'unsupported', action: 'unsupported' } }));
  assert.match(state.beforeTool()!, /INTENT_TOOL_NOT_ALLOWED/);
  state.reset(); state.observe(JSON.stringify({ intent: { ...intent, decision: 'clarify', action: 'clarify' } }));
  assert.match(state.beforeTool()!, /INTENT_TOOL_NOT_ALLOWED/);
});

test('task eval permits protocol intent on unannotated cases without permitting extra answer fields', () => {
  const parsed = JSON.parse(answer());
  assert.equal('intent' in splitPiEvalAnswer(parsed, 'task', false).base, false);
  assert.equal('intent' in splitPiEvalAnswer(parsed, 'baseline', false).base, true);
  assert.equal('intent' in splitPiEvalAnswer(parsed, 'baseline', true).base, false);
  assert.equal(splitPiEvalAnswer({ ...parsed, invented: true }, 'task', false).base.invented, true);
  assert.deepEqual(splitPiEvalAnswer(undefined, 'task', false).facts, {});
  const accepted = { turn: 1, entry: { data: { status: 'accepted' } } };
  const rejected = { turn: 1, entry: { content: '{"status":"rejected"}' } };
  assert.equal(acceptedTaskSettlements([accepted], 1), true);
  assert.equal(acceptedTaskSettlements([accepted, rejected], 1), false);
  assert.equal(acceptedTaskSettlements([accepted], 2), false);
  assert.equal(acceptedTaskSettlements([accepted, { ...accepted, turn: 2 }], 2), true);
});

test('settlement repair cannot reset on tool/model turns, preserves rejected text, and records final rejection', async () => {
  const handlers = new Map<string, any>();
  createAscetExtension({ toolProfile: 'task', requireIntent: false })({
    on: (event: string, fn: any) => { handlers.set(event, fn); }, registerTool: () => {},
  } as any);
  const settle = handlers.get('agent_before_settle');
  const text = answer(['sabc:d999']);
  const event = { outcome: 'completed', context: { contextMessages: [{ role: 'assistant', content: [{ type: 'text', text }] }] } };
  handlers.get('before_agent_start')();
  assert.equal((await settle(event)).continue, true);
  assert.equal(handlers.has('turn_start'), false);
  const final = await settle(event);
  assert.equal(final.continue, false);
  assert.equal(JSON.parse(final.entries[0].content).status, 'rejected');
  assert.equal(event.context.contextMessages[0].content[0].text, text);
  handlers.get('before_agent_start')();
  assert.equal((await settle(event)).continue, true);
  const accepted = await settle({ ...event, context: { contextMessages: [{ role: 'assistant', content: [{ type: 'text', text: answer() }] }] } });
  assert.equal(accepted.entries[0].data.status, 'accepted');
  handlers.get('before_agent_start')();
  assert.equal((await settle({ ...event, context: { contextMessages: [{ role: 'assistant', content: [] }] } })).continue, true);
  await handlers.get('session_shutdown')();
});

test('final validation also rejects fabricated refs nested under facts', () => {
  const parsed = JSON.parse(answer(['sabc:d1']));
  parsed.facts = { requested_object_ref: 'sabc:d99' };
  assert.equal(validatePiFinalAnswer(JSON.stringify(parsed), new Set(['sabc:d1'])).valid, false);
  parsed.facts.requested_object_ref = 'sabc:d1';
  assert.equal(validatePiFinalAnswer(JSON.stringify(parsed), new Set(['sabc:d1'])).valid, true);
  parsed.facts = { status: 'error', error: { state_ref: 'sabc:d99' } };
  assert.equal(validatePiFinalAnswer(JSON.stringify(parsed), new Set(['sabc:d1'])).valid, false);
});

test('final search completeness and absence cannot bypass the current session evidence ledger', () => {
  const evidence = new AgentEvidence();
  evidence.record({ operation: 'search', query: 'x' }, { status: 'ok', has_more: true, next_cursor: 'page',
    total_hits: 2, searches: [{ results: [{ ref: 'sabc:d1' }] }] });
  const positive = { outcome: 'located', answer: 'All hits', evidence_refs: ['sabc:d1'], missing_evidence: [], facts: { pagination_complete: true } };
  assert.equal(validatePiFinalAnswer(JSON.stringify(positive), evidence).valid, false);
  evidence.record({ cursor: 'page' }, { status: 'ok', has_more: false, total_hits: 2 });
  assert.equal(validatePiFinalAnswer(JSON.stringify(positive), evidence).valid, true);
  const absent = { ...positive, outcome: 'not_found', facts: {} };
  assert.equal(validatePiFinalAnswer(JSON.stringify(absent), evidence).valid, false);
  evidence.record({ operation: 'search', query: 'missing' }, { status: 'ok', has_more: false, total_hits: 0 });
  assert.equal(validatePiFinalAnswer(JSON.stringify(absent), evidence).valid, true);
});

test('actual extension hooks block undeclared intent before ASCET access and require it in the final answer', async () => {
  const handlers = new Map<string, any>();
  createAscetExtension({ toolProfile: 'task' })({ on: (event: string, fn: any) => handlers.set(event, fn), registerTool: () => {} } as any);
  handlers.get('before_agent_start')();
  const toolCall = { toolName: 'ascet_read_bde' };
  assert.equal(handlers.get('tool_call')(toolCall).block, true);
  handlers.get('message_end')({ message: { role: 'assistant', content: [{ type: 'text', text: JSON.stringify({ intent }) }] } });
  assert.equal(handlers.get('tool_call')(toolCall), undefined);
  const settle = handlers.get('agent_before_settle');
  const event = (text: string) => ({ outcome: 'completed', context: { contextMessages: [{ role: 'assistant', content: [{ type: 'text', text }] }] } });
  const bad = JSON.parse(answer()); delete bad.intent;
  assert.equal((await settle(event(JSON.stringify(bad)))).continue, true);
  assert.equal((await settle(event(answer()))).entries[0].data.status, 'accepted');
  handlers.get('before_agent_start')();
  assert.equal(handlers.get('tool_call')(toolCall).block, true);
  await handlers.get('session_shutdown')();
});

test('mixed batch model output provides individual continuation calls and omits error/deferred echo refs from citations', () => {
  const model = projectTaskModel({ status: 'partial', task_tool: 'ascet_read_bde', results: [
    { ref: 'sabc:n1', has_more: true, next_cursor: 'one' },
    { ref: 'sabc:n2', has_more: true, next_cursor: 'two' },
    { ref: 'sabc:n3', error: { code: 'SOURCE_CHANGED' } },
    { ref: 'sabc:n4', deferred: true, has_more: true, next_cursor: 'four' },
  ] });
  assert.deepEqual(model.citable_refs, ['sabc:n1', 'sabc:n2']);
  for (const [index, cursor] of [[0, 'one'], [1, 'two'], [3, 'four']] as const)
    assert.deepEqual(model.results[index].continuation_call, { tool: 'ascet_read_bde', arguments: { cursor } });
});
