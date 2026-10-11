import test from 'node:test';
import assert from 'node:assert/strict';
import { labelCallAccuracy, summarizeCallAccuracy } from '../scripts/pi-call-accuracy.js';
import { projectTaskResponse } from '../src/task-tools.js';
const source: any = { components: [{ oid: 'owner', path: 'Lib\\Owner' }, { oid: 'other', path: 'Lib\\Other' }] };
const scope = { component: 'Owner', kind: 'method', variant: 'ASDL' };
test('per-call scope diagnostics distinguish accepted but unscoped search from scoped calls', () => {
  const calls = [{ tool: 'ascet_code_find', request: { operation: 'find' }, response: { results: [{ ref: 's1:d1', component_path: 'Lib\\Owner', component_type: 'SGClass' }] } },
    { tool: 'ascet_search_code', request: { operation: 'search', query: [{ text: 'x' }], in: { component: ['s1:d1'], kind: ['method'], variant: ['ASDL'] } }, response: {} },
    { tool: 'ascet_code_search', request: { operation: 'search', query: 'x' }, response: {} }];
  const labels = labelCallAccuracy({ intent: { search_scope: scope } }, calls, source);
  assert.deepEqual(labels.map(l => l.scope_correct), [null, true, false]);
  const summary = summarizeCallAccuracy([{ call_accuracy: labels }]);
  assert.equal(summary.parameter_acceptance.rate, 1); assert.equal(summary.explicit_scope_compliance.rate, .5);
});
test('whole-graph budget failure is not counted as a parameter rejection', () => {
  const labels = labelCallAccuracy({}, [{ tool: 'ascet_read_bde', request: { operation: 'read' }, is_error: true,
    response: { code: 'PAGE_TOO_LARGE' } }, { tool: 'ascet_read_code', request: { operation: 'read' }, is_error: true,
    response: { code: 'WRONG_REF_TYPE' } }], source);
  assert.equal(labels[0].parameter_check, 'unclassified_error'); assert.equal(labels[1].parameter_check, 'rejected');
});
test('state parent structure is valid scope evidence and wrong-owner source remains rejected', () => {
  const task = { intent: { read_scope: { component: 'Owner', kind: 'state_static', member: 'Main/Off', variant: 'ASDL' } } };
  const calls = ['Owner', 'Other'].map(owner => ({ tool: 'ascet_inspect_state', request: { operation: 'read' },
    response: { component_path: 'Lib\\' + owner, kind: 'state', state: 'Main/Off', variant: 'ASDL' } }));
  assert.deepEqual(labelCallAccuracy(task, calls, source).map(l => l.scope_correct), [true, false]);
});
test('unsupported requests label every exploratory call as known unnecessary', () => {
  const labels = labelCallAccuracy({ call_expectations: { no_tools: true } }, [{ tool: 'ascet_find', request: { operation: 'find' }, response: {} }], source);
  assert.equal(labels[0].necessity_correct, false);
});
test('exact task identity and read routing preserve native state and binding facts', () => {
  const value = { ref: 's1:d1', component_path: 'Lib\\Owner', kind: 'state_static', state: 'Main/Off', variant: 'ASDL', code: 'x=1;\r\n' };
  const result = projectTaskResponse(value);
  assert.equal(result.identity.member, 'Main/Off'); assert.equal(result.identity.implementation, ''); assert.equal(result.code, value.code);
  assert.deepEqual(projectTaskResponse(result), result);
  assert.equal(projectTaskResponse({ ...value, kind: 'state_static_binding' }).read_tool, 'ascet_inspect_state');
});

test('Component discovery is preparation for a Diagram catalog; omitted visibility covers both categories', () => {
  const task = { rubric: { type: 'catalog', target: 'diagrams', scope: { component: 'Owner', visibility: ['public', 'private'] } } };
  const calls = [{ tool: 'ascet_find', request: { operation: 'find', target: 'components', name: 'Owner' }, response: {} },
    { tool: 'ascet_find', request: { operation: 'find', target: 'diagrams', in: { component: ['owner'] } }, response: {} }];
  assert.deepEqual(labelCallAccuracy(task, calls, source).map(l => l.scope_correct), [null, true]);
  calls[1].request.in = { component: ['other'] };
  assert.equal(labelCallAccuracy(task, calls, source)[1].scope_correct, false);
});
