# Search CLI Regression Results

Date: 2026-10-03. Correctness passed for the tested corpus. The 500 ms performance target did not pass every expanded scenario.

## Evidence

Final run: `experiments/full-regression/2026-10-03T00-40-39-086Z/`.

- `correctness-assessment.json` separates confirmed correctness from performance failures.
- `report.json` and every stdout/stderr log preserve the original run. Its sole failed stage is `verify-live`, exit code 2: all correctness assertions passed, but a timing assertion failed. The runner now classifies this outcome separately after checking the explicit correctness and source-stability evidence.
- Earlier failures remain in `2026-10-03T00-26-22-883Z` and `2026-10-03T00-33-57-697Z`.

| Verification | Result |
| --- | --- |
| Offline tests | 502 passed, 0 failed, 0 skipped, 0 cancelled |
| CLI/native correctness suites | 22 passed |
| Full saved inventory | 180 Components, 870 code/Diagram documents, 71 Diagrams |
| Every code-bearing Component | 128 Components, 870 complete member reads reconstructed from 1,550 pages; 803 query checks |
| Diagram field matrix | 5,976 fields, 6,399 queries, 27,440 match coordinates, 26,437 preview lines |
| Diagram reads | 71 complete text reads; 70 complete raw graphs; one oversized raw graph correctly rejected |
| Independent BDE storage oracle | 1,998 nodes and 920 edges across 32 Module, 38 Class and one State Machine Init Diagram; no differences |
| State Machine sources | 50 native source/binding slots; detached nested-State tests and eight detached archive cases passed |
| Saved record guards | 588 assertions over 214 Containers and 71 Diagrams, including bounds, CRC, address, format and count corruption |
| CLI input stream | 20 actual stdin/stdout requests: invalid JSON/contracts, CRLF, fragmented UTF-8, recovery and EOF |
| Model state and recovery | Unsaved Method modification visible to search/read, explicit restoration, restart audit, Database mismatch recovery, busy recovery, foreign/stale refs |
| Delivery | 155 file hashes, nine packaged live calls, runtime without npm install, separate TS/C#/Smalltalk rebuild and live verification; extraction path contains spaces |

All complete source and Diagram comparisons matched the frozen oracle. Before/after fingerprint:

`5cb29e83cf0588949d1f22e6621292199976cd8ca4df8dac88bfc64e8549c4df`

The production ASCET, BDE and existing CLI process identities stayed unchanged. Live work used only the copied Database endpoint at port 32631. After acceptance, the guarded manifest stop closed the isolated process and endpoint; the three protected processes were checked again and remained unchanged.

## Validation Fixes

- Batch-read verification now follows each member's cursor, checks stable identity and per-page byte budgets, then compares the concatenated text with the complete oracle.
- Diagram verification checks the 128 KiB contract: oversized raw graphs must return `PAGE_TOO_LARGE`; the same ref must still read the complete Diagram text. Small raw graphs are compared structurally.
- Legacy scope verification now expects native protocol 3.
- The coordination test explicitly uses `ASCET_CODE_SEARCH_EXTERNAL_LOCK=0`, which makes the Bridge acquire its shared lock. Setting it to 1 declares that the caller already holds the lock.
- The aggregate runner distinguishes benchmark exit code 2 from correctness failure only when the benchmark explicitly confirms correctness, source stability and absence of a fatal error.

No product correctness defect was confirmed by this run. These changes correct or extend the validation harness rather than relaxing source equality or output budgets.

## Measured Performance Exceptions

The low-level compatibility benchmark returned all correct results, but one warm persistent request for `P_AEBdT` took 2,550.98 ms; its new-CLI request took 507.70 ms. The slow persistent request spent about 878 ms in setup and 1,645 ms in native read/transport, with about 0.76 ms in decode/match. These measurements do not establish the cause of the delay.

The Agent Diagram batch `query: [identifier, "init", "Main"]`, `in: {kind: "diagram"}`, `context: 0`, `limit: 200` had a 591.89 ms median and 699.47 ms maximum across 15 samples. Correctness passed for every result and continuation page. This run therefore does not establish a universal sub-500-ms guarantee.

## Package

`E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261003T004549317Z.zip`

SHA-256: `958bf30d7fe8758f543ddcb96fc3422dfe8307dc559785de59b7d1c2f6f8f564`.

## Remaining Boundaries

Actual unsaved creation/deletion of Components, arbitrary vendor/custom node classes, other Database sizes and universal cold-load latency were not verified. Detached fixtures do not substitute for persisted model workflows. Testing cannot prove the absence of every possible bug.

To repeat the full run, first launch and open the prepared copied Database at port 32631, then run `npm.cmd run verify:full`. To independently classify the preserved final evidence without ASCET running:

```powershell
node dist/scripts/summarize-full-regression.js experiments/full-regression/2026-10-03T00-40-39-086Z/report.json
```
