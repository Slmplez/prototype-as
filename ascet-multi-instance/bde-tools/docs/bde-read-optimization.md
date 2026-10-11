# BDE read optimization and measured limits

2026-10-02. The current Class read uses a fixed native getter batch by default.
It is still an isolated Class profile, not complete BDE delivery or a universal
sub-second read guarantee. Writes remain disabled by the retained AEB_1 hold.

## Current Business And Class Profiles

The latest shared backend verifies exact semantic endpoint generation even with
three ASCET instances present. It selects the loopback LISTEN owner and checks
process name/start time before and after collection; invalid generations refuse
before publication. `semantic-read-delivery-01` retains the previous null-identity
failure. Current measurements use fresh native capture and local immutable pages.

| Profile, 30 fresh reads | Complete median | Complete P95 | Complete max | Frames / body bytes |
|---|---:|---:|---:|---|
| AEB_dFxTar semantic03 | 584.959 ms | 663.115 ms | 667.626 ms | 93 / 33978 |
| Class read15 | 901.721 ms | 933.749 ms | 938.814 ms | 180 / 30721 |

Both deliver all three pages at 16 KiB budget and match independent public RPC
bookends for every collected field and ordered array. App startups 105.495 /
102.147 ms are separate. Class15 verifies the current shared backend after the
semantic identity change. Offline81 passes 481 Python / 20 Doge tests; 6 live skips
are not acceptance. Native endpoint parsing has 13 offline cases.

Semantic02 retains all 30 equivalent reads, P95=1113.425 ms/max=1246.234 ms; the
offline suite was concurrently launched. This is not proof of causation. Semantic03
is a separate serial run, not removal of slow trials from semantic02. Effective
calibration/numeric rules, other roots/types/cold images/thousand-node and complete
PERF-01/G0-G7/FLOW remain unaccepted. The Class fixed-query cache stays OFF.

See [semantic03 reproduction](../analysis/bde-experiments/2026-10-02/bde-semantic-read-delivery-03/README.md)
and [Class15 reproduction](../analysis/bde-experiments/2026-10-02/bde-class-bulk-read-15/README.md).

## Historical Read14 Candidate

Final `bde-class-bulk-read-14` supersedes the historical read07 timings below.
Thirty fresh complete reads in one resident Doge process, with independent
public RPC bookends, deliver the same 30721 bytes for 4 owners and 7 scopes.
The 16 KiB budget requires 3 Tool.calls, all included in delivery time.

| Measurement | Median | P95, nearest rank | Maximum |
|---|---:|---:|---:|
| Live capture | 770.547 ms | 793.331 ms | 793.548 ms |
| First Tool.call | 907.655 ms | 931.232 ms | 939.928 ms |
| Complete Tool.calls | 935.287 ms | 955.736 ms | 967.486 ms |

This reaches one second for this current-state Class profile. Doge application
startup is separately measured at 105.762 ms. Each sample captures ASCET again;
no model snapshot cache replaces the live read. Cold images, AEB_dFxTar PERF-01,
other roots/types and thousand-node reads remain separate acceptance work.

One complete read uses 180 request / 179 response frames and 72097 / 794516
wire bytes. The public RPC bookends use 6600 request frames and collect identical
ordered fields; two oracle samples do not establish an oracle P95.

The Class bridge reuses the owner-parameterized structure template during one
observation and omits an unused formal-selector compilation. Configuration
storage traversal ends at its actual queue length with the existing capacity,
sharing/cycle/type/Float-bit checks. The frozen original configuration template
remains the independent oracle and the write path.

`BlockDiagramPaging.ts` continues immutable documents in the existing Doge
process. It checks Python record checksums, body hashes, session, byte budget,
UTF-8 offsets and durable delivery ranges. Unsupported, corrupt or missing
records use Python's established handling. Only exact cursor-only read requests
use this path; writes preserve their original dispatch/cancellation boundary.
Set `ASCET_BD_LOCAL_PAGING=0` to compare the previous Python continuation path.

