import { createRequire } from 'node:module';
import { randomBytes } from 'node:crypto';
import { ToolError } from './patterns.js';
import { isRecord } from './validation.js';

export const TASK_OPERATIONS = {
  ascet_find: 'find', ascet_search_code: 'search', ascet_search_bde: 'search',
  ascet_read_code: 'read', ascet_read_bde: 'read', ascet_inspect_state: 'read',
} as const;
export type TaskToolName = keyof typeof TASK_OPERATIONS;
export const isTaskTool = (name: string): name is TaskToolName => Object.hasOwn(TASK_OPERATIONS, name);
const codeKinds = ['method', 'process', 'header', 'external_c', 'external_h', 'state_entry', 'state_static', 'state_exit',
  'transition_trigger', 'transition_action', 'transition_condition'];
const objectKinds = ['element', 'operator', 'control', 'literal', 'comment', 'hierarchy', 'hierarchy_pin', 'conversion', 'unknown'];
const bindingKinds = codeKinds.filter(k => k.startsWith('state_') || k.startsWith('transition_')).map(k => k + '_binding');
const text = (maxLength = 256, minLength = 1) => ({ type: 'string', minLength, maxLength, not: { pattern: '[\u0000\r\n]' } });
const list = (items: any, maxItems = 32) => ({ type: 'array', minItems: 1, maxItems, items });
const obj = (properties: any, required: string[] = []) => ({ type: 'object', additionalProperties: false, properties, required });
const ref = { ...text(128), pattern: '^s[^:]+:[dn][0-9a-z]+$' };
const selector = obj({ name: text(), path: text(512), ref }, []);
const selected = { ...selector, oneOf: ['name', 'path', 'ref'].map(key => ({ required: [key], maxProperties: 1 })) };
const scopeProperties = {
  components: list(selected, 8), diagrams: list(selected, 8), members: list(text(256, 0)),
  kinds: list({ enum: [...codeKinds, ...bindingKinds, 'diagram'] }), variants: list(text()),
  implementations: list(text(256, 0)), visibility: list({ enum: ['public', 'private'] }, 2),
  object_kinds: list({ enum: ['element', 'operator', 'control', 'literal', 'comment', 'hierarchy', 'hierarchy_pin', 'conversion', 'unknown'] }, 9),
};
Object.assign(scopeProperties.components, { description: 'Owning Class/Module/State Machine only: [{name:"ComponentName"}], [{path:"returned component_path"}] or [{ref:"returned ref"}]. Use name for a known short name; never guess full paths or Public/Private folders. Main is a Diagram, AEB_State_Off is a State, ES1130 is a Variant: none is a Component selector.' });
Object.assign(scopeProperties.diagrams, { description: 'Saved BDE or State Machine Diagram selectors. Resolve Main inside scope.components; returned Diagram refs preserve the exact owner and Diagram. State paths belong in find.name.' });
Object.assign(scopeProperties.members, { description: 'Exact saved Method/Process or full State/Transition path strings. Put this field inside scope, never at the root.' });
Object.assign(scopeProperties.kinds, { description: 'Exact saved source kinds inside scope. Text Method means method; BDE means diagram. Graphical Methods have diagram source kind, so discover their representation first.' });
Object.assign(scopeProperties.variants, { description: 'Exact saved Variant strings inside scope. ESDL source is ASDL. Preserve whitespace; omission includes all Variants, not a chosen implementation.' });
Object.assign(scopeProperties.implementations, { description: 'Exact saved Implementation OIDs, inside scope. Empty string is base; never invent base, null or a displayed name as an OID.' });
Object.assign(scopeProperties.object_kinds, { description: 'Native BDE object categories; only ascet_find target objects. Put object_kinds inside scope, not at the root.' });
const scope = obj(scopeProperties);
const codeScope = { ...obj({ ...Object.fromEntries(Object.entries(scopeProperties).filter(([k]) => k !== 'object_kinds')),
  kinds: { ...scopeProperties.kinds, items: { enum: codeKinds }, description: 'Explicit Method: ["method"]; Static Action: ["state_static"]. Omission includes all text kinds, or State/Transition text kinds inside Diagram scope.' },
  code_ref: { ...ref, description: 'One returned text-code ref. Locks its owning Component, member ID, kind, Variant and Implementation. Use alone in scope; copy returned search_scope.' } }),
  oneOf: [{ required: ['code_ref'], maxProperties: 1 }, { not: { required: ['code_ref'] } }] };
Object.assign(codeScope, { description: 'All code filters belong here, inside scope. Example arguments: {queries:[{text:"speed",mode:"identifier"}],scope:{kinds:["method"],variants:["ASDL"]}}. Never put kinds, members or variants at the request root.' });
Object.assign(scope, { description: 'Every filter is inside scope: components, diagrams, members, kinds, variants, implementations, visibility, object_kinds. No filter fields at the request root.' });
const limit = { type: 'integer', minimum: 1, maximum: 200, default: 50 };
const cursor = { ...text(8192), description: 'Copy the short next_cursor handle unchanged. Send only cursor to this same tool. Never decode or edit it.' };
const query = obj({ text: { type: 'string', minLength: 1, maxLength: 1024, not: { pattern: '\u0000' } },
  mode: { enum: ['text', 'identifier', 'regex'], default: 'text' }, case_sensitive: { type: 'boolean' },
  multiline: { type: 'boolean' }, dotall: { type: 'boolean' } }, ['text']);
const pageSchema = (properties: any, required: string[]) => ({ ...obj({ ...properties, cursor }),
  oneOf: [{ required: ['cursor'], maxProperties: 1 }, { required, not: { required: ['cursor'] } }] });
