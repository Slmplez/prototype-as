# Native occurrence bindings for Class local inverse

Status: bounded read-only native binding probe implemented. This is a prerequisite
for a local inverse, not a native merge executor, retained recovery archive or
permission to write. The original AEB_1 restoration hold remains in force.

Latest continuation adds a private native `capture` mode retaining actual
scope/object references and full immediate parent membership across calls, plus
Class before/after checkpoint integration. Exported manager tokens still have no
cross-call authority. See [native collection checkpoints](bde-native-collection-checkpoints.md)
for the stronger current-state evidence and unaccepted write/restoration boundary.

## Why field equality is insufficient

`bde_structure_read.st` keeps ephemeral edge references in an `IdentityDictionary`.
The tested ordinary connections have native identifier `-1`. Their `e*` references
identify exact native objects in one registry generation; endpoints and routes
are not an identity key. Rebuilding a diagram from unchanged stored graphics
produces new native edge objects. A registry/source refresh must not authorize an
inverse by guessing which of those objects used to be an original edge.

`bde_class_local_inverse_bindings.st` reads the current registry without allocating
new edge IDs or updating its generation/checkpoint/counter. It records every
collected scope and graphical occurrence, native class/identifier, exact manager,
membership collection/index/size, node pin order, pin owner identity/direction and
edge connection-point identities. Parent and connector membership must be unique.
Duplicate native occurrences/refs, unsupported memberships and missing identities
refuse. The source, owner/specification and registry are checked during observation.

The three fixed research modes are:

- `registry`: resolve all occurrences through the existing registry.
- `empty_ids`: reuse that diagram with an empty local identity map. Unidentified
  edges must refuse; no fallback or replacement IDs are created.
- `fresh`: reconstruct the current diagram while using the existing identity map.
  Newly reconstructed unidentified edge objects must refuse even if fields match.

These modes are private experiment inputs under `observe`; they do not add an
agent tool or expose arbitrary Smalltalk. The six Doge tools keep their surface.
The full binding document is saved to experiment evidence, not added to normal
agent read/preview output.

## Scope and source evidence

Manager tokens identify native objects only within ONE invocation. They are not
stable handles across observations. Collection index/size covers collected
occurrences, not a complete roster of hidden labels or other parent children.
The probe does not establish retained-original contents after deletion, before/
after object correspondence across generations, configuration/caller compatibility,
original-object splice safety, durable recovery or UI Undo purity. The existing
inverse generation and equality guards remain unchanged.

Recovered `SGMethodInterfacePortGO>>addInterfaceGO:` and `removeInterfaceGO:` only
send `add:` / `remove:` to the interface collection. They do not establish a new
manager binding. See `analysis/smalltalk-recovery/methods/ASDBase.ic/methods.jsonl`
lines 49401-49402. The future splice executor must validate/rebind manager ownership
and restore collection order separately. `EtasAPIBlockDiagramElementPin>>
getBlockDiagramElement` returns an API wrapper through `getAPIHandleForItem:`
(line 123431); comparison uses its `diagramElement`, not wrapper identity.

The native helper blocks use at most three arguments: this runtime rejected
`BlockContextTemplate>>value:value:value:value:` even inside another Smalltalk
block. `bde-class-native-bindings-01` preserves that failure; `02` preserves the
wrapper/native-owner mismatch and `03` the validator's original refusal of native
identifier `-1`. All three failed before model mutation with no new crash assertion.

## Reproduction

```powershell
E:\PYTHON\python.exe scripts\bde_class_detached_projection_experiment.py `
  --component 'BDE_Tool_Experiments\Trial_GeneralClass_20261002_050256_d0e048' `
  --bindings --repeats 3 `
  --output analysis\bde-experiments\2026-10-03\fresh-native-bindings
```

Use a fresh output directory and the established main endpoint. The runner uses
independent public getter bookends, exact complete collected values and the real
loopback Cebra frame counter. It refuses unexpected negative errors and changed
domains/source/hold-independent observations. An absent comment family is not a
positive comment test. Measurements exclude public bookends and are not formal
Tool.call read latency, a 30-sample P95 or a universal 1-second claim.

The Python inverse analyzer also checks input occupancy when reverting an EXISTING
edge's target. A later edge on the original input produces
`RESTORED_INPUT_OCCUPIED` and no candidate patch. A free original input permits a
value-only candidate preserving unrelated edges. This is separate from native
write authorization, which remains false.
