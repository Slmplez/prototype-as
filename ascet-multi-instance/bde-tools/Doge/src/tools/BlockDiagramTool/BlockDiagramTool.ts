import { execFile } from 'node:child_process'
import { fileURLToPath } from 'node:url'
import { resolve } from 'node:path'
import { z } from 'zod/v4'
import { creationSchema } from './BlockDiagramCreationSchema.js'
import { groupSchema } from './BlockDiagramGroupSchema.js'
import { constructionSteps } from './BlockDiagramConstructionSchema.js'
import { validReadInput } from './BlockDiagramReadContract.js'
import { resumeBlockDiagramPage } from './BlockDiagramPaging.js'
import { getSessionId } from '../../bootstrap/state.js'
import { buildTool, type ToolDef, type ToolUseContext } from '../../Tool.js'

type BackendOutput = { content: string; is_error: boolean }

const backend = fileURLToPath(new URL('../../../../scripts/bd_service.py', import.meta.url))
const reference = z.string().min(1).max(256)
const formulaText = z.string().min(1).max(4096).regex(/^[\t\r\n\x20-\x7e]+$/)
const formulaModelRef = z.string().regex(/^Main\/m_[0-9a-f]{40}$/)
const scalarValue = z.union([z.number().min(-1000000000).max(1000000000), z.boolean(), z.string().regex(/^[A-Za-z_][A-Za-z0-9_]{0,63}$/)])
const arrayValues = z.union([z.array(z.number().min(-1000000000).max(1000000000)).min(1).max(256), z.array(z.boolean()).min(1).max(256)])
const distributionValues = z.array(z.number().min(-1000000000).max(1000000000)).min(1).max(256)
const matrixValues = z.union([
  z.array(z.array(z.number().min(-1000000000).max(1000000000)).min(1).max(16)).min(1).max(16),
  z.array(z.array(z.boolean()).min(1).max(16)).min(1).max(16),
]).refine(rows => rows.every(row => row.length === rows[0]!.length), 'Matrix must be rectangular in native X/Y order')
const tableValues = z.union([
  z.array(z.number().min(-1000000000).max(1000000000)).min(1).max(256),
  z.array(z.array(z.number().min(-1000000000).max(1000000000)).min(1).max(16)).min(1).max(16)
    .refine(rows => rows.every(row => row.length === rows[0]!.length), 'Table must be rectangular'),
])
const tableShape = (values: z.infer<typeof tableValues>) => Array.isArray(values[0])
  ? [values.length, values[0].length] : [values.length]
const budget = z.number().int().min(2048).max(16384).optional()
const cursor = reference.optional().describe('Continue a previous result. When provided, pass no other arguments.')
const nativeAlias = z.string().regex(/^(?:bytes:(?:[0-9a-f]{2}){1,128}|string:[^\x00-\x1f]{1,512})$/)
const formalSelector = z.strictObject({
  diagram: z.string().min(1).max(256).regex(/^[^/\x00-\x1f]+$/),
  method_alias: nativeAlias,
  formal_alias: nativeAlias,
  slot: z.enum(['argument', 'return']),
})