export const TASK_SCHEMAS: Record<TaskToolName, any> = {
  ascet_find: { ...pageSchema({ target: { enum: ['components', 'members', 'diagrams', 'objects', 'states', 'transitions'] },
    name: { ...text(), description: 'Name of the selected target. For an object or State, put its name here, never in scope.members. Omit to list.' },
    match: { enum: ['exact', 'contains'], default: 'exact' }, scope, limit }, ['target']),
    allOf: [
      { if: { properties: { target: { const: 'objects' } }, required: ['target'] }, then: { properties: {
        scope: { propertyNames: { enum: ['components', 'diagrams', 'visibility', 'object_kinds'] } } } } },
      { if: { properties: { target: { enum: ['states', 'transitions'] } }, required: ['target'] }, then: { properties: {
        scope: { propertyNames: { enum: ['components', 'diagrams', 'visibility'] } } } } },
      { if: { properties: { target: { enum: ['components', 'members', 'diagrams'] } }, required: ['target'] }, then: { properties: {
        scope: { not: { required: ['object_kinds'] } } } } },
      { if: { properties: { target: { const: 'components' } }, required: ['target'] }, then: { properties: {
        scope: { propertyNames: { enum: ['components'] } } } } },
      { if: { properties: { target: { const: 'diagrams' } }, required: ['target'] }, then: { properties: {
        scope: { propertyNames: { enum: ['components', 'diagrams', 'members', 'variants', 'implementations', 'visibility'] } } } } },
    ] },
  ascet_search_code: pageSchema({ queries: list(query, 64), scope: codeScope,
    context: obj({ before: { type: 'integer', minimum: 0, maximum: 100 }, after: { type: 'integer', minimum: 0, maximum: 100 } }), limit }, ['queries']),
  ascet_search_bde: pageSchema({ queries: list(query, 64), scope: obj(Object.fromEntries(Object.entries(scopeProperties).filter(([k]) => !['object_kinds', 'kinds'].includes(k)))), limit }, ['queries']),
  ascet_read_code: pageSchema({ refs: list(ref), lines: obj({ start: { type: 'integer', minimum: 1 }, end: { type: 'integer', minimum: 1 } }, ['start', 'end']),
    if_unchanged: { type: 'boolean', default: false } }, ['refs']),
  ascet_read_bde: pageSchema({ refs: list(ref), depth: { enum: [0, 1, 2], default: 1,
    description: 'Object-local view: 0 = requested object interface only, 1/2 = one/two connection hops. Preserve an explicit user depth. At depth 0, connections and neighbors in that view are empty; do not broaden it to populate those fields.' },
    direction: { enum: ['incoming', 'outgoing', 'both'], default: 'both',
      description: 'Which connections to include, relative to the requested object. outgoing does not change the requested object to the wire destination. Omit depth/direction for whole Diagram refs.' } }, ['refs']),
  ascet_inspect_state: pageSchema({ refs: list(ref) }, ['refs']),
};
const Ajv = createRequire(import.meta.url)('ajv');
const ajv = new Ajv({ strict: false, allErrors: false });
const validators = Object.fromEntries(Object.entries(TASK_SCHEMAS).map(([name, schema]) => [name, ajv.compile(schema)]));
export class TaskToolError extends ToolError {
  constructor(code: string, message: string, readonly field?: string, readonly next_tool?: string,
    readonly next_calls?: { tool: TaskToolName; arguments: Record<string, unknown> }[]) { super(code, message); }
}
/**
 * A cursor is a capability owned by the tool that issued it.  Models sometimes
 * leave the previous request's target/query beside the cursor while recovering
 * from a tool error.  Treat the cursor as authoritative so the call reaches the
 * cursor registry and can produce CURSOR_TOOL_MISMATCH instead of an unrelated
 * JSON-schema error.  Legacy tools remain strict; this helper is task-profile
 * only and never changes a non-cursor request.
 */
