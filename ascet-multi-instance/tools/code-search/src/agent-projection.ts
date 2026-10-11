import { ToolError } from './patterns.js';
import type { Snapshot } from './types.js';

/** Agent graph results require generic BDE facts; never reuse legacy inferred ESDL. */
export function projectAgentSnapshot(snapshot: Snapshot): Snapshot {
  if (snapshot.graphical_bodies?.length) throw new ToolError('BRIDGE_UPGRADE_REQUIRED', 'Rebuild CodeSearchBridge for Diagram model search');
  const types = new Map(snapshot.components.map(c => [c.oid, c.type]));
  return { ...snapshot, documents: snapshot.documents.map(d => {
    const type = types.get(d.component_oid);
    return type ? { ...d, component_type: type } : d;
  }) };
}
