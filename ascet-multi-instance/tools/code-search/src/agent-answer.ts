import { AgentEvidence } from './agent-evidence.js';
import { isRecord } from './validation.js';
import type { AgentSearchRequest } from './agent-types.js';

export interface AgentAnswer {
  outcome: 'located' | 'partial' | 'not_found' | 'unsupported';
  answer: string;
  evidence_refs: string[];
  missing_evidence: string[];
}
export interface AgentAnswerRequirements {
  read_refs?: readonly string[];
  complete_code_refs?: readonly string[];
  complete_text_read?: boolean;
  scoped_text_read?: boolean;
  text_component?: string;
  all_search_pages?: boolean;
  complete_search?: AgentSearchRequest;
  multiline_regex_match?: boolean;
}
export interface AgentAnswerValidation { valid: boolean; errors: string[]; answer: AgentAnswer | null }
export interface AgentAnswerAttempt { text: string; validation: AgentAnswerValidation }
export interface AgentAnswerRepairOptions { max_retries?: number; signal?: AbortSignal }
export interface AgentAnswerCompletion { status: 'accepted' | 'rejected'; answer: AgentAnswer | null; attempts: AgentAnswerAttempt[] }

/** Validate the caller's structured answer without rewriting prose, refs or fences. */
export function validateAgentAnswer(text: string, evidence: ReadonlySet<string> | AgentEvidence,
  requirements: AgentAnswerRequirements = {}): AgentAnswerValidation {
  const errors: string[] = [];
  let parsed: unknown;
  try { parsed = JSON.parse(text); }
  catch { return { valid: false, errors: ['Return exactly one JSON object without prose or Markdown fences'], answer: null }; }
  if (!isRecord(parsed)) return { valid: false, errors: ['Answer must be a JSON object'], answer: null };
  for (const key of Object.keys(parsed)) if (!['outcome', 'answer', 'evidence_refs', 'missing_evidence'].includes(key)) errors.push('Unsupported answer field: ' + key.slice(0, 64));
  if (!['located', 'partial', 'not_found', 'unsupported'].includes(String(parsed.outcome))) errors.push('outcome must be located, partial, not_found or unsupported');
  if (typeof parsed.answer !== 'string' || !parsed.answer.trim()) errors.push('answer must be a nonempty string');
  for (const key of ['evidence_refs', 'missing_evidence']) {
    if (!Array.isArray(parsed[key]) || parsed[key].some(v => typeof v !== 'string' || !v.trim())) errors.push(key + ' must be an array of nonempty strings');
  }
  const refs = evidence instanceof AgentEvidence ? evidence.refs() : evidence;
  const cited = Array.isArray(parsed.evidence_refs) ? parsed.evidence_refs.filter((ref): ref is string => typeof ref === 'string') : [];
  for (const ref of cited) if (!refs.has(ref)) errors.push('evidence_refs contains a ref not returned or no longer current: ' + ref.slice(0, 128) + '; cursors are not evidence refs');
  if (parsed.outcome === 'located' && cited.length === 0) errors.push('located requires at least one actual evidence ref');
  if (['partial', 'unsupported'].includes(String(parsed.outcome)) && Array.isArray(parsed.missing_evidence) && parsed.missing_evidence.length === 0) {
    errors.push(parsed.outcome + ' requires an explicit missing_evidence entry');
  }
  if (evidence instanceof AgentEvidence) {
    if (parsed.outcome === 'not_found' && !evidence.hasCompleteZeroResult) errors.push('not_found requires an ok, complete zero-result find/search; partial coverage cannot prove absence');
    const reads = cited.map(ref => evidence.get(ref)).filter(item => item !== undefined);
    // Retrieval preconditions apply to positive answers; partial/unsupported can report the gap.
    if (parsed.outcome === 'located') {
      for (const ref of requirements.read_refs ?? []) if (!evidence.get(ref)?.read || !cited.includes(ref)) errors.push('Read and cite the required source ref: ' + ref);
      for (const ref of requirements.complete_code_refs ?? []) if (!evidence.get(ref)?.complete_source || !cited.includes(ref)) errors.push('Read all original source pages and cite: ' + ref);
      if (requirements.complete_text_read && !reads.some(r => r.complete_text)) errors.push('Read and cite a complete saved text member before explaining its implementation');
      if (requirements.scoped_text_read && !reads.some(r => r.complete_text && r.scoped)) errors.push('Find/search a text member in an explicit Component scope, then read and cite that returned member; a scoped graphical Diagram does not scope other Components');
      if (requirements.text_component) {
        const owner = evidence.get(requirements.text_component)?.component_path ?? requirements.text_component;
        if (!reads.some(r => r.complete_text && r.component_path === owner)) errors.push('Read and cite a complete text member owned by Component: ' + owner);
      }
      if (requirements.all_search_pages && !evidence.allSearchPagesRead) {
        errors.push('Consume each outstanding combined search cursor until has_more:false; this exhausts every independent query, with no separate per-query continuation. ' +
          'A fresh equivalent query with the same predicates/scope may replace an older query. Pending cursor selectors (not evidence refs): ' +
          JSON.stringify(evidence.pendingSearchCursors().slice(0, 5)));
      }
      if (requirements.complete_search && !evidence.hasCompleteSearch(requirements.complete_search as unknown as Record<string, unknown>)) {
        errors.push('Consume the required search batch until root has_more:false, or replace it with a fresh query using the same matching arguments and scope. ' +
          'Required ascet_code_search arguments (delivery fields may differ): ' + JSON.stringify(requirements.complete_search) + '. ' +
          'Pending cursor selectors for that required query (not evidence refs): ' +
          JSON.stringify(evidence.pendingSearchCursors(requirements.complete_search as unknown as Record<string, unknown>).slice(0, 5)));
      }
      if (requirements.multiline_regex_match && (!evidence.hasMultilineRegexMatch || !reads.some(r => r.complete_text && r.multiline_regex_match))) {
        errors.push('Execute a regex search with an actual match range spanning saved lines, then fully read and cite that matched text member');
      }
    }
  } else if (Object.keys(requirements).length) errors.push('Retrieval requirements require an AgentEvidence ledger');
  return { valid: errors.length === 0, errors, answer: errors.length ? null : parsed as unknown as AgentAnswer };
}

