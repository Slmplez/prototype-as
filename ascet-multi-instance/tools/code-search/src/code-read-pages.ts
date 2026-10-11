import { ToolError } from './patterns.js';
import type { AgentReadResponse, AgentReadRequest } from './agent-types.js';

export interface CodeReadPlan {
  read: AgentReadResponse;
  field?: 'code' | 'diagram_text';
  starts: number[];
  start: number;
  end: number;
  ranged: boolean;
  selectedLines: { start: number; end: number };
}

export function prepareCodeRead(read: AgentReadResponse, lines?: AgentReadRequest['lines']): CodeReadPlan {
  const field = read.code !== undefined ? 'code' : read.diagram_text !== undefined ? 'diagram_text' : undefined;
  if (lines && !field) throw new ToolError('INVALID_REQUEST', 'lines requires saved text or diagram_text, not a Method binding');
  const text = field ? read[field]! : '', starts = [0];
  for (const match of text.matchAll(/\r\n|\r|\n/g)) starts.push(match.index! + match[0].length);
  if (lines && lines.start > starts.length) throw new ToolError('LINE_RANGE_NOT_FOUND', 'lines.start exceeds the saved content line count');
  return { read, field, starts, start: lines ? starts[lines.start - 1] : 0,
    end: lines && lines.end < starts.length ? starts[lines.end] : text.length, ranged: lines !== undefined,
    selectedLines: { start: lines?.start ?? 1, end: Math.min(lines?.end ?? starts.length, starts.length) } };
}

function position(plan: CodeReadPlan, offset: number) {
  let lo = 0, hi = plan.starts.length - 1;
  while (lo < hi) { const mid = Math.ceil((lo + hi) / 2); if (plan.starts[mid] <= offset) lo = mid; else hi = mid - 1; }
  const text = plan.field ? plan.read[plan.field]! : '';
  return { line: lo + 1, column: [...text.slice(plan.starts[lo], offset)].length + 1 };
}

// Never split a Unicode surrogate pair or a CRLF separator between pages.
function safeEnd(text: string, end: number): number {
  if (end > 0 && end < text.length && ((text.charCodeAt(end - 1) >= 0xd800 && text.charCodeAt(end - 1) <= 0xdbff &&
    text.charCodeAt(end) >= 0xdc00 && text.charCodeAt(end) <= 0xdfff) || (text[end - 1] === '\r' && text[end] === '\n'))) return end - 1;
  return end;
}

export function codeReadPage(plan: CodeReadPlan, offset: number, budget: number, expires: string,
  cursor: (next: number) => string, fits = (value: unknown) => Buffer.byteLength(JSON.stringify(value)) <= budget): AgentReadResponse {
  const wholeRead = plan.field ? { ...plan.read, line_coverage: { selected: plan.selectedLines,
    page: plan.selectedLines, complete_lines: plan.selectedLines } } : plan.read;
  if (!plan.ranged && offset === 0 && fits(wholeRead)) return structuredClone(wholeRead);
  if (!plan.field) throw new ToolError('PAGE_TOO_LARGE', 'Read metadata exceeds page budget; read fewer refs or disable debug/include_graph');
  const text = plan.read[plan.field], start = position(plan, offset);
  const build = (end: number): AgentReadResponse => {
    const stop = position(plan, end);
    const pageEnd = end === plan.end ? plan.selectedLines.end : stop.column === 1 ? stop.line - 1 : stop.line;
    const completeStart = offset === plan.starts[start.line - 1] ? start.line : start.line + 1;
    const completeEnd = end === plan.end ? plan.selectedLines.end : stop.line - 1;
    return { ...plan.read, [plan.field!]: text!.slice(offset, end),
      line_coverage: { selected: plan.selectedLines, page: { start: start.line, end: pageEnd },
        complete_lines: completeStart <= completeEnd ? { start: completeStart, end: completeEnd } : null },
      code_range: { start_line: start.line, start_column: start.column, end_line: stop.line, end_column: stop.column },
      has_more: end < plan.end, next_cursor: end < plan.end ? cursor(end) : null, expires_utc: expires };
  };
  const whole = build(plan.end);
  if (fits(whole)) return structuredClone(whole);
  if (offset === plan.end) throw new ToolError('PAGE_TOO_LARGE', 'Read metadata exceeds page budget; read fewer refs or disable debug/include_graph');
  const minimum = offset + ((text!.codePointAt(offset)! > 0xffff || text!.slice(offset, offset + 2) === '\r\n') ? 2 : 1);
  let lo = minimum, hi = plan.end, chosenEnd = lo, chosen = build(lo);
  if (!fits(chosen)) throw new ToolError('PAGE_TOO_LARGE', 'Read metadata or raw graph exceeds page budget; read fewer refs, disable debug/include_graph or use Diagram object refs');
  while (lo < hi) {
    const mid = Math.ceil((lo + hi) / 2), end = safeEnd(text!, mid), candidate = build(end);
    if (fits(candidate)) { lo = mid; chosen = candidate; chosenEnd = end; } else hi = mid - 1;
  }
  // Publish the selected continuation last; speculative fit probes must not
  // leave a callback pointing past the bytes actually delivered on this page.
  return structuredClone(build(chosenEnd));
}
