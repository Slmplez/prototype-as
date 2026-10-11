# Independent Agent evaluation, 2026-10-03

The independent model executed 20 tasks using the delivered find/search/read tools. Source/trace assessment found **14 passed, 5 partial and 1 correctly unsupported**. This is not a 100% autonomous-Agent success result. A focused follow-up completed four previously incomplete workflows after clarifying the task requirements and improving malformed-ref handling.

The installed pi SDK used the existing user default `deepseek/deepseek-flash`, thinking `high`. Each task had a fresh conversation and packaged CLI process. Only the three ASCET tools were available; no shell, filesystem, extensions, skills, source oracle or previous task results were supplied. ASCET access was serial on isolated port 32631, with 28 CLI calls and 240 seconds as hard per-task limits. Final-answer quality was assessed separately by the current assistant, not by trusting the model's outcome label.

## Original 20 tasks

| Task | Assessment | CLI calls / reference budget |
| --- | --- | --- |
| Acceleration to braking force | Partial: incorrect SetFx/integration branch explanation | 19 / 6 |
| Driver force to pressure | Passed retrieval; final JSON had preceding prose | 13 / 4 |
| Table lookup and referenced Class | Passed; table configuration explicitly unavailable | 9 / 8 |
| Controller integrator | Passed; clamp-order wording needs care | 15 / 8 |
| Module Process and connected processing Class | Passed retrieval; final JSON had preceding prose | 10 / 5 |
| Init representation | Partial: mislabels Modules as Classes | 6 / 5 |
| Vehicle-hold State/Transition timer | Passed | 9 / 6 |
| Hierarchy boundary and endpoints | Passed | 7 / 8 |
| Multiline regex | Partial: used keyword search, never regex | 2 / 5 |
| Batch search, pagination and reads | Partial: never consumed cursor; malformed final JSON | 8 / 8 |
| Complete zero-hit identifier probe | Passed boundary check | 3 / 3 |
| Actual runtime scheduling/frequency | Correctly unsupported | 10 / 3 |
| State flags, relations and code slots | Passed | 5 / 6 |
| Exact Transition endpoints, priority and binding | Passed retrieval; final JSON had preceding prose | 4 / 5 |
| Junction discovery and direct relations | Passed | 6 / 5 |
| Hierarchy discovery by native category | Passed | 5 / 7 |
| MUX discovery, complete Pins and incoming edges | Passed retrieval; final JSON had preceding prose | 4 / 6 |
| Private Specification Diagram | Passed on existing saved acceptance fixture | 6 / 6 |
| Two placements sharing one referenced Class | Partial: serialized refs caused repeated read failures | 23 / 9 |
| First 12 saved Header lines | Passed | 5 / 5 |

There were 169 CLI calls, 9 CLI errors and 1 pre-CLI schema error. All nine CLI errors were JSON-encoded ref strings, not actual expiry or ASCET faults. No task timed out. Five final responses violated the requested JSON format; four could be decoded from fenced JSON after prose, while the batch answer itself was invalid JSON. No unseen evidence refs were detected among the 19 parseable answers; the malformed batch answer was not automatically checked. Retrieval grades do not silently count formatting violations as valid machine output.

## Focused follow-up

The new package rejects a JSON-encoded ref string as `INVALID_REQUEST`, guides correction without rediscovery, and adds ref-shape examples plus schema constraints. The existing malformed-batch regression now covers serialized arrays, serialized strings, whitespace-prefixed arrays and nested serialized array items. A direct packaged-CLI probe confirmed all three malformed input shapes fail before ASCET access.

Task prompts explicitly required a real SGClass Init, an actual multiline regex request and at least one cursor-only continuation. Therefore these are focused follow-ups with changed prompts/package, not identical-input repeats or a replacement for the original grades.

| Task | Observed result | CLI calls |
| --- | --- | --- |
| Class Init | Confirmed DBR_Force2Pressure SGClass and read `pressure = 0;`; distinguished Modules | 6 |
| Multiline regex | Actual regex with multiline/dotall; 3 cross-line matches and full Method reads | 4 |
| Batch pagination | Six-hit shared page, cursor-only continuation, scoped search and four-Method batch read | 6 |
| Referenced Class | Both local placement graphs and complete AxCtrlLimGradAx.calc read successfully | 6 |

All four requested workflows passed source/trace assessment. There were 22 CLI calls and no CLI errors, with 4 pre-CLI schema errors that the model corrected. One serialized ref array was rejected and immediately replaced with an actual array, without rediscovery. The referenced-Class task fell from 23 calls / 143.3 seconds to 6 calls / 17.8 seconds in these two runs. This is an observed comparison, not a causal estimate from repeated controlled trials. One final response still included prose before JSON; unnecessary exclusivity inferences also remain an Agent-answer concern.