export const blockDiagramSchemas = {
  bd_read: z.strictObject({
    component: z.string().min(1).max(2048).optional().describe('Full ASCET component path, or Project path with view=project_messages. Reads the running application and current database; never starts ASCET or changes databases.'),
    scope: z.union([z.strictObject({
      targets: z.array(z.string().regex(/^Main\/n\d+$/)).min(1).max(20),
      include_layout: z.boolean().optional(),
    }), z.strictObject({
      diagram: z.string().regex(/^Main(?:\/h(?:0|[1-9][0-9]{0,9})){0,16}$/)
        .refine(value => value.split('/').slice(1).every(part => Number(part.slice(1)) <= 2147483647)),
    })]).optional().describe('With component and view=structure, {diagram:"Main/h12/h5"} reads one exact hierarchy scope with layout and root generation. For logic/overview use {targets:["Main/n12"],include_layout:true} for incident topology.'),
    snapshot: reference.optional().describe('Read a previously captured immutable snapshot instead of the live model.'),
    cursor,
    view: z.enum(['logic', 'overview', 'structure', 'interfaces', 'project_messages', 'class_interface']).optional().describe('structure collects one Main or exact hierarchy scope with topology/layout. class_interface is an isolated Trial_* Class complete-owner observation for experimental exact formal deletion; it includes bounded caller graphs and persisted storage, with strict whole-owner inverse conflicts. interfaces collects Main and nested hierarchy topology, message roles, Class formal aliases and native hierarchy pairings. project_messages takes a Project path and collects all Module message declarations, bounded Module/Class alias chains (depth 16, explicit stops), native lookup candidates and selection. Interface/Project refs are read-only. Database identity is sampled from native objects; database reopen/graph reload lifecycle and runtime delivery are unverified.'),
    max_bytes: budget,
  }).refine(value => validReadInput('bd_read', value), 'Invalid argument combination; cursor must be used alone'),
  bd_find: z.strictObject({
    snapshot: reference.optional(),
    query: z.string().min(1).max(512).optional().describe('Case-insensitive literal substring in names and references; requires snapshot.'),
    kind: z.enum(['node', 'pin', 'edge', 'state', 'transition', 'model', 'method', 'interface', 'message']).optional(),
    cursor,
    max_bytes: budget,
  }).refine(value => validReadInput('bd_find', value), 'Invalid argument combination; cursor must be used alone'),
  bd_inspect: z.strictObject({
    query: z.enum(['capabilities', 'block_types', 'snapshots', 'changes', 'edits', 'recovery', 'fields', 'checks', 'configuration', 'signal_path', 'interface_binding', 'project_signal_path', 'flow_plan', 'class_callers']).optional(),
    block_kind: z.enum(['variable', 'parameter', 'constant', 'array', 'matrix', 'distribution', 'oned_table', 'twod_table', 'oned_table_fixed', 'twod_table_fixed', 'receive_message', 'send_message', 'send_receive_message', 'oned_table_group', 'twod_table_group', 'resource', 'delta_t', 'implementation_cast', 'enumeration', 'component', 'existing_model', 'literal', 'comment', 'operator', 'control', 'hierarchy']).optional().describe('block_types only: details for one declared ordinary BDE family, including typed creation fields and conditional operations.'),
    owner_kind: z.enum(['class', 'module']).optional().describe('block_types only: requested owner context; not inferred from the current database.'),
    diagram_scope: z.enum(['Main', 'child']).optional().describe('block_types only: default Main. Child creation and field routes may differ.'),
    segments: z.array(z.strictObject({ snapshot: reference, source: reference, target: reference })).min(2).max(16).optional()
      .describe('flow_plan only: explicit existing output/input pin pairs within their exact structure snapshot scopes. Creates an immutable plan offline; message/Class/hierarchy boundaries are not inferred.'),
    steps: constructionSteps.optional()
      .describe('flow_plan only, alternative to segments: explicit creation/connection steps on complete structure snapshots. A created endpoint is {step:earlier_index,direction:"input"|"output",name?:exact_pin_name}; it must select one actual created pin. Missing/ambiguous selectors stop later setters and leave a recoverable partial group.'),
    components: z.array(z.strictObject({ snapshot: reference, instance: reference })).min(1).max(16).optional()
      .describe('project_signal_path only: immutable view=interfaces observations paired with exact instance refs from the Project snapshot.'),
    source: z.strictObject({ instance: reference, ref: reference }).optional(),
    target: z.strictObject({ instance: reference, ref: reference }).optional(),
    change_id: reference.optional().describe('For recovery: original structural edit or inverse with a lost reply.'),
    reconcile: z.boolean().optional().describe('For recovery only: durably record a confirmed native terminal observation and release its quarantine. Never retries a model setter. Partial native operations remain unknown.'),
    snapshot: reference.optional(),
    component: z.string().min(1).max(2048).optional().describe('For query=class_callers: required full Class path for bounded live caller discovery. For query=changes or edits: filter persistent history by exact component path. snapshot instead filters by database/component identity.'),
    selector: z.strictObject({
      diagram: z.string().min(1).max(256).regex(/^[^/\x00-\x1f]+$/),
      method_alias: nativeAlias,
      formal_alias: nativeAlias,
      slot: z.enum(['argument', 'return']),
    }).optional().describe('class_callers only: exact method/formal aliases from discovery. Projects the response to one formal and its scope-qualified caller pins. Does not collect incident edges or grant Class signature writes.'),
    database: z.string().min(1).max(2048).optional().describe('For query=changes or edits: optional exact database path filter.'),
    targets: z.array(reference).min(1).max(50).optional().describe('Exact refs from bd_find or bd_read. signal_path requires exactly [output_pin_ref,input_pin_ref] from view=interfaces. interface_binding accepts interface/message/pin refs, or Module instance/message/binding refs from view=project_messages. Nested pin example: Main/h12/n5.p6.'),
    fields: z.array(z.string().min(1).max(128)).min(1).max(50).optional().describe('Exact field names. Omit to return all collected fields for each target.'),
    cursor,
    max_bytes: budget,
  }).refine(value => validReadInput('bd_inspect', value), 'Invalid argument combination; cursor must be used alone'),
  bd_diff: z.strictObject({
    presentation: z.enum(['show', 'clear']).optional().describe('Experimental native BDE overlay for a structural edit change_id. Requires ASCET_BD_NATIVE_PRESENTATION=1, original session/process and sandbox. show checks current recorded after. Does not replay edits. Native drawing is verified only as an API call; visual, zoom and lifecycle acceptance remain pending.'),
    change_id: reference.optional().describe('Read an automatically recorded difference, including its before/after snapshot IDs. Mutually exclusive with before/after.'),
    before: reference.optional(),
    after: reference.optional(),
    cursor,
    max_bytes: budget,
  }).refine(value => validReadInput('bd_diff', value), 'Invalid argument combination; cursor must be used alone'),
  bd_edit: z.strictObject({
    snapshot: reference,
    request_id: reference,
    operations: z.array(z.discriminatedUnion('op', [
      z.strictObject({ op: z.literal('create_class_argument'),
        selector: z.strictObject({ diagram: z.literal('Main'), method_alias: nativeAlias }),
        name: z.string().regex(/^[A-Za-z_][A-Za-z0-9_]{0,63}$/),
        model_type: z.enum(['cont', 'sdisc', 'udisc', 'log']),
        layout_policy: z.literal('follow_verified_pins_and_orthogonal_routes'),
        sequence_policy: z.literal('no_implicit_changes'),
      }),
      z.strictObject({ op: z.literal('delete_class_formal'), selector: formalSelector,
        layout_policy: z.literal('follow_verified_pins_and_orthogonal_routes'),
        sequence_policy: z.enum(['no_implicit_changes', 'allow_unassigned']),
      }).refine(value => value.selector.slot === 'return' || value.sequence_policy === 'no_implicit_changes', 'Argument removal cannot introduce implicit sequence changes'),
      creationSchema,
      z.strictObject({ op: z.literal('create_hierarchy_port'), target: reference, direction: z.enum(['input', 'output']), name: z.string().regex(/^[A-Za-z_][A-Za-z0-9_]{0,63}$/) }),
      z.strictObject({ op: z.literal('delete_hierarchy_port'), target: reference }),
      z.strictObject({ op: z.literal('set_formula'), target: reference,
        expect: z.strictObject({ text: formulaText, compiled: formulaText }), text: formulaText }),
      z.strictObject({ op: z.literal('set_formula_binding'), target: reference, formal_oid: z.string().regex(/^[0-9a-f]{40}$/),
        expect: z.strictObject({ actual: formulaModelRef }), actual: formulaModelRef }),
      z.strictObject({ op: z.literal('set_scalar_value'), target: reference, expect: z.strictObject({ value: scalarValue }), value: scalarValue }),
      z.strictObject({ op: z.literal('set_sequence_number'), target: reference, expect: z.strictObject({ number: z.number().int().min(0).max(100000), method: reference }), number: z.number().int().min(0).max(100000) }),
      z.strictObject({ op: z.literal('set_sequence'), target: reference, expect: z.strictObject({ number: z.number().int().min(0).max(100000), method: reference.nullable() }), number: z.number().int().min(0).max(100000), method: reference }),
      z.strictObject({ op: z.literal('set_array_values'), target: reference, expect: z.strictObject({ values: arrayValues }), values: arrayValues }),
      z.strictObject({ op: z.literal('set_distribution_values'), target: reference, expect: z.strictObject({ values: distributionValues }),
        values: distributionValues.refine(values => values.every((v, i) => i === 0 || values[i - 1]! < v), 'Distribution axes must be strictly increasing') }),
      z.strictObject({ op: z.literal('set_matrix_values'), target: reference, expect: z.strictObject({ values: matrixValues }), values: matrixValues }),
      z.strictObject({ op: z.literal('set_table_values'), target: reference, expect: z.strictObject({ values: tableValues }), values: tableValues })
        .refine(value => JSON.stringify(tableShape(value.values)) === JSON.stringify(tableShape(value.expect.values)), 'Table dimensions must remain unchanged'),
      z.strictObject({ op: z.literal('set_table_axis'), target: reference, axis: z.enum(['x', 'y']),
        expect: z.strictObject({ values: distributionValues }),
        values: distributionValues.refine(values => values.every((v, i) => i === 0 || values[i - 1]! < v), 'Table axis must strictly increase'),
      }).refine(value => value.values.length === value.expect.values.length, 'Table axis dimensions must remain unchanged'),
      z.strictObject({ op: z.literal('set_table_interpolation'), target: reference,
        expect: z.strictObject({ declared_interpolation: z.enum(['Linear', 'Rounded']).nullable(), interpolation_linear: z.boolean(), interpolation_rounded: z.boolean() })
          .refine(value => value.interpolation_linear !== value.interpolation_rounded, 'Exact linear or rounded interpolation required'),
        mode: z.enum(['linear', 'rounded']),
      }),
      z.strictObject({ op: z.literal('move_node'), target: reference, position: z.tuple([z.number().int().min(1).max(100000), z.number().int().min(1).max(100000)]) }),
      z.strictObject({ op: z.literal('set_comment'), target: reference, text: z.string().min(1).max(256) }),
      z.strictObject({ op: z.literal('set_literal'), target: reference, expect: z.strictObject({ text: z.string().max(4096) }), value: z.strictObject({ text: z.string().min(1).max(256) }) }),
      z.strictObject({ op: z.literal('rewire_data'), target: reference, expect: z.strictObject({ source: reference, native_connection_type: z.number().int().nonnegative() }).optional(), source: reference }),
      z.strictObject({ op: z.literal('set_edge_route'), target: reference,
        points: z.array(z.tuple([z.number().int().min(-100000).max(100000), z.number().int().min(-100000).max(100000)])).min(2).max(32),
      }).refine(value => {
        const axes: boolean[] = []
        for (let i = 1; i < value.points.length; i++) {
          const a = value.points[i - 1]!, b = value.points[i]!
          if ((a[0] === b[0] && a[1] === b[1]) || (a[0] !== b[0] && a[1] !== b[1])) return false
          axes.push(a[0] === b[0])
        }
        return axes.every((axis, i) => i === 0 || axis !== axes[i - 1])
      }, 'Route must use nonzero orthogonal segments with no redundant collinear points'),
      z.strictObject({ op: z.literal('connect_data'), source: reference, target: reference }),
      z.strictObject({ op: z.literal('disconnect_data'), target: reference }),
      z.strictObject({ op: z.literal('delete_node'), target: reference }),
      z.strictObject({ op: z.literal('delete_state'), target: reference }),
      z.strictObject({ op: z.literal('delete_transition'), target: reference }),
      z.strictObject({ op: z.literal('create_transition'), source: reference, target: reference, out_position: z.tuple([z.number().int().min(-100000).max(100000), z.number().int().min(-100000).max(100000)]), in_position: z.tuple([z.number().int().min(-100000).max(100000), z.number().int().min(-100000).max(100000)]) }),
      z.strictObject({ op: z.literal('set_transition_priority'), target: reference, priority: z.number().int().min(0).max(100000) }),
      z.strictObject({ op: z.literal('set_transition_esdl'), target: reference, slot: z.enum(['condition', 'action']), text: z.string().max(4096) }),
      z.strictObject({ op: z.literal('rename_state'), target: reference, name: z.string().regex(/^[A-Za-z_][A-Za-z0-9_]{0,63}$/) }),
    ])).min(1).max(1),
    preview: z.boolean().optional(),
  }).or(groupSchema).or(z.strictObject({
    request_id: reference,
    operations: z.tuple([z.strictObject({ op: z.literal('connect_path'), plan_ref: reference })]),
    preview: z.boolean().optional(),
  })),
  bd_revert: z.strictObject({ change_id: reference, request_id: reference, preview: z.boolean().optional(),
    finalize: z.boolean().optional().describe('Experimental graphical creation only: finish a completed undo history and restore its original source allocator after complete original graph/census guards. Closes redo; material remains retained. Requires the explicit finalization profile. preview checks without executing.') }),
}

