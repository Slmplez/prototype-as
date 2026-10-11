# Agent Evidence and Answer Repair

Date: 2026-10-04 (Asia/Shanghai). This report supersedes the remaining-work status in `AGENT_INTERFACE_POLISH_REPORT.md`; historical measurements and failed runs remain unchanged.

The evidence/answer adapter and deterministic CLI acceptance passed. The strict every-request latency target and automatic correctness of natural-language answers did not pass. These are separate conclusions.

## Delivered Package

- ZIP: `E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261003T160348448Z.zip`
- SHA-256: `1a842a9acd93e36c2700f733cd4326b6ced6159a1683fa5585a2f9f76c11a215`
- 181 payload files; 413,470 bytes. Windows, Node.js 22+, .NET Framework 4 and ASCET 6.4 ToolAPI are required. Runtime needs no npm installation.
- CLI only. Serial fresh saved-model access; no watcher, incremental synchronization or persistent source index.
- Builds `152112277Z`, `152913531Z`, `154634292Z` and `155621471Z` are diagnostic intermediates, not this final delivery.

## Completed Repairs

1. Exported `AgentEvidence`, `validateAgentAnswer` and `completeAgentAnswer` are available through `dist/src/index.js`. `AgentToolClient` records returned evidence automatically and exposes `validateAnswer`, `completeAnswer` and `beginTask`.
2. Evidence records only returned refs, ownership, explicit scope, expiry and read progress. Cursors, failed-read echoes, debug strings and raw graph strings do not become evidence. Transport failure, database/PID change and task reset revoke old evidence.
3. Text/diagram_text full-source reads must follow contiguous coordinates for the same ref. Limited line reads, graphical neighborhoods and incomplete pages cannot prove a complete Method or Diagram. Cursor replay cannot advance or corrupt a prior chain. CR/LF/CRLF and Unicode are covered.
4. Scope follows search/find continuation. A scoped Diagram cannot make unrelated text in another Component scoped. BDE placement ownership and referenced Class identity remain distinct.
5. Multiline-regex verification requires a real multi-line match and a full read of that same cited member. An unrelated Method cannot satisfy the requirement.
6. `complete_search` requires delivery of a specific query/mode/scope. A fresh equivalent query can replace an abandoned smaller-page snapshot; unrelated searches remain optional. `all_search_pages` retains the stricter opt-in policy.
7. Invalid answers receive bounded caller-model feedback (default two corrections), including required query arguments and pending cursor selectors. No fence stripping or silent answer rewriting occurs. Every answer attempt is preserved; caller cancellation is supported.
8. The independent runner writes each answer before correction, preserves rejection/timeout traces, and uses the exported packaged adapter. Test instructions now explicitly agree with required identifier mode.

Final answers have exactly four fields:

```json
{"outcome":"located","answer":"Saved facts and explicit limitations","evidence_refs":["<actual returned ref>"],"missing_evidence":[]}
```

`outcome` allows `located`, `partial`, `not_found`, `unsupported`. Positive answers can require full text, specific refs, exact Component ownership, complete search or multiline matching. Partial/unsupported answers must state gaps. A complete zero-hit operation proves absence only within its own supported scope.

