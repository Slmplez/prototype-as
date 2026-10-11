import { validateAgentAnswer, type AgentAnswerValidation } from './agent-answer.js';
import { isRecord } from './validation.js';
import { AgentEvidence } from './agent-evidence.js';

/**
 * Validate the final JSON emitted by a Pi task against refs returned by the
 * current tool session. `facts` and the optional evaluation-only `intent`
 * object are separated from the legacy answer contract. Refs nested in facts
 * and explicit search-completeness claims are also checked at settlement.
 */
export function validatePiFinalAnswer(text: string, evidence: ReadonlySet<string> | AgentEvidence): AgentAnswerValidation {
  let parsed: any;
  try { parsed = JSON.parse(text); }
  catch { return { valid: false, errors: ['Return exactly one JSON object without prose or Markdown fences'], answer: null }; }
  if (!parsed || typeof parsed !== 'object' || Array.isArray(parsed))
    return { valid: false, errors: ['Answer must be a JSON object'], answer: null };
  const { facts, intent: _intent, ...base } = parsed;
  const returnedRefs = evidence instanceof AgentEvidence ? evidence.refs() : evidence;
  const result = validateAgentAnswer(JSON.stringify(base), evidence,
    isRecord(facts) && facts.pagination_complete === true ? { all_search_pages: true } : {});
  if (!isRecord(facts)) result.errors.push('facts must be a JSON object');
  const checkRefs = (value: unknown): void => {
    if (Array.isArray(value)) { value.forEach(checkRefs); return; }
    if (!isRecord(value)) return;
    for (const [key, child] of Object.entries(value)) {
      const refs = (key === 'ref' || key.endsWith('_ref')) && typeof child === 'string' ? [child]
        : key.endsWith('_refs') && Array.isArray(child) ? child.filter((x): x is string => typeof x === 'string') : [];
      for (const ref of refs) if (!returnedRefs.has(ref))
        result.errors.push('facts contains a ref not returned or no longer current: ' + ref.slice(0, 128));
      checkRefs(child);
    }
  };
  checkRefs(facts);
  result.valid = result.errors.length === 0;
  if (!result.valid) result.answer = null;
  return result;
}

