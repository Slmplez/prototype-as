# Search CLI Full Regression

Date: 2026-10-03. This run validates the formal CLI and its native bridge. Experimental saved-graph allocation plans and other unintegrated optimization prototypes are excluded.

## Scenarios

| Group | Cases | Evidence |
| --- | --- | --- |
| Query semantics | Literal text, complete identifiers, regex, zero-width matches, Unicode/ASCII folding, literal star, multiline/dotall, absent terms, up to 64 mixed queries | Offline tests; live/advanced/model-generality oracles |
| Scope and discovery | Component, Method/Process, code kind, Implementation, Variant, exact/contains names, duplicate names, intersections, Public/Private Diagram identities | Offline contracts; multi-Diagram/model-generality suites |
| Results and paging | Limits 1/50/200, accurate complete totals, no loss/duplication across pages, cursor replay/expiry, context boundaries, omitted lines, 128 KiB response budget | Paging, read-pages, object-search and offline tests |
| Read workflow | Search/find to read, complete source, line ranges, mixed batches, large Methods, graph detail, local object neighborhoods, stale/foreign refs | Agent-polish, read-pages, object-search, CLI recovery |
| BDE and state machines | Class/Module diagrams, Init, empty diagrams, nested Hierarchy, data/getter/setter Pins, Return, literals/operators, sequence calls, reversed edges, hidden Pins, native connection types, State/Transition code and bindings | Independent saved-storage/model-generality oracle; full Diagram field matrix; literal gates; all 71 Diagram audits |
| Current model state | Cached Container, uncached saved source, dirty fallback, native unsaved Method changes visible in search/read, explicit restoration and post-restart full audit | Container-current; modified-directory input tests |
| Failure and transport | Invalid JSON/requests, streamed CRLF/UTF-8, malformed compressed payload, unavailable codec, corrupt saved-record bounds/CRC/addresses, wrong Database, busy lock, foreign session, process restart, graceful EOF | Offline tests; real CLI input; native codec; saved-readers; coordination; CLI acceptance |
| Delivery | Current runtime build, extracted package hashes, no npm install at runtime, source rebuild, paths containing spaces | Build, pack, unpack into a path with spaces, then package acceptance in the same run |

## Pass Criteria

- Run all existing offline tests and all selected live suites. Keep failed logs and rerun evidence when fixing an issue.
- Compare complete sources and every Diagram with the frozen native oracle, not just page counts.
- Keep all live work serial on the copied manifest endpoint at 32631. Do not operate production PID 21052, BDE PID 39168, or existing CLI PID 33884.
- Restore the isolated dirty edit and verify the restored Database again after restart.
- Report performance separately from correctness; this regression does not expand a warm latency result into a cold-load guarantee.
- Tests reduce known risk but cannot prove the absence of every bug. Actual unsaved new/deleted Component workflows, arbitrary vendor/custom node classes, and other Database sizes remain separate coverage boundaries unless new cases are added and executed.

## Run

The prepared copied Database must be running and loaded at port 32631 before this command. The completed run's isolated process was stopped after acceptance; restore that copied instance with the guarded multi-instance launch/open workflow before repeating. Never substitute the production endpoint.

```powershell
cd E:\Repo\ASCET\tools\code-search
npm.cmd run verify:full
```

Each stage writes stdout/stderr logs. The aggregate report is saved under `experiments/full-regression/<UTC timestamp>/report.json` after every stage.

The runner executes 22 CLI/native suites in addition to the build and complete offline suite. Saved-reader checks mutate copied byte arrays only. The coordination suite explicitly sets `ASCET_CODE_SEARCH_EXTERNAL_LOCK=0` so the Bridge acquires its own shared lock; `1` means the caller already holds that lock.

Measured results and remaining boundaries are recorded in `FULL_TEST_REPORT.md`. Benchmark exit code 2 denotes a performance failure; it counts as correct only with explicit passing correctness and source-stability evidence, and remains visible in the performance results.
