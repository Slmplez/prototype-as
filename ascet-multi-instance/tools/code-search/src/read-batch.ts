import { performance } from 'node:perf_hooks';
import { decodeResponse } from './protocol.js';
import { selectReadDocument } from './read.js';
import { ToolError } from './patterns.js';
import { validateRead } from './validation.js';
import type { Reader, ReadRequest, ReadResponse, Snapshot, GraphicalBody, DiagramBody } from './types.js';

export type ReadOutcome = { response: ReadResponse; graph?: GraphicalBody; diagram?: DiagramBody; state_documents?: Snapshot['documents'] } | { error: ToolError };

/** One live read/decode per component within this operation only. No retained source cache. */
export async function readDocuments(requests: ReadRequest[], reader: Reader, expectedPid: number, isClosed: () => boolean,
  project?: (snapshot: Snapshot) => Snapshot, hints?: { kind: string; diagram_oid?: string }[]): Promise<ReadOutcome[]> {
  const groups = new Map<string, { request: ReadRequest; index: number }[]>();
  requests.forEach((value, index) => {
    const request = validateRead(value);
    const key = JSON.stringify([request.expected_database.toLowerCase(), request.target.component_oid]);
    const group = groups.get(key) ?? [];
    group.push({ request, index }); groups.set(key, group);
  });
  const results: ReadOutcome[] = new Array(requests.length);
  const guard = () => { if (isClosed()) throw new ToolError('SESSION_CLOSED', 'Agent session closed during the read'); };
  for (const group of groups.values()) {
    guard();
    const request = group[0].request, started = performance.now();
    // Transport, database and process failures abort the operation; do not keep issuing live calls.
    const selected = hints ? group.map(item => hints[item.index]) : undefined;
    const optimized = selected?.every(h => h && (!h.diagram_oid || /^[0-9a-z]{29}$/i.test(h.diagram_oid)));
    const topology = selected?.some(h => h.kind === 'state' || h.kind === 'transition');
    const raw = await reader.request({ mode: 'read_component', needle: request.target.component_oid, expected_database: request.expected_database,
      ...(topology ? { include_state_topology: true } : {}),
      ...(optimized ? { read_diagram_ids: [...new Set(selected!.flatMap(h => h.diagram_oid ? [request.target.component_oid + '/' + h.diagram_oid] : []))],
        filters: { kinds: [...new Set(selected!.map(h => h.kind))] } } : {}) });
    const received = performance.now(); guard();
    if (raw.database.toLowerCase() !== request.expected_database.toLowerCase()) throw new ToolError('DATABASE_CHANGED', 'Database changed; search again in the intended database');
    if (raw.ascet_pid !== expectedPid) throw new ToolError('ASCET_RESTARTED', 'ASCET process changed; search again');
    const saved = decodeResponse(raw), snapshot = project?.(saved) ?? saved;
    if (optimized && selected!.some(h => h.diagram_oid) && saved.diagram_scope_version !== 1) throw new ToolError('BRIDGE_UPGRADE_REQUIRED', 'Selective Diagram read requires the current native bridge');
    if (topology && saved.state_topology_version !== 1) throw new ToolError('BRIDGE_UPGRADE_REQUIRED', 'State topology read requires the current native bridge');
    for (const { request: member, index } of group) {
      try {
        const diagramID = hints?.[index]?.diagram_oid;
        const itemSnapshot = hints ? { ...snapshot, errors: snapshot.errors.filter(e => !e.diagram_oid || e.diagram_oid === diagramID) } : snapshot;
        const response = selectReadDocument(member, raw, itemSnapshot, started, received);
        const graph = snapshot.graphical_bodies?.find(g => g.component_oid === response.document.component_oid &&
          g.specification_source_oid === response.document.graphical_location?.specification_source_oid);
        const diagram = snapshot.diagrams?.find(g => g.component_oid === response.document.component_oid && g.source_oid === response.document.graphical_location?.specification_source_oid);
        results[index] = { response, ...(graph ? { graph } : {}), ...(diagram ? { diagram } : {}),
          ...(response.document.state_object ? { state_documents: snapshot.documents.filter(d => d.component_oid === response.document.component_oid && d.location?.diagram_source_oid === response.document.location!.diagram_source_oid) } : {}) };
      }
      catch (error) {
        if (!(error instanceof ToolError) || !['DOCUMENT_NOT_FOUND', 'READ_INCOMPLETE', 'SOURCE_CHANGED'].includes(error.code)) throw error;
        results[index] = { error };
      }
    }
  }
  return results;
}