## Timing and response budget

| Original run, successful calls | Count | Median | P95 | Maximum | Above 500 ms |
| --- | --- | --- | --- | --- | --- |
| First call of each fresh CLI | 20 | 508.8 ms | 890.1 ms | 1996.7 ms | 11 |
| Subsequent calls | 140 | 102.1 ms | 447.4 ms | 663.6 ms | 6 |
| Subsequent explicit Component/Diagram scope | 27 | 92.4 ms | 123.8 ms | 127.0 ms | 0 |
| Subsequent reads | 47 | 96.5 ms | 122.0 ms | 161.7 ms | 0 |

Each first call includes CLI/Bridge startup. Subsequent calls are not all fully loaded searches: they may first load a new scope. Global discovery and regex outliers remain above 0.5 seconds; the scoped sample met that target. Model/network/orchestration time is separate: the original tasks took 673.1 seconds in total, while summed CLI call time was 32.0 seconds. The follow-up had one subsequent full-library discovery at 786.0 ms; its five reads were 89.9-124.5 ms. Do not combine these samples into a universal sub-0.5-second promise.

Original responses totaled 623,434 bytes with a 29,476-byte maximum; follow-up responses totaled 75,204 bytes with a 19,941-byte maximum. Every CLI response stayed below the 128 KiB budget. A Header read returned exactly original lines 1-12 of a 97-line body; the multiline sample preserved lone-CR line numbering.

## Audit and limits

The original closeout's trace checker mistook error `code:REF_EXPIRED` for source `code`. The process/port cleanup succeeded, but its audit result is retained as failed. The checker was fixed to inspect successful source records by identity and to accept unnamed Header identities. The follow-up closeout rechecked **both original and follow-up traces**, verified **53 full-text reads** byte-for-byte against frozen source, and checked unchanged sources and complete graph snapshots after reopening the isolated database. Frozen identity remained 180 Components, 870 documents and 71 Diagrams, fingerprint `5cb29e83cf0588949d1f22e6621292199976cd8ca4df8dac88bfc64e8549c4df`.

The isolated instances were stopped, port 32631 closed, and protected ASCET process identities 21052/39168/39624 remained unchanged. Offline regression after the ref patch: **553 passed, 0 failed**. Both tested package manifests verified 168 file hashes.

This covers one database, one model/configuration and one run per task, plus four focused follow-ups. Private membership was tested on a saved fixture, not an additional production sample. Table value types, interpolation/extrapolation settings, Dataset values, generated code, unsaved buffers and runtime scheduling remain outside this search tool's scope. The test revealed Agent-answer mistakes and inefficient requests; it does not prove the absence of all bugs.

Next priorities are simpler tool argument/error presentation, a shorter evidence-based answer format, early scope narrowing and explicit verification of branch/order explanations against complete source. Table configuration reading remains a separate follow-up decision.

## Evidence and reproduction

- [Task plan](AGENT_EVALUATION_TASKS_V2.json), [independent driver](scripts/verify-independent-agent.ts), [summary script](scripts/summarize-independent-agent.ts).
- [Original requests](experiments/independent-agent/2026-10-03-independent-20/requests.jsonl), [model answers/report](experiments/independent-agent/2026-10-03-independent-20/report.json), [assessments](experiments/independent-agent/2026-10-03-independent-20/assessments.json), [summary](experiments/independent-agent/2026-10-03-independent-20/summary.json).
- [Follow-up requests](experiments/independent-agent/2026-10-03-followup-4/requests.jsonl), [model answers/report](experiments/independent-agent/2026-10-03-followup-4/report.json), [assessments](experiments/independent-agent/2026-10-03-followup-4/assessments.json), [summary](experiments/independent-agent/2026-10-03-followup-4/summary.json), [combined source audit and cleanup](experiments/independent-agent/2026-10-03-followup-4/closeout.json).
- [Updated CLI ZIP](../../dist/ascet-code-search-cli-0.2.0-20261003T103046183Z.zip), SHA256 `9c3fbedee953a7ad540d67f4845d163e71faa3f0b9752844878a5ebe8d4807cd`.

```powershell
npm test
node dist/scripts/summarize-independent-agent.js experiments/independent-agent/2026-10-03-independent-20 experiments/independent-agent/2026-10-03-followup-4/closeout.json
node dist/scripts/summarize-independent-agent.js experiments/independent-agent/2026-10-03-followup-4
```

A new independent run requires available pi model credentials, the isolated instance manifest and a unique output directory. It launches and closes the manifested test instance automatically. Current V2 prompts include the focused clarifications; original per-task requirements remain recorded verbatim in the original report.
