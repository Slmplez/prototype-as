import type { AgentSearchResult, AgentSnippet } from './agent-types.js';
import type { PageDocument, SourcePreview } from './paging-types.js';

/** Merge hit previews and surrounding lines without serializing any line twice. */
export function agentSnippets(doc: PageDocument): Pick<AgentSearchResult, 'snippets' | 'omitted_lines'> {
  const lines = new Map<number, SourcePreview>((doc.context?.lines ?? []).map(l => [l.line, l.preview]));
  let restored = 0;
  for (const match of doc.matches ?? []) {
    if (!lines.has(match.line)) restored++;
    // The hit-centered preview is authoritative for very long matched lines.
    lines.set(match.line, match.preview);
  }
  const snippets: AgentSnippet[] = [];
  const matches = new Map((doc.matches ?? []).map(m => [m.line, m]));
  let lastLine = -1;
  for (const [line, preview] of [...lines].sort((a, b) => a[0] - b[0])) {
    let snippet = snippets.at(-1);
    if (!snippet || line !== lastLine + 1) {
      snippet = { start_line: line, text: preview.text, matches: [] }; snippets.push(snippet);
    } else snippet.text += '\n' + preview.text;
    const match = matches.get(line);
    if (match) snippet.matches.push({ line, columns: match.columns, ...(match.ranges ? { ranges: match.ranges } : {}) });
    if (preview.truncated_before || preview.truncated_after) {
      (snippet.line_previews ??= []).push({ line, start_column: preview.start_column,
        truncated_before: preview.truncated_before, truncated_after: preview.truncated_after });
    }
    lastLine = line;
  }
  const omitted = Math.max(0, (doc.context?.omitted_lines ?? 0) - restored);
  return { snippets, ...(omitted ? { omitted_lines: omitted } : {}) };
}
