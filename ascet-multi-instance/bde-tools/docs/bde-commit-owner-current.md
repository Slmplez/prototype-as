# BDE retained owner CURRENT and actual diff

The v6 prepare captures immutable component/spec-source model and DBObject
identities, complete original object/reference records, and read effects in
the original native dispatch. `commit_persistent_owner_current` subsequently
reads the same two owners and six records. It never resolves a replacement
source, rebinds a token, calls Store, or authorizes an inverse.

The fixed Smalltalk resource is generated from the audited original owner
collector by `bde_commit_owner_current_resource.py`. Its changes are limited to
CURRENT identity guards, a separate retained query list, and distinct CURRENT
profiles. Original captures, native material pointers and raw before bytes are
not replaced. The bridge rejects source/model/DBObject identity changes and
retains unknown query materials. At most 32 complete queries are retained;
reaching capacity refuses another query without eviction.

For a v6 edit, `bd_inspect(query="recovery")` validates the retained original
receipt against the WAL, records one `commit_owner_records_observed` event,
then appends the resource check using the refreshed checksum chain. The event
contains full original and CURRENT records and independently recomputed actual
differences. CURRENT cannot supply the historical before. Repeated events must
retain the exact same original capture. Query effects and changes since
preparation remain distinct.

`bd_diff(change_id=...)` and history verify these original-bound events without
ASCET calls. Agent summaries contain locations and byte-range lengths/digests;
full original/current bytes remain in the WAL. Identity, truncated bytes,
false authority or tampered diff values are rejected.

Online: same original v6 CURRENT read twice; six records per read; complete raw
records unchanged; eight CTree fixed-record effects preserved. A real
prepare-only journal, production `bd_inspect`, seven-page production `bd_diff`,
and offline history were verified. Both preparation and inspection used the
existing private instance. No Store/Commit/model edit was dispatched.

The initial full reference census retained 16,017 records but failed its final
PlatformFunction guard: the first four bytes of one function changed from zero
to a nonzero address while the remaining bytes matched. This is consistent
with first-use binding; no guard was relaxed. A new preparation with a new
token passed the same strict checks. The earlier failed preparation was neither
replayed nor promoted. A C# local-variable collision also failed before any
native query; the corrected bridge compiled and the actual query passed.

The checkpoint runs 53 targeted offline controls from 1,019 frozen source
files and checks 5,073 archived source hashes. These controls are not online
editing acceptance. Store source/model/cache closure, native persistent
inverse, original BDE display lifecycle, Message 0/60 and 43 required cases
remain incomplete. Full delivery remains false.

Evidence: `../analysis/bde-experiments/2026-10-11/bde-commit-owner-current-increment-01/README.md`.
