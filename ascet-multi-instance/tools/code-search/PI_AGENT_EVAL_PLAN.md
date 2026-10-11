# Pi Code/BDE Agent Evaluation Plan

Chinese execution guide: [PI_AGENT_EVAL_GUIDE.zh-CN.md](PI_AGENT_EVAL_GUIDE.zh-CN.md).

Independent Chinese intent suite: [PI_AGENT_INTENT_EVAL.zh-CN.md](PI_AGENT_INTENT_EVAL.zh-CN.md), 28 tasks across seven groups, including four actual two-turn RPC conversations. Pre-tool declarations, observed call selection and native evidence are scored separately. Its results do not replace or merge with the historical 143-case suite.

Unified optimization results: [2026-10-04-OPTIMIZATION-RESULTS-04.md](experiments/pi-agent-eval/2026-10-04-OPTIMIZATION-RESULTS-04.md) and [JSON](experiments/pi-agent-eval/2026-10-04-OPTIMIZATION-RESULTS-04.json). With identical corrected grading, complete candidate acceptance is 117/143, 128/143, 133/143 and 124/143; calls are 719, 626, 601 and 594; unexpected errors are 27/714, 12/621, 16/596 and 13/589. None meets the complete 90%/1% gate. Candidate 4 improves development acceptance to 24/27 but regresses on the complete suite; its 120 tasks successful in both candidates 3 and 4 use 483 vs 485 calls. The gate rejects it, and baseline remains the default/recommendation. Final regression passed 710/710; every candidate completed source/graph and owned-instance closeout audits. These are independent first attempts, not a stable-gain claim.

## Optimization Protocol (2026-10-04)

The objective is accurate target/scope selection and higher first-attempt task acceptance. Time and call counts are diagnostic only and do not compensate for accuracy regressions. Existing call-success rates measure error-free returns; per-call relevance and target/scope precision have not yet been independently labeled or measured. The three public tools remain find/search/read; CLI serialization remains authoritative. Scope is saved code and BDE only.

### Three Evaluation Layers

1. Deterministic regression: input validation, saved-source equality, exact identities, lossless Variant strings, pagination, byte budgets, local graph boundaries, cancellation and connection cleanup. A source/graph mismatch blocks candidate selection.
2. Development set: choose indices 0, 3 and 6 in each of the nine fixed groups, preserving plan order: 27 tasks. Use the same tasks, model, Pi version, corpus fingerprint and repetition count for baseline and candidate. No hidden model retries or answer repair.
3. Complete acceptance: all 72 fixed cases plus every native Diagram case (currently 71). Development results never replace full-suite acceptance. The remaining fixed cases and corpus are reserved for this round's validation, but are historical regression samples, not previously unseen generalization data.

### Frozen Scoring And Diagnostics

The original strict rubric and evidence/fact rubric remain unchanged. Diagnostics additionally report first-call success, unexpected-error rate (excluding requested negative calls), tasks with unexpected errors, acceptance after an unexpected error, calls per successful task, model-result bytes, budget exhaustion, exact repeated calls, and queue/execution/whole-task time. Source checks report their actual denominator, not a universal accuracy claim.

Model-service failures make a comparison ineligible; timeouts and call-budget failures remain task failures. First-call success means a non-error tool response, not proof that the search selected the correct scope. Repeated identical calls can be deliberate cursor replays and are not automatically classified as waste.

### Automatic Iteration

Record baseline, apply one bounded candidate, run deterministic checks, then run paired development attempts. Compare complete inventories and provenance before selecting a candidate. Prefer increased strict passes with no increase in unexpected-error rate; at equal passes, require at least a 10% call reduction among tasks successful in both runs (minimum five common successes). Preserve gained/lost tasks and raw answers.

A selected candidate proceeds to complete acceptance. Suggested phase targets are >=90% strict acceptance and <=1% unexpected-error rate; these are goals, not established results. Source/graph equality, all deterministic checks and cleanup must pass regardless of success-rate gains. Repeated independent trials are required before claiming a stable gain. An incomplete, incomparable or failed run cannot automatically promote a candidate.

Optimization priorities: model input clarity, one-step member discovery, explicit pagination completion, lossless evidence and actionable recovery. Do not relax exact source punctuation, reinterpret Junctions as States, widen scopes silently, or add unrequested capabilities to improve scores.

### Reproducible Automation

```powershell
# Build, run all deterministic tests, evaluate paired development sets, then
# run the complete suite only when the candidate passes the development gate.
npm run verify:pi-optimize -- experiments/pi-agent-eval/my-optimization

# Reuse an already recorded 27-task baseline. --full additionally measures
# full acceptance even when development selection rejects the candidate.
npm run verify:pi-optimize -- experiments/pi-agent-eval/my-optimization-2 experiments/pi-agent-eval/my-baseline --full

# Candidate is opt-in until the recorded gates pass.
$env:ASCET_PI_TOOL_PROFILE='optimized'
```