This is an opt-in calling-Agent API. Raw CLI operations do not invoke a model or automatically validate its final answer. The adapter proves format and retrieval preconditions; it cannot prove a prose interpretation or runtime behavior. Usage: [CLI_PACKAGE.md](CLI_PACKAGE.md#validate-agent-answers).

## Final-Package Verification

| Verification | Result | Evidence |
| --- | --- | --- |
| Offline regression | 599 passed, 0 failed | [Log](experiments/agent-evidence-offline-final.tap) |
| Exported adapter on live ASCET | Passed, including scoped reads, reset, strict correction and full Header pagination | [Report](experiments/agent-evidence-live/2026-10-03T16-05-38-109Z/report.json) |
| Largest saved Header | 296,489 bytes reconstructed exactly from 3 pages; each response <=128 KiB; complete-text proof only after final page | Same live adapter report |
| Fresh ZIP extraction E2E | 11 scenarios, 87 requests passed | [Report](experiments/cli-e2e/2026-10-03T16-06-41-581Z/report.json) |
| Package/source rebuild | 181 file hashes checked; no-npm runtime and rebuilt TS/C#/Smalltalk live verification; 24 calls passed | [Report](experiments/agent-interface-polish/2026-10-04-final-repair/package/report.json) |
| New/old result comparison | 98 alternating serial requests, 49 per package; result and native-source equivalence passed | [Report](experiments/agent-interface-polish/2026-10-04-final-repair/performance/report.json) |
| Native source/graph audit | 180 Components, 870 documents, 71 Diagrams unchanged | Reports and closeout files above |

E2E includes scoped cross-line regex, mixed batch reads, BDE getter Pins and directional neighborhoods, graphical Init, 25 State Machine members, actual Private Diagram exclusion by Public scope, oversized graph fallback, large-source replay, invalid regex/database/foreign-ref recovery and a full isolated ASCET restart.

All live access used isolated endpoint 32631, one test at a time. Each lifecycle completed source audits and process cleanup. Protected ASCET PIDs 21052, 39168 and 39624 retained their original start identities; a final explicit check confirmed 32631 closed.

Stable source fingerprint: `5cb29e83cf0588949d1f22e6621292199976cd8ca4df8dac88bfc64e8549c4df`.

## Independent Agent Evidence

Fixed model: `deepseek/deepseek-flash`, thinking high. Each task used a fresh conversation and CLI session with only the three delivered tools/prompt, without shell or oracle access. Source/trace grades below are by the current assistant, separate from the independent model's output.

| Run | Package suffix | Requests | Recorded result |
| --- | --- | ---: | --- |
| [Broad 20 tasks](experiments/independent-agent/2026-10-03-evidence-repair/summary.json) | 152913531Z | 155 | 19 accepted answers, 1 timeout; source review: 13 passed, 5 partial, 1 failed, 1 correctly unsupported; 1 CLI error, 8 tool errors |
| [Four-task diagnostic repeat](experiments/independent-agent/2026-10-03-evidence-repair-final/summary.json) | 154634292Z | 36 | 3 accepted, batch rejected under all_search_pages; source review: 2 passed, 1 partial, 1 failed; 2 CLI errors, 1 tool error |
| [Required-batch diagnostic](experiments/independent-agent/2026-10-03-required-batch/summary.json) | 155621471Z | 8 | Rejected: text search could not satisfy required identifier search; task/feedback did not specify the mode clearly; 0 execution errors |
| [Explicit identifier-batch acceptance](experiments/independent-agent/2026-10-04-required-batch-explicit/summary.json) | 160348448Z | 10 | Final answer accepted after 2 corrections; no execution errors/timeout; source explanation graded partial |

In the final batch run, the first small-limit search and a cursor-only continuation succeeded. The equivalent larger-limit query returned pages of 32, 35 and 44 hits, totaling 111 (AxAct 44, VxAct 49, FxDriver 18). The Agent explicitly narrowed a Component and batch-read all eight saved ASDL members. An incomplete search was rejected; feedback led to one extra cursor call, completing the required batch. A fenced correction was also rejected before the third strict JSON answer was accepted.

The final explanation still blurs cumulative totals with final-page counts (actual last page: 19/25/0), describes K1 latching as restoration, and calls named Pin usage a feed without reading its connecting neighborhood. These are explanation defects, not evidence-extraction failures. The 20-task run similarly exposed sign reasoning, Init absence claims and Hierarchy interpretation errors despite accepted retrieval preconditions.

All original attempts, feedback, errors and rejected/timeout runs remain stored. The old timeout's original answer was not saved by the earlier runner and cannot be reconstructed; this evidence gap is retained. Ten final batch calls exceeded the reference budget of eight, while staying within the hard cap of 28. No complete autonomous-answer success rate is claimed for the final package; only the targeted batch was rerun on it.

## Performance Boundary

Times cover request send through full JSON parsing. Model reasoning and ASCET launch are separate. Test Database: 180 Components, 870 documents and 71 Diagrams.

| Query | Final A/B candidate median ms | Maximum ms | >=500 ms |
| --- | ---: | ---: | ---: |
| Identifier | 232.8 | 256.0 | 0/7 |
| Literal return | 403.9 | 432.0 | 0/7 |
| Absent | 187.4 | 197.3 | 0/7 |
| Three identifiers | 340.0 | 347.6 | 0/7 |
| Regex | 223.3 | 239.6 | 0/7 |
| Frequent literal set | 460.0 | 500.9 | 1/7 |
| Component-scoped identifier | 13.0 | 13.6 | 0/7 |

This final A/B run passed 48/49 candidate hot queries under 500 ms. A separate adapter profile passed 42/42 hot queries (scoped median 11.3 ms, set maximum 492.3 ms). Its genuinely cold catalog call took 1,216.7 ms and first global search 566.3 ms. The independent batch rerun had a 2,009.3 ms first call and 591.1 ms fresh global replacement query. E2E recorded first global search at 827.3 ms. The strict all-requests target is not met.

Earlier intermediate measurements retain 7/49 A/B outliers and 14/42 adapter-profile outliers, with maxima above two seconds. Later passing samples do not cancel those results. No speedup is attributed to the new validation layer. Debug profiles show native read/transport dominates the sampled search cost; the exact cause of an unprofiled outlier cannot be inferred.

## Remaining Tasks

1. Integrate `completeAnswer` into the intended calling Agent and supply task-specific requirements. Keep source quotations and actual ranges beside conclusions; independently review absence, signs, Init representation and connection claims. Successful retrieval cannot automatically certify those explanations.
2. If every-call 500 ms remains mandatory, profile individual slow native reads under defined load and cold-start conditions. Reuse the persistent CLI and known Component/Diagram scopes. Preserve outliers and query semantics; no watcher or index is introduced.
3. Expand unsaved-edit coverage and coordinate live access with other ASCET tools only when those workflows are required. Current saved-model, serial CLI acceptance does not certify unsaved editor buffers or general concurrent ToolAPI safety.
4. Table interpolation/extrapolation, Dataset point values, Formula definitions, generated code and runtime scheduling remain separate capabilities, outside this search package.

## Reproduce

Run the prepared isolated-instance scripts serially:

```powershell
npm test
node dist/scripts/verify-agent-evidence-live.js E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261003T160348448Z
$env:ASCET_CLI_ARCHIVE='E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261003T160348448Z.zip'
node dist/scripts/verify-cli-e2e.js
node dist/scripts/verify-agent-interface.js E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261003T160348448Z E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261003T131251445Z
$env:ASCET_AGENT_EXPECTED_MODEL='deepseek/deepseek-flash'
node dist/scripts/verify-independent-agent.js <new-run-directory> E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261003T160348448Z batch-pagination
```

The runner records raw answers immediately. Final source/trace grades require a separate `assessments.json`; execution and structured-answer acceptance are not semantic grades.
