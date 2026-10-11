import test from 'node:test';
import assert from 'node:assert/strict';
import { collectReturnedRefs, validateAgentAnswer } from '../scripts/agent-answer.js';
import { AgentEvidence } from '../src/agent-evidence.js';
import { completeAgentAnswer } from '../src/agent-answer.js';

test('Agent final-answer validation distinguishes format and evidence errors from search results', () => {
  const response = { status: 'ok', ref: 's1:d1', object: { ref: 's1:n1', diagram_ref: 's1:d1' }, next_cursor: 'opaque', code: 'saved text' };
  const seen = collectReturnedRefs(response);
  assert.deepEqual([...seen], ['s1:d1', 's1:n1']);
  const answer = { outcome: 'located', answer: 'Saved facts only', evidence_refs: ['s1:n1'], missing_evidence: [] };
  assert.equal(validateAgentAnswer(JSON.stringify(answer), seen).valid, true);
  for (const text of ['Prose\n' + JSON.stringify(answer), '```json\n' + JSON.stringify(answer) + '\n```', '[]',
    JSON.stringify({ ...answer, outcome: 'success' }), JSON.stringify({ ...answer, evidence_refs: ['invented'] }),
    JSON.stringify({ ...answer, missing_evidence: 'none' })]) {
    assert.equal(validateAgentAnswer(text, seen).valid, false);
  }
  assert.equal(response.status, 'ok');
});

