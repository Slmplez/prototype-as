# BDE Search Full Matrix Verification

Date: 2026-10-04 (Asia/Shanghai).

Follow-up: `BDE_P2_P3_FIX_REPORT.md` records stronger Search summary assertions and a new packaged matrix. The results below describe this original run; its slow samples and first-run failures are retained.

Functional result: all 71 saved BDE Diagrams passed the final matrix, with no assertion failures. Performance result: a strict 500 ms request target was not met; five later global searches exceeded it, with a maximum of 2033.026 ms. This run extends the smaller samples in `CODE_BDE_POLISH_REPORT.md`; those historical observations remain intact.

## Delivered CLI and Test Changes

The actual ZIP was extracted into a path containing spaces, all 181 payload hashes were verified, and its JSONL CLI was used for the live checks. Live operations were serial and read-only on isolated endpoint 32631.

- ZIP: `E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261004T013745631Z.zip`.
- SHA-256: `61bb3b2e91dcfd8eb487c3143e9c916482bf4621783feb1cd1df36be3a14c333`.
- Added `scripts/verify-bde-matrix.ts`, `scripts/bde-matrix-compare.ts`, four comparator regression tests, and the `verify:bde-matrix` npm command.
- No product search/runtime implementation was changed in this iteration. The delivered ZIP was unchanged.

## Coverage

| Sample or check | Final coverage |
| --- | ---: |
| Saved BDE Diagrams | 71/71 passed |
| Components containing these Diagrams | 68: 38 Class, 30 Module |
| Visibility | 70 Public, 1 Private |
| Empty Diagrams | 13 |
| Graphical member names, deduplicated within each Diagram | 204 |
| Nodes | 1998 |
| Connections | 920 |
| Hierarchy boundaries | 8 |
| Field probes, deduplicated within each Diagram | 1869 |
| Multiline field probes | 17 |
| Query checks, including global repetitions | 6320 |
| Local read combinations | 35964 |
| Actual CLI requests | 17242 |
| Search hit refs checked by raw node read | 15512 |
| Cursor replay checks | 2739 |
| Offline regression tests | 631 passed, 0 failed |

Node categories actually present were element (720), literal (1197), operator (58), control (2), hierarchy (13), and hierarchy_pin (8). The saved graphs also contained 19 comments, checked separately from native nodes.

Every Diagram was checked for exact name discovery, complete Diagram text, complete raw graph or the expected output-budget error, line-range reads, repeated refs in batch reads, graphical member-name discovery, and opposite visibility exclusion. Shared Diagram membership and `matched_members` were checked against saved graphical Method/Process facts.

Every node was checked under depth 0/1/2, incoming/outgoing/both, and compact/raw reads: 18 combinations per node. A separate raw-edge BFS selected the expected nodes and edges. Comparisons retained native identity, Hierarchy scope, Pin values, Sequence annotations, connection direction, boundaries, record multiplicity, and raw records. They did not infer executable control flow from connectivity.

Search probes used original model fields, deduplicated within each Diagram, with at most the first 128 Unicode code points per probe. They covered case-sensitive text, case-insensitive text, escaped regex, identifier searches where applicable, multiline fields, the regex `^`, and an absent identifier. Returned evidence was checked against matching original fields. Native-node hits were read by ref to confirm their identities. Diagram-name and comment hits were checked separately.

All continuation pages were consumed. Counts, duplicates, cursor completion, replay stability, and response size were checked. There were 44300 local read content pages, including items embedded in batch responses; this is not a count of separate CLI requests.

All recorded responses stayed within 128 KiB. One oversized whole raw graph correctly returned `PAGE_TOO_LARGE`; text and local reads reconstructed the supported requested content. No batch budget fallback was needed. The largest Diagram had 1000 isolated literal nodes and 1000 Pins, with no connections; it was not a 1000-node connected graph.

## Retained First Run and Comparator Fix

The first complete run exercised 71 Diagrams through 17191 CLI requests and 6320 query checks. It reported 68 passes and three failures, at Diagram indexes 63, 66, and 70.

Those failures came from the test comparator: it compared JSON strings whose object keys had different insertion order. Nested referenced objects contained identical `hierarchy` and `component_path` values but serialized them in opposite key order. The recorded diffs and complete wire trace were retained.

The comparator now canonicalizes object keys and ignores outer record order, while preserving all field values, identities, multiplicity, and nested array order. Four tests verify both equivalent data and rejection of missing/duplicated records, changed identity/scope/direction, extra fields, and reordered nested arrays. The full offline suite then passed 631 tests. The final complete matrix passed 71/71 Diagrams.

The second run followed this comparator fix. Neither run was repeated to obtain a better performance result. All slow observations from both runs remain available.

## Performance