The optional fixed compiled-query cache (`ASCET_BD_CLASS_QUERY_CACHE=1`) did not
establish an improvement in read11 and remains OFF. All iterations read08-14,
including slower read12 trials, are retained. Failed offline78 recorded a write
cancellation regression; final offline79 verifies its fix and pagination parity:
479 Python tests, 20 Doge tests / 1030 assertions, version PASS, 6 live SKIP.

Deletion preview05 separately passes three public-read/preview/public-read
rounds at 1165.099-1213.397 ms / 263 request frames, with unchanged owners.
Its adapter predates the final cancellation-only fix; positive retained inverse,
capacity exhaustion and partial-state acceptance remain open.

See [read14 reproduction](../analysis/bde-experiments/2026-10-02/bde-class-bulk-read-14/README.md)
and [current report](bde-tools-experiment-report.md).

## Implementation

- Keep `AscetStructureExperiment.Graph/GraphTree` and
  `AscetClassInterfaceProbe.PublicRead` unchanged as the independent RPC oracle.
- `bde_public_graph_read.st` runs the same API wrapper getters in one bounded
  Smalltalk call. It returns node wrapper types, IDs, geometry, ordered pins,
  sequence number/method/position, full source/target pins, route points,
  connection type and comment fields. Tree traversal preserves the arrays'
  API order; dictionary key order is not model semantics.
- The wrapper-type mapping comes from the decompiled .NET
  `AbstractBlockDiagramElement.identifyBlockDiagramElement`. Route XY conversion
  follows `BlockDiagramConnection.GetSegmentCoordinatesXY`: first half X,
  second half Y. It does not substitute a shorter route or an endpoint-only read.
- A separate `scopes` mode enumerates hierarchy IDs without re-reading all graph
  fields. Each native scope snapshot is still read independently; this does not
  make observation atomic. `bde_public_signature_read.st` uses the same ordered
  method/formal API getters and exact aliases as the RPC signature oracle.
- For a fresh complete read, one Class bridge acquires process/database/Class
  identity and resolves callers. It checks listener PID/epoch before and after,
  database session, caller closure, signature and clean editors. The redundant
  preliminary caller bridge is removed only from this read path. New bindings
  still pass the complete Python caller validator before snapshot publication.
- `bd_windows_endpoint.py` uses Windows `GetExtendedTcpTable` for loopback
  listener ownership. It rejects missing/ambiguous owners, invalid ports and
  malformed tables. Native process-name/epoch and database checks remain.
- Edit/inverse commands keep their exact input identities and original public
  observation path. Native read identity acquisition refuses any mutation,
  WAL reservation or quarantine allocation. No arbitrary agent Smalltalk source
  is accepted; only repository templates and fixed modes are compiled.

Bounds: 64 scopes, depth 16, 100000 described items, 20000 flat route coordinates
per edge and 32 MiB encoded graph payload. Unknown wrappers/API errors refuse;
there is no reduced-coverage fallback advertised as a successful complete read.
The target/current profile still does not collect effective configuration,
complete external type content or runtime scheduling.

## Historical Read07 Results

The existing mixed fixture has 4 owners, 7 scopes, 31 nodes, 59 pins, 23 edges
and a 30721-byte delivered document. Its persisted failed deletion remains;
these experiments observe current state, not a restored original model.

| Historical read07, 16 KiB page budget | Public RPC oracle | Default native batch |
|---|---:|---:|
| Samples | 2 bookend observations | 30 complete observations |
| Complete Tool.call median | 10770.831 ms | 1509.169 ms |
| Complete Tool.call P95, nearest rank | insufficient samples | 1559.862 ms |
| First Tool.call P95 | insufficient samples | 1126.012 ms |
| Live capture P95 | insufficient samples | 863.736 ms |
| Request frames | 6603 | 192 |
| Response frames | 6601 | 191 |
| Request bytes | 526485 | 162099 |
| Response bytes | 890266 | 794880 |
| Delivered body bytes | 30721 | 30721 |
| Tool.calls for all pages | 3 | 3 |

Every batch observation equals the complete collected oracle observation,
including ordered arrays, configuration storage and all native scope entries.
The final public oracle also equals the initial one. Main crash.log has no newly
appended assertion, and no Class edit intent is created. Three alternating
same-coverage trials at an 8192-byte budget also pass; complete native calls cost
2131.889-2192.471 ms. Page budgets are stated separately, not mixed as an API speedup.

