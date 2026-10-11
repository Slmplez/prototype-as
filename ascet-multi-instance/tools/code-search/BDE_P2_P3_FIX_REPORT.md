# BDE Review P2 and P3 Follow-up

Date: 2026-10-04 (Asia/Shanghai).

The Search summary verification gap and incorrect global search-mode label are fixed. A guarded native read optimization was implemented and passed the saved-model matrix. All measured prewarmed searches in the new matrix and paired benchmark were below 500 ms, but a strict latency guarantee remains unproven and initial cold discovery remains about 2 seconds.

## Search Summary Verification

`scripts/bde-search-summary-oracle.ts` independently enumerates original saved fields and raw Pin/connection/boundary arrays. It does not call the product's DiagramIndex, grouping, projection, rendered-span, or preview helpers.

The matrix now compares expected and returned summary content, including:

- Matching field names, occurrence counts, the eight-item evidence cap, evidence values, Pin IDs, Unicode preview offsets, truncation flags, and omitted evidence counts.
- The selected incoming/outgoing connection preview, default six-item cap, current-node Pin names/IDs, directions, and omitted connection counts.
- Neighbor endpoint kind, name, Pin, Hierarchy, referenced Component, and actual ref identity.
- Selected Hierarchy boundaries, both endpoint identities and metadata, and omitted boundary counts.

Search neighbor and boundary refs are read by the actual packaged CLI at depth 0 with raw graph content. Native node identities are compared with the frozen Diagram facts before the summary assertions run. A deleted connection list does not pass merely by setting an omission count.

Eleven focused tests cover real product projection over synthetic raw graph fixtures and mutations that remove/replace connections, alter endpoint refs/names/kinds/Pins, drop evidence/boundaries, change omission counts, or falsify long Unicode preview metadata. The fixtures test structural behavior; they are not ASCET executable models.

The final offline suite passed 642 tests with zero failures. Log: `experiments/bde-p2p3-offline-final.log`.

The global absence case uses default text matching. Its historical table label in `BDE_MATRIX_REPORT.md` is now `Absent text`; historical measured values were preserved. The per-Diagram absent identifier probes retain explicit identifier mode.

## Native Read Optimization

The initial diagnostic samples placed most measured time in native BDE read/load rather than TypeScript matching or page construction. They were collected alongside an offline test process and are diagnostic observations, not a controlled attribution of the earlier 2.03-second outliers.

`bde-load-factory.st` now creates private SGCodeGODB/SGCodeGO subclasses once per connection, following the existing private SGDataGODB/SGDataGO pattern. `bde-source-reader.st` uses them only for detached copies of exact SGCodeGODB instances. The copied graphic object's display-label, scope-display, and actual-name display updates are suppressed. Identifier assignment, native get/set availability, model updates, sequence handling, and Pin construction retain the native flow.

The optimized constructor is guarded by `goClass == SGCodeGO`; unsupported classes use the original constructor. No saved source is modified and no global ASCET class method is replaced. There is no source index, watcher, cross-request model cache, or concurrent live access.

The final audit compared all 180 Components, 870 documents, and 71 raw Diagrams with the frozen baseline and found them unchanged. This supports the tested saved model set, not every possible custom graphic class or execution semantic.

## Stronger Packaged Matrix

Run: `experiments/bde-matrix/2026-10-04T03-24-25-701Z`.

| Check | Result |
| --- | ---: |
| Diagrams | 71/71 passed |
| Nodes | 1998 |
| Local depth/direction/compact/raw combinations | 35964 |
| Query checks | 6320 |
| Actual CLI requests | 17565 |
| Node-hit ref reads | 15512 |
| Additional neighbor/boundary ref reads | 2885 |
| Complete native-node Search summary comparisons | 30558 |
| Cursor replay checks | 2814 |
| Expected oversized whole raw graph fallback | 1 |
| Package payload hashes verified | 181 |

All assertions passed, and response-size checks retained the 128 KiB cap. The 1000-node graph is still a disconnected literal-only sample. Its text and local content were validated; it is not evidence for a 1000-node connected control graph.

This matrix's four later samples per global case had these maxima: identifier 153.099 ms, get 357.707 ms, set 492.309 ms, regex 163.749 ms, absent text 118.642 ms, and two identifiers 192.410 ms. Initial global Diagram discovery was 2011.364 ms; it was the only request >=500 ms in this run. Earlier slow samples remain in the original reports.

The original matrix still records its original counts and failures. Added endpoint reads and assertions explain the higher request count in this run. `matrix.csv` contains all 71 per-Diagram rows.

## Paired Performance Benchmark

Run: `experiments/bde-latency/2026-10-04T03-30-37-721Z`.

The delivered previous and candidate CLIs were alternated over seven rounds on the same isolated ASCET. Each phase was prewarmed. Offline regression had completed before this benchmark. There were 42 measured root searches per version, with diagnostic output enabled on both. All continuation pages were consumed, and the complete returned model content was compared after removing session refs/cursors/expiry/debug metadata.

| BDE query | Previous median ms | Candidate median ms | Candidate maximum ms |
| --- | ---: | ---: | ---: |
| Identifier | 158.472 | 157.779 | 162.518 |
| Text get | 358.248 | 367.054 | 383.633 |
| Text set | 353.270 | 340.016 | 355.956 |
| Regex | 154.029 | 154.447 | 160.832 |
| Absent text | 110.912 | 107.731 | 112.919 |
| Two identifiers | 189.801 | 191.810 | 197.516 |

Both versions had zero measured root requests >=500 ms. Complete result content was equivalent. Candidate set improved modestly; candidate get and batch medians were slightly higher. These observations do not establish a general speedup, nor do they isolate or eliminate the previously observed tail latency. Root latency excludes subsequent page consumption and validation reads. Lifecycle startup and prewarming are separate.

The benchmark returns a distinct performance result and a nonzero exit code when a measured candidate request reaches 500 ms; correctness passing cannot hide a failed latency target. The native read/load, TypeScript decode/match, and Agent prepare/page/cache diagnostics are retained per sample.

## Package and Audit

- ZIP: `E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261004T032355104Z.zip`.
- SHA-256: `b4dd3bbfff4f38e8994b4f7407428349a1ce52fa478ab180168a17dd2babec25`.
- 181 payload files; ZIP size 415100 bytes.
- Source fingerprint: `5cb29e83cf0588949d1f22e6621292199976cd8ca4df8dac88bfc64e8549c4df`.
- Matrix and benchmark lifecycle audits passed: saved source/graphs unchanged, isolated instance stopped, endpoint 32631 closed, and protected process creation identities unchanged.

Complete matrix requests/responses are retained in its `wire.jsonl.gz`. The benchmark retains full JSONL responses in `requests.jsonl` and sample diagnostics in `report.json`. The initial diagnostic profile is preserved in `experiments/bde-latency/2026-10-04T03-19-52-872Z`.

From `E:\Repo\ASCET\tools\code-search`:

```powershell
npm run verify:bde-matrix
npm run verify:bde-latency -- '<previous CLI root>' '<candidate CLI root>'
```

The matrix defaults to the candidate ZIP above; `ASCET_CLI_ARCHIVE` selects an explicit compatible package. These live verifiers require the configured isolated manifest and frozen raw-model snapshot in this workspace. The original artifacts remain available without another ASCET run.
