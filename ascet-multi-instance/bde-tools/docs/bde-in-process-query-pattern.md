# ASCET in-process query pattern

This is the reusable acceleration method behind the BDE readers. Its benefit
comes from moving traversal and value projection into the ASCET process, reducing
Cebra round trips and remote handle creation. It does not make the model server
execute getters concurrently.

## Current Measured Examples

The same bounded native-query/plain-value/immutable-page approach passes full
collected-field comparisons in two current profiles: AEB_dFxTar (30 reads,
complete P95=663.115 ms, 33978 bytes/93 request frames) and a Class with 4 owners/
7 scopes (30 reads, P95=933.749 ms, 30721 bytes/180 frames). All pages count toward
delivery. Independent public getter bookends retain ordered arrays and exact
identity; each sample captures again. Application startup is reported separately.

Local continuation removes repeated Python launches in an existing Doge process,
with the original checksum/session/UTF-8/budget/delivery contract and fallback.
The optional compiled-query cache did not show a benefit and remains OFF.
Semantic02's slower P95=1113.425 ms is retained; this method is not a universal
latency guarantee or full semantic/configuration/edit acceptance.

Exact endpoint identity is part of the pattern: process-name enumeration is
ambiguous with multiple ASCET instances. Select the intended loopback LISTEN
owner, verify process name/start time, and recheck after collection. Measurement
proxy ownership must not be substituted for the upstream ASCET process.

## Execution

1. Establish one serialized live connection, resolve the database/component and
   check the requested identity domain and supported model kind.
2. Compile a fixed, embedded, audited template through `EsCompiler` and verify
   the returned block type. Caller input selects bounded identities/options;
   it cannot supply source code or arbitrary selectors.
3. Invoke the temporary block. Traverse native collections once, preserve raw
   aliases/OIDs/occurrences, resolve supported relationships and collect values
   before releasing intermediate wrappers.
4. Serialize plain typed values. Preserve nil/false/absent/unsupported separately,
   edge multiplicity, meaningful order and exact numeric/string representation.
5. Decode strictly, validate identity and declared coverage, persist an immutable
   observation and return bounded pages. Release block handles before disconnect.
6. Run find, inspect, path analysis, historical diff and paging offline on that
   immutable observation. Missing fields require a new explicitly scoped read.

Implementation examples are `AscetReadProbe.cs` with `bde_bulk_full.st`, the
structural reader with `bde_structure_read.st`, and signal/Project readers with
their fixed templates. Their different projections have different coverage.
An interface snapshot is not a full semantic component snapshot.

## Where it generalizes

| Work | In-process portion | Client portion |
|---|---|---|
| Complete component read | Native graph/definition/method projection | Strict decoding, coverage, immutable pages |
| Selected BDE scope | Resolve exact hierarchy chain and collect requested closure | Short refs, snapshot ownership and agent text |
| Message/instance read | Native declaration aliases and bounded instance/candidate lookup | Explicit Project joins and ambiguity reporting |
| Precise edit | Typed setter, local actual before/after and native recovery retention | Durable intent/started/outcome, automatic actual diff |
| Construct then connect | Actual generated pin/edge identity and per-step native guards | Resolve dependencies from confirmed patches without an agent read |
| Original BDE diff | Audited UI-thread canvas callback and viewport transformation | Geometry from the recorded actual patch, display ownership |

Edits reuse the locality and projection technique but require additional write
contracts: exact old state, durable preparation before dispatch, no replay after
unknown outcome, observed side effects, reference/order checks and guarded
restoration. Read acceleration alone does not establish mutation safety.

## Limits

- Only use access paths audited for side effects. A native getter can allocate
  caches, register callbacks or create dynamic declarations. Public availability
  does not prove read-only behavior.
- Bound depth, collection sizes, code/output size and operation count. Unsupported
  native classes and unresolved identities fail explicitly.
- Follow the existing serializer's byte/code-page boundary. ASCII envelopes and
  typed IEEE bytes avoid the legacy .NET decoder's offset/float-loss problems;
  test the actual deployed image and decoder before changing representation.
- A single block narrows observation time but is not proof of atomicity against
  GUI edits or lazy model activity. Multi-component groups are non-atomic.
- One shared live connection remains serialized. Parallel work belongs on saved
  immutable snapshots; multiple agent connections do not establish safety.
- Process-local native recovery expires on restart. Old object handles cannot be
  replaced by same-named objects and called an exact inverse.
- Subsecond results on AEB_dFxTar do not establish subsecond arbitrary Project,
  all-interface, many-step edit or display performance. Compare identical coverage,
  total delivery, actual frames/bytes and all failed attempts per workload.

## Verification

Use a public/legacy independent projection and controlled fixture recipes to
compare every declared field, object, relationship and meaningful order. For
edits, compare full independent before/after observations to the cumulative
actual patches, then verify full restoration. Native draw calls require separate
screenshots, zoom/scroll/clear/window checks and model/Undo evidence.

Current measurements and their coverage limits are recorded in
[the experiment report](bde-tools-experiment-report.md); the construction
contract is in [construction tools](bde-construction-tools.md). This pattern is
reusable engineering guidance, not a claim that every internal ASCET API has
been audited or that the complete tool eval has passed.
