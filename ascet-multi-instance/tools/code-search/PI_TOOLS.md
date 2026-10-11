# Pi ASCET Code/BDE Tools

Latest precision iteration (2026-10-05): [implementation and paired evaluation](experiments/pi-agent-eval/2026-10-05-precision-02/REPORT.zh-CN.md). Object-owned Pins, separate Diagram context, native language, target-specific schemas and short task cursor handles passed 761 offline tests and direct isolated ASCET verification, including six real 4 KiB pages reconstructing all 51 target Pins. Across 152 broad Pi attempts, equally reassessed v4 task success was 60/76 versus 64/76; calls increased from 178 to 214 and unexpected errors from 1 to 10. A subsequent 32-attempt pagination comparison scored 12/16 versus 13/16, with three unexpected errors in each build. Parameter accuracy has not improved consistently, so task remains opt-in. Original v3 results and separate v4 assessments are preserved; the final short-cursor build has focused validation, not a fresh full 76-attempt run. [Previous iteration](experiments/pi-agent-eval/2026-10-05-precision-01/REPORT.zh-CN.md).

Chinese evaluation and optimization guide: [PI_AGENT_EVAL_GUIDE.zh-CN.md](PI_AGENT_EVAL_GUIDE.zh-CN.md).

Six-tool candidate (`ASCET_PI_TOOL_PROFILE=task`): [Chinese interface guide](PI_TASK_TOOLS.zh-CN.md), [actual registered definitions](agent-task-tool-definitions.json), [actual model JSON examples](AGENT_TASK_EXAMPLES.actual.json), and [final paired evaluation](experiments/pi-agent-eval/2026-10-04-task-comparison-02/REPORT.zh-CN.md). The final build passed 740/740 offline tests and 104 real Pi attempts across two profiles. The task profile used fewer calls, but its overall strict success did not improve; it remains opt-in and `baseline` stays the default. Scope omission, Diagram/object batch mixing, wrong binding read routes and answer formatting remain observed failures. Original attempts and their evaluated builds are preserved.

Earlier three-tool optimization evidence: [unified results](experiments/pi-agent-eval/2026-10-04-OPTIMIZATION-RESULTS-04.md) and [error diagnostics](experiments/pi-agent-eval/2026-10-04-ERROR-DIAGNOSTICS-04.md). Four complete runs recorded 117/143, 128/143, 133/143 and 124/143 strict acceptance. Candidate 4 improved development acceptance to 24/27 but regressed on full acceptance; the 120 common successes with candidate 3 used 483 vs 485 calls. Its 13/589 unexpected errors also missed the 1% gate. No candidate cleared the complete gate. At that checkpoint, deterministic regression passed 710/710 and all closeout audits passed. Those historical build hashes differ from the current six-tool candidate.

Requires Pi 1.0.2 (`@earendil-works/pi-coding-agent`), Windows, Node 22+, .NET Framework 4 and ASCET 6.4 with an open Database. The package contains the compiled extension, CLI, C# Bridge and embedded Smalltalk readers. No MCP server is needed.

## Install and load

From an extracted package directory, install the extension's JSON Schema validator:

```powershell
npm ci --omit=dev --ignore-scripts --no-audit --no-fund
pi -e .\dist\src\pi-extension.js
```

The `pi.extensions` declaration also supports Pi package discovery. The standalone CLI still requires no npm installation. Extension loading registers schemas and guidelines; it does not open ASCET. The first valid tool call lazily starts one persistent CLI. All three tools share that process. Pi may call them concurrently (`executionMode: parallel`); the shared CLI client serializes complete business requests and preserves response ordering.

Default endpoint is 127.0.0.1:32503. To select a prepared isolated endpoint:

```powershell
$env:ASCET_CODE_SEARCH_PORT='32631'
$env:ASCET_API_DLL='E:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll'
pi -e .\dist\src\pi-extension.js
```

## Tools

| Tool | Input and output |
|---|---|
| `ascet_code_find` | Literal names/paths; Components, Methods, Processes, Diagrams, objects, States and Transitions. Returns refs and native identities. |
| `ascet_code_search` | Literal/identifier/ECMAScript regex, multiline, independent query arrays, known metadata scope, context and object grouping. Returns source snippets or original BDE field evidence. |
| `ascet_code_read` | One ref or an actual array of refs; complete/ranged source, factual Diagram listings, local BDE Pins/connections, State/Transition endpoints and code slots. |