Live capture is below one second in this 30-sample run, but first-page and complete
Doge delivery both miss the one-second end-to-end target. Roughly 0.69 s separates
median live capture and complete delivery, including process launches, local
publication, formatting and three paged Tool.calls. Native batching alone does
not remove that remaining cost. These are same-process/same-fixture measurements,
not cold-image, thousand-node, other-root or global optimality acceptance.

Deletion preview is independently checked against surrounding field-by-field
RPC reads in three rounds: 275 request frames, 1193.673/1191.510/1217.299 ms,
5 pins/5 edges in the planned closure, unchanged owners and no new assertions.
Its recovery records are absent; positive retained-object/capacity/partial
branches and actual deletion/inverse remain uncertified.

Evidence: `bde-class-bulk-read-06/result.json`, `bde-class-bulk-read-07/result.json`,
`bde-class-preview-tools-04/result.json`, and `offline-contract-76/result.json`
under `analysis/bde-experiments/2026-10-02`. The offline suite passes 475 Python
tests, 13 Doge tests/825 assertions and version; 6 live skips are not native proof.
The failed `bde-class-bulk-read-03` is retained: its four-argument remote block
call returned error 102, zero model setters and zero new assertions. The next
candidate's fixed three-argument graph/tree/scopes mode passed independently.

## Reuse Method

For another API/profile, first fix the required fields, collection order and
identity domain. Audit the decompiled wrapper selectors and implicit behavior.
Batch those getters inside ASCET, return only plain bounded data, and keep the
independent field-by-field reader for equivalence. Compare full before/after
observations, count real wire traffic, then measure tool formatting/pagination
separately. Only after equivalence passes should the tool use the new strategy.

This approach applies to audited getters; it does not imply parallel model
execution or permit batching arbitrary setters. Write optimization must retain
its WAL-before-dispatch, exact old-value/identity guards, actual-after collection
and explicit inverse material. Class creation, patch-preserving inverse and the
unrecovered original failure remain separate delivery work.

Diagnostic override: `ASCET_BD_CLASS_OBSERVATION_MODE=public_oracle`.
Both modes use the same immutable snapshot and pagination contract.

## Native identity and complete error delivery findings, 2026-10-06

The populated Module experiment establishes two requirements for reusing this
batch-query method. Keep the original diagram instance throughout a query and
pass it explicitly to native identity descriptors: re-running `getDiagram`
can produce refreshed graph objects whose owner pointers differ from the
original pins. The pin study checks exact owner membership and pin membership;
matching numeric IDs cannot repair a pointer mismatch. Native Module `Main`
uses `EtasAPIProcessDiagram`, so a block-diagram wrapper class assumption also
fails. See `bde-pin-identity-study-05/result.json` under the 2026-10-06 evidence.

Parameterize fixed Smalltalk blocks with the supported zero-to-three argument
`value` selectors. `BlockContextTemplate` exposes no four-argument `value`
selector; audited `valueWithArguments:` is a distinct interface. Current identity
queries retain the fixed three-argument `(component, diagram, object)` form.
XML OIDs are actual 20-byte arrays bound to original `aliasName` byte values,
with exact integer/range/nonzero/uniqueness checks. Do not invent a string alias
or use a fresh lookup to substitute an original native object.

Paged rejection documents follow the same full-delivery rule as successful
documents. The first operation reply carries `is_error=true`; remaining bytes
arrive through successful immutable cursor-only `bd_read` calls. Preserve the
initial operation outcome while validating each page and the final cumulative
delivery. The populated case returned all 21873 rejection bytes in two pages;
the old experiment driver incorrectly required one page. The new exact verifier
accepts an explicitly expected initial error, rejects failed or non-read
continuations, and retains all document/range/budget/body checks. Error paging
does not re-dispatch an edit. This increment adds no performance conclusion or
broader native capability acceptance.

See [paging evidence and exact resume](../analysis/bde-experiments/2026-10-06/bde-rejected-paging-controls-01/README.md).
