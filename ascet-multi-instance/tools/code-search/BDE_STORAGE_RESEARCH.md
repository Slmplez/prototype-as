# BDE Saved Storage And Read Boundary

Verified on 2026-10-02 in the copied `agent-a` Database at port 32631. Decompiled files reconstruct Smalltalk bytecode and are not the original vendor source. Live equivalence is established separately by the saved-source and detached-reader comparisons.

## Saved Fields

The read-only [storage probe](experiments/storage-probe/2026-10-02T13-49-57-649Z/fields.json) inspected 71 top-level Diagrams. Storage contains 589 SGDataGODB, 202 SGCodeGODB (including top graphic blocks), 1,197 literals, 58 operators, two switches, 13 Hierarchy blocks, eight hierarchy ports, 920 connections, and 19 comments. Counts do not establish coverage of every ASCET node class.

| Fact | Saved source | Native interpretation |
| --- | --- | --- |
| Element identity | SGMemoryBlockDB.aliasName | Resolve through the Component model. A saved alias alone is not a displayed name. |
| Return and Selector ports | returnPorts, selectorPorts | Method/Parameter alias resolution, visibility, native connector naming, and direction are required. |
| Sequence | sequenceDescription | Native SGCallGO resolves the activator through the model manager. |
| Literal text | SGLiteralGODB.literalString | Text can be read directly; connector direction/type still needs its native model. |
| Operator | SGOperatorGODB.type, connectors | Stored connector IDs are not sufficient to infer all Pin properties. |
| Connection endpoints | SGConnectionGODB.info items 1-4 | startBlock, endBlock, startConnector, endConnector getters confirm the positions. Drawing direction is not necessarily Output to Input. |
| Connection type | Not an independent saved scalar | Native getConnectionType reads startConnectionPoint.owner.manager.typeID after type propagation. |
| Connection info item 8 | drawingOrder getter | This is drawing order, not connection type. |
| Diagram ownership | Component.publicSpecifications/privateSpecifications | Public/Private membership is independent of folder names. |

For example, a stored getter has `get -> return`, while its exposed Pin may be `get/get`. A Sequence descriptor's visible flag and activator alias must be interpreted by the native conversion rather than assumed from its printed representation.

## Decompiled Evidence

- `unpacked/smalltalk-source/ASDBase.ic/SGMemoryBlockDB.st`: field getters at lines 60, 68, 76, 84; model-aware conversion at 4152.
- `SGCallGO.st`: sequenceDescription at 4522 and its conversion at 4839.
- `EtasAPIBlockDiagramElement.st:479`: getAllPins filters visible native interfaceElementGOs before API wrapping.
- `EtasAPIBlockDiagramElementPin.st:625`: hasSequenceCall excludes hierarchies/operators and resolves a native selector call; getName at 752 uses the native Method/Connector names.
- `EtasAPIBlockDiagramConnection.st`: type at 131; input at 598 and output at 754 select the appropriate endpoint by hasArgumentPin/hasResultPin, including reversed drawn connections.
- `SGTopGraphicsBlockDB.st:386`: full conversion then calls propagateConnectionTypesDatamodelManager:.
- `SGItemWithSpec.st:12786`: loadSourceForGraphicsDB:... constructs the model-aware graph and fits it to the raster.
- `SGConnectionGODB.st`: startBlock/endBlock/startConnector/endConnector getters at 29/38/47/56; drawingOrder at 104.

## Current Implementation

The production reader keeps the native model-aware conversion on an independently owned source copy. This is necessary because native conversion lazily fills display defaults; the frozen legacy reader modified all 71 cold source copies in the regression control. Production passed 142 cold copy reads and 71 original saved-source audits without changing their fields, most recently in [the current cold audit](experiments/cold-read/2026-10-02T18-50-29-536Z/report.json).

The headless Data GO factory is limited to exact `SGDataGODB` storage. It uses owned anonymous subclasses compiled once per connection, without changing vendor classes or publishing Smalltalk globals. For a normal Element, the represented GO class must be exactly `SGDataGO` and the selector owner of `graphicObject` must be `SGModelDataType`; Return Parameters use the corresponding native result constructor without its redundant first update. Display-label/scope decoration and arguments for those disabled labels are omitted. Native Method/Pin visibility, identifiers, Sequence resolution, the two-argument model update and connection-type propagation still execute. Vector/custom constructors and unsupported layouts keep the native fallback.

Within a single read request, scalar prototypes share a cycle-preserving copy plan keyed by represented class, typeID and Return status. The inherited methods/internalSetMethod/internalGetMethod/methodPositions constructors must all be owned by `SGModelDataType`. Each Element receives its own GO, ports, styles and mutable collections. Copies are allocated before reconnecting references and filling hash collections. Only primitive or string/byte-array hash keys are supported; unknown nodes, complex hash keys, scalar roots and depth/node-limit violations return nil and use native construction. Native platform `CgFont` resources may be shared. No model, prototype or GO copy plan survives the request.

