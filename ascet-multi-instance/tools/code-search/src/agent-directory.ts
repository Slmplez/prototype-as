import { prepareAgentFind } from './agent-find.js';
import { onlyKeys, type ScopeReference } from './agent-validation.js';
import { isRecord } from './validation.js';
import { ToolError } from './patterns.js';
import { decodeResponse } from './protocol.js';
import { filterDocuments } from './filters.js';
import { agentTarget } from './agent-target.js';
import { projectAgentSnapshot } from './agent-projection.js';
import type { Reader, SourceDocument, NativeResponse } from './types.js';
import type { NodeSelector } from './diagram-objects.js';
import type { PageRef } from './object-pages.js';
import type { AgentFindResponse } from './agent-types.js';

export const OBJECT_KINDS = ['element', 'operator', 'control', 'literal', 'comment', 'hierarchy', 'hierarchy_pin', 'conversion', 'unknown'];
export interface DirectoryPlan {
  target: 'objects' | 'states' | 'transitions';
  entries: { doc: SourceDocument; node?: NodeSelector; name?: string; kind?: string; element_type?: string; referenced_component_path?: string }[];
  limit: number; debug: boolean; metadata: Pick<NativeResponse, 'database' | 'ascet_pid' | 'timings'>;
  issues: NonNullable<AgentFindResponse['issues']>;
}
export async function prepareDirectory(input: Record<string, unknown>, resolve: (ref: string) => ScopeReference, reader: Reader, isClosed: () => boolean): Promise<DirectoryPlan> {
  onlyKeys(input, ['operation', 'target', 'component', 'name', 'match', 'case_sensitive', 'in', 'limit', 'database', 'debug']);
  const target = input.target as DirectoryPlan['target'];
  if (input.name !== undefined && (typeof input.name !== 'string' || !input.name || input.name.length > 256 || /[\r\n\0]/.test(input.name))) throw new ToolError('INVALID_REQUEST', 'name must contain 1-256 characters without line breaks');
  const scope = input.in === undefined ? {} : input.in;
  if (!isRecord(scope)) throw new ToolError('INVALID_REQUEST', 'in must be a scope object');
  onlyKeys(scope, ['component', 'diagram', 'visibility', ...(target === 'objects' ? ['object_kind'] : [])]);
  let kinds: string[] | undefined;
  if (Object.hasOwn(scope, 'object_kind')) {
    kinds = Array.isArray(scope.object_kind) ? scope.object_kind : [scope.object_kind];
    if (!kinds?.length || kinds.length > OBJECT_KINDS.length || kinds.some(k => !OBJECT_KINDS.includes(k))) throw new ToolError('INVALID_REQUEST', 'in.object_kind accepts native BDE categories: ' + OBJECT_KINDS.join(', '));
  }
  const { object_kind: _kinds, ...nativeScope } = scope;
  const nativeReader: Reader = target === 'objects' ? reader : { request: r => reader.request({ ...r,
    ...(r.mode !== 'catalog' ? { include_state_topology: true, filters: { ...r.filters, kinds: ['state_entry'] } } : {}) }) };
  const prepared = await prepareAgentFind({ ...Object.fromEntries(['component', 'match', 'case_sensitive', 'limit', 'database', 'debug'].filter(k => Object.hasOwn(input, k)).map(k => [k, input[k]])),
    operation: 'find', target: target === 'objects' ? 'diagrams' : 'members', in: nativeScope }, resolve, nativeReader, isClosed);
  const raw = prepared.execution.nativeResponse!;
  const saved = projectAgentSnapshot(decodeResponse(raw));
  const fold = (s: string) => input.case_sensitive ? s : s.toLowerCase();
  const matches = (s: string, name: unknown) => name === undefined || (input.match === 'exact' ? fold(s) === fold(name as string) : fold(s).includes(fold(name as string)));
  const selectedComponents = saved.components.filter(c => (!prepared.request.filters?.component_oids || prepared.request.filters.component_oids.includes(c.oid)) &&
    (matches(c.path, input.component) || matches(c.path.split(/[\\/]/).at(-1)!, input.component)));
  if ((target === 'objects' ? saved.diagram_scope_version : saved.state_topology_version) !== 1 && selectedComponents.length) throw new ToolError('BRIDGE_UPGRADE_REQUIRED', 'Structural discovery requires the current native bridge');
  const entries: DirectoryPlan['entries'] = [];
  const docs = filterDocuments(saved.documents, prepared.request.filters).filter(d =>
    matches(d.component_path, input.component) || matches(d.component_path.split(/[\\/]/).at(-1)!, input.component));
  if (target === 'objects') {
    for (const doc of docs.filter(d => d.kind === 'diagram')) {
      const graph = saved.diagrams!.find(g => g.component_oid === doc.component_oid && g.source_oid === doc.graphical_location!.specification_source_oid)!;
      for (const node of graph.nodes) if ((!kinds || kinds.includes(node.kind)) && matches(node.name, input.name)) entries.push({ doc,
        node: { scope: node.scope, node_id: node.id }, name: node.name, kind: node.kind, ...(node.element_type ? { element_type: node.element_type } : {}), ...(node.component_path ? { referenced_component_path: node.component_path } : {}) });
    }
  } else for (const doc of docs) if (doc.kind === (target === 'states' ? 'state' : 'transition') &&
      (matches(doc.member_name, input.name) || matches(doc.member_name.split('/').at(-1)!, input.name))) entries.push({ doc });
  return { target, entries, limit: prepared.request.limit ?? 50, debug: prepared.debug,
    metadata: { database: raw.database, ascet_pid: raw.ascet_pid, timings: raw.timings },
    issues: saved.errors.map(e => ({ ...e, code: 'READ_INCOMPLETE' as const })) };
}
export function directoryPage(plan: DirectoryPlan, offset: number, count: number, ref: PageRef, expires: string, cursor: string | null): AgentFindResponse {
  const entries = plan.entries.slice(offset, offset + count);
  return { status: plan.issues.length ? 'partial' : 'ok', target: plan.target, returned_count: entries.length, total_count: plan.entries.length,
    has_more: cursor !== null, next_cursor: cursor, expires_utc: expires,
    results: entries.map(e => e.node ? { ref: ref(e.doc, e.node), kind: e.kind!, name: e.name!, component_path: e.doc.component_path,
      ...(e.doc.component_type ? { component_type: e.doc.component_type } : {}),
      diagram: e.doc.graphical_location!.specification_name, diagram_oid: e.doc.graphical_location!.specification_source_oid, node_id: e.node.node_id,
      ...(e.doc.visibility ? { visibility: e.doc.visibility } : {}), ...(e.node.scope !== 'root' ? { hierarchy: e.node.scope } : {}),
      ...(e.element_type ? { element_type: e.element_type } : {}),
      ...(e.referenced_component_path ? { referenced_component_path: e.referenced_component_path } : {}) } : agentTarget(e.doc, ref(e.doc))),
    ...(plan.issues.length ? { issues: plan.issues } : {}), ...(plan.debug ? { debug: plan.metadata } : {}) };
}
