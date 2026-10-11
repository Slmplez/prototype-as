# Packaged CLI End-to-End Results

Date: 2026-10-03. All 11 workflow scenarios passed, with 87 real CLI requests. The workflows were executed twice; the second run added strict getter Pin identity/direction assertions and passed again.

Final evidence: `experiments/cli-e2e/2026-10-03T01-03-35-299Z/`.

- `report.json`: scenario outcomes, every request duration, release identity and final source audit.
- `requests.jsonl`: all real requests and complete responses, including expected errors, opaque refs and cursors.
- `lifecycle.log`: guarded isolated launch, Database open, restart and stop.

Execution path: accepted ZIP -> fresh extraction into a path with spaces -> persistent release CLI stdin/stdout -> C# Bridge -> running isolated ASCET -> JSON results -> ref/cursor continuation. All 155 packaged file hashes passed. No runtime npm install was used.

| Workflow | Requests | Outcome |
| --- | --- | --- |
| Cold Component/Method name discovery, complete `calc_pre` read and lines 1-8 | 3 | Passed |
| Global identifiers `AEBLockTime`, `AEB_FxTarPT`, `C_AEB_AXCDeadZonePos`, all limit-2 pages, mixed member batch read and replay | 26 | Passed |
| Returned Component ref, scoped multiline literal/regex fragment, precise Method read | 6 | Passed |
| `AEB_dFxTar` parameter, actual `get/get` output Pin, incoming/outgoing/both neighborhoods | 6 | Passed |
| `AEB_State_Machine` Init Diagram, `AEBLockTime` object and connected zero literal | 5 | Passed |
| All 25 members of the selected State Machine, including State/Transition code and bindings | 12 | Passed |
| Real saved Private Diagram read/search and exclusion from Public search | 4 | Passed |
| 296,489-byte Header, complete continuation and stable page replay | 7 | Passed |
| Oversized raw graph rejection, partial mixed batch, same-ref full text fallback | 6 | Passed |
| Invalid regex, wrong Database, foreign ref and invalid batch followed by valid read | 6 | Passed |
| Persistent CLI across isolated ASCET restart, reconnect, stale-ref rejection and fresh-ref read | 6 | Passed |

Expected results use the frozen corpus and independent field/edge checks. The final native audit confirmed all 180 Components, 870 documents and 71 Diagrams remained equal to that corpus. Source fingerprint:

`5cb29e83cf0588949d1f22e6621292199976cd8ca4df8dac88bfc64e8549c4df`

## Timing

For these 87 individual CLI requests: median 9.16 ms, P95 224.65 ms, maximum 1,324.14 ms. This mixed sample includes inexpensive continuation pages and errors; it is not a general search latency distribution.

Three requests exceeded 500 ms:

| Request | Duration |
| --- | --- |
| First Method discovery after a fresh isolated ASCET/CLI start | 1,324.14 ms |
| First global three-identifier search | 799.87 ms |
| First successful discovery after reconnecting following restart | 936.40 ms |

Correctness passed, but the universal 500 ms target did not pass this cold/recovery workflow test. ASCET launch/Database open took 6.68 seconds separately. The restart scenario's total 7.78 seconds includes stop, launch, open, expected failure and recovery; it is not one search request.

## Cleanup And Scope

Every test CLI was closed. Only the manifested isolated ASCET instance at port 32631 was restarted/stopped. The production ASCET, BDE and existing CLI process identities remained unchanged. No model writes were performed.

This is an actual packaged CLI/ASCET integration test of deterministic Agent-style workflows. Autonomous LLM planning, unsaved Component creation/deletion, compiler execution semantics and arbitrary custom nodes remain outside this run.

Reproduce with `npm.cmd run verify:e2e` from `E:\Repo\ASCET\tools\code-search`. The harness manages the prepared isolated instance itself. The prepared manifest, accepted release ZIP, frozen oracle, installed ToolAPI and local Node.js development toolchain must exist.
