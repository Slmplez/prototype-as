# Native Storage Return Witnesses

The fixed experimental helper now binds each native graphical member to the
exact storage object observed during one private serialization. It does not infer
edge identity from array position, endpoints, routes or equal field values.
This is a prerequisite for a merged native patch, not its execution or publication.

## Audited Native Calls

```text
SGHierarchyWrapperGO>>storageObject
  SGGraphicsBlockDB create
  self createStorageObjectsFor: created

SGHierarchyWrapperGO>>createStorageObjectsFor:
  target graphicBlock: self basicGraphObject storageObject
  self contents createStorageObjectsFor: target

SGBlockDiagram>>createStorageObjectsFor:
  blockChildren / connectionChildren / otherChildren
  collect storageObject, select notNil, asArray

SGConnectionWrapperGO>>storageObject
  start/end ConnectionPoint
  graphObject storageObjectStartConnectionPoint:endConnectionPoint:

SGAbstractOrthogonalLineGO>>storageObjectStartConnectionPoint:endConnectionPoint:
  SGConnectionGODB create
  endpoint IDs/pin IDs, routes, attributed views, customer data, drawing order
```

Source: `unpacked/smalltalk-source/ASDBase.ic`. Edge storage is newly allocated
on every serialization; its endpoint values are not a stable edge handle.

## Implementation

`bde_native_storage_witness.st` runs only against an exact private clone in an
isolated Trial_* component. It resolves scopes through retained wrapper pointers
and their original memo mapping, then replays the audited diagram/wrapper storage
statements. Ordinary children, root basic objects and connections each invoke
their native storage method once; their actual return objects are retained
immediately. Nested hierarchy containers are explicitly marked
`audited_hierarchy_storage`, since the helper assembles them using the recovered
statements rather than observing the outer native method's direct return.

The private exporter mode `native_reference_ids` supplies its real source-object
IdentityDictionary. The helper uses that map to bind native returns and parents
to complete export references. A nil, unkeyed, duplicated or foreign-parent return
refuses the complete-lineage claim. Pins remain covered by the existing full
runtime/source checkpoints; they are not mislabeled as diagram storage children.

Each retained tuple protects the native pointer, actual storage return pointer,
parent pointer, tuple/metadata identity and all metadata fields. The existing
clone seal protects its original memo/native-member correspondence, while the
history seal protects the complete storage source values and the encoded report.
The tuple seal can verify a captured image after later edits change old live
objects; it does not treat those obsolete live objects as current.

Current-source and retained original/applied capture helpers record the actual
private serialization normalization diff, use the existing guarded private
inverse, and verify complete clone restoration. The optional flag is
`ASCET_BD_CLASS_STORAGE_WITNESS=1`; normal agent tools and the default read path
do not enable it or expose arbitrary Smalltalk code.

## Independent Checks

`bd_storage_witness.inspect_storage_witness` compares all typed source values and
sharing relations with the native baseline. It recursively enumerates every
source scope and its graphicBlock/blocks/connections/others obligations, requires
a bijection with actual return records, and checks source classes, parent refs,
native classes, canonical scoped keys, audited node IDs and origin distinctions.
The native member roster must also equal the independent before/applied/current
scope observation, including multiplicity. Equal-valued edges remain separate
actual return references.

Original/applied proofs bind their generation to the real edit WAL and require
four actual private storage-binding fault checks per image: native, return and
parent pointer replacements, plus source-reference metadata mutation. Every fault
must refuse the history seal and exactly restore it. These are private image
faults, not production model/setter/ASCET-restart fault acceptance.

The candidate lifecycle WAL records the complete audit receipts. Summary
`--runtime --retained --storage` independently rechecks those WALs, the complete
scope/source observations and current source fingerprints. It refuses missing
storage proofs rather than counting a historical source-only result as coverage.

## Remaining Work

All receipts retain `write_authorized=false` and
`native_merge_executor_available=false`. Export row IDs are serialization
references within one image, not agent edit handles. The sealed pairs do not
establish edge identity between captures, survive ASCET restart, publish a merged
runtime/source, implement Class local inverse, or grant a one-second performance
pass. Those steps require actual edit lineage, guarded runtime mutations,
durable CURRENT material and journaled partial/unknown recovery.

[Verified evidence](../analysis/bde-experiments/2026-10-04/bde-class-storage-witness-summary-01/report.md).