const positive = (refs = ['source']) => JSON.stringify({ outcome: 'located', answer: 'Saved facts', evidence_refs: refs, missing_evidence: [] });
function evidence(scoped = false) {
  const e = new AgentEvidence();
  e.record({ operation: 'find', ...(scoped ? { component: 'Class' } : {}) }, { status: 'ok', has_more: false,
    results: [{ ref: 'source', kind: 'method', component_path: 'Library/Class', variant: 'ASDL' }] });
  return e;
}
test('complete Method requirements reject snippets and limited ranges, then accept original full reads', () => {
  const e = evidence(true), requirements = { complete_text_read: true, scoped_text_read: true, complete_code_refs: ['source'], read_refs: ['source'], text_component: 'Library/Class' };
  assert.equal(validateAgentAnswer(positive(), e, requirements).valid, false);
  e.record({ operation: 'read', ref: 'source', lines: { start: 1, end: 1 } }, { status: 'ok', ref: 'source', code: 'x=1;' });
  assert.equal(validateAgentAnswer(positive(), e, requirements).valid, false);
  e.record({ operation: 'read', ref: 'source' }, { status: 'ok', ref: 'source', code: 'x=1;' });
  assert.equal(validateAgentAnswer(positive(), e, requirements).valid, true);
  assert.equal(validateAgentAnswer(positive(), e, { text_component: 'Other/Class' }).valid, false);
});
test('scope cannot transfer from graphical evidence to unrelated text', () => {
  const e = evidence();
  e.record({ operation: 'find', component: 'Other' }, { status: 'ok', results: [{ ref: 'graph', kind: 'diagram', component_path: 'Other/Class' }] });
  e.record({ operation: 'read', ref: 'source' }, { status: 'ok', ref: 'source', code: 'x=1;' });
  assert.equal(validateAgentAnswer(positive(['source', 'graph']), e, { scoped_text_read: true }).valid, false);
});
test('a multiline regex must be verified by the same cited full text member', () => {
  const e = evidence();
  e.record({ operation: 'search' }, { status: 'ok', has_more: false, searches: [{ mode: 'regex', results: [{ ref: 'matched',
    kind: 'method', component_path: 'Library/Other', variant: 'ASDL', snippets: [{ matches: [{ ranges: [{ start_line: 1, end_line: 2 }] }] }]
  }] }] });
  e.record({ operation: 'read', ref: 'source' }, { status: 'ok', ref: 'source', code: 'unrelated' });
  assert.equal(validateAgentAnswer(positive(['source', 'matched']), e, { multiline_regex_match: true }).valid, false);
  e.record({ operation: 'read', ref: 'matched' }, { status: 'ok', ref: 'matched', code: 'if (x) {\n} else {}' });
  assert.equal(validateAgentAnswer(positive(['matched']), e, { multiline_regex_match: true }).valid, true);
});
test('unknown cursors, extra fields, empty positives and unqualified absence are rejected', () => {
  const e = evidence();
  for (const text of [positive(['cursor']), positive([]), positive().replace('Saved facts', ''),
    positive().replace('"outcome":', '"extra":true,"outcome":'),
    JSON.stringify({ outcome: 'not_found', answer: 'No hits', evidence_refs: [], missing_evidence: [] })]) assert.equal(validateAgentAnswer(text, e).valid, false);
  e.record({ operation: 'search' }, { status: 'ok', total_hits: 0, has_more: false });
  assert.equal(validateAgentAnswer(JSON.stringify({ outcome: 'not_found', answer: 'No hits in saved search', evidence_refs: [], missing_evidence: [] }), e).valid, true);
});
test('partial/unsupported must state a missing capability instead of silently bypassing requirements', () => {
  const e = evidence();
  for (const outcome of ['partial', 'unsupported']) {
    const a = { outcome, answer: 'Not enough evidence', evidence_refs: [], missing_evidence: [] as string[] };
    assert.equal(validateAgentAnswer(JSON.stringify(a), e).valid, false);
    a.missing_evidence = ['Complete implementation not read'];
    assert.equal(validateAgentAnswer(JSON.stringify(a), e, { complete_text_read: true }).valid, true);
  }
});
test('a required search batch does not force exhaustive paging of unrelated exploration', () => {
  const e = evidence(true);
  const required = { query: ['a', 'b'], mode: 'identifier' as const };
  e.record({ operation: 'search', ...required, limit: 1 }, { status: 'ok', has_more: true, next_cursor: 'required' });
  e.record({ operation: 'search', query: 'other' }, { status: 'ok', has_more: true, next_cursor: 'unrelated' });
  e.record({ operation: 'read', ref: 'source' }, { status: 'ok', ref: 'source', code: 'a = b;' });
  const pending = validateAgentAnswer(positive(), e, { complete_search: required });
  assert.equal(pending.valid, false); assert.match(pending.errors.join('\n'), /required/);
  assert.doesNotMatch(pending.errors.join('\n'), /unrelated/);
  e.record({ cursor: 'required' }, { status: 'ok', has_more: false });
  assert.equal(validateAgentAnswer(positive(), e, { complete_search: required, scoped_text_read: true }).valid, true);
  assert.equal(validateAgentAnswer(positive(), e, { all_search_pages: true }).valid, false);
});
test('bounded answer repair retains raw failures and requires corrected current refs', async () => {
  const e = evidence(); const bad = '```json\n' + positive() + '\n```'; let calls = 0;
  const completed = await completeAgentAnswer(bad, e, async feedback => {
    assert.match(feedback, /JSON object/); calls++; return calls === 1 ? positive(['cursor']) : positive();
  });
  assert.equal(completed.status, 'accepted'); assert.equal(calls, 2); assert.equal(completed.attempts.length, 3);
  assert.equal(completed.attempts[0].text, bad);
  assert.equal(completed.attempts[1].validation.valid, false);
  assert.equal((await completeAgentAnswer(bad, e, async () => bad, {}, { max_retries: 0 })).status, 'rejected');
  calls = 0;
  assert.equal((await completeAgentAnswer(bad, e, async () => { calls++; return bad; })).status, 'rejected');
  assert.equal(calls, 2);
});
test('required-search feedback supplies executable matching arguments when only a different mode was exhausted', async () => {
  const e = evidence();
  const required = { query: ['AxAct', 'VxAct', 'FxDriver'], mode: 'identifier' as const };
  e.record({ operation: 'search', ...required, mode: 'text' }, { status: 'ok', has_more: false });
  const completion = await completeAgentAnswer(positive(), e, async feedback => {
    assert.ok(feedback.includes(JSON.stringify(required)));
    assert.match(feedback, /Pending cursor selectors[^\n]+\[\]/);
    assert.equal(e.hasCompleteSearch(required), false);
    e.record({ operation: 'search', ...required }, { status: 'ok', has_more: false });
    return positive();
  }, { complete_search: required });
  assert.equal(completion.status, 'accepted');
  assert.equal(completion.attempts.length, 2);
  assert.equal(completion.attempts[0].validation.valid, false);
});
test('answer repair supports cancellation before and during correction and rejects invalid retry budgets', async () => {
  const controller = new AbortController(); controller.abort();
  await assert.rejects(completeAgentAnswer('invalid', evidence(), async () => positive(), {}, { signal: controller.signal }));
  const mid = new AbortController();
  await assert.rejects(completeAgentAnswer('invalid', evidence(), async () => { mid.abort(); return positive(); }, {}, { signal: mid.signal }));
  for (const n of [-1, 4, 0.5]) await assert.rejects(completeAgentAnswer('invalid', evidence(), async () => positive(), {}, { max_retries: n }));
});
