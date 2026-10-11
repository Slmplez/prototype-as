import { isRecord } from './validation.js';
import type { ToolProfile } from './tool-contracts.js';
import { projectTaskResponse, projectTaskModel } from './task-tools.js';

/** Shared with CLI pagination: rendering never reads ASCET or invents model code. */
export function renderAgentResult(value: unknown, profile: ToolProfile = process.env.ASCET_PI_TOOL_PROFILE === 'task' ? 'task' : process.env.ASCET_PI_TOOL_PROFILE === 'optimized' ? 'optimized' : 'baseline'): string {
  if (profile === 'task') {
    // Preserve every source byte and avoid showing legacy input hints on the task interface.
    return JSON.stringify(projectTaskModel(projectTaskResponse(value)), null, 2);
  }
  if (!isRecord(value)) return JSON.stringify(value);
  const lines: string[] = ['status: ' + String(value.status)];
  const json = (name: string, data: unknown) => { if (data !== undefined) lines.push(name + ': ' + JSON.stringify(data)); };
  const issues = (item: Record<string, unknown>) => {
    if (Array.isArray(item.issues)) for (const issue of item.issues) json('issue', issue);
  };
  const target = (item: Record<string, unknown>) => {
    const sourceIdentity = profile === 'optimized' && typeof item.component_path === 'string' &&
      typeof item.kind === 'string' && typeof item.variant === 'string' && item.kind !== 'component';
    if (sourceIdentity) {
      // Absent implementation/member fields are the source projection's empty native identities.
      json('identity', { component_path: item.component_path, kind: item.kind,
        member: item.method ?? item.process ?? item.state ?? item.transition ?? item.diagram ?? '',
        variant: item.variant, implementation: item.implementation ?? '' });
    }
    for (const field of ['component_path', 'component_type', 'method', 'process', 'diagram', 'diagram_oid', 'diagram_type', 'visibility', 'state',
      'transition', 'state_id', 'transition_id', 'state_hierarchy_ids', 'name', 'node_id', 'hierarchy',
      'referenced_component_path', 'element_type', 'kind', 'variant', 'implementation', 'ref', 'scope', 'representation']) {
      if (item[field] !== undefined) {
        if (sourceIdentity && ['component_path', 'kind', 'variant', 'implementation'].includes(field)) continue;
        if (field === 'variant') json(field, item[field]);
        else lines.push(field + ': ' + String(item[field]));
      }
    }
    if (item.node_id !== undefined && item.hierarchy === undefined) lines.push('hierarchy: root');
    for (const field of ['diagram_methods', 'matched_members', 'method_binding']) json(field, item[field]);
    if (profile === 'optimized' && Array.isArray(item.diagram_methods)) {
      json('member_names', item.diagram_methods.filter(isRecord).map(member => member.name).filter(name => typeof name === 'string'));
    }
    if (profile === 'optimized' && item.representation === 'graphical_model') lines.push('code_format: bde (saved Diagram listing, not stored ESDL assignments)');
    if (profile === 'optimized' && sourceIdentity && typeof item.ref === 'string' && value.target === 'members' && item.kind !== 'diagram') {
      json('search_scope', { component: item.ref, member: item.method ?? item.process ?? item.state ?? item.transition ?? '',
        kind: item.kind, variant: item.variant, implementation: item.implementation ?? '' });
    }
    if (profile === 'optimized' && item.kind === 'diagram' && typeof item.ref === 'string' && !item.object) {
      json('diagram_scope', { component: item.ref, diagram: item.ref });
      json(item.diagram_type === 'state_machine' ? 'state_lookup' : 'object_lookup', {
        target: item.diagram_type === 'state_machine' ? 'states' : 'objects', in: { component: item.ref, diagram: item.ref } });
    }
  };
  const page = (item: Record<string, unknown>, tool: string) => {
    if (profile === 'optimized') json('has_more', item.has_more);
    if (item.has_more === true) {
      lines.push('More content; continue ' + tool + ' with ' + JSON.stringify({ cursor: item.next_cursor }));
    }
    if (item.limited_by) lines.push('limited_by: ' + String(item.limited_by));
  };
  const content = (item: Record<string, unknown>) => {
    target(item);
    if (profile === 'optimized' && (item.kind === 'component' || value.target === 'components')) {
      lines.push('ref_usage: in.component (Component scope only; find members before read)');
      if (typeof item.ref === 'string') {
        json('owner_scope', { component: item.ref });
        json('member_lookup', { target: 'members', in: { component: item.ref } });
        json('diagram_lookup', { target: 'diagrams', in: { component: item.ref } });
      }
    }
    json('line_count', item.line_count);
    if (item.deferred === true) lines.push('deferred: true (content starts on next_cursor; no source facts on this page)');
    if (item.error !== undefined) json('error', item.error);
    if (Array.isArray(item.snippets)) for (const snippet of item.snippets) {
      if (!isRecord(snippet) || typeof snippet.text !== 'string') continue;
      json('matches', snippet.matches);
      snippet.text.split(/\r\n|\r|\n/u).forEach((text, i) => lines.push(String(Number(snippet.start_line) + i) + ' | ' + text));
      json('line_previews', snippet.line_previews);
    }
    if (item.omitted_lines) lines.push('omitted_lines: ' + item.omitted_lines + '; read the ref for saved content');
    if (Array.isArray(item.hits)) for (const hit of item.hits) json('BDE object', hit);
    for (const field of ['code', 'diagram_text']) if (typeof item[field] === 'string') {
      lines.push(field + ':');
      lines.push(item[field]);
      json('code_range', item.code_range);
      json('line_coverage', item.line_coverage);
      if (profile === 'optimized' && item[field] && isRecord(item.code_range)) {
        const range = item.code_range;
        json('included_lines', { start: range.start_line, end: range.end_column === 1 && Number(range.end_line) > Number(range.start_line)
          ? Number(range.end_line) - 1 : range.end_line });
      }
    }
    for (const field of ['native_type', 'state_kind', 'initial', 'history', 'priority', 'start_state', 'end_state',
      'code_slots', 'incoming', 'outgoing', 'object', 'depth', 'direction', 'nodes', 'pins', 'connections', 'boundaries', 'graph']) {
      if (profile === 'optimized' && field === 'pins' && Array.isArray(item.pins) && isRecord(item.object) && typeof item.object.ref === 'string') {
        const ownerRef = item.object.ref;
        json('target_pins', item.pins.filter(pin => isRecord(pin) && pin.object_ref === ownerRef));
        json('endpoint_pins', item.pins.filter(pin => !isRecord(pin) || pin.object_ref !== ownerRef));
        lines.push('pin_coverage: target_pins belong to object.ref; endpoint_pins expose neighbor connection endpoints. Read a neighbor ref at depth:0 for its complete Pins. Consume all pages for complete target Pins.');
        continue;
      }
      json(field, field === 'object' && isRecord(item[field]) ? { ...item[field], hierarchy: item[field].hierarchy ?? 'root' } : item[field]);
    }
    issues(item); page(item, 'ascet_code_read');
  };
  if (typeof value.code === 'string' && value.status === 'error') {
    json('code', value.code); json('message', value.message);
    if (profile === 'optimized') {
      const guidance: Record<string, string> = {
        LINE_RANGE_NOT_FOUND: 'Obtain line_count from a bounded first-line read; do not probe arbitrarily large line indices.',
        REF_EXPIRED: 'Find the original Component/member/placement again in this session, preserving its scope; copy the newly returned ref.',
        PAGE_TOO_LARGE: 'Read fewer refs or bounded lines. For a whole graph, find and read the relevant local object instead.',
        CURSOR_TOOL_MISMATCH: 'Use only {cursor} on the tool that returned this cursor; the cursor is not an evidence ref.',
        INVALID_REGEX: 'Use ECMAScript Unicode regex; escape literal braces and parentheses. JSON must escape regex backslashes. After a successful search, read its returned ref when source verification is required.',
        INVALID_REQUEST: 'Use an argument object and real ref arrays. Component names belong in find.component; in.component uses the exact returned ref or OID. Put code filters inside in; keep all requested scopes when correcting the input.',
      };
      if (guidance[String(value.code)]) lines.push('recovery: ' + guidance[String(value.code)]);
    }
  } else if (Array.isArray(value.searches)) {
    lines.push('hits: ' + value.returned_hits + ' returned / ' + value.total_hits + ' total');
    for (const query of value.searches) if (isRecord(query)) {
      lines.push('\nquery[' + query.index + ']' + (query.id !== undefined ? ' id=' + query.id : '') + ': ' + JSON.stringify(query.query) + ' (' + query.mode + ')');
      lines.push('hits: ' + query.returned_hits + ' returned / ' + query.total_hits + ' total');
      if (Array.isArray(query.results)) for (const item of query.results) if (isRecord(item)) { lines.push(''); content(item); }
    }
    issues(value); page(value, 'ascet_code_search');
  } else if (Array.isArray(value.results)) {
    const batch = value.requested_count !== undefined;
    lines.push(batch ? 'read: ' + value.returned_count + ' returned / ' + value.requested_count + ' requested'
      : 'find ' + value.target + ': ' + value.returned_count + ' returned / ' + value.total_count + ' total');
    for (const item of value.results) if (isRecord(item)) { lines.push(''); content(item); }
    issues(value); if (!batch) page(value, 'ascet_code_find');
  } else content(value);
  return lines.join('\n');
}
