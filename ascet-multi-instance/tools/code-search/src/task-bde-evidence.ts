import { isRecord } from './validation.js';

interface View {
  ref: string; read_id: string; name: unknown; kind: unknown; hierarchy: unknown;
  depth: unknown; direction: unknown; pins: Set<number>; complete: boolean; pin_count?: number;
}
/** Only inspected subject Pins are admitted; neighboring endpoint Pins never are. */
export class TaskBdeEvidence {
  private readonly views = new Map<string, View>();
  clear(): void { this.views.clear(); }
  record(response: unknown, currentRefs: ReadonlySet<string>): void {
    for (const ref of this.views.keys()) if (!currentRefs.has(ref)) this.views.delete(ref);
    if (!isRecord(response) || response.status === 'error') return;
    const readId = isRecord(response.read_evidence) ? String(response.read_evidence.id ?? '') : '';
    const contents = Array.isArray(response.results) ? response.results : [response];
    for (const content of contents) {
      if (!isRecord(content) || content.error || content.deferred || content.scope !== 'local' || !isRecord(content.object) || !Array.isArray(content.pins)) continue;
      const ref = content.object.ref;
      if (typeof ref !== 'string' || !currentRefs.has(ref)) continue;
      let view = this.views.get(ref);
      if (!view || view.read_id !== readId || view.depth !== content.depth || view.direction !== content.direction) {
        view = { ref, read_id: readId, name: content.object.name, kind: content.object.kind, hierarchy: content.object.hierarchy ?? 'root',
          depth: content.depth, direction: content.direction, pins: new Set(), complete: false,
          pin_count: typeof content.object.pin_count === 'number' ? content.object.pin_count : undefined };
        this.views.set(ref, view);
      }
      for (const pin of content.pins) if (isRecord(pin) && pin.object_ref === ref && typeof pin.id === 'number') view.pins.add(pin.id);
      view.complete ||= content.has_more === false && content.status !== 'partial' &&
        (view.pin_count === undefined || view.pins.size === view.pin_count);
      if (this.views.size > 2048) this.views.delete(this.views.keys().next().value!);
    }
  }
  validate(facts: unknown, cited: unknown, outcome: unknown, currentRefs: ReadonlySet<string>): string[] {
    if (!isRecord(facts) || !Object.hasOwn(facts, 'pin_ids')) return [];
    const errors: string[] = [];
    const refs = new Set(Array.isArray(cited) ? cited.filter((r): r is string => typeof r === 'string') : []);
    let candidates = [...this.views.values()].filter(v => refs.has(v.ref) && currentRefs.has(v.ref));
    if (typeof facts.requested_object_ref === 'string') candidates = candidates.filter(v => v.ref === facts.requested_object_ref);
    else if (typeof facts.name === 'string') candidates = candidates.filter(v => v.name === facts.name);
    if (candidates.length !== 1) return ['facts.pin_ids requires one cited, inspected requested object; supply its requested_object_ref when multiple objects were read'];
    const view = candidates[0];
    for (const key of ['name', 'kind', 'hierarchy', 'depth', 'direction'] as const)
      if (Object.hasOwn(facts, key) && facts[key] !== view[key]) errors.push('facts.' + key + ' disagrees with the cited requested object/read scope');
    if (!Array.isArray(facts.pin_ids) || facts.pin_ids.some(id => typeof id !== 'number' || !view.pins.has(id)) || new Set(facts.pin_ids).size !== facts.pin_ids.length)
      errors.push('facts.pin_ids must contain only distinct Pin IDs inspected on the requested object, never neighbor Pins');
    if (outcome === 'located' && (!view.complete || !Array.isArray(facts.pin_ids) || facts.pin_ids.length !== view.pins.size))
      errors.push('Complete requested-object Pin facts require all original read pages and every inspected subject Pin');
    return errors;
  }
}