export function normalizeTaskInput(_name: TaskToolName, args: unknown): unknown {
  if (!isRecord(args) || typeof args.cursor !== 'string') return args;
  return { cursor: args.cursor };
}
export function validateTaskInput(name: TaskToolName, args: unknown): void {
  const validate = validators[name];
  const normalized = normalizeTaskInput(name, args);
  if (!validate(normalized)) {
    const issue = validate.errors?.[0];
    const nextCalls: { tool: TaskToolName; arguments: Record<string, unknown> }[] = [];
    if (isRecord(args) && typeof args.cursor === 'string') nextCalls.push({ tool: name, arguments: { cursor: args.cursor } });
    else if (isRecord(args) && TASK_OPERATIONS[name] !== 'read') {
      const misplaced = Object.keys(scopeProperties).filter(key => Object.hasOwn(args, key));
      if (misplaced.length && (!args.scope || isRecord(args.scope)) && misplaced.every(key => !Object.hasOwn((args.scope ?? {}) as object, key))) {
        const candidate: any = structuredClone(args); candidate.scope = { ...(candidate.scope ?? {}) };
        for (const key of misplaced) { candidate.scope[key] = candidate[key]; delete candidate[key]; }
        if (validate(candidate)) nextCalls.push({ tool: name, arguments: candidate });
      }
    }
    const hint = name === 'ascet_find' && isRecord(args) && !args.cursor && !args.target
      ? ' target is required: components, members, diagrams, objects, states or transitions; choose the requested object type.' : '';
    throw new TaskToolError('INVALID_REQUEST', `${name}: ${ajv.errorsText(issue ? [issue] : [])}. Use this tool's declared parameters.${hint}`,
      issue?.instancePath || issue?.params?.missingProperty || issue?.params?.additionalProperty, nextCalls.length ? name : undefined,
      nextCalls.length ? nextCalls : undefined);
  }
}
export const TASK_RULES = [
  'Query saved ASCET source/BDE only. For an exclusively unsupported request (runtime values/scheduling, Dataset values, generated code, unsaved edits), immediately return outcome unsupported, intent.decision unsupported, evidence_refs:[] and facts containing only requested capability fields. Do not call find/search/read, including to confirm the symbol exists. For a mixed request, execute only the supported saved-code/BDE part and report the missing part explicitly.',
  'Choose readers by returned read_tool/next_call, not by the owning Component name. All state_entry/state_static/state_exit and transition_trigger/transition_action/transition_condition text refs use ascet_read_code. State/Junction/Transition topology refs and *_binding refs use ascet_inspect_state. Diagram/placed-object refs use ascet_read_bde. Group a mixed ref list by read_tool and batch within each tool; never send Action code refs to inspect_state. Copy next_calls after an error; suggestions were not executed.',
  'outcome located means all requested supported evidence was located and read; partial means required evidence is missing, ambiguous or paged content remains unread. Judge completion against the requested deliverables: a graphical Method needs its saved Diagram, not an invented or nonexistent text body. Do not downgrade a completed Diagram location/shared-Method task just because an additional external use is unverified; describe that caveat in answer. If the caller explicitly asks to verify that use, missing evidence makes the result partial. not_found requires a completed search in the requested scope. Saved assignments and connections do not prove runtime scheduling or a per-cycle execution rate.',
  'Copy every user restriction into scope: owning Component, member, kind, Variant, Implementation, Diagram and visibility. Example: only Class.calc ASDL Method => {components:[{name:"Class"}],members:["calc"],kinds:["method"],variants:["ASDL"]}. A prior find does not scope later searches. Reuse the exact scope; change it only when the user changes the target. Selectors have one of name/path/ref; arrays are OR, fields are AND. When the caller asks for Variant candidates, put the exact saved strings in facts.variants (not a renamed helper field).',
  'Find lists names, representations, language and Variant/Implementation candidates. If the caller explicitly says not to guess an owning Component/Method, ask for that owner before exploratory calls. Otherwise, if a referent is missing, or several candidates remain and the user asks to choose first, ask a direct question and leave the task unresolved (outcome partial when required). A clarification answer must contain a direct question mark (? or？). C candidates have language c; ASDL is ESDL. Preserve Variant strings exactly.',
  'Copy actual ref strings, search_scope and next_call; never change a ref prefix/suffix. Only ref values identify citable objects; read_evidence.id is internal tracking, never a citation. Base Implementation is "". Keep facts associated with the same object ref and read_scope. Consume relevant pages; partial cannot prove absence.',
  'BDE connections are saved facts, not runtime scheduling. Graphical Methods share their Diagram. Method bindings are structural facts, not source bodies. A cursor is pagination control, never evidence: keep cursor/next_cursor out of evidence_refs. evidence_refs contains only actual saved ref strings returned by a tool; for a local BDE page, use its citable_refs whitelist and never derive a ref suffix. The final response is exactly one JSON object with outcome, answer, evidence_refs, missing_evidence and facts; keep only caller-requested fields under facts. Do not add inference, inferred, saved, derived or other helper objects; put caveats in answer/missing_evidence. When has_more:true and complete coverage is requested, continuation_required/continuation_call identifies the required next step: call the same tool with exactly {cursor} until has_more:false; do not change queries, scope, direction or limit midway and then claim the original batch is complete. If replacing an incomplete search with a larger limit, copy the original queries and scope exactly, including omitted filters; do not add a guessed kind/member/Variant filter.',
];
const descriptions: Record<TaskToolName, string> = {
  ascet_find: 'Find saved names: components = owning Classes/Modules/State Machines; members = Methods/Processes and Variants; diagrams = BDE or State Machine Diagrams; objects = placed BDE nodes; states/transitions = topology. target is required. No source-body search.',
  ascet_search_code: 'Search saved text code. Omit scope.kinds for an unspecified code/symbol search, including State/Transition Actions. Only an explicitly Method-only request requires scope.kinds:["method"]. Supports C/ESDL, Header, external C/H. queries are independent; identifier matches full symbols, text matches literals, regex matches patterns. Returns snippets and code refs with read_tool/next_call.',
  ascet_search_bde: 'Search original saved BDE fields, merging hits per placed object with direct connection previews. Returns object refs for local reads. Does not search text Method bodies or referenced Class implementations.',
  ascet_read_code: 'Read saved text bodies using refs, optionally inclusive lines. line_coverage.page/complete_lines use inclusive line numbers; code_range uses exclusive end coordinates. Batch order/duplicates are preserved. State/Transition Action code refs are supported.',
  ascet_read_bde: 'Read whole Diagram listings or local BDE objects with real Pins/connections and Hierarchy boundaries. Object refs accept depth/direction; omit both for whole Diagram refs. For connections and initialization literals, read local object refs. Does not expand referenced Class implementations.',
  ascet_inspect_state: 'Inspect saved State/Junction/Transition relationships, endpoints, priority, code_slots and Method bindings. Read returned Action code refs with ascet_read_code; locate the real bound Method to read its implementation.',
};
export function taskContracts(outputs: Record<string, any>) {
  return (Object.keys(TASK_OPERATIONS) as TaskToolName[]).map(name => ({ name, description: descriptions[name], inputSchema: {
    type: 'object', description: 'For continuation, cursor is authoritative; other fields are ignored. Prefer only {cursor}.',
    anyOf: [{ type: 'object', properties: { cursor }, required: ['cursor'], additionalProperties: true }, TASK_SCHEMAS[name]],
  },
    outputSchema: outputs['ascet_code_' + TASK_OPERATIONS[name]], guidelines: [
      name === 'ascet_search_code' ? 'Known Class.calc ASDL: {queries:[{text:"force",mode:"identifier"}],scope:{components:[{name:"Class"}],members:["calc"],kinds:["method"],variants:["ASDL"]}}. Component names never belong in scope.members. All filters are inside scope. Correct an argument error using the same queries/constraints; do not switch to BDE or global search. Only if the user requests search within one located body, copy its search_scope:{code_ref}; never replace whole-Component/Method statistics with one body. Copy each query\'s returned total_hits; do not recount snippets or AND the queries. Preserve exact scope after zero hits. Continue has_more with only {cursor}; if the user requires consuming a cursor, consume it even if a larger-limit equivalent query would also finish.'
      : name === 'ascet_search_bde' ? 'Use one queries array for independent terms. identifier for complete symbols; regex only for a pattern. Keep the known Component and Diagram after zero hits.'
      : name === 'ascet_read_bde' ? 'For a local object interface alone, use depth:0. For wiring, preserve the requested depth/direction. The requested object is the subject of the read: its ref, name, kind, hierarchy and complete Pin IDs belong under requested_object/facts.pin_ids; neighbors are only endpoint context and never replace it. Follow facts_mapping exactly: facts.pin_ids copies requested_object.pin_ids_on_page, never neighbors.endpoint_pins. If the caller says target/output/interface, keep the named object as the requested subject; report its own facts.pin_ids, and if the destination interface was also explicitly requested, report that separate object under target_interface/target_pin_ids rather than overwriting the requested-object facts. Omit object_kinds unless the caller supplied a native object category; hierarchy is a hierarchy category, not a generic synonym for element. A later read of another object does not change this association. depth:0 has connections:[] and neighbors:[]; keep that view. Derive names/counts from returned arrays; continue only relevant cursors, without a whole Diagram read for these facts.'
      : name === 'ascet_find' ? 'Object/State names use name, never scope.members. Example: {target:"objects",name:"Stage",scope:{components:[{name:"Class"}],diagrams:[{name:"Main"}]}}. Add scope.object_kinds only for an explicitly requested declared BDE category, such as element or hierarchy; never guess hierarchy from a referenced Component, path or instance name. A Junction is State Machine topology: use target states and ascet_inspect_state, never object_kinds:["junction"]. An unknown variable is not an owning Component: find objects or search_bde first. Graphical member discovery must not force kind method; diagram_methods lists all members sharing that Diagram. Init may be Method, Process or Diagram.'
      : name === 'ascet_inspect_state' ? 'Transition inspection returns endpoint identities and saved Method bindings in code_slots. These bindings are references, not implementation bodies. For a request to verify a Transition, read the chosen Transition, both start_state and end_state refs, and every relevant binding ref; the inline method name is not proof that the binding ref was read. Read Action code refs with ascet_read_code; locate the real bound Method only when its implementation is requested. Batch independent reads. A deferred:true item has no facts yet: continue its own next_cursor on this tool.'
      : 'Use refs as an actual array, even for one item. A continuation is only {cursor} on this same tool.', ...TASK_RULES], }));
}
export interface TaskReference { kind: string; diagram_type?: 'bde' | 'state_machine'; node?: unknown; member_id?: string; member_name?: string; variant?: string; implementation?: string }
/** Derive exact presentation metadata from already-returned facts; never read or synthesize code. */
export function projectTaskResponse(value: any): any {
  if (Array.isArray(value)) return value.map(projectTaskResponse);
  if (!value || typeof value !== 'object') return value;
  const projected: any = Object.fromEntries(Object.entries(value).map(([key, child]) => [key, projectTaskResponse(child)]));
  if (typeof value.ref === 'string' && typeof value.kind === 'string') {
    if (value.diagram_type === 'state_machine') {
      projected.scope_only = true;
      projected.next_calls = ['states', 'transitions'].map(target => ({ tool: 'ascet_find', arguments: { target, scope: { diagrams: [{ ref: value.ref }] } } }));
    } else if (value.kind === 'diagram' || objectKinds.includes(value.kind)) projected.read_tool = 'ascet_read_bde';
    else if (['state', 'transition', ...bindingKinds].includes(value.kind)) projected.read_tool = 'ascet_inspect_state';
    else if (codeKinds.includes(value.kind)) projected.read_tool = 'ascet_read_code';
    if (projected.read_tool) projected.next_call = { tool: projected.read_tool, arguments: { refs: [value.ref] } };
    if (codeKinds.includes(value.kind) && !value.node_id && value.variant !== undefined && value.component_path)
      projected.search_scope = { code_ref: value.ref };
    // Native object projection omits only the root scope. Display its exact identity explicitly.
    if (objectKinds.includes(value.kind)) projected.hierarchy = value.hierarchy ?? 'root';
  }
  if (typeof value.ref === 'string' && typeof value.component_path === 'string' && typeof value.kind === 'string' && typeof value.variant === 'string' && value.kind !== 'component')
    projected.identity = { component_path: value.component_path, kind: value.kind,
      member: value.method ?? value.process ?? value.state ?? value.transition ?? value.diagram ?? '',
      variant: value.variant, implementation: value.implementation ?? '' };
  if (value.scope === 'local' && value.object?.ref && [0, 1, 2].includes(value.depth) && ['incoming', 'outgoing', 'both'].includes(value.direction)) {
    // A read-again recipe must retain the actual local view instead of reverting
    // to default depth/direction. Match only this object, never its neighbors.
    const preserveScope = (item: any): void => {
      if (!item || typeof item !== 'object') return;
      if (item.ref === value.object.ref && item.next_call?.tool === 'ascet_read_bde')
        item.next_call = { tool: 'ascet_read_bde', arguments: { refs: [item.ref], depth: value.depth, direction: value.direction } };
      for (const [key, child] of Object.entries(item)) if (!['graph', 'debug', 'read_evidence', 'next_call'].includes(key)) preserveScope(child);
    };
    preserveScope(projected);
  }
  return projected;
}
const TASK_REF_RE = /^s[^:]+:[dn][0-9a-z]+$/u;
function modelRefs(value: any, refs = new Set<string>()): Set<string> {
  if (!value || typeof value !== 'object') return refs;
  if (Array.isArray(value)) { for (const item of value) modelRefs(item, refs); return refs; }
  if (value.status === 'error' || Object.hasOwn(value, 'error') || value.deferred === true) return refs;
  for (const [key, child] of Object.entries(value)) {
    if (['citable_refs', 'next_cursor', 'cursor', 'read_evidence'].includes(key)) continue;
    if ((key === 'ref' || key.endsWith('_ref')) && typeof child === 'string' && TASK_REF_RE.test(child)) refs.add(child);
    if (key.endsWith('_refs') && Array.isArray(child)) for (const ref of child)
      if (typeof ref === 'string' && TASK_REF_RE.test(ref)) refs.add(ref);
    modelRefs(child, refs);
  }
  return refs;
}
function addPageGuidance(projected: any): void {
  const guide = (page: any, tool: string | undefined): void => {
    if (page.has_more === true && typeof page.next_cursor === 'string' && tool) {
      page.continuation_required = true;
      page.continuation_call = { tool, arguments: { cursor: page.next_cursor } };
    }
    if (Array.isArray(page.results)) for (const item of page.results) if (item && typeof item === 'object') guide(item, tool);
  };
  guide(projected, projected.task_tool);
  const refs = [...modelRefs(projected)];
  if (refs.length) projected.citable_refs = refs;
}
/** Model view groups native facts by object, while structured output retains the original contract. */
export function projectTaskModel(value: any, root = true): any {
  if (Array.isArray(value)) return value.map(item => projectTaskModel(item, false));
  if (!value || typeof value !== 'object') return value;
  const projected: any = Object.fromEntries(Object.entries(value).map(([key, child]) => [key, projectTaskModel(child, false)]));
  if (value.scope === 'local' && value.object && typeof value.object.ref === 'string' && Array.isArray(value.pins)) {
    const pins = projected.pins.filter((pin: any) => pin.object_ref === value.object.ref);
    projected.requested_object = { ...projected.object, role: 'query_subject', pins, pin_ids_on_page: pins.map((pin: any) => pin.id),
      pin_ids_complete: value.has_more === false && (projected.object.pin_count === undefined || pins.length === projected.object.pin_count) };
    projected.neighbors = (projected.nodes ?? []).filter((node: any) => node.ref !== value.object.ref).map((node: any) => ({
      ...node, role: 'connection_neighbor', interface_complete: false,
      endpoint_pins: projected.pins.filter((pin: any) => pin.object_ref === node.ref) }));
    const known = new Set([value.object.ref, ...(value.nodes ?? []).map((node: any) => node.ref)]);
    const unassigned = projected.pins.filter((pin: any) => !known.has(pin.object_ref));
    if (unassigned.length) projected.unassigned_endpoint_pins = unassigned;
    projected.diagram_context = { ref: value.diagram_ref, ...projected.identity };
    for (const key of ['component_path', 'component_type', 'diagram', 'diagram_oid', 'kind', 'variant', 'implementation', 'language', 'visibility', 'representation', 'diagram_methods']) {
      if (projected[key] !== undefined) projected.diagram_context[key] = projected[key];
      delete projected[key];
    }
    // Local .ref belongs to the object; avoid labelling it as the containing Diagram.
    delete projected.identity; delete projected.diagram_ref;
    projected.pin_coverage = 'Consume all pages of this read: requested_object.role=query_subject and requested_object.pin_ids_on_page belongs to requested_object.ref; pin_count is its native total and pin_ids_complete confirms this page. neighbors.role=connection_neighbor and endpoint_pins belong to other objects, not the requested interface.';
    projected.facts_mapping = { requested_object_ref: projected.requested_object.ref,
      facts_pin_ids: 'requested_object.pin_ids_on_page', facts_pin_ids_complete: 'requested_object.pin_ids_complete',
      neighbor_pin_ids: 'neighbors[].endpoint_pins[].id (connection context only)' };
    // Keep the requested graph projection, without suggesting a wider read.
    // An interface-only read cannot establish that an object has no wires.
    if (value.depth === 0) {
      projected.connections_not_read = 'depth is 0: this view has connections:[] and neighbors:[]. Keep depth 0 when answering this request. Empty in this view does not mean no saved wires exist.';
    }
    delete projected.object; delete projected.pins; delete projected.nodes;
  }
  if (value.read_evidence?.requested) {
    projected.read_scope = projectTaskModel(value.read_evidence.requested, false);
    delete projected.read_evidence;
  }
  if (['state', 'transition'].includes(value.kind) && Array.isArray(value.code_slots)) {
    // A topology page already contains the binding's native reference facts.
    // Related items share this page's owner only when their exact values agree.
    // Never inherit another Component, Diagram, Variant or Implementation.
    const inherited = ['component_path', 'component_type', 'language', 'visibility', 'diagram', 'diagram_oid', 'variant', 'implementation'];
    const compactRelated = (item: any): any => {
      if (!item || typeof item !== 'object') return item;
      const copy = { ...item };
      for (const key of inherited) if (Object.hasOwn(projected, key) && copy[key] === projected[key]) delete copy[key];
      if (copy.identity) {
        copy.identity = { ...copy.identity };
        for (const key of ['component_path', 'variant', 'implementation'])
          if (Object.hasOwn(projected.identity ?? {}, key) && copy.identity[key] === projected.identity[key]) delete copy.identity[key];
      }
      return copy;
    };
    for (const key of ['start_state', 'end_state']) if (projected[key]) projected[key] = compactRelated(projected[key]);
    for (const key of ['code_slots', 'incoming', 'outgoing']) if (Array.isArray(projected[key])) projected[key] = projected[key].map(compactRelated);
    projected.related_context = 'Omitted shared metadata in endpoints, code_slots and relations inherits this page, including owner, Diagram, Variant and Implementation; explicit values override. Method bindings are saved references; no implementation body is included.';
    // Repeating an already-read parent is not a useful next step. Child refs
    // retain their recipes, including a binding or Action explicitly requested.
    delete projected.next_call;
  }
  if (projected.requested_object) {
    // Already-read facts do not need a recipe on every endpoint. Ref + read_tool
    // remain available when another object's interface is explicitly requested.
    const removeRecipes = (item: any): void => {
      if (!item || typeof item !== 'object') return;
      delete item.next_call;
      for (const [key, child] of Object.entries(item)) if (!['graph', 'debug'].includes(key)) removeRecipes(child);
    };
    removeRecipes(projected);
    const objects = new Map([projected.requested_object, ...projected.neighbors].map((item: any) => [item.ref, item]));
    const compactEndpoint = (endpoint: any): any => {
      const owner: any = objects.get(endpoint.ref);
      if (!owner) return endpoint;
      // Keep ref + Pin identity. Only omit facts explicitly present on this
      // page's object table with identical values; unknown fields survive.
      return Object.fromEntries(Object.entries(endpoint).filter(([key, item]) =>
        ['ref', 'name', 'pin', 'pin_id'].includes(key) || !Object.hasOwn(owner, key) || owner[key] !== item));
    };
    if (Array.isArray(projected.connections)) projected.connections = projected.connections.map((edge: any) => ({ ...edge, from: compactEndpoint(edge.from), to: compactEndpoint(edge.to) }));
    if (Array.isArray(projected.boundaries)) projected.boundaries = projected.boundaries.map((edge: any) => ({ ...edge, outer: compactEndpoint(edge.outer), inner: compactEndpoint(edge.inner) }));
    for (const item of objects.values() as Iterable<any>)
      if (item.component_path === item.referenced_component_path) delete item.component_path;
    projected.pin_coverage = 'requested_object.role=query_subject is the subject of this read. Consume all pages for its pin_ids_on_page; pin_count is its native total and pin_ids_complete confirms completeness. Connection ref resolves to requested_object or neighbors; pin/pin_id identify that endpoint. neighbors.role=connection_neighbor and neighbors.endpoint_pins are not the requested interface; read that ref separately for its complete interface.';
    const citable = new Set<string>();
    const collectCitable = (item: any): void => {
      if (!item || typeof item !== 'object') return;
      if (typeof item.ref === 'string' && /^s[^:]+:[dn][0-9a-z]+$/u.test(item.ref)) citable.add(item.ref);
      for (const [key, child] of Object.entries(item)) if (!['next_call', 'read_scope', 'read_evidence', 'citable_refs'].includes(key)) collectCitable(child);
    };
    collectCitable(projected.requested_object); collectCitable(projected.neighbors);
    collectCitable(projected.connections); collectCitable(projected.boundaries); collectCitable(projected.diagram_context);
    projected.citable_refs = [...citable];
    const first = ['status', 'task_tool', 'read_scope', 'ref', 'requested_object', 'facts_mapping', 'scope', 'depth', 'direction',
      'has_more', 'next_cursor', 'continuation_required', 'continuation_call', 'connections_not_read', 'connections', 'boundaries', 'neighbors', 'pin_coverage', 'citable_refs', 'diagram_context'];
    if (root) addPageGuidance(projected);
    return Object.fromEntries([...first.filter(key => Object.hasOwn(projected, key)).map(key => [key, projected[key]]),
      ...Object.entries(projected).filter(([key]) => !first.includes(key))]);
  }
  // Make a compact, copy-only citation whitelist visible in the model view for
  // every task response, not just local BDE reads. Cursors and tracking IDs do
  // not match the saved-ref grammar and are therefore never admitted.
  if (root && (projected.task_tool || projected.scope === 'local')) addPageGuidance(projected);
  return projected;
}
export interface TaskBackend {
  execute(request: Record<string, unknown>, envelope?: Record<string, unknown>): Promise<any>;
  resolve(ref: string): TaskReference;
}
const scopeMap = { components: 'component', diagrams: 'diagram', members: 'member', member_ids: 'member_id', kinds: 'kind', variants: 'variant',
  implementations: 'implementation', visibility: 'visibility', object_kinds: 'object_kind' } as const;