const descriptions = {
  bd_read: 'Read ASCET Block Diagram logic through the live Cebra API, including all captured nodes, pins, edges, execution order, formulas and referenced method bodies. Supply exactly one of component, snapshot or cursor. Optional scope with component reads only selected Main node topology and layout through native local APIs; no definitions/method bodies are collected in scoped reads. Scope is explicit in the response and has its own observation history. Every live component read automatically records before/after snapshots and collected semantic differences; the recording receipt reports baseline, changed, unchanged or continuity_gap and a change_id. There is no background monitor; edits between observations may be missed. Reading snapshots or cursors creates no new observation. Follow every next_cursor to finish reading. Collected coverage is distinct from delivered coverage. Use view=structure for Main state-machine states/transitions, raw ESDL slots, priority and layout; full logic view still excludes state machines. Structure refs Main/pN and Main/eN are distinct from full-logic refs. Structural graph reloads expire runtime edge identity. Project/instance effective calibration and numeric implementation remain unresolved. Never interpret default zero values as runtime values.',
  bd_find: 'Find exact node, pin, edge, model and method references within an ASCET snapshot. First call bd_read(component=...). This searches the captured component and referenced definitions, not the live database catalog. Supply snapshot and query, or cursor alone.',
  bd_inspect: 'Inspect ASCET snapshot fields and read-time structural checks. query=capabilities reports implemented/disabled operations; query=snapshots lists observations from this Doge session; query=changes lists persistent automatic history across sessions, newest first, optionally filtered by component/database or snapshot component identity. History includes baseline, unchanged and continuity gaps, not just edits. query=recovery with change_id queries retained native completion after a lost reply; reconcile=true durably resolves a matching terminal observation without replaying setters. Incomplete native operations remain quarantined. query=edits discovers durable edit change_ids, request_ids, actual changed fields, conflicts, unknown outcomes and revert links across sessions without reading ASCET. Optional snapshot filters database/component OID across epochs; component/database filters are also supported. Unreadable records are explicit unfiltered diagnostics. Listing pages are frozen; query again to refresh in-flight status. Use bd_diff(change_id=edit_...) for actual values. fields requires snapshot and targets. configuration reports captured scalar/array/matrix component defaults with explicit absent/unavailable states; effective project/instance values remain unresolved. These queries do not refresh the live model. Continue with cursor alone.',
  bd_diff: 'Compare two immutable ASCET observations from the same database, component, process, Doge session and collection scope. Supply before and after snapshot IDs, change_id from automatic history, or cursor alone. Different scopes are rejected so missing coverage is not mistaken for deletion. Reports collected fields, connections and sequence; local observations with include_layout also compare positions, sizes and edge geometry multisets. Recorded differences are available offline in later sessions. Effective calibration and implementation remain unresolved. No differences does not prove runtime equivalence. Recording does not enable revert.',
  bd_edit: [
    'Business-model writes remain disabled. ASCET_BD_SANDBOX_WRITES=1 enables a numeric literal edit in Trial_* fixtures of at most 20 unconnected literals. ASCET_BD_STRUCTURAL_WRITES=1 enables one typed structural operation per patch in BDE_Tool_Experiments/Trial_* using a fresh view=structure observation. Exact refs must belong to this Doge session and current ASCET process.',
    'create_block supports 26 kinds in Main, including variable/parameter/constant, arrays/matrices/distributions, tables, literals/comments/operators/controls/hierarchy, and enum/component definitions. enumeration accepts either an existing definition path or new_definition with ordered unique items. New types are created in the sandbox folder; actual library_effects record their path, OID and items separately from graphical differences. Inverse checks type identity, items and references before deletion. Messages/resources require Module. Creation requires the complete selected structure scope. Scalar initial_value supports variable/parameter/constant/enumeration; message initial values are unavailable.',
    'set_scalar_value requires exact model ref and expect.value. set_array_values/set_matrix_values/set_distribution_values require expect.values and independent local defaults. Arrays/distributions allow max_size 1..256; matrices use max_size=[X,Y], each 1..16 and native values[x][y]. Distribution axes must be numeric and strictly increasing; axes referenced by grouped tables are rejected. Changes resize only within declared maxima, preserve configuration identity, and save raw native inverse. Effective calibration remains unknown.',
    'set_sequence_number preserves the assigned activator; set_sequence assigns or switches an existing call by exact owner method name and number. Unassigned expect.method may be null. Shared pins are observed together; occupied numbers are rejected. Missing calls cannot be created. move_node/delete_node support ordinary selector calls while preserving call/label identity and binding. Calls with separate execution connection pins are rejected before writing.',
    'set_table_values changes existing independent local numeric 1D/2D table defaults with exact expect.values and unchanged dimensions. Ordinary and fixed tables are supported; grouped and logical tables are rejected. Table creation accepts max_size=1..256 for 1D or max_size=[X,Y] each 1..16 for 2D. Axes, interpolation, extrapolation and other configuration objects remain unchanged. Native inverse preserves the original value object and checks configuration identity and current values.',
    'set_table_axis changes one existing ordinary independent local numeric table axis x/y, with exact expect.values, unchanged dimensions and strictly increasing numeric values. Fixed and grouped axes are rejected. set_table_interpolation changes the table declaration, using exact expect.declared_interpolation (including null), expect.interpolation_linear/interpolation_rounded and mode linear/rounded. This affects every configuration of that declaration; only component defaults are collected/verified. Ordinary/fixed independent numeric tables are supported. Inverse restores the exact prior declaration value or axis object with configuration identity guards.',
    'connect_data/disconnect_data/rewire_data edit exact data pins/edges; delete_node removes the occurrence and incident edges, preserving shared declarations. set_literal/set_comment and fixed-endpoint orthogonal set_edge_route also record actual geometry. State operations remain experimental. Structural source checkpoints copy supported nested values and invalidate old refs after source changes; they do not provide database transaction isolation.',
    'preview checks current preconditions without mutation. Execution checks again, records actual scoped before/after and native side effects, and finalizes with StoreToCache, which may rebuild logic and auto-commit. Successful observed edit/revert returns after_snapshot for continued local work without another whole-model read; no stale rows are merged. Identical request_id returns its durable result without replaying setters; unknown outcomes are never replayed. Check bd_inspect(query="capabilities") for limits and recovery.',
    'create_hierarchy_port targets an existing hierarchy node in a complete parent structure scope, with input/output direction and a unique name. delete_hierarchy_port targets its external parent pin and removes that boundary plus incident data edges on both sides. Actual scope_effects and immutable snapshots record the child and all descendant boundary context changes. Native inverse checks all affected scopes and original interface/child/parent object order. Two nested sandbox scopes passed three rounds of create/delete, child conflicts and controlled real apply/inverse reply loss. These remain experimental sandbox writes; Class interfaces, interface screenshots/lifecycle and reload are unverified.',
  ].join(' '),
  bd_revert: 'Business-model restoration remains disabled. With ASCET_BD_SANDBOX_WRITES=1, reverts a verified isolated numeric literal edit in the same Doge session and ASCET process. Checks current text, position and size against recorded after, applies the recorded old text, finalizes, and verifies all restored local fields. Records a new edit change_id. Refuses conflicts and unknown outcomes. Not a generic Undo command; structural restoration with ASCET_BD_STRUCTURAL_WRITES=1 uses retained native recovery records within the original ASCET process and Doge session. External saved graph reloads expire those records. Refuses unknown outcomes; restart recovery and generic Undo are unavailable.',
}

