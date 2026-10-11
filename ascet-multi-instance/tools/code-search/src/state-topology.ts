import { sha256, identityJson, identity } from './protocol.js';
import type { StateObject, Snapshot, StateDiagram, SourceDocument } from './types.js';

function number(value: string): number {
  if (!/^\d+$/.test(value) || !Number.isSafeInteger(Number(value))) throw new Error('Invalid state topology identifier');
  return Number(value);
}
const parent = (id: string) => id.slice(0, id.lastIndexOf('/'));
export function stateDocumentID(component: string, member: string, kind: string): string {
  return sha256(identityJson([kind, component, '', 'ASDL', member]));
}

/** Connector ownership follows the saved pin lookup used by the native graph loader. */
export function decodeStateTopology(rows: string[][], diagrams: StateDiagram[], components: Snapshot['components'], sources: SourceDocument[]) {
  const grouped = new Map<string, string[][]>();
  for (const row of rows) {
    const key = JSON.stringify([row[1], row[2]]), group = grouped.get(key) ?? [];
    group.push(row); grouped.set(key, group);
  }
  const objects: StateObject[] = [], documents: SourceDocument[] = [];
  for (const [key, records] of grouped) {
    const [component, diagramID] = JSON.parse(key) as string[];
    const diagram = diagrams.find(d => d.component_oid === component && d.diagram_source_oid === diagramID);
    const owner = components.find(c => c.oid === component);
    if (!diagram || !owner) throw new Error('State topology has no owning Diagram/Component');
    const byID = new Map<string, StateObject>(), pins = new Map<number, Set<string>>(), transitions = new Map<string, string[]>();
    let count: number | undefined, ended = false;
    for (const row of records) {
      if (ended) throw new Error('State topology records after end marker');
      const id = row[3];
      if (row[0] === '#SM_END') {
        count = number(id); ended = true;
        if (row.slice(4).some(Boolean)) throw new Error('Invalid state topology end marker');
        continue;
      }
      const segments = id.split('/');
      if (segments.shift() !== diagramID || !segments.length || segments.slice(0, -1).some(s => !/^s\d+$/.test(s)) ||
          !/^[st]\d+$/.test(segments.at(-1)!)) throw new Error('Invalid state topology location');
      segments.forEach(s => number(s.slice(1)));
      if (row[0] === '#SM_OBJECT') {
        if (byID.has(id) || !['state', 'hierarchy', 'junction', 'connector', 'transition'].includes(row[5]) ||
            !row[6] || row.slice(8).some(Boolean) || (row[5] === 'transition') !== id.split('/').at(-1)!.startsWith('t')) {
          throw new Error('Invalid or duplicate state topology object');
        }
        const flags = row[7].trim().split(/\s+/).filter(Boolean);
        if (flags.some(f => f !== 'initial' && f !== 'history') || (row[5] === 'transition' && flags.length)) throw new Error('Invalid state topology flags');
        byID.set(id, { component_oid: component, diagram_source_oid: diagramID, identity: id, name: row[4],
          native_type: row[6], kind: row[5] === 'transition' ? 'transition' : 'state',
          ...(row[5] !== 'transition' ? { state_kind: row[5] as StateObject['state_kind'], initial: flags.includes('initial'), history: flags.includes('history') } : {}) });
      } else if (row[0] === '#SM_PIN') {
        const pin = number(row[4]), set = pins.get(pin) ?? new Set<string>();
        if (set.has(id) || row.slice(5).some(Boolean)) throw new Error('Invalid or duplicate state topology Pin');
        set.add(id); pins.set(pin, set);
      } else if (row[0] === '#SM_TRANSITION') {
        if (transitions.has(id) || row[9]) throw new Error('Invalid or duplicate Transition metadata');
        row.slice(4, 8).filter(Boolean).forEach(number); transitions.set(id, row);
      } else throw new Error('Unknown state topology record');
    }
    if (count === undefined || count !== byID.size) throw new Error('Incomplete state topology');
    for (const set of pins.values()) for (const id of set) if (byID.get(id)?.kind !== 'state') throw new Error('State Pin without owner');
    for (const obj of byID.values()) {
      const ancestors = obj.identity.split('/').slice(1, -1);
      let path = diagramID;
      for (const segment of ancestors) {
        path += '/' + segment;
        if (byID.get(path)?.state_kind !== 'hierarchy') throw new Error('State topology has no ancestor Hierarchy State');
      }
      if (obj.kind !== 'transition') continue;
      const row = transitions.get(obj.identity);
      if (!row) throw new Error('Transition topology missing endpoints');
      transitions.delete(obj.identity);
      const issues: string[] = [];
      const endpoint = (block: string, pin: string, side: string): string | null => {
        const candidates = [...(pin ? pins.get(number(pin)) ?? [] : [])];
        const local = candidates.filter(id => parent(id) === parent(obj.identity));
        const matches = local.length ? local : candidates;
        if (matches.length !== 1) { issues.push(side + (matches.length ? '_PIN_AMBIGUOUS' : '_PIN_UNRESOLVED')); return null; }
        const target = matches[0];
        if (block && Number(target.split('/').at(-1)!.slice(1)) !== number(block)) { issues.push(side + '_BLOCK_PIN_MISMATCH'); return null; }
        return target;
      };
      obj.start = endpoint(row[4], row[6], 'START'); obj.end = endpoint(row[5], row[7], 'END');
      obj.priority = /^\d+$/.test(row[8]) && Number.isSafeInteger(Number(row[8])) ? Number(row[8]) : null;
      if (obj.priority === null) issues.push('PRIORITY_UNAVAILABLE');
      if (issues.length) obj.endpoint_issues = issues;
    }
    if (transitions.size) throw new Error('Transition metadata without object');
    const savedSlots = sources.filter(d => d.component_oid === component && d.location?.diagram_source_oid === diagramID);
    // Hash both relations and code-slot identities so metadata-only edits invalidate old refs.
    const revision = sha256(JSON.stringify([records.filter(r => r[0] !== '#SM_END').map(r => [r[0], ...r.slice(3)]).sort((a, b) => JSON.stringify(a).localeCompare(JSON.stringify(b))),
      savedSlots.map(d => [d.document_id, d.source_sha256, d.binding]).sort((a, b) => String(a[0]).localeCompare(String(b[0])))]));
    for (const obj of byID.values()) {
      const segments = obj.identity.split('/').slice(1);
      const doc: SourceDocument = { kind: obj.kind, component_oid: component, component_path: owner.path,
        implementation_oid: '', variant: 'ASDL', member_id: obj.identity, member_name: obj.name, language: 'state_model', text: '', state_object: obj,
        location: { diagram_source_oid: diagramID, diagram_name: diagram.diagram_name, hierarchy_state_ids: segments.slice(0, -1).map(s => number(s.slice(1))),
          element_type: obj.kind, element_id: number(segments.at(-1)!.slice(1)), slot: '' },
        ...(diagram.visibility ? { visibility: diagram.visibility } : {}), document_id: '', source_sha256: '' };
      doc.document_id = sha256(identityJson(identity(doc)));
      doc.source_sha256 = sha256(JSON.stringify([revision, obj, owner.path, diagram]));
      objects.push(obj); documents.push(doc);
    }
  }
  return { objects, documents };
}