```json
{"component":"AEB_AxCtrlConfigFF_Modify","name":"calc_pre","match":"exact"}
{"query":["AEBLockTime","AEB_FxTarPT"],"mode":"identifier","group_by":"object","limit":20}
{"query":"C_AEB_AXCDeadZonePos","mode":"identifier","in":{"kind":"diagram"},"group_by":"object"}
{"ref":"<returned object ref>","depth":1,"direction":"both"}
{"cursor":"<returned next_cursor>"}
```

Continue with only `{cursor}` on the tool that produced it. Cross-tool cursors fail explicitly. Temporary refs/cursors belong to the current CLI generation, Database and ASCET process. Reload/exit closes the CLI and Bridge; reacquire refs after reload. Failed transport is closed before a later call starts a new generation; sent operations are never automatically replayed.

Results provide concise `content` for model reading and validated `structuredContent` for scripts. `details` contains only call identity/generation and timing. Defaults independently bound structured output and model text to 32 KiB. Text, local graphs and relationships paginate using immutable short-lived snapshots. Whole `include_graph:true` graphs must fit the budget; oversized graphs fail with a local-read suggestion. `partial` does not prove absence. BDE connections describe saved graph facts; bindings do not contain implementation bodies.

## Configuration and lifecycle

Custom Pi extensions can import `createAscetExtension` from `./dist/src/pi-extension.js` and export the resulting factory. Options include `client` command/env, `maxPageBytes`, `maxModelBytes`, `nativeTimeoutMs`, `operationTimeoutMs`, `drainGraceMs`, `closeDeadlineMs` and `exposure`.

`toolProfile:'optimized'` or `ASCET_PI_TOOL_PROFILE=optimized` selects the evaluated candidate contracts and model projection. It uses `find.name` as the single target-name field, leaves cross-field restrictions to the CLI's actionable validation, explicitly displays pagination completion and code-range coverage, and provides recovery suggestions. Type, enum, array and size bounds remain enforced. Default profile is `baseline`; profile selection propagates to the owning CLI so model-output budgets use exactly the same renderer as Pi.

The optimized model projection labels local BDE `target_pins` separately from neighbor `endpoint_pins`. Structured evidence still retains the original `pins` array and owner refs. Neighbor endpoints do not establish every Pin of a referenced block; use a depth-0 read of that neighbor for its complete Pins. A paged target read must consume its continuation before claiming complete target Pin coverage.

The optimized projection also supplies exact source `identity`, `member_names`, executable member `search_scope`, Component `owner_scope`/`diagram_lookup`, and whole Diagram `diagram_scope`/`object_lookup`. Reuse these actual scopes to avoid hand-building OIDs or putting a Component name in a ref field. Graphical Method/Process entries remain distinct from their owning source-document `kind:diagram`. JSON string values must be quoted and ref arrays must be actual arrays; invalid requests are surfaced, never silently corrected.

Defaults: native wire timeout 30 s, whole CLI operation 120 s, cancellation drain grace 2 s, client close deadline 5 s. Cancellation immediately completes the caller, then keeps the pending response isolated until drained or the transport is discarded. The Bridge holds its owning CLI process handle and exits if that process exits. This does not prove that native ASCET operations can be interrupted.

Timing fields: `client_setup_ms` measures lazy client initialization, `queue_ms` measures the shared client's queue, `execution_ms` measures dispatch through complete JSON decoding, and `projection_ms` includes output validation/model formatting. First-call execution includes CLI/Bridge startup and the first ASCET read. Cold-first-call totals must be reported separately from warm query metrics.

`direct` is the tested default. `deferred` requires an active Pi `tool_search`; `codemode` requires the corresponding script tool. Configuration support is provided, but these optional discovery modes are not part of the live direct-mode acceptance.

Coverage is saved source/BDE only. Formula definitions, Dataset values/interpolation, generated code, unsaved buffers and runtime scheduling are outside these tools. No filesystem watcher or persistent source index is maintained.

Run offline regression with `npm test`. `npm run verify:pi` requires the manifested isolated endpoint configured by `ASCET_PI_MANIFEST`; optional `ASCET_PI_ROUNDS` controls warm repetitions and `ASCET_PI_REPORT` selects the report directory. The verifier uses actual registered Pi tools without calling an LLM.

