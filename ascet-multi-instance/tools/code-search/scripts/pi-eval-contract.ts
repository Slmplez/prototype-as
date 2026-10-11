import type { MatrixCheck } from './pi-eval-matrix.js';
import { intentRecognitionChecks } from './pi-intent-eval.js';

export const primaryCheck = (check: MatrixCheck) => (!intentRecognitionChecks.has(check.name) ||
  ['intent_clarification_question', 'intent_no_resolved_claim'].includes(check.name)) && check.name !== 'final_intent_schema';
export function scoreDimensions(checks: MatrixCheck[]) {
  const selection = checks.filter(c => c.name.startsWith('intent_') && primaryCheck(c));
  const formatNames = ['strict_json_format', 'facts_object', 'answer_and_refs'];
  const format = checks.filter(c => formatNames.includes(c.name));
  const evidence = checks.filter(c => primaryCheck(c) && !c.name.startsWith('intent_') && !formatNames.includes(c.name));
  return {
    tool_behavior_passed: selection.length ? selection.every(c => c.passed) : null,
    evidence_and_facts_passed: evidence.length ? evidence.every(c => c.passed) : null,
    answer_contract_passed: format.length ? format.every(c => c.passed) : null,
  };
}

/** Freeze these requirements before model attempts; never add an answer field afterwards. */
export function validatePiEvalContract(plan: any): string[] {
  const errors: string[] = [];
  if (plan.grading_version < 2) return errors;
  if (plan.intent_recording === 'final_only' && /Before your first tool call|ONLY this intent field/iu.test(plan.answer_format))
    errors.push('final_only conflicts with a pre-tool intent declaration');
  for (const c of plan.cases) {
    const requested = c.requirement + ' ' + (c.response_fields ?? '');
    if (c.rubric?.type === 'local') {
      for (const field of ['name', 'kind', 'hierarchy', 'pin_ids', 'connections']) {
        if (!new RegExp('\\b' + field + '\\b', 'u').test(requested)) errors.push(c.id + ': rubric requires undeclared facts.' + field);
      }
    }
  }
  return errors;
}