descriptions.bd_read += ' view=interfaces reads message roles, Class formal identities and Main/nested hierarchy topology through a fixed native query. Its compact JSON rows begin with a columns/kinds legend: each row is [group, column values..., optional extra-fields object]. All requested document fields remain present; missing keys are not null or false. Native hierarchy pairs use reciprocal object identity and child membership, not names. Its refs are read-only; layout, method bodies, Project bindings, database-session identity and runtime delivery are not collected. Follow all cursors.'
descriptions.bd_find += ' Interface snapshots also support kind=interface/message. Pins use owner-qualified refs such as Main/h12/n5.p6; connection evidence is not an editable ref.'
descriptions.bd_inspect += ' With a view=interfaces snapshot, query=signal_path and targets=[output_pin_ref,input_pin_ref] returns one shortest path through observed diagram connections and verified hierarchy pairs, with distinct segment kinds. It does not infer operator or Class argument-to-return dependencies. query=interface_binding accepts exact pin/interface/message refs and returns collected evidence and gaps. Both are offline queries; a path proves only static connectivity between the requested pins.'
descriptions.bd_inspect += ' query=block_types lists current declared ordinary BDE creation/field/layout/wire/delete routes offline. Optional block_kind returns typed creation details; owner_kind=class|module and diagram_scope=Main|child expose context restrictions. These are code contracts, not complete native inventory, live acceptance or snapshot-specific write authorization. Read exact refs and use edit preview before mutation. Follow all cursors.'
descriptions.bd_inspect += ' query=class_callers with component=<full Class path> performs a bounded live read of method/formal aliases and direct SGClass/SGModule callers, declarations, exact occurrence scopes and pin aliases. It requires clean editors, samples bindings twice and retains excluded non-caller references. It does not capture full caller graphs, perform model setters or certify transitive callers/runtime delivery. Follow all cursors; returned refs are read-only evidence for selecting subsequent structure reads.'
descriptions.bd_inspect += ' Optional selector={diagram,method_alias,formal_alias,slot} returns only the selected formal and matching caller pins, with hashes of the collected signature/bindings. This reduces returned data; native discovery coverage is unchanged. A void method call is distinct from an argument/return and cannot be selected as a formal.'
descriptions.bd_read += ' view=class_interface captures an isolated Trial_* Class definition and all supported direct caller scopes, exact formal aliases, layout and persisted configuration storage. This costs more than an ordinary logic read; it does not contain effective instance values or complete external type content.'
descriptions.bd_edit += ' Experimental delete_class_formal and create_class_argument require view=class_interface, ASCET_BD_CLASS_WRITES=1, isolated Trial_* definition/callers, exact selector, layout_policy:"follow_verified_pins_and_orthogonal_routes" and sequence_policy:"no_implicit_changes" or (return deletion only) "allow_unassigned". preview rechecks the complete collected owner baseline with zero setters and returns planned effects/layout candidates, observed native recovery keys/capacity for the whole owner group and explicit write limitations. create_class_argument creates one cont|sdisc|udisc|log input argument selected by exact Main/method_alias and bounded identifier, and materializes one input pin per caller occurrence, including nested scopes. It validates the native method/name/type and rejects changed complete-owner preconditions before mutation. Previews do not allocate recovery or reserve a request; prepare and execution still recheck. Apply automatically retains actual multi-owner WAL and an after snapshot; bd_diff and edit history query it offline. The inverse requires the complete recorded after baseline and refuses later owner changes. Class return/output/enum/complex argument creation and partial native recovery remain unavailable; this is not general local inverse acceptance.'
descriptions.bd_revert += ' For an experimental Class change, preview=true returns a planned inverse of the actual WAL diff and a separate write_eligibility decision. It never records an inverse edit or reserves request_id. Held/expired/already-restored changes refuse without Cebra and explicitly mark current/native preconditions not_checked. Otherwise complete actual-after owners and retained signature/formal/source/graph identity guards are sampled; execute_recheck_required is not a successful inverse. Positive retained-object and capacity-exhaustion branches still lack online acceptance; detached object fields/effective configuration/external type contents are not verified. Follow bd_read continuation cursors to obtain the complete plan.'
descriptions.bd_inspect += ' Class query=recovery reads durable WAL offline. reconcile=true requires the original session and complete terminal evidence plus a fresh all-owner observation, reconstructs a missing receipt without setters, and clears only its own quarantine. Partial/incomplete transactions remain quarantined.'
descriptions.bd_diff += ' Experimental Class patch presentation=show|clear routes each actual graphical resource to its own original BDE scope with the native presentation flag. Show checks the complete recorded owner baseline; clear does not replay or read the model. Caller formal ghosts use recorded independent public endpoint positions. Native-call success does not certify visual/zoom/lifecycle acceptance.'
descriptions.bd_read += ' With view=structure, scope={diagram:"Main/h12/h5"} reads an exact child hierarchy under the retained root generation. Structure refs are scope-qualified, for example Main/h12/h5/p4, and differ from owner-qualified read-only interface refs.'
descriptions.bd_edit += ' Child structure snapshots support connect_data/disconnect_data/rewire_data and ordinary delete_node in the same scope, with native boundary identity checks. Child create_block supports literal/comment/operator, variable/parameter/constant, receive_message/send_message/send_receive_message, enumeration and component with an existing Class definition. Hierarchy containers and boundary pins cannot be deleted. Other child creation kinds and Class signature editing remain unavailable. Reverting a created declaration checks graphical uses throughout the root diagram, including nested scopes, before deleting it.'
descriptions.bd_diff += ' Experimental presentation also supports recorded child scopes. It resolves the UI hierarchy by exact parent/child IDs, never by name. One overlay is active per component; drawing suspends when the user switches to another scope. Clear must target the same scope. Native routing evidence is not visual, zoom or lifecycle acceptance.'
descriptions.bd_inspect += ' For capture-only prepared commit resources, query=recovery records a fresh direct-resource check without model setters and returns bounded changed locations. It retains complete values in WAL. reconcile=true is refused for this profile; its complete persistence/inverse closure remains unavailable.'
descriptions.bd_diff += ' Recorded commit_resource_checks include all actual direct-resource before/after values and their original WAL event/time, including cache timestamps and query read effects. They are offline evidence, do not claim a model edit or current equality, and do not grant revert authority.'
descriptions.bd_read += ' project_messages includes bounded Module/Class instance chains and a native database object token; the database close/reopen lifecycle is not yet verified. Structure model rows include message scope, send/receive roles and global_label.'
descriptions.bd_inspect += ' query=project_signal_path accepts a Project snapshot, components=[{snapshot,instance}], and source/target={instance,ref} for exact pin endpoints. Requires the same session, native database token and process. It joins captured diagram edges, verified hierarchy pairs and uniquely selected compatible message declarations, preserving ambiguity and missing coverage. This offline query does not prove runtime delivery or Class body behavior.'
descriptions.bd_edit += ' Message creation accepts message_scope=local/imported/exported and model_type=enum with an existing definition path. global_label equals the declaration name. Actual roles/scope/label and enum definition identity are checked; new message enum definitions and initial values are unavailable. Ordinary steps=[{snapshot,operations:[one typed operation]}] groups 2..16 distinct sandbox component OIDs. All resources preflight before writes; group execution is sequential, non-atomic, automatically journaled under flow_ IDs. Same-root dependent steps require the restricted connection_sequence mode; shared new enum types remain unavailable in groups. Unknown outcome stops later steps and is never replayed.'
descriptions.bd_diff += ' flow_ group IDs return recorded actual patches for every resource offline. presentation=show/clear operates their original BDE windows and reports each result; full visual acceptance is pending.'
descriptions.bd_revert += ' preview=true checks current observations and retained native inverse guards without consuming recovery material. flow_ groups preflight all resources before the first inverse, then restore in reverse order with per-step rechecks. Partial restoration or unknown outcomes are explicit; external edits are never overwritten.'
descriptions.bd_revert += ' The retained-record inverse planner uses an immutable after image as its base and the before image as its desired payload, preserves non-overlapping current ranges and rejects overlapping edits. This planner is offline-only; until native leaf semantics, durable rollback and authorization are proven it reports native_calls=0 and inverse_authorized=false.'
descriptions.bd_inspect += ' query=flow_plan with segments=[{snapshot,source,target}] freezes existing-pin connections, or steps=[{snapshot,operations:[create_block|connect_data]}] freezes a construction sequence. Both take 2..16 explicit steps without live reads. It returns plan_ref and coverage; inter-segment semantic bindings and execution are not implied.'
descriptions.bd_edit += ' operations=[{op:"connect_path",plan_ref}] executes a frozen plan without a top-level snapshot. Existing-pin sequences support fan-out and repeated scopes. Construction sequences resolve created pins uniquely from verified actual prior patches, persist each resolved intent before dispatch and stop on missing/ambiguous dependencies or unknown outcomes. Initial scopes and creation preconditions are checked before setters; generated pins receive native validation once available. The flow_ inverse preflights native identities, parent order and the complete reverse actual-patch sequence. Shared interface changes require separate validation.'