/** Pure canonicalization for evidence/grading; names have already been resolved inside the CLI. */
export function canonicalTaskRequest(name: TaskToolName, args: any, appliedScope?: any): Record<string, any> {
  if (args.cursor) return { cursor: args.cursor };
  const operation = TASK_OPERATIONS[name], request: Record<string, any> = { operation };
  if (operation === 'read') {
    request.ref = args.refs.length === 1 ? args.refs[0] : args.refs;
    for (const key of ['lines', 'if_unchanged', 'depth', 'direction']) if (args[key] !== undefined) request[key] = args[key];
    if (args.graph !== undefined) request.include_graph = args.graph;
    return request;
  }
  const inputScope = appliedScope ?? args.scope;
  if (inputScope) {
    const filters: any = {};
    for (const [plural, singular] of Object.entries(scopeMap)) if (inputScope[plural])
      filters[singular] = ['components', 'diagrams'].includes(plural) ? inputScope[plural].map((v: any) => v.ref) : inputScope[plural];
    if (Object.keys(filters).length) request.in = filters;
  }
  if (args.limit !== undefined) request.limit = args.limit;
  if (operation === 'find') {
    request.target = args.target; request.match = args.match ?? 'exact';
    if (args.name !== undefined) request.name = args.name;
  } else {
    request.query = args.queries.map((q: any) => ({ ...q }));
    if (args.context !== undefined) request.context = args.context;
    if (name === 'ascet_search_bde') { request.in = { ...request.in, kind: ['diagram'] }; request.group_by = 'object'; }
    else request.in = { ...request.in, kind: request.in?.kind ?? codeKinds };
  }
  return request;
}

