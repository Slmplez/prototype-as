/** Task profile intent is protocol metadata, even on cases without intent labels. */
export function piEvalAnswerFormat(format: string, profile: string, guards: boolean, expectsIntent: boolean, intentFormat: string): string {
  if (!expectsIntent && !(profile === 'task' && guards)) return format;
  return format.replace('Do not output a separate intent declaration.', '')
    .replace('Only the final answer is JSON.', 'For execute, the pre-tool intent block is separate; the final answer is JSON. For unsupported/clarify, return only the final JSON with intent and no tools.') +
    (format.includes('Also include intent:') ? '' : intentFormat);
}

export function splitPiEvalAnswer(parsed: any, profile: string, expectsIntent: boolean) {
  const { facts = {}, intent, ...base } = parsed ?? {};
  if (!expectsIntent && profile !== 'task' && intent !== undefined) base.intent = intent;
  return { facts, intent, base };
}

export function acceptedTaskSettlements(events: any[], turns: number): boolean {
  for (let turn = 1; turn <= turns; turn++)
    if (events.filter(e => e.turn === turn).at(-1)?.entry?.data?.status !== 'accepted') return false;
  return true;
}
