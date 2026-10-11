import { readFileSync } from 'node:fs';
import { createRequire } from 'node:module';
import { join } from 'node:path';
import type { ValidateFunction } from 'ajv';
import type { AgentToolName, LegacyAgentToolName } from './agent-tools.js';
import { taskContracts, isTaskTool, validateTaskInput, TASK_OPERATIONS } from './task-tools.js';
import { ROOT } from './bridge.js';
import { ToolError } from './patterns.js';

type Schema = Record<string, unknown>;
const Ajv = createRequire(import.meta.url)('ajv');
const ajv = new Ajv({ strict: false, allErrors: false });
const string: Schema = { type: 'string' }, integer: Schema = { type: 'integer', minimum: 0 };
const array = (items: Schema): Schema => ({ type: 'array', items });
const object = (properties: Record<string, Schema>, required: string[] = []): Schema => ({ type: 'object', properties, required });
const nullable = (schema: Schema): Schema => ({ anyOf: [schema, { type: 'null' }] });
const status = { enum: ['ok', 'partial', 'changed'] };
const issue = object({ code: string, message: string }, ['code', 'message']);
const error = object({ status: { const: 'error' }, code: string, message: string }, ['status', 'code', 'message']);
const page = { has_more: { type: 'boolean' }, next_cursor: nullable(string), expires_utc: string };
const identity = { ref: string, component_path: string, kind: string, variant: string };
const node = object({ ref: string, kind: string, name: string }, ['ref', 'kind', 'name']);
const target = object(identity, Object.keys(identity));
const snippet = object({ start_line: { type: 'integer', minimum: 1 }, text: string, matches: array(object({
  line: { type: 'integer', minimum: 1 }, columns: array({ type: 'integer', minimum: 1 }),
}, ['line', 'columns'])) }, ['start_line', 'text', 'matches']);
const hit = object({ ...node.properties as Record<string, Schema>, matched_fields: array(string),
  evidence: array(object({ field: string, text: string }, ['field', 'text'])), connections: array({ type: 'object' }),
}, ['ref', 'kind', 'name', 'matched_fields', 'connections']);
const searchResult = object({ ...identity, snippets: array(snippet), hits: array(hit) }, Object.keys(identity));
const readContent = object({ ...identity, ...page, code: string, diagram_text: string, method_binding: { type: 'object' },
  issues: array(issue), object: node, nodes: array(node), pins: array({ type: 'object' }), connections: array({ type: 'object' }),
  boundaries: array({ type: 'object' }), graph: { type: 'object' }, code_slots: array(target), incoming: array(target), outgoing: array(target),
  start_state: nullable(target), end_state: nullable(target), priority: nullable({ type: 'integer' }),
}, Object.keys(identity));
readContent.anyOf = ['code', 'diagram_text', 'method_binding', 'object', 'code_slots', 'graph'].map(field => ({ required: [field] }));
const deferredRead = object({ ref: string, deferred: { const: true }, has_more: { const: true }, next_cursor: string, expires_utc: string },
  ['ref', 'deferred', 'has_more', 'next_cursor', 'expires_utc']);
const outputs: Record<LegacyAgentToolName, Schema> = {
  ascet_code_find: { anyOf: [error, object({ status: { enum: ['ok', 'partial'] }, target: { enum: ['members', 'components', 'diagrams', 'objects', 'states', 'transitions'] },
    ...page, returned_count: integer, total_count: integer, results: array(object({ ref: string, component_path: string }, ['ref', 'component_path'])), issues: array(issue),
  }, ['status', 'target', 'returned_count', 'total_count', 'results', ...Object.keys(page)])] },
  ascet_code_search: { anyOf: [error, object({ status: { enum: ['ok', 'partial'] }, ...page, returned_hits: integer, total_hits: integer,
    searches: array(object({ index: integer, id: string, query: string, mode: { enum: ['text', 'identifier', 'regex'] },
      returned_hits: integer, total_hits: integer, has_more: { type: 'boolean' }, results: array(searchResult),
    }, ['index', 'query', 'mode', 'returned_hits', 'total_hits', 'has_more', 'results'])), issues: array(issue),
  }, ['status', 'returned_hits', 'total_hits', 'searches', ...Object.keys(page)])] },
  ascet_code_read: { anyOf: [error,
    { ...readContent, properties: { ...readContent.properties as Record<string, Schema>, status }, required: ['status', ...Object.keys(identity)] },
    object({ status: { enum: ['ok', 'partial', 'changed', 'error'] }, requested_count: integer, returned_count: integer,
      results: array({ anyOf: [readContent, deferredRead, object({ ref: string, error: object({ code: string, message: string }, ['code', 'message']) }, ['ref', 'error'])] }),
    }, ['status', 'requested_count', 'returned_count', 'results']),
  ] },
};