The output directory must be new. `optimization.json` records the selection decision, gained/lost tasks, common-success call totals and full acceptance. Per-stage logs and per-task raw Pi events remain beside the original `report.json`, `resolved-cases.json`, native oracle snapshot and `closeout.json`. No automatic answer correction, task retry or grader adjustment occurs. The driver never edits compiled tools during an active evaluation.

If a supplied baseline was scored by an older evaluator, the driver reassesses its original calls and native oracle with the current grader before comparison; this runs neither Pi nor ASCET. Grader/source-report hashes identify the review, and timestamped copies are preserved under `reassessments/`. Scoring provenance must match for baseline and candidate. Raw answers, requests and original scores remain unchanged.

An observed evaluator defect rejected `batch-pagination` when identifier queries used supported `{text,mode}` entries instead of the equivalent string-array/top-level mode. The corrected check uses successful canonical query results and retains required scope, limit, continuation, independent counts and full reads. Literal/mixed predicates still fail; all compared records must receive the same correction. This corrects input equivalence, not the acceptance requirements.

The deliberate encoded-ref-array recovery task requests an input error, not a specific transport-layer error code. Its original classifier recognized only CLI `INVALID_REQUEST` and missed Pi SDK validation failures before dispatch. The corrected check also recognizes the exact read/ref validation signature, retaining the original two-ref/order/identity recovery requirement. Only the first deliberate malformed-array error is excluded; repeats and unrelated transport failures remain unexpected. Reassessments store separate error indices without rewriting original calls or labels.

Further equivalence fixes recognize a successfully returned whole Diagram ref as its owner scope, and a single exact `in.member` filter as an exact member-name lookup. Multiple known member refs from one owner form one OR Component scope; additional/unknown owners still fail. Wrong owners, unknown refs, broadened member arrays and contains predicates remain rejected. Malformed answer types fail that one attempt using the same guarded scoring path in live runs and offline reviews, rather than aborting a review batch. All seven historical reports received the same grader, with original report hashes verified unchanged.

Offline failure diagnostics: [2026-10-04-ERROR-DIAGNOSTICS-04.md](experiments/pi-agent-eval/2026-10-04-ERROR-DIAGNOSTICS-04.md) and [JSON](experiments/pi-agent-eval/2026-10-04-ERROR-DIAGNOSTICS-04.json). They correlate recorded execution completion order with streamed arguments, preserving malformed JSON and deliberate-error labels. Candidate 4 eliminates the observed Component/Diagram identity errors but still has JSON syntax, encoded-array and filter-placement errors; better first-call success does not imply better task completion. No retries or raw-answer repair are introduced.

Automatic selection requires matching task requirements and plan hash, Pi/model, corpus fingerprint and unique case/repetition inventory, all planned first attempts, and successful source/graph, protected-process and endpoint closeout checks. Full acceptance must use the selected development build, model, native corpus, plan and grader; it requires every fixed task and current native Diagram task, >=90% strict acceptance, <=1% unexpected errors and no timeout/call-budget failures. An accepted candidate is recorded as a recommendation; the baseline remains the default until deliberate adoption. A single comparison is insufficient evidence of a stable gain.

The suite has 72 fixed tasks plus one parameterized task per saved Diagram. The verified native sample has 71 Diagrams, so its resolved inventory is 143 cases. The model sees a task and the three delivered tools, while the native oracle and rubric remain in the evaluator.

| Group | Fixed cases | Coverage |
|---|---:|---|
| `names` | 8 | Exact/fragment/full-path discovery, Method name, two owners, Variant, Implementation OID, graphical Module Init Process |
| `text` | 8 | Identifier boundaries, literal fragment, case sensitivity, alternation and multiline regex, literal `*`, asymmetric context |
| `read` | 8 | ESDL Method, Class Init, saved C Method, empty external C, distinct Variants, bounded Method/Header, full large Header pages |
| `pages` | 8 | Independent identifier/mixed queries, zero result, duplicate query IDs, directory paging, immutable cursor replay, intentional truncation, duplicate batch-read order |
| `bde` | 8 | Literal Init connection, referenced object neighborhood, control Pins, shared Class implementation, native literal/operator discovery, incoming and two-step outgoing traversal |
| `diagrams` | 8 | Private visibility, Public/Private union, Hierarchy boundaries and depth, repeated Hierarchy names, empty Diagram, graphical getter, oversized graph/local fallback |
| `states` | 8 | State/Junction type and relations, Transition endpoints/priority/binding, Entry/Static/Exit slots, Condition and Action |
| `boundaries` | 8 | Complete absence, malformed ref-array recovery, invalid scope identity, cross-tool cursor, invalid regex, Dataset/interpolation, unsaved/generated code, runtime boundaries |
| `workflow` | 8 | Requirement-driven discovery: trigger cache, pressure reset, lock-time Init/decrement, dead-zone connection, shared limiting Class, Junction-to-Off Transition, Private marker |
| `corpus` | Per Diagram | A native placement with complete target Pins/local edges, or an actual empty Diagram; identity includes owner, Diagram OID, native node ID and Hierarchy scope |

