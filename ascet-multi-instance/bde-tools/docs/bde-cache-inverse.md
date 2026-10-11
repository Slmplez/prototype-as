# BDE cache inverse prerequisites

This increment implements logical cache membership planning and joint direct
entry/DBObject field restoration. It does not enable production BDE writes or
Store inverse. All mutable online controls use freshly allocated private caches,
entries, SG shells and DBObjects in the existing isolated ASCET process.

## Contracts

`bd_cache_membership.plan(before, actual_after, current, direction)` validates
complete resource images and proposes only touched key/entry insertions,
removals and replacements. It preserves unrelated CURRENT keys. A touched entry
must match the entire expected row before replacement or deletion. Overlap
suppresses all membership candidates. An entry with unchanged membership but
changed fields is reported as a separate required field plan. The result always
has `write_authorized=false`, `inverse_authorized=false` and `native_calls=0`.
JSON comparisons distinguish Boolean and integer values.

Keys have exact retained native identity and immutable original bytes. Current
audited profiles cover 20-byte keys and the existing 32-byte AccessRights key;
other lengths are refused. Equal-value distinct keys, duplicates, changed bytes,
rebound storage, incomplete census and entry/object binding changes are refused.
No raw hash-table buckets are restored.

`bde_cache_membership_patch.st` uses the table's `at:put:` and
`removeKey:ifAbsent:` directly. It avoids DBObjectCache high-level accessors,
which have statistics, timestamp, wrapping or flag effects. Before the first
primitive it verifies every touched key/entry and direct entry/proxy dependency.
Consumed executors refuse replay; partial/unknown outcomes retain original
materials and progress. Direct dependency snapshots guard preparation-to-dispatch
changes; they cannot reconstruct an older original-before image.

`bde_cache_state_patch.st` combines membership with the audited field planner.
It accepts retained direct images of DBCacheObject/DBObject/DBProxy, validates
schema and member/proxy coverage, and checks both plans before dispatch.
Membership executes first and does not mutate proxy fields; field restoration
executes second. Each nested plan retains progress. This order is tested only for
the private SGModule shell profile. It does not certify other cached shells,
backend flags, concurrency with GUI activity, crash recovery or Store closure.

## Actual verification

The retained v6 token's complete 15-entry cache passes read-only preflight with
zero candidate cells. Original key bytes come from original retained values.
CURRENT is explicitly not promoted to an actual-after edit receipt.

The private membership control performs undo/redo/second undo with 3 primitives
each. The joint control performs 3 membership plus 2 dirty-state field primitives
each. Seven full states check native identity membership and derived modified
proxy identities; all direct entry/proxy fields match original plus the declared
independent proxy name at terminal. The independent insertion and name survive.
Five execution conflict controls each report 0 completed primitives; missing
original direct images and consumed executor replay are refused.

Native `DBObjectCache>>getModifiedObjects` returns DBCacheObject entries in this
instance; it computes the census from current entries and their DBObjects. The
first failed control used equality-based `indexOf:` identity labels and assumed
DBObject return values. Its verdict remains failed. The fixed control uses
identity comparison and direct shell/proxy slots. The initial offline 20-byte-only
rejection exposed the existing 32-byte key and is preserved separately.

Full public/native graph images and complete live-cache membership bookends are
identical before/after the successful private experiments. No ASCET restart,
registered cache write, Store, Commit or business component modification occurs.

[Frozen results and commands](../analysis/bde-experiments/2026-10-11/bde-cache-patch-increment-02/README.md).

## Remaining production prerequisites

The old v6 capture lacks complete original direct images for all loaded DBObjects;
they cannot be filled later from CURRENT. A new same-dispatch preparation must
capture these originals and immutable mutable values, then capture the real edit
after and retain identity/schema coverage. Backend/cache derived metadata also
needs an audited coordinated plan. Registered model/source/cache/control and
persistent owner/reference restoration must all pass together before opening the
production apply/inverse gates. Message 0/60, 43 required cases, T3.1/T5.1 and the
business restoration hold are unchanged; `full_delivery=false`.
