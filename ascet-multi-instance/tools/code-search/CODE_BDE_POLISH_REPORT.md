# Code and BDE Search Polish

Date: 2026-10-04 (Asia/Shanghai).

This iteration is limited to saved code and BDE search, discovery and reads. It adds no Dataset, table configuration, generated-code, runtime-scheduling, UI, MCP, watcher or answer-evaluation feature.

## Changes

1. Member-name discovery now supplies `matched_members` on BDE Diagram results when `find.name` or `find.member` is present. The list contains the graphical Method/Process names that matched this request. `diagram_methods` continues to describe all members sharing the Diagram. Result selection and counts retain their previous semantics.
2. An empty `matched_members` distinguishes a Diagram-name match from a graphical member-name match. It is not proof that a declaration exists or is absent. Text results keep their existing `method` or `process` fields.
3. Name-query metadata survives paging but does not change the source hash, native identity or fresh read. Reading the result still returns the entire saved Diagram; it does not infer a separate Method implementation.
4. Local BDE edge selection now uses Hierarchy scope plus connection ID. The current transport decoder already renumbers edges globally, so this is a helper-level protection, not a demonstrated live CLI defect. The regression fixture proves the helper previously selected unrelated edges when given repeated IDs across Hierarchies. Runtime decoding and structural traversal rules remain unchanged.
5. Prompt, find tool description and Agent contract explain the new field and its limits.

## Real Init Samples

Request: `{"operation":"find","target":"members","name":"init","match":"exact","limit":3}`.

The isolated saved Database returned ten supported records across four pages. Representative results:

| Component | Saved content | matched_members |
| --- | --- | --- |
| AEB5ms | Diagram Init; its Process is AEBInit | [] |
| AEBPre5ms_iBooster | Diagram Init | [{name: Init, kind: process}] |
| AEB_light_class | Diagram Main shared by 20 members | [{name: init, kind: method}] |
| AEB_State_Machine | Diagram Init | [{name: init, kind: method}] |
| AEB_RedEngTorque | Text Method init | Omitted; method is init |

Discovery took 477.456 ms; continuation pages took 0.341-0.686 ms. Three representative fresh reads took 9.859, 35.513 and 10.848 ms. Each complete body matched independently frozen source facts and omitted query-only metadata. These are individual observations, not universal bounds.

## Verification

| Check | Result | Evidence |
| --- | --- | --- |
| New focused regression | 28 passed | test/code-bde-polish.test.ts |
| Full offline regression | 627 passed, 0 failed | experiments/code-bde-polish-offline.log |
| Extracted ZIP E2E | 12 scenarios, 94 requests passed; 181 hashes verified | experiments/cli-e2e/2026-10-04T01-37-59-032Z/report.json |
| Packaged source rebuild and live checks | 24 calls passed; no npm runtime installation | experiments/code-bde-polish-20261004/package/report.json |
| Baseline/candidate search comparison | 98 alternating calls; returned search content equivalent | experiments/code-bde-polish-20261004/performance/report.json |
| Native facts and cleanup | 180 Components, 870 documents, 71 Diagrams unchanged; isolated process stopped and endpoint closed | experiments/code-bde-polish-20261004/closeout.json |

The focused cases cover raw duplicate IDs, root/child Hierarchies, depth 0/1/2, incoming/outgoing/both, compact/raw reads, bounded local pages, replay, exact/contains/case-sensitive names, Class Method, Module Process, shared Diagram members, name-only Diagram hits and unchanged-source reads. Synthetic graph fixtures are structural tests, not ASCET executable-model samples.

The pre-fix regression log retains 20 expected failures and eight passes: `experiments/code-bde-polish-baseline.log`. During fixture development, incorrect coverage counts and missing visibility metadata also caused failures; those fixture fields were corrected without relaxing product assertions. No performance outlier was discarded or rerun to obtain a pass.

All live operations were serial on isolated endpoint 32631. Protected ASCET PIDs 21052, 39168 and 39624 retained their creation identities. Both live lifecycles completed source audits and cleanup.

## Performance Boundary

Each A/B case has seven samples per version, measured from CLI request through parsed response. Each phase is prewarmed. The candidate's 49 measured searches were below 500 ms; this is a bounded sample, not a strict every-request guarantee.

| Query | Previous median ms | Candidate median ms | Candidate maximum ms |
| --- | ---: | ---: | ---: |
| identifier | 229.863 | 233.003 | 244.785 |
| return | 411.751 | 426.533 | 448.833 |
| absent | 183.378 | 185.396 | 205.404 |
| three identifiers | 354.552 | 355.277 | 384.432 |
| regex | 231.807 | 227.659 | 265.748 |
| set | 459.450 | 465.287 | 498.302 |
| scoped identifier | 13.075 | 12.772 | 15.189 |

The previous package had one 541.779 ms sample. Several candidate medians are slightly higher, so this iteration does not claim a general speed improvement.

E2E separately retained three requests above 500 ms: initial cold member discovery 1387.665 ms, the first global identifier search 787.666 ms and discovery after ASCET restart 881.107 ms. Other E2E requests were below 500 ms. Launch time and model reasoning are outside request measurements.

## Package

- ZIP: `E:\Repo\ASCET\dist\ascet-code-search-cli-0.2.0-20261004T013745631Z.zip`
- SHA-256: `61bb3b2e91dcfd8eb487c3143e9c916482bf4621783feb1cd1df36be3a14c333`
- 181 payload files; 414,257 bytes. CLI runtime requirements remain Node.js 22+, .NET Framework 4 and ASCET 6.4 ToolAPI.
- Native source fingerprint: `5cb29e83cf0588949d1f22e6621292199976cd8ca4df8dac88bfc64e8549c4df`.