export async function runBlockDiagramBackend(tool: string, args: Record<string, unknown>, session: string, signal?: AbortSignal): Promise<BackendOutput> {
  if (signal?.aborted) return Promise.resolve({ is_error: true, content: JSON.stringify({
    code: 'CANCELLED_BEFORE_DISPATCH', status: 'not_dispatched', model_modified: false, request_id: args.request_id,
  }) })
  if (process.env.ASCET_BD_LOCAL_PAGING !== '0' &&
      ['bd_read', 'bd_find', 'bd_inspect', 'bd_diff'].includes(tool) &&
      Object.keys(args).length === 1 && typeof args.cursor === 'string') {
    const store = resolve(process.env.ASCET_BD_STORE || fileURLToPath(new URL('../../../../analysis/bd-tool-state', import.meta.url)))
    const page = await resumeBlockDiagramPage(tool, args, session, store)
    if (signal?.aborted) return { is_error: true, content: JSON.stringify({
      code: 'REQUEST_CANCELLED', status: 'cancelled_wait', model_modified: false, backend_may_be_running: false,
    }) }
    if (page) return page
  }
  return new Promise(resolve => {
    const onAbort = () => {
      // Stop waiting, not the backend. It must retain its native lock and persist
      // the actual outcome; terminating the client cannot stop a Cebra setter.
      const write = tool === 'bd_edit' || tool === 'bd_revert'
      resolve({ is_error: true, content: JSON.stringify({
        code: write ? 'WRITE_OUTCOME_UNKNOWN' : 'REQUEST_CANCELLED',
        status: write ? 'outcome_unknown' : 'cancelled_wait', request_id: args.request_id,
        automatic_retry: false, backend_may_be_running: true,
        message: 'Stopped waiting. Backend continues to persist its result under the instance lock. Inspect durable history before another write.',
      }) })
    }
    const child = execFile(
      process.env.ASCET_BD_PYTHON || 'python',
      [backend],
      { windowsHide: true, timeout: 90000, maxBuffer: 1024 * 1024, encoding: 'utf8' },
      (error, stdout) => {
        signal?.removeEventListener('abort', onAbort)
        if (error) {
          if ((tool === 'bd_edit' || tool === 'bd_revert') && error.code !== 'ENOENT' && error.code !== 'EACCES') {
            resolve({ is_error: true, content: JSON.stringify({ code: 'WRITE_OUTCOME_UNKNOWN', status: 'outcome_unknown', automatic_retry: false, request_id: args.request_id, message: 'Backend ended without a confirmed write receipt. Inspect durable edit history before any further write.', detail: error.code }) })
            return
          }
          resolve({ is_error: true, content: JSON.stringify({ code: 'BACKEND_UNAVAILABLE', message: 'Could not run the Block Diagram backend. Check ASCET_BD_PYTHON and the Python/ASCET installation.', detail: error.code }) })
          return
        }
        try {
          const value = z.strictObject({ content: z.string(), is_error: z.boolean() }).parse(JSON.parse(stdout))
          resolve(value)
        } catch {
          if (tool === 'bd_edit' || tool === 'bd_revert') {
            resolve({ is_error: true, content: JSON.stringify({ code: 'WRITE_OUTCOME_UNKNOWN', status: 'outcome_unknown', automatic_retry: false, request_id: args.request_id, message: 'Invalid backend receipt after a write request. Inspect durable edit history; do not replay.' }) })
            return
          }
          resolve({ is_error: true, content: JSON.stringify({ code: 'BACKEND_PROTOCOL_ERROR', message: 'Block Diagram backend returned an invalid response.' }) })
        }
      },
    )
    signal?.addEventListener('abort', onAbort, { once: true })
    child.stdin?.on('error', () => {})
    child.stdin?.end(JSON.stringify({ tool, args, session }))
  })
}