/** Executed inside AgentSession's existing gate: discovery and query form one business operation. */
export class TaskTools {
  private readonly readPrefix = randomBytes(6).toString('base64url');
  private readSequence = 0;
  private cursorSequence = 0;
  private readonly cursors = new Map<string, { backend_cursor: string; tool: TaskToolName; envelope: Record<string, unknown>; expires: number }>();
  private readonly cursorHandles = new Map<string, string>();
  constructor(private readonly backend: TaskBackend, private readonly now = Date.now) {}
  clear(): void { this.cursors.clear(); this.cursorHandles.clear(); }
  /** Budget the short public handles without allocating/consuming a cursor. */
  previewCursors(value: any): any {
    const copy = structuredClone(value);
    const visit = (page: any): void => {
      if (!page || typeof page !== 'object') return;
      if (page.has_more && typeof page.next_cursor === 'string') page.next_cursor = 'p-' + this.readPrefix + '-zzzzzzzzzzz';
      if (Array.isArray(page.results)) page.results.forEach(visit);
    };
    visit(copy); return copy;
  }
  private dropCursor(handle: string): void {
    const origin = this.cursors.get(handle);
    if (origin) this.cursorHandles.delete(origin.tool + '\0' + origin.backend_cursor);
    this.cursors.delete(handle);
  }
  private pinCursors(value: any, tool: TaskToolName, envelope: Record<string, unknown>): void {
    if (!value || typeof value !== 'object') return;
    if (value.has_more && typeof value.next_cursor === 'string') {
      const backendCursor = value.next_cursor, key = tool + '\0' + backendCursor;
      let handle = this.cursorHandles.get(key);
      if (handle && this.cursors.get(handle)!.expires <= this.now()) { this.dropCursor(handle); handle = undefined; }
      if (!handle) {
        while (this.cursors.size >= 1024) this.dropCursor(this.cursors.keys().next().value!);
        handle = 'p-' + this.readPrefix + '-' + (++this.cursorSequence).toString(36);
        this.cursors.set(handle, { backend_cursor: backendCursor, tool, envelope, expires: this.now() + 300_000 });
        this.cursorHandles.set(key, handle);
      }
      value.next_cursor = handle;
    }
    if (Array.isArray(value.results)) value.results.forEach((v: any) => this.pinCursors(v, tool, envelope));
  }
  private async select(kind: 'components' | 'diagrams', selectors: any[], components: any[] | undefined, identities: any[], constraints: any = {}) {
    const refs = [];
    for (const selector of selectors) {
      if (selector.ref) {
        const target = this.backend.resolve(selector.ref);
        if (kind === 'diagrams' && (target.kind !== 'diagram' || target.node))
          throw new TaskToolError('WRONG_REF_TYPE', 'scope.diagrams requires a whole saved Diagram ref, not an object or code ref.', 'scope.diagrams', 'ascet_find');
        refs.push({ ref: selector.ref }); continue;
      }
      const filters = { ...(components?.length ? { component: components.map(s => s.ref) } : {}),
        ...Object.fromEntries(['visibility', 'variants', 'implementations'].filter(k => constraints[k]).map(k => [scopeMap[k as keyof typeof scopeMap], constraints[k]])) };
      const response = await this.backend.execute({ operation: 'find', target: kind, name: selector.path ?? selector.name,
        match: 'exact', case_sensitive: true, limit: 2, ...(Object.keys(filters).length ? { in: filters } : {}) });
      if (response.status === 'partial' || response.has_more && response.total_count === 1)
        throw new TaskToolError('SCOPE_INCOMPLETE', 'Scope discovery is incomplete; resolve it with ascet_find first.', 'scope.' + kind, 'ascet_find');
      if (response.total_count !== 1 || response.results?.length !== 1)
        throw new TaskToolError(response.total_count ? 'AMBIGUOUS_SCOPE' : 'SCOPE_NOT_FOUND',
          `${kind} selector ${JSON.stringify(selector)} matched ${response.total_count ?? 0} saved identities; use ascet_find to list candidates and then pass one exact path/ref.`, 'scope.' + kind, 'ascet_find');
      const found = response.results[0]; refs.push({ ref: found.ref }); identities.push(found);
    }
    return refs;
  }
  async execute(tool: TaskToolName, raw: unknown): Promise<any> {
    validateTaskInput(tool, raw);
    const args = normalizeTaskInput(tool, raw) as any;
    let envelope: Record<string, unknown> = { task_tool: tool };
    let request: Record<string, any>;
    if (args.cursor) {
      const origin = this.cursors.get(args.cursor);
      if (!origin || origin.expires <= this.now()) throw new TaskToolError('CURSOR_EXPIRED', 'Re-run the original query in this session.', 'cursor');
      if (origin.tool !== tool) throw new TaskToolError('CURSOR_TOOL_MISMATCH', `Continue this cursor with ${origin.tool}.`, 'cursor', origin.tool,
        [{ tool: origin.tool, arguments: { cursor: args.cursor } }]);
      envelope = origin.envelope; request = { cursor: origin.backend_cursor };
    } else if (TASK_OPERATIONS[tool] === 'read') {
      const targets = args.refs.map((ref: string) => this.backend.resolve(ref));
      const nextCalls: { tool: TaskToolName; arguments: Record<string, unknown> }[] = [];
      for (let i = 0; i < targets.length; i++) {
        const t = targets[i], next: TaskToolName | undefined = t.kind === 'diagram' ? 'ascet_read_bde'
          : codeKinds.includes(t.kind) && !t.node ? 'ascet_read_code'
            : ['state', 'transition', ...bindingKinds].includes(t.kind) && !t.node ? 'ascet_inspect_state' : undefined;
        if (t.diagram_type === 'state_machine') {
          nextCalls.push(...['states', 'transitions'].map(target => ({ tool: 'ascet_find' as const,
            arguments: { target, scope: { diagrams: [{ ref: args.refs[i] }] } } }))); continue;
        }
        if (!next) continue;
        const options = next === 'ascet_read_code' ? Object.fromEntries(['lines', 'if_unchanged'].filter(k => args[k] !== undefined).map(k => [k, args[k]]))
          : next === 'ascet_read_bde' && t.node ? Object.fromEntries(['depth', 'direction'].filter(k => args[k] !== undefined).map(k => [k, args[k]])) : {};
        const group = nextCalls.find(c => c.tool === next && JSON.stringify(Object.fromEntries(Object.entries(c.arguments).filter(([k]) => k !== 'refs'))) === JSON.stringify(options));
        if (group) (group.arguments.refs as string[]).push(args.refs[i]);
        else nextCalls.push({ tool: next, arguments: { ...options, refs: [args.refs[i]] } });
      }
      args.refs.forEach((ref: string, i: number) => {
        const target = targets[i];
        const body = codeKinds.includes(target.kind) && !target.node;
        const bde = target.kind === 'diagram' && target.diagram_type !== 'state_machine';
        const structure = ['state', 'transition', ...bindingKinds].includes(target.kind) && !target.node;
        if (!(tool === 'ascet_read_code' ? body : tool === 'ascet_read_bde' ? bde : structure)) {
          const next = body ? 'ascet_read_code' : bde ? 'ascet_read_bde' : structure ? 'ascet_inspect_state' : 'ascet_find';
          throw new TaskToolError('WRONG_REF_TYPE', `This ref identifies ${target.kind}; use ${next}. Suggested calls are alternatives; none were executed.`, `refs[${i}]`, next, nextCalls);
        }
        if (tool === 'ascet_read_bde' && (args.depth !== undefined || args.direction !== undefined) && !target.node)
          throw new TaskToolError('INVALID_REQUEST', 'depth/direction apply only to local objects. Split whole Diagram and object refs as suggested; none were read.', `refs[${i}]`, tool, nextCalls);
      });
      request = canonicalTaskRequest(tool, args);
      envelope.read_evidence = { id: 'read-' + this.readPrefix + '-' + (++this.readSequence).toString(36),
        requested: { refs: [...args.refs], ...Object.fromEntries(['lines', 'depth', 'direction'].filter(k => args[k] !== undefined).map(k => [k, args[k]])),
          ...(tool === 'ascet_read_bde' && targets.every((t: TaskReference) => t.node) ? { depth: args.depth ?? 1, direction: args.direction ?? 'both' } : {}) } };
    } else {
      const applied: any = structuredClone(args.scope ?? {}), identities: any[] = [];
      if (applied.code_ref) {
        const pinned = this.backend.resolve(applied.code_ref);
        if (!codeKinds.includes(pinned.kind) || pinned.node || pinned.member_id === undefined || pinned.variant === undefined || pinned.implementation === undefined)
          throw new TaskToolError('WRONG_REF_TYPE', 'code_ref requires one returned text-code body, not a Diagram, object or binding.', 'scope.code_ref');
        Object.assign(applied, { components: [{ ref: applied.code_ref }], members: [pinned.member_name ?? ''], member_ids: [pinned.member_id],
          kinds: [pinned.kind], variants: [pinned.variant], implementations: [pinned.implementation] });
        delete applied.code_ref;
      }
      const structural = tool === 'ascet_find' && ['objects', 'states', 'transitions'].includes(args.target);
      if (structural && Object.keys(applied).some(k => !['components', 'diagrams', 'visibility', ...(args.target === 'objects' ? ['object_kinds'] : [])].includes(k)))
        throw new TaskToolError('INVALID_REQUEST', 'Structural discovery accepts components, diagrams, visibility; objects also accept object_kinds.', 'scope');
      if (applied.object_kinds && !(tool === 'ascet_find' && args.target === 'objects'))
        throw new TaskToolError('INVALID_REQUEST', 'object_kinds belongs to ascet_find target objects.', 'scope.object_kinds', 'ascet_find');
      if (tool === 'ascet_search_code' && applied.kinds?.some((kind: string) => !codeKinds.includes(kind)))
        throw new TaskToolError('INVALID_REQUEST', 'Search code accepts saved text code kinds; use ascet_search_bde for Diagrams.', 'scope.kinds');
      if (applied.components) applied.components = await this.select('components', applied.components, undefined, identities);
      if (applied.diagrams) applied.diagrams = await this.select('diagrams', applied.diagrams, applied.components, identities, applied);
      const wantsBde = tool === 'ascet_search_bde' || tool === 'ascet_find' && args.target === 'objects';
      const wantsState = tool === 'ascet_find' && ['states', 'transitions'].includes(args.target);
      if (applied.diagrams?.some((d: any) => {
        const t = this.backend.resolve(d.ref); return wantsBde ? t.diagram_type === 'state_machine' : wantsState ? t.diagram_type !== 'state_machine' : false;
      })) throw new TaskToolError('WRONG_REF_TYPE', `This Diagram scope is not ${wantsBde ? 'BDE' : 'a State Machine Diagram'}; keep the scope and choose the matching discovery tool.`, 'scope.diagrams', 'ascet_find');
      if (tool === 'ascet_search_code') applied.kinds ??= applied.diagrams ? codeKinds.filter(k => k.startsWith('state_') || k.startsWith('transition_')) : [...codeKinds];
      if (tool === 'ascet_search_bde') applied.kinds = ['diagram'];
      envelope = { task_tool: tool, applied_scope: applied, ...(identities.length ? { scope_identities: identities } : {}) };
      request = canonicalTaskRequest(tool, args, applied);
    }
    const operation = TASK_OPERATIONS[tool];
    let response: any;
    const splitCalls = (refs: string[]) => refs.map(ref => ({ tool, arguments: { refs: [ref],
      ...Object.fromEntries(['lines', 'if_unchanged', 'depth', 'direction'].filter(k => args[k] !== undefined).map(k => [k, args[k]])) } }));
    try {
      response = await this.backend.execute({ tool: 'ascet_code_' + operation, arguments: args.cursor ? request :
        Object.fromEntries(Object.entries(request).filter(([key]) => key !== 'operation')) }, envelope);
    } catch (error) {
      if (error instanceof ToolError && error.code === 'PAGE_TOO_LARGE' && operation === 'read' && args.refs?.length > 1)
        throw new TaskToolError(error.code, error.message + '. Retry the suggested single-ref calls with the same read options.', 'refs', tool, splitCalls(args.refs));
      throw error;
    }
    if (operation === 'read' && args.refs?.length > 1 && Array.isArray(response.results)) {
      const failed = response.results.flatMap((item: any, i: number) => item.error?.code === 'PAGE_TOO_LARGE' ? [args.refs[i]] : []);
      if (failed.length) response = { ...response, next_calls: splitCalls(failed) };
    }
    // Clone before replacing handles: backend snapshots/replays must remain immutable.
    const output = projectTaskResponse({ ...response, ...envelope });
    this.pinCursors(output, tool, envelope);
    return output;
  }
}
