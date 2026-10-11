import type { AgentSearchResult, AgentMatch, AgentPreview } from '../src/agent-types.js';

export function linesOf(result: AgentSearchResult): ({ line: number } & AgentPreview)[] {
  return (result.snippets ?? []).flatMap(s => s.text.split('\n').map((text, i) => ({ line: s.start_line + i, text,
    ...s.line_previews?.find(p => p.line === s.start_line + i) })));
}
export function matchesOf(result: AgentSearchResult): AgentMatch[] {
  const lines = new Map(linesOf(result).map(l => [l.line, l]));
  return (result.snippets ?? []).flatMap(s => s.matches.map(m => ({ ...lines.get(m.line)!, ...m })));
}