## Real Pi Agent evaluation

`npm run verify:pi-agent` launches the installed global Pi CLI 1.0.2 with the configured model and the delivered extension. `PI_AGENT_EVAL_CASES.json` defines 72 fixed tasks in nine groups, including eight requirement-driven tasks that omit the target Class name. A tenth `corpus` group derives one native-object/empty-graph case per Diagram from the fresh snapshot. The current frozen sample has 71 Diagrams, giving 143 resolved cases. Corpus cases share a rubric with different native data; they are not 71 distinct tool behaviors. See `PI_AGENT_EVAL_PLAN.md` for coverage and grading.

Each task gets a new Pi process/conversation with only the three ASCET tools. Resource discovery, filesystem/shell tools and project context are disabled. The runner independently snapshots the saved database, keeps the oracle outside the Agent's inputs, captures JSONL events and checks returned code and structured answer facts. First attempts are retained; no answer repair is injected. A model service failure stops subsequent cases and is reported separately from tool errors. Strict JSON format and semantic/evidence checks are separate. This validates the checked facts, not every sentence of model prose.

The runner requires the prepared `analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json` endpoint (32631), launches it, and audits/stops only that manifested process in `finally`. Saved source, graph and State topology are compared before/after; existing ASCET processes are verified unchanged.

```powershell
npm run verify:pi-agent
# Select a subset; build first after source changes.
node dist/scripts/verify-pi-agent-eval.js experiments/pi-agent-eval/my-run saved-method,bde-init
# Choose groups and repeat independently, preserving every first attempt.
$env:ASCET_PI_GROUPS='workflow,states'
$env:ASCET_PI_REPEAT='3'
node dist/scripts/verify-pi-agent-eval.js experiments/pi-agent-eval/selected-groups
# Override the model for this invocation using existing Pi credentials.
$env:ASCET_PI_PROVIDER='kimi-coding'
$env:ASCET_PI_MODEL='k3'
node dist/scripts/verify-pi-agent-eval.js experiments/pi-agent-eval/kimi-run
```

`report.json`, `REPORT.md`, `resolved-cases.json`, per-case events/answers, `requests.jsonl`, the native oracle and `closeout.json` are saved under the evaluation directory. Reports include group results; repetition files use distinct `-rN` suffixes. `ASCET_PI_RESCORE=1` rechecks an existing report without model calls or ASCET access, writing `reassessment.json` and preserving the original report. Complete Agent time includes model/network latency. First tool calls include lazy startup; subsequent calls can still include a first catalog/Diagram read and must not be presented as uniformly warm timings.

`npm run verify:pi-cases` validates the inventory and fixture availability against the frozen native snapshot without model calls or ASCET access. This offline check is not an Agent pass rate. A live run resolves and validates the cases again from its own fresh snapshot before evaluation.

`npm run verify:pi-optimize -- <new-output-directory> [recorded-development-baseline] [--full]` runs deterministic regression, paired 27-task development attempts and gated complete acceptance. `--full` also measures the complete candidate when development selection fails. Raw failures remain recorded, and default tools are not silently replaced. See `PI_AGENT_EVAL_PLAN.md` for matching provenance, selection criteria and acceptance thresholds.

Older supplied baselines are reassessed offline with the current grader before comparison. Original plan/oracle/report hashes must match, and raw calls/answers/scores are preserved. Timestamped reviews are saved under `reassessments/`; mismatched grading provenance prevents selection. Complete acceptance also verifies the selected development tool-build hashes and model.

After uniformly reassessing recorded runs, `node dist/scripts/summarize-pi-optimization.js <new-output-prefix> <baseline-directory> <candidate-root>...` emits separate JSON/Markdown summaries with original and reviewed scores, per-group outcomes, common-success call totals, failed checks and the promotion gate. This command invokes neither Pi nor ASCET and never modifies original reports or decisions.

`node dist/scripts/summarize-pi-diagnostics.js <new-output-prefix> <report-directory>...` groups unexpected errors using the original streamed JSON arguments and scored call records. It associates parallel calls by execution completion order, keeps repeated errors, excludes only the already classified intentional error indices, and refuses to guess a raw-argument association when event/call inventories disagree. Diagnostics preserve all original evidence and do not change the acceptance rubric.
