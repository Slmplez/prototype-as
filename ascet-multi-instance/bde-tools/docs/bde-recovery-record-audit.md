# Frozen Datastore Recovery Audit

Status: original display01 restoration is NOT achieved. The database hold remains.
These scripts read frozen bytes; they never load native objects or change a model.

## Source-derived Format

`DBInterface32.defaultDatFileName` selects `sobjects`. Its `changeInterface`
uses `CTreeSearchObjectRecord`, rather than the separate 26-byte local object
record. The search record has a 130-byte fixed portion (N32: 126). `globalId`
concatenates pcId(8), tsThisVersion(10), and a separate transactionId(2) at
offset 123 (N32: 119). Offsets are zero-based. Class/name fields and aligned
blob-size fields follow the decompiled `initializeFieldOffsets` and named getters.

`create` and `create:size:` do not call `setFixedSize`. The frozen file's current
matching record has storedFixedSize=0. The parser accepts this only with an
independent observed FAFA storage-block header: 10-byte prefix/allocated/used
lengths, used=fixed+blob, and complete allocation bounds. This is a tested file
profile, not a general CTree specification. Native index membership is unverified.

The Esw stream uses 20-byte headers/subheaders. `EswSubheader` supplies indicator
55, last-segment flag, length and CRC. Standard zlib CRC32 matches the frozen
current record. `ByteArray.crcValue` is an unreconstructed VM primitive, so this
control is not universal VM equivalence. The tested header is `00141fa004030214`
(platform 8096/version 4.3/non-special root/subheader 20). Other profiles are unsupported.

## Observed Result

Frozen sobjects.dat has 27,080,129 bytes and SHA256
`fb50deadb4d913cdc2c5ba1d2bc1a246d81c5a1b9a65075d3c5d36976f7e3580`.
Class GID: `bytes:0101de0000000000ea070a020e57d02224730000`.
Removed formal: `bytes:0101de0000000000ea070a020e57d0502e730000`.

| Region | Offset/boundary | Evidence |
|---|---:|---|
| Matching SGClass record | 26909118 | 130-byte split-identity header; original GID matches |
| Current Class blob | 26909248..26916552 | 7304 bytes; complete length/CRC match |
| Missing formal bytes | 26876888 | One raw 20-byte alias sighting |
| Nearest preceding valid stream | 26869780..26876772 | Formal is 116 bytes beyond its end |

All 2673 matching-platform header sightings share the tested profile and decode
with matching segment CRCs. None contains the missing alias; neither does a
profile-validated FAFA allocation. The isolated bytes are not a recovered formal,
complete original graph or accepted restoration source. Other encodings/free
records and independently retained backups remain possible sources to examine.

Record-audit01 failed using the 26-byte local format; record-audit02 failed by
requiring a populated size byte. Both are retained. Record-audit05 locates the
current record; its passed flag is not restoration. Swapper-audit01/02/03 remain
FAILED recovery searches with explicit reasons. Safety03 confirms all 29 original
files and the durable hold unchanged. No restart/save/discard/native load/setter/
epoch rebind/guard clearance occurred. Other ASCET instances are untouched.

Offline85 passes 517 Python tests, 20 Doge tests/1030 assertions and version;
6 live skips are unverified. Sixteen tests exercise split identity, transaction
mismatch, truncated bounds, zero-marker independent evidence, allocation slack,
multiple segments, CRC failure and unsupported versions. These are parser/contract
tests, not native restoration acceptance.

## Reproduce

Run from `E:\Repo\ASCET`, choosing new empty output directories:

```powershell
E:\PYTHON\python.exe scripts\bde_recovery_record_audit.py --store analysis\bde-experiments\2026-10-02\bde-class-tools-display-01\state --change-id edit_e2c346f5622082e40a9f51089c01963e0b7eee079d936bb0c4676c0823bd7c31 --snapshot analysis\bde-experiments\2026-10-02\bde-recovery-byte-audit-02 --output analysis\bde-experiments\2026-10-02\recovery-record-reproduction
E:\PYTHON\python.exe scripts\bde_recovery_swapper_audit.py --snapshot analysis\bde-experiments\2026-10-02\bde-recovery-byte-audit-02 --record-audit analysis\bde-experiments\2026-10-02\recovery-record-reproduction --output analysis\bde-experiments\2026-10-02\recovery-swapper-reproduction
E:\PYTHON\python.exe -m unittest discover -s scripts -p test_bde_recovery*.py -v
```

Fresh byte capture via `bde_recovery_byte_audit.py` checks two reads per named file;
it does not establish an atomic cross-file checkpoint. Frozen-file reproduction
is deterministic. Never native-load a partial residual segment in the live DB.

## Next Requirement

Establish an independently verified complete original source, or audit a residual
decoder and test native loading in isolation. Verify aliases, declaration/owner
identity, scopes/pins/order/configuration and all edges against actual-before
before any recovery write. A synthetic inverse or same-name formal is not proof.
Future destructive Class edits need audited durable native material before their
first setter; current in-memory retention does not survive restart. Filer purity,
reload linking and partial-write recovery require separate acceptance.

See [delivery status](bde-delivery-status.md), [experiment report](bde-tools-experiment-report.md)
and [local inverse contract](bde-class-local-inverse-contract.md).
