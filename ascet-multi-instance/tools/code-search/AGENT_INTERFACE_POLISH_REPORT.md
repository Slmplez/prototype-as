# Agent Interface Polish Acceptance

Date: 2026-10-03. Delivery: CLI only, with fresh saved-model reads and no background watcher or persistent source index.

## Delivered Package

- Archive: `E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261003T131251445Z.zip`
- SHA-256: `df5697486a2aff8056ecb8aac49b09a77ba0713af0ec81647fca5166afe9a6c1`
- 173 payload files; ZIP size 391,335 bytes. Node.js 22+, .NET Framework 4 and installed ASCET 6.4 ToolAPI are required. Running the package needs no npm install. MCP is omitted.
- The earlier `20261003T123605549Z` package is a superseded intermediate build. Its measurements remain diagnostic evidence.

## Interface Changes

- `AgentToolClient` shares one persistent serial JSONL process for find/search/read. Named envelopes inject `operation`; original raw requests still work. Cursor continuation remains cursor-only.
- The three model schemas omit `operation`, expose root arguments directly and validate request/continuation alternatives. `find.name` consistently selects Components, members, Diagrams, objects, States and Transitions. Conflicting aliases fail before ASCET access.
- `search.query` accepts a string, one `{text, mode, ...}` object or an array. Supplied object options override root defaults; omitted options inherit them. A single object follows the same validation, result-count and pagination rules as a one-item array. Invalid fields/patterns are still rejected before reading.
- Owning `component_type` comes from same-response native Component metadata. BDE `referenced_component_path` distinguishes the referenced Class from the owner and appears in hits, local objects and connection endpoints. The legacy local `object.component_path` alias remains compatible. These additive fields do not change native source hashes.
- Local Diagram indexes are reused during page budget retries. The default text context remains ten lines before/after; output remains bounded to 128 KiB with explicit continuation.
- The shorter prompt covers scope reuse, full Method verification, graphical shared members, table-interface limits and original CRLF/CR/LF line counting. Detailed guidance remains in `AGENT_SEARCH_REFERENCE.md`.
- Evaluation records exact model/schema/prompt/task identities and validates JSON answers and returned evidence refs. Evaluation does not repair answers or accept model self-assessment as proof.

| Agent context file | Baseline bytes | Delivered bytes |
| --- | ---: | ---: |
| Prompt | 10,167 | 6,792 |
| Find schema | 17,544 | 15,772 |
| Search schema | 20,868 | 16,311 |
| Read schema | 7,449 | 5,884 |

Byte counts are not tokenizer measurements. Added owner/reference evidence can enlarge individual responses; no universal response-size reduction is claimed.

## Deterministic Verification

- Offline regression: **563 passed, 0 failed**, including single-query object overrides, labels, mixed line breaks, pagination, schema agreement and invalid requests before live access. Log: `experiments/agent-interface-polish/single-query-offline.tap`.
- Package acceptance: **24 live calls passed**, all payload hashes checked, built-in-only runtime verified without npm install. Packaged TypeScript, C# and embedded Smalltalk sources were rebuilt and used live. Includes named object query, Init, Private Diagram, BDE local reads, State/Transition endpoints and binding slots.
- Performance/correctness comparison: **98 alternating serial searches**, 49 per version. Result contents agree after excluding session identities/debug and the new additive owner/reference fields. Candidate requests run from the delivered package directory, recorded as `after_root`.
- End to end: **11 scenarios and 87 requests passed** from a fresh ZIP extraction in a path with spaces. Includes cold find/read, complete multi-query pagination, multiline regex, BDE directional neighborhoods/getter Pins, graphical Init, 25 State Machine members, real Private membership, 296,489-byte Header pagination/replay, oversized graph fallback, database/ref/pattern errors and full isolated ASCET restart recovery.
- Final native audit: **180 Components, 870 documents, 71 Diagrams**, unchanged source fingerprint `5cb29e83cf0588949d1f22e6621292199976cd8ca4df8dac88bfc64e8549c4df`.
- All live work used the isolated endpoint **32631**, serially. Source and graph audits passed; the isolated process/endpoint was stopped after each run; pre-existing ASCET processes were preserved.

Evidence:

- `experiments/agent-interface-polish/2026-10-03T13-13-58-100Z/report.json`
- `experiments/cli-e2e/2026-10-03T13-15-58-593Z/report.json`

## Performance Boundary

Seven warm measurements per query, default context 10, group_by object, limit 20. Timing is JSONL request send through complete response parsing; model reasoning, process launch and warmup are excluded. With seven samples, the nearest-rank P95 equals the maximum; this is a small workload sample, not a general latency guarantee.

