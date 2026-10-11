import { agentTarget } from './agent-target.js';
import type { PageRef } from './object-pages.js';
import type { ReadResponse, SourceDocument } from './types.js';
import type { AgentReadResponse, AgentCodeTarget } from './agent-types.js';

export interface StateReadPlan {
  read: ReadResponse; documents: SourceDocument[]; originalRef: string; debug: boolean;
  records: { type: 'code_slots' | 'incoming' | 'outgoing'; doc: SourceDocument }[];
}
export function prepareStateRead(read: ReadResponse, documents: SourceDocument[], originalRef: string, debug: boolean): StateReadPlan {
  const object = read.document.state_object!;
  const records: StateReadPlan['records'] = [];
  for (const doc of documents) {
    if (!doc.state_object && doc.member_id === object.identity) records.push({ type: 'code_slots', doc });
    if (object.kind === 'state' && doc.state_object?.kind === 'transition') {
      if (doc.state_object.end === object.identity) records.push({ type: 'incoming', doc });
      if (doc.state_object.start === object.identity) records.push({ type: 'outgoing', doc });
    }
  }
  return { read, documents, originalRef, debug, records };
}
export function statePage(plan: StateReadPlan, offset: number, count: number, ref: PageRef, expires: string, cursor: string | null): AgentReadResponse {
  const doc = plan.read.document, object = doc.state_object!;
  const endpoint = (id: string | null | undefined) => {
    const saved = plan.documents.find(d => d.state_object?.identity === id);
    return saved ? agentTarget(saved, ref(saved)) : null;
  };
  const selected: { code_slots: AgentCodeTarget[]; incoming?: AgentCodeTarget[]; outgoing?: AgentCodeTarget[] } = {
    code_slots: [], ...(object.kind === 'state' ? { incoming: [], outgoing: [] } : {}) };
  for (const r of plan.records.slice(offset, offset + count)) selected[r.type]!.push(agentTarget(r.doc, ref(r.doc)));
  const issues = plan.read.errors.map(e => ({ ...e, code: 'READ_INCOMPLETE' as const }));
  if (object.kind === 'state') for (const related of plan.documents) {
    if (related.state_object?.kind === 'transition' && related.state_object.endpoint_issues?.some(issue => issue.startsWith('START_') || issue.startsWith('END_'))) {
      issues.push({ code: 'READ_INCOMPLETE', message: 'Direct Transition directory may be incomplete: ' + related.member_name + ' has unresolved endpoints.',
        component_oid: doc.component_oid, component_path: doc.component_path, stage: 'State incoming/outgoing' });
    }
  }
  for (const issue of object.endpoint_issues ?? []) issues.push({ code: 'READ_INCOMPLETE', message: issue, component_oid: doc.component_oid,
    component_path: doc.component_path, stage: 'Transition endpoints/priority' });
  return { status: issues.length || !plan.read.complete ? 'partial' : 'ok', ...agentTarget(doc, plan.originalRef), native_type: object.native_type,
    ...(object.kind === 'state' ? { state_kind: object.state_kind, initial: object.initial, history: object.history } : {
      start_state: endpoint(object.start), end_state: endpoint(object.end), priority: object.priority ?? null }),
    ...selected, has_more: cursor !== null, next_cursor: cursor, expires_utc: expires,
    ...(issues.length ? { issues } : {}), ...(plan.debug ? { debug: { database: plan.read.database, ascet_pid: plan.read.ascet_pid, timings: plan.read.timings } } : {}) };
}