export const COMMON_GUIDELINES = [
  'Copy returned refs unchanged. Continue with only {cursor} on the tool that produced it.',
  'Partial results cannot prove absence. Continuation pages describe the original snapshot.',
  'Read relevant saved evidence before making control-flow claims; consume read pages when full content is needed.',
  'BDE connections are saved graph facts, not execution order. Method bindings are not implementation bodies.',
];
const descriptions: Record<LegacyAgentToolName, string> = {
  ascet_code_find: 'Locate saved ASCET Components, Methods, Processes, Diagrams, BDE objects, States and Transitions by literal name/path. Component refs select scope; graphical Methods select their owning Diagram.',
  ascet_code_search: 'Search saved ASCET C/ESDL, State/Transition code and original BDE fields. Query arrays are independent searches, not AND. Text/identifier/regex support scoped, paged results; generated code and unsaved buffers are excluded.',
  ascet_code_read: 'Read saved code, Diagram facts, local BDE Pins/connections and State/Transition relationships by returned ref. Pass a ref or actual ref array; bindings have no implementation body. Whole raw graphs must fit the page budget.',
};
const parameterDescriptions: Record<string, string> = {
  query: 'Literal text, {text,mode,...}, or 1-64 independent queries; arrays are not AND.',
  mode: 'text: literal substring (* is literal); identifier: complete symbol; regex: ECMAScript Unicode, no / delimiters.',
  context: 'Surrounding lines, default 10 each side; {before,after} permits asymmetry. Previews may omit context; read the ref for complete content.',
  cursor: 'Copy next_cursor unchanged; no other arguments. Call the same tool.',
  ref: 'One returned ref string or an actual array of 1-32 refs. Never JSON.stringify refs. Component refs are scope-only.',
  in: 'Known exact metadata; arrays are OR within a field, fields are AND. Omit unknown scope.',
  database: 'Expected current database path, not a command to switch/open a database.',
  debug: 'Include troubleshooting metadata; default false.',
};

function compactDescriptions(value: unknown, key = ''): unknown {
  if (Array.isArray(value)) return value.map(item => compactDescriptions(item, key));
  if (!value || typeof value !== 'object') return value;
  const result = Object.fromEntries(Object.entries(value).map(([name, child]) => [name, compactDescriptions(child, name === 'properties' ? '' : name)]));
  if ('description' in result && parameterDescriptions[key]) result.description = parameterDescriptions[key];
  // Property names carry their own concise descriptions without changing validation keywords.
  if (result.properties && typeof result.properties === 'object') for (const [name, child] of Object.entries(result.properties)) {
    if (child && typeof child === 'object' && parameterDescriptions[name]) (child as Schema).description = parameterDescriptions[name];
  }
  return result;
}

export interface ToolContract { name: AgentToolName; description: string; inputSchema: Schema; outputSchema: Schema; guidelines: string[] }
export type ToolProfile = 'baseline' | 'optimized' | 'task';
const inputValidators = new Map<AgentToolName, ValidateFunction>(), outputValidators = new Map<AgentToolName, ValidateFunction>();
export const TOOL_CONTRACTS: ToolContract[] = (Object.keys(outputs) as LegacyAgentToolName[]).map(name => {
  const operation = name.slice('ascet_code_'.length);
  const definition = JSON.parse(readFileSync(join(ROOT, 'agent-simple-' + operation + '-tool-definition.json'), 'utf8'));
  const inputSchema = compactDescriptions(definition.inputSchema) as Schema;
  inputValidators.set(name, ajv.compile(inputSchema)); outputValidators.set(name, ajv.compile(outputs[name]));
  const specific = operation === 'find' ? 'Find by name first when the Component/Method is known; use Component refs in scope.'
    : operation === 'search' ? 'Prefer identifier for variables and group_by:object for BDE; constrain known Component/Diagram scope.'
    : 'Use lines for text and depth/direction for BDE objects. Read State/Transition code_slots refs for code; local reads do not expand referenced implementations.';
  return { name, description: descriptions[name], inputSchema, outputSchema: outputs[name], guidelines: [...COMMON_GUIDELINES, specific] };
});

