# Original-bound owner CURRENT/WAL checkpoint, 2026-10-11

Implemented the fixed v6 `commit_persistent_owner_current` reader, strict
Python record validation, complete actual diff, production inspection WAL
events, and offline paged `bd_diff`/history summaries. CURRENT is never used to
reconstruct the original before; full bytes stay in WAL. The original native
source/model/DBObject identities and same-dispatch prepared receipt are checked.

Actual online verification used the existing private ASCET instance:

- Complete new v6 preparation retained 12 SG roots and 271 observed objects,
  two persistent owners and a 16,017-record reference-file census.
- Two independent CURRENT queries each read all six owner/object/reference
  records; full raw bytes matched the original. Eight CTree fixed-record
  changes/read effects were preserved in actual diff.
- A real prepare-only structural WAL refused application without a native
  model write. Production `bd_inspect` appended complete original/current
  evidence and the resource check. Seven-page production `bd_diff` matched
  independent WAL recomputation. Diff/history used zero native frames.

53 offline controls passed from 1,019 frozen source files. 5,073 archived source
hashes were checked. No online editing pass is inferred from these controls.
Store/Commit/source-model-cache restoration, persistent inverse and the full
Message matrix remain outstanding; no required case or full delivery upgrade.

Preserved failures: original full traversal matched the census but stopped on
changed PlatformFunction bytes at post-identity. Only its first four bytes
changed from zero; the strict guard remains unchanged. A subsequent fresh
preparation with a distinct token passed. An initial C# build failed on local
variable collisions before native dispatch; the corrected bridge passed.

Recompute this checkpoint into a new output directory:

```powershell
E:\PYTHON\python.exe -X utf8 scripts\bde_commit_owner_current_increment.py --output analysis\bde-experiments\2026-10-11\bde-commit-owner-current-increment-NEW
```

See `result.json`, `controls.log`, and the original evidence directories named
in `local_evidence_hashes`. This recomputation makes zero native calls. It does
not replay a preparation, a failed scan, or a model edit. ASCET was not restarted.