Times cover sending the CLI request through parsing its response, before test assertions and trace logging. Isolated ASCET lifecycle startup took 6541.956 ms and is separate. A new CLI process does not imply the ASCET model is cold; the first graph read below occurs after discovery.

| Phase | Samples | Median ms | Maximum ms | Requests >=500 ms |
| --- | ---: | ---: | ---: | ---: |
| Initial global Diagram discovery | 1 | 2009.707 | 2009.707 | 1 |
| New CLI scoped discovery | 71 | 353.417 | 537.443 | 2 |
| Graph first read, after discovery | 71 | 12.802 | 41.447 | 0 |
| Whole Diagram text read | 71 | 11.613 | 39.522 | 0 |
| Local batch read | 2916 | 25.459 | 136.538 | 0 |
| Scoped field search, up to 16 queries per request | 424 | 30.200 | 71.752 | 0 |

Global BDE searches used six cases, each with one first request and four later requests. All result pages were consumed and checked. The table measures the root search request; it does not include subsequent page consumption or validation reads.

| Global query | First request ms | Later median ms | Later maximum ms | Later requests >=500 ms |
| --- | ---: | ---: | ---: | ---: |
| Identifier `AEBLockTime` | 687.192 | 303.126 | 823.640 | 1/4 |
| Text `get` | 753.959 | 485.810 | 1568.184 | 1/4 |
| Text `set` | 517.582 | 607.879 | 2033.026 | 3/4 |
| Regex `\bAEBLockTime\b` | 317.441 | 167.570 | 398.377 | 0/4 |
| Absent text | 205.013 | 125.678 | 182.558 | 0/4 |
| Two identifiers in one request | 224.174 | 295.644 | 418.656 | 0/4 |

The harness reports the upper middle observation as the median for an even sample count. Four later samples per case are too few to establish a latency distribution or a universal bound.

The final run retained 11 requests >=500 ms: three discovery requests, three first global searches, and five later global searches. The first run retained seven slow requests and its later global samples were all below 500 ms. Both runs are evidence; the final outliers prevent a claim that every prewarmed query meets 0.5 seconds. No native phase timings were collected in this matrix, so the cause of variability remains unisolated.

The next performance investigation should retain the same global cases and account separately for live extraction, matching, serialization, and CLI transport. A change should be evaluated with equivalent returned identities/counts and retained slow observations.

## Model Audit and Verification Boundary

The final model audit found the source and graphs unchanged: 180 Components, 870 documents, and 71 Diagrams. Source fingerprint: `5cb29e83cf0588949d1f22e6621292199976cd8ca4df8dac88bfc64e8549c4df`.

The isolated instance stopped and endpoint 32631 closed. Protected ASCET PIDs 21052, 39168, and 39624 retained their creation identities. The final lifecycle closeout passed.

Expected matches and neighborhoods used the frozen raw-model snapshot plus separate field matching and graph traversal. Native extraction itself was not independently reimplemented. This validates consistency with the tested saved model facts; it does not prove all possible models, execution semantics, or Agent interpretations. The matrix covers the object categories present in these 71 Diagrams. The offline suite includes broader code-search regressions, but this live matrix focused on BDE.

The lifecycle closeout reports `full_text_reads_checked: 0` because its generic text audit checks ESDL/C `code`. BDE `diagram_text` was compared with the frozen source inside this matrix, including complete page reconstruction; the generic audit did not perform those text comparisons.

## Evidence and Reproduction

Final run: `experiments/bde-matrix/2026-10-04T02-30-53-194Z`.

- `report.json`: assertions, per-Diagram coverage, counters, timings, and all slow requests.
- `matrix.csv`: 71 per-Diagram rows, all passed.
- `observations.json`: per-request timings and response sizes.
- `requests.jsonl`: bounded request summaries and response hashes.
- `wire.jsonl.gz`: complete actual JSONL requests and responses.
- `setup.json`, `driver.log`, `closeout.json`: isolated lifecycle and unchanged-source/process audit.

First diagnostic run: `experiments/bde-matrix/2026-10-04T02-24-03-038Z`. Its original comparator failures and slow observations are preserved.

Offline regression log: `experiments/bde-matrix-offline.log`. Driver logs: `experiments/bde-matrix-driver.log` and `experiments/bde-matrix-driver-final.log`.

From `E:\Repo\ASCET\tools\code-search`:

```powershell
$env:ASCET_CLI_ARCHIVE = 'E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261004T013745631Z.zip'
npm run verify:bde-matrix
```

The verifier extracts and checks the package, starts the configured isolated instance, performs serial CLI reads, records all responses, audits the model, and cleans up. It requires the existing isolated instance manifest and the frozen snapshot used by this workspace. The command above pins this original package. Current assertions include additional summary/endpoint checks, so a new run does not reproduce the original request count exactly. Recorded results can be reviewed without launching ASCET again.
