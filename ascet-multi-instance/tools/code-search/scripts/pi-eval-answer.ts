/** Task profile intent is protocol metadata, even on cases without intent labels. */
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