function makeTool(name: keyof typeof blockDiagramSchemas) {
  const schema: z.ZodObject = blockDiagramSchemas[name]
  const description = descriptions[name]
  return buildTool({
    name,
    searchHint: description,
    strict: true,
    // Responses self-bound to at most 16 KiB. Avoid Read -> persisted file -> Read loops.
    maxResultSizeChars: Infinity,
    async description() { return description },
    async prompt() { return description },
    inputSchema: schema,
    isEnabled() { return process.env.ASCET_BD_ENABLED !== '0' },
    isReadOnly(input?: Record<string, unknown>) { return name !== 'bd_edit' && name !== 'bd_revert' && !(name === 'bd_diff' && input?.presentation) && !(name === 'bd_inspect' && input?.reconcile) },
    // The Cebra bridge is serialized, even though reads do not request model writes.
    isConcurrencySafe() { return false },
    userFacingName() { return name },
    getActivityDescription() { return `ASCET ${name}` },
    toAutoClassifierInput(input) { return input },
    renderToolUseMessage() { return null },
    async call(input: Record<string, unknown>, context: ToolUseContext) {
      context.abortController.signal.throwIfAborted()
      return { data: await runBlockDiagramBackend(name, input, getSessionId(), context.abortController.signal) }
    },
    mapToolResultToToolResultBlockParam(data: BackendOutput, toolUseID: string) {
      return { type: 'tool_result' as const, tool_use_id: toolUseID, content: data.content, is_error: data.is_error }
    },
  } satisfies ToolDef<typeof schema, BackendOutput>)
}

export const BlockDiagramTools = (Object.keys(blockDiagramSchemas) as (keyof typeof blockDiagramSchemas)[]).map(makeTool)