let optimizedContracts: ToolContract[] | undefined;
const optimizedValidators = new Map<AgentToolName, ValidateFunction>();
export function getToolContracts(profile: ToolProfile): ToolContract[] {
  if (profile === 'task') return taskContracts(outputs);
  if (profile === 'baseline') return TOOL_CONTRACTS;
  return optimizedContracts ??= TOOL_CONTRACTS.map(contract => {
    const schema = structuredClone(contract.inputSchema);
    // Cross-field restrictions remain enforced by CLI validators with actionable messages.
    delete schema.if; delete schema.then; delete schema.else;
    const props = schema.properties as Record<string, Schema>;
    if (contract.name === 'ascet_code_find') {
      delete props.member; delete props.diagram;
      props.name.description = 'Literal name/path of the selected target. Use this field for Methods, Processes, Diagrams, objects, States and Transitions. Omit to list. No regex or glob.';
      props.component.description = 'Literal owning Component name/path only. Never place a returned ref here: use in.component for refs. For target:components use name. Variant names are not Component names.';
      props.match.description = 'Use exact for a supplied full name/path. contains is a literal fragment search and can include calc_pre when looking for calc; specify it only when fragments are intended.';
    } else schema.anyOf = [{ required: ['cursor'] }, { required: [contract.name === 'ascet_code_read' ? 'ref' : 'query'] }];
    if (props.query) props.query.description = 'A JSON string or independent query array. Minimal valid request: {"query":"symbol","mode":"identifier"}. Quote every string value; never send an empty object or an unquoted symbol. Batch: {"query":["symbol","other"],"mode":"identifier"}.';
    if (props.in) {
      const scope = props.in.properties as Record<string, Schema>;
      props.in.description = 'Explicit exact scope. Apply every known requested Component, member, code kind, Variant, Implementation, Diagram and visibility here. Lists are OR within a field; fields are AND. Unknown values must be discovered, not guessed.';
      scope.component.description = 'Exact returned same-session ref or known 29-character Component OID, never a name/path or placeholder. One member ref selects its whole owning Component. For names/paths, first use find.component or find target:components; copy owner_scope/search_scope from its result.';
      scope.member.description = 'Exact saved member string, including empty string for unnamed Header/external code. Use find.name for name fragments. Do not append a Diagram name to a Component name.';
      scope.kind.description = 'Saved source code kind. Use method for text Methods, header for Header, diagram for BDE. Native node categories such as literal/operator/hierarchy belong in object_kind on find target:objects.';
      scope.variant.description = 'Copy the exact saved Variant string from identity, preserving whitespace. ASDL is native ASCET ESDL code. Omission includes all Variants; a Variant name is never a Component name.';
      scope.diagram.description = 'Returned whole Diagram ref, or a source OID with one explicit in.component. For Component/Diagram requests, retain both scopes. Diagram names need find target:diagrams first; object refs cannot select Diagram scope.';
    }
    optimizedValidators.set(contract.name, ajv.compile(schema));
    const guidelines = [
      'Send valid JSON argument objects: quote string keys AND values. A symbol is a string, e.g. {"query":"symbol"}; unquoted values become an unusable empty request. Ref arrays are real arrays, never strings. Copy actual refs and exact saved metadata/code, including whitespace and punctuation; never send example placeholders.',
      'has_more:false ends that snapshot; do not probe more pages. has_more:true requires only {cursor} on the originating tool when complete coverage is needed. Partial cannot prove absence.',
      'Use literal names in find. Scope in.component/in.diagram accepts returned refs or documented OIDs; other in fields are exact saved metadata.',
      'Use returned owner_scope, search_scope and diagram_scope as reusable in objects. Diagram names such as Main must first be found; copy diagram_scope rather than mixing a Diagram OID with root-level component. Root component accepts names only on find; in.component never accepts names/paths.',
      'Read supported evidence before conclusions. Bindings are not bodies; connections are not scheduling. Unsupported live/Dataset/generated/unsaved requests require an explicit gap.',
      'Apply every requested scope and filter explicitly in tool arguments. Coincidental result metadata cannot prove scoped coverage. Preserve exact names, paths, kind, Variant and Implementation predicates.',
      'Displayed quoted metadata is a JSON string: decode it once; display quotes are not part of the saved value. Follow the caller\'s answer format with only its allowed fields.',
      'When a caller lists output fields, put them at that exact level with the requested types. Names are strings, counts are numbers, and requested member-name lists contain strings. Do not replace a name with an object or wrap facts under saved/inference. Put explanation and caveats in answer prose.',
      'A request exclusively for excluded runtime/Dataset/generated/unsaved facts can be answered from the stated coverage boundary without exploratory tool calls.',
    ];
    if (contract.name === 'ascet_code_find') guidelines.push(
      'Known Component and Method: call {target:"members",component:"ComponentName",name:"MethodName",match:"exact"} directly, then read. A preceding Component lookup is unnecessary.',
      'Choose match:"exact" when the caller supplies a complete Component or target name, even when only listing its members/Diagrams. The only match choices are exact and contains. Apply requested target name/object_kind and all requested Variant/Implementation filters; a result alone cannot substitute the requested filter. For multiple owners, use one actual in.component ref array.',
      'Use name for State/Transition paths and BDE object names. Use in.object_kind for native object categories. Init can be Method, Process or Diagram; do not assume its representation.',
      'Discover available Variants/Implementations from member metadata; preserve their identities. Component refs are scope-only, not readable member bodies.',
      'Header/external C/H entries may have an empty saved member name. Find them by component and in.kind, discover the exact Variant, then read the matching ref. Do not search their Component name as a Method name.',
      'If a first directory is partial but the requested identity is already visible, a completed exact re-query with its member/kind/Variant/Implementation scopes can replace broad discovery. Do not claim the broad directory was fully consumed.');
    else if (contract.name === 'ascet_code_search') guidelines.push(
      'Use identifier for complete variables, text for a literal fragment, regex only for a pattern. Query arrays are independent, not AND. Constrain only known scope; do not silently change predicates after zero results.',
      'Compare modes or terms using one independent query array: {"query":[{"text":"symbol","mode":"text"},{"text":"symbol","mode":"identifier"}]}. Add the actual returned scope and every requested filter. Copy each query value/count in original order; id labels do not replace query text.',
      'A previous member find does not scope a later search automatically. Retain in.component, in.member, in.kind and any requested Variant; use the member ref in in.component to scope its owner. Asymmetric context is {before:N,after:M}; report requested counts separately from lines available at EOF.',
      'For regex code, escape literal braces and parentheses; a backslash in a regex needs JSON escaping. For full source verification, read and cite the ref returned by the successful search, even if another ref was read earlier.',
      'For BDE prefer group_by:"object" and read actual hit refs locally. For implementation reasoning, read the returned member; a snippet is insufficient.');
    else guidelines.push(
      'Use a real ref array for independent bodies or endpoints. Use lines for a bounded source read and depth/direction for a local BDE object.',
      'For a local BDE read, target_pins belong to object.ref; endpoint_pins belong to neighbors and may expose only connection endpoints. Read each neighbor at depth:0 when its complete Pins are required.',
      'identity reports the saved source-document kind/member, not the kind of a graphical Method/Process listed in diagram_methods. member_names lists all members on the Diagram, while matched_members only lists the name matches.',
      'A BDE text listing is a saved diagram listing, not ESDL assignment source. Verify literal-to-element initialization with a local object read or include_graph:true when the graph fits. graphical_model means BDE; keep the caller\'s representation vocabulary.',
      'A whole-graph size failure is recoverable using local evidence. Report the successfully located/read target as located when the caller asks for that target; qualify missing whole-graph coverage separately.',
      'Copy State/Junction endpoint types from the corresponding read, not from generic kind:"state". Copy code text exactly; do not omit semicolons or rewrite graph facts as stored source.');
    return { ...contract, inputSchema: schema, guidelines };
  });
}

export function validateToolInput(name: AgentToolName, value: unknown, profile: ToolProfile = 'baseline'): void {
  if (isTaskTool(name)) { validateTaskInput(name, value); return; }
  if (profile === 'optimized') getToolContracts(profile);
  const validate = (profile === 'optimized' ? optimizedValidators : inputValidators).get(name)!;
  if (!validate(value)) throw new ToolError('INVALID_REQUEST', 'Invalid ' + name + ' arguments: ' + ajv.errorsText(validate.errors).slice(0, 700));
}
export function validateToolOutput(name: AgentToolName, value: unknown): void {
  if (isTaskTool(name)) name = ('ascet_code_' + TASK_OPERATIONS[name]) as LegacyAgentToolName;
  const validate = outputValidators.get(name)!;
  if (!validate(value)) throw new ToolError('OUTPUT_CONTRACT_VIOLATION', 'Invalid ' + name + ' result: ' + ajv.errorsText(validate.errors).slice(0, 700));
}
