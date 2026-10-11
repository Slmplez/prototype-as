# Structural discovery acceptance, 2026-10-03

The CLI now discovers BDE objects by native category and saved State/Transition objects even when no code text is present. It returns readable identities without requiring guessed names or reconstructed statements.

## Operations

```json
{"operation":"find","target":"objects","in":{"diagram":"<actual Diagram ref>","object_kind":"hierarchy"},"limit":20}
{"operation":"find","target":"states","component":"AEB_State_Machine","match":"exact"}
{"operation":"find","target":"transitions","component":"AEB_State_Machine","match":"exact"}
{"operation":"read","ref":"<actual State or Transition ref>"}
```

Structural directories accept literal name contains/exact matching and `in.component/in.diagram/in.visibility`. Objects additionally accept object_kind: element/operator/control/literal/comment/hierarchy/hierarchy_pin/conversion/unknown. Categories absent from the live sample have generated-fixture coverage; the live run does not prove every native category/version.

State reads return native_type/state_kind/initial/history, code_slots and direct incoming/outgoing Transition refs. Transition reads return start_state/end_state refs, saved priority and code_slots. Junction and hierarchy identity are preserved. Related refs are readable and support batches; code slots return saved text or Method bindings.

State/Transition object refs reject lines/include_graph/depth/direction. Topology reads are opt-in; ordinary code search does not request this metadata. Reads share the existing 128 KiB budget. Relations paginate from an immutable request snapshot, with independent batch-item cursors.

Structural object refs always enforce the captured topology/code-slot revision, even when if_unchanged is false. Missing/ambiguous endpoints or invalid priority produce partial/issues and null values. Unresolved Transitions also make potentially incomplete State relation directories partial. No runtime scheduling or reachability is inferred.

## Real Example

AEB_State_Machine/Main/Transition #20 connects Junction #3 to State #0 (`Main/AEB_State_Off`), priority 1, with `init_trigger` Method binding. Reading its endpoint/code_slots refs returns those objects or binding. State Off has outgoing Transition #26 and #27.

Complete JSON is recorded in the `state_relation_batch` rows of [the trace](experiments/structure-discovery/2026-10-03-cold/requests.jsonl). Historical refs have expired; acquire current refs through a new CLI find.

## Verification

- Full offline regression: **553 passed, 0 failed**. Forty structural cases include 30 generated directory/pagination oracles, duplicate nested names, empty slots, self Transitions, metadata-only freshness edits, malformed transport, unresolved endpoints and 400-Transition paging.
- Two isolated live runs separated by a full ASCET restart: **105 CLI requests each**.
- Each run discovered **1,998 BDE objects across 71 Diagrams, 14 State/Junction objects and 19 Transitions**, and read all **50 saved code/binding slots**.
- Every present BDE category had a local read: element, literal, operator, control, hierarchy, hierarchy_pin.
- Identities, endpoints, priority and saved bodies were checked against frozen oracles; full source/graph audits verify reads did not change saved content.
- Exported AXL independently verifies matching BDE and State/Transition facts: see [AXL research](AXL_SEARCH_RESEARCH.md).

Artifacts: [warm run](experiments/structure-discovery/2026-10-03/report.json), [restart run](experiments/structure-discovery/2026-10-03-cold/report.json). Lifecycle audits/cleanup are recorded separately in each run's `closeout.json`.

## Timing Boundaries

| Scoped hot find after restart/warmup | Median | P95 | Maximum |
| --- | --- | --- | --- |
| Transitions | 57.7 ms | 62.0 ms | 64.9 ms |
| BDE objects | 56.3 ms | 60.1 ms | 60.8 ms |

The first structural query after a full isolated restart took **1,076.5 ms**. Whole-Database directories took approximately 366 ms (States), 49 ms (Transitions) and 393 ms (BDE objects). Hot results are not universal cold-start or Database-size guarantees.

Dataset table interpolation/extrapolation reads remain outstanding. An independent autonomous-Agent evaluation has now run 20 tasks plus four focused follow-ups; see [the independent report](INDEPENDENT_AGENT_REPORT.md) for graded results and remaining issues. No listener, persistent index, UI or new MCP integration was added. The interface is the serial persistent CLI find/search/read session.
