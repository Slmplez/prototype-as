import { ToolError } from './bridge.js';

export function normalizeCase(spec: any) {
  const stages = spec.stages ?? [{ name: 'legacy', durationSeconds: spec.stepSeconds * spec.chunks, sampleSeconds: spec.stepSeconds }];
  const estimated = stages.reduce((n: number, s: any) => n + Math.ceil(s.durationSeconds / s.sampleSeconds) + 2, 0);
  if (estimated > 10000) throw new ToolError('CASE_TOO_LARGE', 'At most 10000 samples; increase sampleSeconds.');
  return { stages, estimated };
}
export function matches(value: any, condition: any): boolean {
  if (condition.equals !== undefined) return String(value.value) === String(condition.equals);
  return typeof value.numericValue === 'number' && value.numericValue >= condition.min && value.numericValue <= condition.max;
}
export function evaluateAssertions(checks: any[], samples: any[], start: number, terminal: boolean) {
  return checks.map(check => {
    const kind = check.kind ?? 'final';
    const points = samples.filter(s => s.timeSeconds - start >= (check.fromSeconds ?? 0) - 1e-9 && s.timeSeconds - start <= (check.toSeconds ?? Infinity) + 1e-9)
      .map(s => ({ time: s.timeSeconds - start, value: s.values.find((v: any) => v.signalRef === check.signalRef) }));
    const condition = check.condition ?? { min: check.min, max: check.max };
    let passed = false, evidence: any = {};
    if (kind === 'final') { const p = points.at(-1); passed = !!p?.value && matches(p.value, condition); evidence = { actual: p?.value?.value ?? null, atSeconds: p?.time ?? null }; }
    if (kind === 'range') { passed = points.length > 0 && points.every(p => p.value && matches(p.value, condition)); evidence = { checkedSamples: points.length }; }
    if (kind === 'eventually') { const p = points.find(p => p.value && matches(p.value, condition)); passed = !!p; evidence = { firstMatchSeconds: p?.time ?? null }; }
    if (kind === 'hold') {
      let began: number | undefined, longest = 0;
      for (const p of points) { if (p.value && matches(p.value, condition)) { began ??= p.time; longest = Math.max(longest, p.time - began); } else began = undefined; }
      passed = longest + 1e-9 >= check.durationSeconds && points.length > 0;
      evidence = { longestObservedSeconds: longest };
    }
    if (kind === 'transition') {
      let next = 0, unexpected: any; const observed: any[] = [];
      for (const p of points) {
        if (!p.value || next === check.states.length) continue;
        if (matches(p.value, { equals: check.states[next] })) observed.push({ state: check.states[next++], atSeconds: p.time });
        else if (next && !check.allowIntermediate && !matches(p.value, { equals: check.states[next - 1] })) { unexpected = { state: p.value.value, atSeconds: p.time }; break; }
      }
      passed = next === check.states.length && !unexpected; evidence = { observed, unexpected };
    }
    // A partial run cannot establish the requested temporal scope.
    const covered = terminal && (check.toSeconds === undefined || (samples.at(-1)?.timeSeconds - start >= check.toSeconds - 1e-9));
    return { ...check, kind, passed: passed && covered, ...evidence, scope: 'sampled_observations', windowCovered: covered };
  });
}