/** The caller supplies its model; corrections are bounded and every raw answer is retained. */
export async function completeAgentAnswer(text: string, evidence: AgentEvidence | ReadonlySet<string>,
  repair: (feedback: string, attempt: AgentAnswerAttempt) => Promise<string>,
  requirements: AgentAnswerRequirements = {}, options: AgentAnswerRepairOptions = {}): Promise<AgentAnswerCompletion> {
  const retries = options.max_retries ?? 2;
  if (!Number.isInteger(retries) || retries < 0 || retries > 3) throw new Error('max_retries must be an integer from 0 to 3');
  const attempts: AgentAnswerAttempt[] = [];
  for (let i = 0; i <= retries; i++) {
    options.signal?.throwIfAborted();
    const validation = validateAgentAnswer(text, evidence, requirements);
    const attempt = { text, validation }; attempts.push(attempt);
    if (validation.valid) return { status: 'accepted', answer: validation.answer, attempts };
    if (i === retries) break;
    text = await repair('Your final answer was rejected by the caller. Correct these errors:\n' + validation.errors.join('\n') +
      '\nReturn exactly one JSON object with outcome, answer, evidence_refs and missing_evidence. ' +
      'Use only actual source refs, never cursors. Read missing supported evidence if necessary; otherwise report partial/unsupported with the gap. ' +
      'Preserve saved facts, remove unsupported runtime assertions, and do not infer extra paging after has_more:false.', attempt);
  }
  return { status: 'rejected', answer: null, attempts };
}