| Query | Baseline median ms | Delivered median ms | Delivered max ms |
| --- | ---: | ---: | ---: |
| Identifier AEBLockTime | 241.3 | 225.4 | 256.0 |
| Literal return | 411.5 | 400.1 | 408.6 |
| Absent identifier | 179.9 | 180.2 | 187.3 |
| Three identifiers | 333.6 | 335.1 | 341.0 |
| Regex AEBLockTime | 226.3 | 221.8 | 234.6 |
| Frequent literal set | 448.7 | 447.3 | **587.0** |
| Component-scoped identifier | 14.0 | 13.4 | 19.7 |

**48/49 delivered warm requests were below 500 ms.** The strict all-requests goal is not met in this run. Profiling identifies native saved-model read/transport as the dominant cost; TypeScript matching and paging take a few milliseconds in these profiles. The outlier itself was not separately profiled, so its exact substage cannot be asserted.

The preceding package's 49 warm requests all passed, while an earlier comparison had three outliers up to 662 ms. All reports are retained. Measurements do not establish a consistent speedup from these interface changes.

The delivered E2E run has 9.7 ms median and 226.5 ms P95 over its mixed operations, including continuations and local reads. This is not a full-database search benchmark. True cold find took 1,315 ms, the first global search 814 ms, and find after an isolated restart 1,023 ms. These cold calls are not below 500 ms.

## Independent Agent Diagnosis

Fixed model: `deepseek/deepseek-flash`, thinking `high`, via the installed pi SDK. Each task gets a fresh model history and CLI process, only the three delivered tools and their prompt/schemas. No source oracle or shell access is visible to the model. Task assessments are separate reviews by the current assistant, not independent human grades.

The intermediate final-interface repeats each ran the same four tasks, with 22 and 23 successful CLI calls. They exposed two single-query-object schema errors and three JSON-only formatting violations. One alleged line-number offset was checked against the saved CR/LF/CRLF text: both returned ranges were exact; the model interpretation was wrong. The single-query shape and mixed-line guidance were then improved.

The delivered package run is in `experiments/independent-agent/2026-10-03-single-query-interface/`:

- **18 CLI calls; 0 CLI errors; 0 tool/schema errors; 0 timeouts.** A real single query object was used for multiline regex successfully.
- Init was located in `DBR_Force2Pressure`, confirmed as SGClass, and its complete saved `Init` text read in four calls.
- Two actual cross-line regex matches were checked by full Method reads in two calls.
- Three-term batch search consumed a cursor-only continuation and performed mixed batch reads in five calls.
- Min/Max BDE placements, actual referenced Class, real connection and complete `AxCtrlLimGradAx.calc` were read in seven calls.
- **Three final answers violate JSON-only formatting.** The batch answer also cites two cursors as evidence refs, misstates final pagination behavior and does not read text members from its selected graphical Component. The referenced-Class answer overstates runtime invocation/behavior. These are not source extraction errors.
- No complete Agent task pass rate is claimed. Trace-based assessments grade all four final outcomes as partial when formatting and reasoning requirements are included. Useful retrieval evidence is present for Init, regex and referenced Class; batch scope use needs improvement.
- Native closeout validated six full text reads, unchanged source/graphs and isolated cleanup.

This last run changes the prompt/schema from the preceding repeats; request-count differences cannot be attributed causally to one change. A small model sample does not prove future correctness.

## Remaining Work

1. At the calling Agent layer, validate final structured answers, require source refs rather than cursors and re-request a corrected answer when invalid. Keep the original answer/trace for evaluation; do not silently normalize it.
2. Evaluate more fixed-model tasks for scoped text selection and evidence-limited explanations. Treat runtime invocation, storage and execution order as unknown unless another tool provides those facts.
3. Profile individual slow native reads if a strict warm/cold latency requirement remains. Persistent CLI reuse and Component/Diagram scope avoid unnecessary startup/global reads. No watcher or source index is introduced.
4. Table type/interpolation configuration, Dataset point values, Formula definitions, unsaved buffers, generated code and runtime scheduling remain outside this code-search package.

## Reproduction

```powershell
npm test
node dist/scripts/verify-agent-interface.js E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261003T131251445Z E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261003T103046183Z
$env:ASCET_CLI_ARCHIVE = 'E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261003T131251445Z.zip'
node dist/scripts/verify-cli-e2e.js
$env:ASCET_AGENT_EXPECTED_MODEL = 'deepseek/deepseek-flash'
node dist/scripts/verify-independent-agent.js <new-evaluation-directory> E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261003T131251445Z init-representation,multiline-regex,batch-pagination,referenced-class-follow
```

Run live commands one at a time against the prepared isolated test instance. The model assertion checks the configured model rather than changing it. Source/trace grading requires a separate `assessments.json`; CLI success alone does not grade the answer.