## Grading

Each positive result must have actual same-session evidence, an appropriate completed read/discovery/search, and correct saved identity/facts. New catalog and search cases compare complete metadata and per-query occurrence counts against the native snapshot. Text reads also compare returned source/ranges to native saved text. BDE local reads check native Pins/edges, exact placement identity, depth/direction and Hierarchy boundaries. State/Transition checks preserve slot and endpoint identity. Unsupported tasks require an explicit missing capability.

Strict answer format is separate from semantic/evidence acceptance. Markdown fences, explanatory text in an exact name field, or an omitted field may fail the format/field contract even when the reviewed prose is reasonable. Machine checks validate requested facts and retrieval; they do not certify every explanation or causal inference in the answer.

Wrong scope, unrelated citations, missing continuation pages, changed cursor replay data, and same-named substitute objects are rejected. Directory pages and search citations must belong to the original cursor chain. Full reads must substantiate the reported member identity and cannot be replaced by a snippet or bounded read. Binding-only evidence cannot substitute for a Method implementation. Intentional recovery tasks require the expected tool/error code followed by successful supported arguments; encoded-array recovery preserves the original refs and order. A connection failure with the same bad arguments is not classified as an expected validation error.

Model/provider failures are reported as execution failures and stop subsequent requests. They are excluded from a completed-Agent success-rate denominator. Definitions, offline fixture checks, actual scripted tool regression, and real Pi+LLM cases are reported separately.

## Execution

```powershell
# Offline inventory: no model or ASCET calls.
npm run verify:pi-cases

# All fixed and fresh corpus cases; one independent attempt per task.
npm run verify:pi-agent

# Named group selection, three independent repetitions (no answer repair).
$env:ASCET_PI_GROUPS='workflow,states'
$env:ASCET_PI_REPEAT='3'
node dist/scripts/verify-pi-agent-eval.js experiments/pi-agent-eval/workflow-states-r3
```

Every repetition has a new Pi process/conversation and CLI generation. Only the three ASCET tools are active. The CLI owns ASCET serialization; model-selected parallel calls are retained with queue/execution timing. The runner audits saved source/graphs/topology, stops only its manifested test instance, and checks protected ASCET processes.

Default task budget is 20 calls/180 seconds. The large Header case permits 64 calls/240 seconds so its complete read can fit bounded pages. Repetition count is 1-5. Selecting `corpus` uses the current snapshot's Diagrams rather than assuming the older sample's count.

## Reporting

Record strict and semantic pass counts by group and repetition, model service failures, unexpected tool errors versus requested error-recovery steps, request count, result bytes, cited refs and unconsumed cursors. Measure complete task latency separately from tool execution/queue time. A source oracle snapshot warms native state, so a fresh CLI's first call is not a cold database benchmark. Do not infer the 500 ms warm-search target from complete model-task time or a small mixed sample.

The actual global Pi 1.0.2 plus DeepSeek evaluation completed all 143 attempts on 2026-10-04. After correcting evaluator defects, 102 passed strict acceptance and 103 passed evidence/fact acceptance; two attempts exceeded their tool-call budget. The original scores, answers and events are preserved beside a separate reassessment. No model service failure occurred in this full run.

Model-visible output was then corrected to expose source line counts, Diagram OIDs, explicit root Hierarchies and quoted lossless Variant strings. A separate targeted run passed 15 of 16 attempts, including all eight previously failed root-Hierarchy cases. Its one strict failure omitted a semicolon from an assignment fact despite reading the correct source. Both runs passed saved-source/graph audits and owned-instance cleanup. At that stage, all 39 evaluator/process/Pi-integration regression tests passed; the targeted run did not repeat the entire 143-case suite. Later optimization runs are recorded separately under `experiments/pi-agent-eval`.

Earlier 45-second preflight timeouts with no events were caused by the harness leaving piped stdin open; Pi print mode awaited EOF. They did not establish model service failure. The earlier explicit account/provider errors remain distinct records. See `experiments/pi-agent-eval/2026-10-04-REAL-RESULTS.md`.
