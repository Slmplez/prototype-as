# Packaged CLI End-to-End Tests

Run: `npm.cmd run verify:e2e`.

The harness extracts the accepted ZIP into a new directory containing spaces, verifies every file hash, launches the guarded copied ASCET instance at port 32631, and opens its Database. All business operations use the release CLI's real JSONL stdin/stdout. Expected source/model facts come from the frozen independent corpus; no mock Reader or direct in-process AgentSession is used.

| Workflow | Required assertions |
| --- | --- |
| Cold name discovery -> Method -> line read | Exact Method identity, real endpoint PID, complete source equality, inclusive line boundaries |
| Global multi-identifier search -> every page -> mixed batch read | Exact query totals, no lost/duplicated hits, code and Diagram targets, correct complete read contents, cursor replay |
| Component ref -> regex/multiline code -> Method read | Returned Component ref scopes search, exact member/kind/Variant/Implementation, multiline literal and regex agreement |
| BDE parameter -> getter/Pin -> directional neighbors | Object ref selects the actual node; incoming/outgoing/both neighborhoods equal an independent raw-edge traversal |
| State Machine -> Init -> input logic | Real Init graph equality, parameter object, incoming zero literal and connection |
| State Machine -> all Methods/States/Transitions | Complete member inventory, binding-only results preserved, complete batch reads and per-result continuation |
| Private Diagram -> read/search -> Public exclusion | Correct visibility, Private marker found exactly once and excluded from Public search |
| Large source -> all pages -> replay | Source exceeds 128 KiB, every page within budget, complete byte-preserving reconstruction, stable replay |
| Oversized graph -> partial batch -> text fallback | Explicit PAGE_TOO_LARGE, successful batch member preserved, failed member identified, same Diagram ref still reads full text |
| Invalid regex/Database/foreign ref -> successful retry | Explicit errors, no wrong Database read, session isolation, whole invalid-ref batch rejected, same process remains usable |
| Live CLI -> isolated ASCET restart -> recovery | First operation detects restart, next discovery reconnects, new ref works, old ref rejected, new ref remains usable |

Trace: `experiments/cli-e2e/<UTC timestamp>/requests.jsonl` contains every actual request, response, byte size and request duration. `report.json` records workflow outcomes, step timings and final audit. ASCET startup and total multi-step workflow duration are separate from per-request latency.

The full source/Diagram oracle is compared again after all workflows and the restart. Cleanup closes every CLI and only the manifested isolated ASCET process; protected production/BDE/CLI identities are compared before and after. This tests deterministic Agent-style tool workflows, not an autonomous LLM's planning behavior or unsaved Component creation/deletion.

Executed outcomes, timing exceptions and evidence paths are recorded in `E2E_TEST_REPORT.md`.
