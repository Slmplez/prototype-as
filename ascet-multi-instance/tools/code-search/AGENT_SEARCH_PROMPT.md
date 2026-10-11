Use ascet_code_find, ascet_code_search and ascet_code_read to inspect the current saved ASCET Database. All tools share one persistent, serial CLI session. Tool names supply the operation; omit operation from tool arguments.

## Locate Efficiently

- Known Component/Method/Process/Diagram name: find by literal name first. Unknown location: search 2-6 related terms together, usually limit:20. query arrays are independent queries, not AND.
- find.name matches the selected target: components, members (default), diagrams, objects, states or transitions. component optionally limits the owner by literal name/path; member and diagram remain compatible name fields. For native BDE type discovery use find target:"objects",in:{object_kind:"element"}; search does not accept in.object_kind.
- Use identifier mode for complete variables, text for literal fragments, regex for an actual ECMAScript Unicode expression without / delimiters. A cross-line regex needs multiline:true and, for dot spanning newlines, dotall:true. Name find uses contains/exact, not regex/glob.
- query accepts a string, one {text,mode,...} object, or an array of either. Object options override supplied top-level defaults; use an actual array for multiple independent queries.
- Reuse returned Component/Diagram refs in in.component/in.diagram to narrow later requests. Scope takes refs or valid OIDs, not names/paths. find.component accepts a literal name/full path. Do not repeat global discovery when a returned identity is sufficient.
- Default text context is 10 lines before and after. For BDE use group_by:"object" to merge fields per placed object; matched_fields/evidence and connections explain the match. Distinct placements stay distinct.

## Read Evidence

- Copy ref unchanged: {"ref":"RETURNED_REF"} or {"ref":["RETURNED_REF_1","RETURNED_REF_2"]}. Never encode refs with JSON.stringify. Correct INVALID_REQUEST arguments and retry; no rediscovery is needed for a type error.
- Batch related reads (up to 32 refs). Text returns code, whole Diagram returns diagram_text, binding-only slots return method_binding. Component refs are scope-only; find its members before reading.
- For text/diagram_text, lines:{start:20,end:80} selects inclusive original lines. code_range uses original 1-based Unicode positions with exclusive end. BDE object refs use depth/direction instead.
- Source CRLF, lone CR and LF each count as one line break. snippets.start_line and match ranges are original absolute lines; blank lines count. Do not renumber normalized previews or decode opaque cursors.
- BDE read defaults to depth:1,direction:"both". Start there; depth:0 shows the target's complete Pins, depth:2 expands another step. Neighbors expose connected/boundary Pins; read a neighbor with depth:0 for its full interface. Follow boundaries with returned refs to cross hierarchy levels. include_graph:true requests raw facts and may exceed the budget.
- All reads share a 128 KiB response budget. has_more:true requires {"cursor":"NEXT_CURSOR"} only to continue. Batch items have separate cursors. Consume all relevant pages before claiming a complete list or Method. omitted_* fields mean shortened previews, not more search hits.
- A combined search cursor pages all independent queries. Once the root has_more is false, every query is exhausted; there is no separate per-query cursor to follow. next_cursor continues delivery and is never an evidence ref.
- If a task asks for scoped text, find/search text members using that Component's scope, then read those member refs. Reading a scoped graphical object does not scope an unrelated referenced Class Method.

## Preserve ASCET Identity

- Outer component_path/component_type identify the owner (for example SGClass or SGModule); kind identifies saved content, not Component type. BDE referenced_component_path identifies the referenced Component, not the owner. Find that path's real Method before explaining its implementation. Legacy local object.component_path is only an alias for this reference target.
- A graphical Method/Process selects its entire owning Diagram. diagram_methods lists all shared members; find.name/member additionally returns matched_members for the graphical member names that matched. An empty matched_members means only the Diagram name matched, not that an Init Method exists or is absent. Read returns fresh source facts without this query-only field. Do not attribute all graph content to one Method. Init can be a Class/Module text member or BDE Diagram. State Machine init_trigger is an event, not its Init Diagram.
- find target:"diagrams" includes empty graphs and Init. Public/Private means actual owning Specification membership. BDE Process content has kind:"diagram"; an in.kind:"process" filter would exclude it.
- find target:"objects" with in.object_kind discovers native BDE categories, including unnamed objects. find target:"states"/"transitions" includes empty code slots and distinguishes Junctions by state_kind/native_type. Structural directories accept in.component/in.diagram/in.visibility; only objects additionally accept in.object_kind.
- State reads return initial/history, direct incoming/outgoing Transitions and code_slots. Transition reads return start_state/end_state, saved priority and code_slots. Read those refs for details or source. State/Transition object refs reject lines/depth/direction/include_graph; code-slot refs read saved code/bindings.

## Make Supported Claims

- Before explaining branches or execution order, read the complete saved Method and verify the actual braces/order. A nearby search snippet is not enough. BDE connectivity, Sequence annotations and Transition priority do not prove runtime scheduling, reachability or execution order. Never fabricate ESDL from a graph.
- Same variable names across Components do not prove connectivity or shared storage. A Pin named getAt may be a built-in table interface, not a saved Class Method. Natural-language similarity is not supported; query actual identifiers, names or comments.
- Two placements referencing the same Class establish shared Class identity only. Saved connections and a Class implementation do not establish that the placements invoke that Method at runtime.
- Root status is ok/changed/partial/error. Inspect partial issues and batch errors before conclusions. SOURCE_CHANGED, expired refs/cursors and process/database changes require new find/search in the intended current session. Refs expire after five minutes or eviction. Pages reuse the operation snapshot; new operations read fresh saved content.
- Unsupported: generated code, unsaved buffers, Dataset point values, table interpolation/type configuration, Formula definitions, transitive called implementations and runtime scheduling. Stop once evidence suffices or missing capability is established.
- Follow the caller's answer format exactly. Cite actual returned identities/refs, distinguish saved facts from inference and state missing evidence. For JSON-only requests output one JSON object without prose or fences.

## Examples (Tool Arguments)

ascet_code_find: {"component":"AEBPre5ms_iBooster","member":"AEBPre5ms","match":"exact"}
ascet_code_find: {"target":"components","name":"DBR_Force2Pressure","match":"exact"}
ascet_code_search: {"query":["AxAct","VxAct"],"mode":"identifier","in":{"component":"RETURNED_REF"},"group_by":"object","limit":20}
ascet_code_search: {"query":{"text":"if.*else","mode":"regex","multiline":true,"dotall":true},"in":{"component":"RETURNED_REF"},"limit":10}
ascet_code_read: {"ref":["RETURNED_METHOD_REF_1","RETURNED_METHOD_REF_2"],"if_unchanged":true}
ascet_code_read: {"cursor":"RETURNED_NEXT_CURSOR"}
