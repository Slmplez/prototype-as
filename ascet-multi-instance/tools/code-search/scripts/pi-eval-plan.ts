import type { Snapshot } from '../src/types.js';
import type { MatrixCase } from './pi-eval-matrix.js';
import type { MatrixRubric } from './pi-eval-matrix.js';
import type { IntentRubric } from './pi-intent-eval.js';

export interface PiEvalCase extends MatrixCase {
  requirement: string; max_tool_calls?: number; timeout_ms?: number; repetition?: number;
  intent?: IntentRubric; response_fields?: string; intent_fixture?: MatrixRubric;
  facts_schema?: Record<string, unknown>;
  turns?: { requirement: string; response_fields?: string }[];
}
export function normalizePiEvalCases(plan: any): PiEvalCase[] {
  return plan.cases.map((task: PiEvalCase) => {
    const base = task.score_as ? [...plan.cases, ...(plan.grading_cases ?? [])].find((c: PiEvalCase) => c.id === task.score_as) : undefined;
    if (task.score_as && (!base || base.score_as || base.id === task.id)) throw new Error('Invalid grading alias: ' + task.id);
    return { ...task, group: task.group ?? plan.case_groups?.[task.id], rubric: task.rubric ?? base?.rubric };
  });
}

/** One sample per saved Diagram; prefer structural nodes and real connections. */
export function corpusPiEvalCases(source: Snapshot): PiEvalCase[] {
  return [...(source.diagrams ?? [])].sort((a, b) => (a.component_oid + '/' + a.source_oid).localeCompare(b.component_oid + '/' + b.source_oid)).map(g => {
    const path = source.components.find(c => c.oid === g.component_oid)!.path;
    const base = { id: 'corpus-' + g.component_oid + '-' + g.source_oid, group: 'corpus' };
    if (!g.nodes.length) return { ...base,
      requirement: `Locate the saved Diagram ${g.name} (OID ${g.source_oid}) owned by ${path}. Read its saved graph, distinguish an empty Diagram from a missing one, and report only saved facts. facts: diagram, nodes_count, connections_count.`,
      rubric: { type: 'diagram', scope: { component: path }, diagram: g.name, diagram_oid: g.source_oid, profile: 'empty' } };
    const degree = (n: typeof g.nodes[number]) => g.connections.filter(e => e.scope === n.scope && g.pins.some(p => p.scope === n.scope && p.node_id === n.id && (p.id === e.from_pin || p.id === e.to_pin))).length;
    const priority = (kind: string) => ({ hierarchy: 5, control: 4, operator: 3, element: 2, literal: 1 }[kind] ?? 0);
    const selected = [...g.nodes].sort((a, b) => priority(b.kind) - priority(a.kind) || degree(b) - degree(a) || a.id - b.id)[0];
    return { ...base,
      requirement: `Locate Diagram ${g.name} (OID ${g.source_oid}) in ${path}. Discover native ${selected.kind} object node_id ${selected.id}, name ${JSON.stringify(selected.name)}, hierarchy ${selected.scope}. Read that exact placement at depth 1, direction both. Preserve all target Pins, real local connections and Hierarchy boundaries; do not expand referenced Class implementations or infer scheduling. facts: name, kind, hierarchy, pin_ids, connections [{from_pin_id,to_pin_id}].`,
      rubric: { type: 'local', scope: { component: path }, diagram: g.name, diagram_oid: g.source_oid, node: selected.name, node_id: selected.id,
        object_kind: selected.kind, hierarchy: selected.scope, depth: 1, direction: 'both' } };
  });
}