[865 live copy assertions](experiments/template-copy/2026-10-02T18-49-29-058Z/report.json) verify mutation isolation, shared relationships, cycles, the native manager cycle, every mutable node in scalar/Return prototypes, and conservative fallbacks. [Frozen CLI comparison](experiments/cli-optimization/2026-10-02T18-45-19-195Z/report.json) verifies all 71 Diagram structures and source bodies, plus all 98 first-page responses. Native `copyForChangeDisplayBasic` is not a generic copier and is not used.

The new optimization reuses already-read native Pin identities only within one Diagram scope and one read operation. Endpoint selection follows the decompiled input/output Getter branches. Unseen endpoints still use the original API Getter, and connection type still uses the native propagated type. Nothing is cached across requests. This is not a direct saved-storage reader.

The wire format sends Component/Diagram identity once per contiguous Diagram group. TypeScript restores those identities before normal graph validation and hashing. Older explicit-identity rows remain supported. Truncated, nested, mixed-identity, or invalid-version compact groups are rejected.

Large ASCII-escaped native payloads are now compressed with installed `zlib1.dll` at level 1 and encoded by `CryptBinaryToStringA` before crossing Cebra. OS buffers are released in `ensure`; bindings alone are retained per connection. Small/incompressible payloads and unavailable libraries fall back to plain transport. Node's standard inflater checks the declared size, trailing input and UTF-8; legacy plain/gzip transport remains supported. This internal codec changes neither Agent JSON nor source hashes. [Native fallback verification](experiments/native-transport/2026-10-02T17-33-09-901Z/report.json) covers normal, unavailable, incompressible and native-error cases.

## Direct Storage Reader Gate

Before replacing native conversion, a candidate must preserve displayed Element/Pin names, visibility, directions, Sequence activators, real propagated connection types, hierarchical boundaries, comments, and owning Methods. Unsupported or ambiguous structures need an atomic whole-Diagram fallback, with no partial candidate records published.

A candidate must compare every structural field and source revision against the detached native Getter on flat/nested Class/Module BDE, State Machine Init, Public/Private Diagrams, reversed and hidden-pin connections, and cold sources. The storage probe alone does not satisfy this gate.

The first bounded storage path is now enabled only for an exact `SGTopGraphicsBlockDB` whose blocks are exact `SGLiteralGODB`, with no connections, comments, hierarchy or invisible categories. Each literal must have one valid stored connector ID, no operation alias and unique node/Pin IDs. Records are staged atomically; any unsupported shape uses the detached native reader. Empty trees follow the same gate. Connected diagrams still use native type propagation.

The native literal converter copies `literalString` and the stored connector ID into its default `get/get` output Pin. Whole-snapshot/source audits and all fields of the 71 real diagrams matched the frozen native result in [the literal-storage experiment](experiments/literal-storage/2026-10-02T19-39-55-132Z/report.json). This establishes equivalence for the tested corpus and the restricted gate, not for arbitrary saved storage.

[33 live gate checks](experiments/literal-gates/2026-10-02T20-51-36-955Z/report.json) extract the production gate itself, test detached variants, and compare accepted outputs with the same reader forced through native conversion. Cases include empty trees, native `DBString` text, delimiters and newlines, zero IDs, extra/missing Pins, aliases, invisible categories (including forced-native comparisons), unsupported blocks, duplicate/cross-node IDs, and the node limit. Unsupported blocks after an accepted literal return no candidate records. Original saved source and the full 71-Diagram snapshot remain unchanged. This test exposed rejection of native double-byte `DBString` by the checkpoint copier; both production source-copy and audit-copy now support this exact native string class.

## Cold Container Loading

The read-only saved-record probe found 214 Code Containers using `loadSwapper:blobStart:`. Record I/O took about 16 ms while normal first-load restoration took about 374 ms in [the record profile](experiments/cold-scan-profile/2026-10-02T20-50-27-326Z/report.json). These are coarse clocks, not storage-independent guarantees.

An independently owned anonymous `RBObjectLoader` reproduced every source and Diagram in [the loader profile](experiments/container-loader/2026-10-02T20-56-17-509Z/report.json). First-load container time was 344 ms, parsing 297 ms, and temporary segment deletion 282 ms; deletion is nested in parsing and the numbers must not be added. The native `RBObjectLoader deleteSegments:withGarbageCollect:` removes temporary `EsMemorySegment` objects and may perform global collection every ten segments. The delete primitive itself is not reconstructed by the Smalltalk decompiler.

Request-local batched deletion did not improve latency and remains experimental. Raw byte screening for `set` admitted all 214 records because serialization metadata also contains the word, versus 95 containers with an actual source match. Neither experiment changes the production reader or its counts.

Prefilter tests now include prefixes and suffixes. Whole `get/get` and `missing_port/missing` fields formerly bypassed the filter because they contained `/`; substring queries exposed false negatives. The filter now conservatively includes these native generated names. [13,247 native field/substring checks and 17 paired queries](experiments/prefilter/2026-10-02T19-54-47-769Z/report.json) passed with zero false negatives. The initial failed regex optimization is retained under `experiments/regex-prefilter/2026-10-02T19-26-05-275Z`.
