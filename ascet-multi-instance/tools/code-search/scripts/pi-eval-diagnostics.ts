import type { EvalAttempt } from './pi-eval-metrics.js';

type DiagnosticCall = EvalAttempt['calls'][number] & { response?: { code?: string; message?: string } };
const record = (value: unknown): value is Record<string, any> => Boolean(value && typeof value === 'object' && !Array.isArray(value));

export function eventFileStem(attempt: Pick<EvalAttempt, 'id' | 'repetition'> & { execution_id?: string }, repetitions = 1): string {
  const expected = repetitions > 1 ? attempt.id + '-r' + (attempt.repetition ?? 1) : attempt.id;
  if (attempt.execution_id !== undefined && attempt.execution_id !== expected) throw new Error('Recorded execution ID does not match case/repetition');
  return expected;
}

/** Original stream text is associated by recorded execution completion order, never by a guessed query. */
export function argumentStreams(events: any[], expectedCalls: number) {
  const active = new Map<number, { id: string; raw: string }>(), raw = new Map<string, string>();
  const executionIDs: string[] = [];
  for (const event of events) {
    const delta = event.assistantMessageEvent;
    if (event.type === 'message_update' && delta?.type === 'toolcall_start' && typeof delta.id === 'string')
      active.set(delta.contentIndex, { id: delta.id, raw: '' });
    else if (event.type === 'message_update' && delta?.type === 'toolcall_delta' && typeof delta.delta === 'string') {
      const entry = active.get(delta.contentIndex);
      if (entry) entry.raw += delta.delta;
    } else if (event.type === 'message_update' && delta?.type === 'toolcall_end') {
      const entry = active.get(delta.contentIndex);
      if (entry && entry.id === delta.toolCall?.id) raw.set(entry.id, entry.raw);
      active.delete(delta.contentIndex);
    }
    if (event.type === 'tool_execution_end' && typeof event.toolCallId === 'string') executionIDs.push(event.toolCallId);
  }
  const complete = executionIDs.length === expectedCalls && new Set(executionIDs).size === expectedCalls;
  return { complete, calls: complete ? executionIDs.map(id => ({ tool_call_id: id, raw_arguments: raw.get(id) })) : [] };
}

export function diagnoseError(call: DiagnosticCall, raw?: string): string {
  if (raw?.trim()) {
    try { if (!record(JSON.parse(raw))) return 'json_root_type'; }
    catch { return 'json_syntax'; }
  }
  const args = record(call.args) ? call.args : {}, scope = record(args.in) ? args.in : {};
  const message = call.response?.message ?? '';
  if (typeof args.ref === 'string') {
    try { if (Array.isArray(JSON.parse(args.ref))) return 'encoded_ref_array'; } catch { /* Normal opaque ref. */ }
  }
  if (message.includes('in.component requires')) return 'component_scope_identity';
  if (message.includes('Diagram source OID requires')) return 'diagram_scope_identity';
  if (args.object_kind !== undefined && scope.object_kind === undefined) return 'filter_field_placement';
  if (typeof args.match === 'string' && !['exact', 'contains'].includes(args.match)) return 'invalid_match_enum';
  if (['PAGE_TOO_LARGE', 'OUTPUT_BUDGET_EXCEEDED'].includes(call.response?.code ?? '')) return 'output_budget';
  if (!Object.keys(args).length) return 'empty_arguments_unresolved';
  return 'other_tool_error';
}

/** Diagnostic grouping does not repair requests, change scores or relabel intentional errors. */
export function diagnoseAttempt(attempt: EvalAttempt, events: any[] = []) {
  const stream = argumentStreams(events, attempt.calls.length);
  const errors = attempt.calls.flatMap((call, index) => {
    const expected = attempt.expected_error_call_indices ? attempt.expected_error_call_indices.includes(index) : call.expected_error;
    if (!call.is_error || expected) return [];
    const recorded = call as DiagnosticCall, raw = stream.calls[index]?.raw_arguments;
    return [{ call_index: index, tool: call.tool, code: recorded.response?.code,
      category: diagnoseError(recorded, raw), args: call.args, message: recorded.response?.message,
      ...(stream.complete ? stream.calls[index] : {}) }];
  });
  return { id: attempt.id, repetition: attempt.repetition ?? 1, group: attempt.group, strict_passed: attempt.scoring.passed,
    event_inventory_matches: stream.complete, tool_calls: attempt.calls.length,
    failed_checks: attempt.scoring.checks.filter(check => !check.passed).map(check => check.name), errors };
}
