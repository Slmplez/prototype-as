import type { SourceDocument } from './types.js';
import type { AgentCodeTarget } from './agent-types.js';

type SourceTarget = Pick<SourceDocument, 'component_path' | 'component_type' | 'kind' | 'member_name' | 'variant' | 'implementation_oid' |
  'representation' | 'location' | 'binding' | 'graphical_location' | 'diagram_methods' | 'matched_members' | 'visibility' | 'state_object' | 'diagram_type'> &
  Partial<Pick<SourceDocument, 'language'>>;

/** Expose ASCET object names while retaining the exact native identity of State/Transition results. */
export function agentTarget(source: SourceTarget, ref: string): AgentCodeTarget {
  const target: AgentCodeTarget = { ref, component_path: source.component_path, kind: source.kind, variant: source.variant };
  if (source.component_type) target.component_type = source.component_type;
  if (source.language) target.language = source.language;
  if (source.kind === 'diagram') target.diagram_type = source.diagram_type ?? 'bde';
  if (source.visibility) target.visibility = source.visibility;
  if (source.state_object) {
    target.native_type = source.state_object.native_type;
    if (source.state_object.state_kind) target.state_kind = source.state_object.state_kind;
  }
  if (source.implementation_oid) target.implementation = source.implementation_oid;
  if (source.kind === 'method' || source.kind === 'graphical_method') target.method = source.member_name;
  if (source.kind === 'process') target.process = source.member_name;
  if (source.representation) target.representation = source.representation;
  if (source.location) {
    const location = source.location;
    target.diagram = location.diagram_name; target.diagram_oid = location.diagram_source_oid;
    target.state_hierarchy_ids = [...location.hierarchy_state_ids];
    if (location.element_type === 'state') { target.state = source.member_name; target.state_id = location.element_id; }
    else { target.transition = source.member_name; target.transition_id = location.element_id; }
  }
  if (source.graphical_location) {
    target.diagram = source.graphical_location.specification_name;
    target.diagram_oid = source.graphical_location.specification_source_oid;
  }
  if (source.diagram_methods) target.diagram_methods = source.diagram_methods.map(m => ({ name: m.name, kind: m.kind }));
  if (source.matched_members) target.matched_members = source.matched_members.map(m => ({ name: m.name, kind: m.kind }));
  if (source.binding) target.method_binding = { method: source.binding.method_name,
    method_alias: source.binding.method_alias, component_oid: source.binding.component_oid };
  return target;
}
