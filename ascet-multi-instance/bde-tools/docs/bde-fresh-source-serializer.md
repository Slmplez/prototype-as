# Fresh source serializer checkpoint

Current verified checkpoint (2026-10-11): a newly bound private workbench
produced a 4,424-byte native source dump, then loaded it once into its private
RBObjectLoader. All 58 reachable objects match the live source under the exact
omission configuration, including object sharing; none alias original mutable
objects. This is semantic projection equivalence of own bytes, not byte equality
with the stored blob or a proof for arbitrary binary inputs.

The first extraction refused an incorrect zero-proxy assumption. The graph
contains one embedded DBObject: DBLinkProxy.createReferencesFrom: removes that
self reference. A guarded finish reused the already loaded source, with zero
load calls in the finish dispatch. The final link has zero external references.
Both original graph/config checks and independent complete owner/reference
reads plus public bookends were unchanged. Only this bound pending was cleared.
The original failed result remains unchanged. The bridge now rejects encoded
error strings instead of treating a completed RPC as a successful typed result.

The user-authorized private restart was executed exactly once; old material and
pending were not rebound or cleared. Other ASCET instances were untouched.
All subsequent probes reused the new instance. The earlier failed/pre-recovery
checkpoint below remains historical, including its then-unverified statements.

Commands for the fixed helper are in scripts/bde_fresh_serializer_extract_probe.py
and scripts/bde_fresh_serializer_extract_confirm.py. A finish accepts only the
exact recorded self-proxy guard failure and a full independent unchanged double
read, retains the original pending, and never invokes loadFromStream: again.

Changed graphical payload, formal model/source/cache/owner journal closure,
production connect/revert, cross-Module references and full delivery remain
unverified. Message lifecycle remains 0/60; no required case is upgraded.

## Historical checkpoint before recovery


This research uses audited ASCET `RBObjectDumper`/`RBObjectLoader` configuration
from the live source backend. It is not a production edit or inverse adapter.

The private constructor and bounded actual source-graph inventory are verified
online on one isolated Module/Main source: four fresh work roles, nine successful
configuration/original-state checks, 58 graph objects, 103 byte values and no DB
replacement boundaries. The effective replacers use exact `eswBasicClass` keys,
as independently checked against the decompiled class/instvar lookup paths.
This small graph does not prove cross-Module or all-type support.

The next one-shot dump bridge is implemented with durable before/dispatch,
parent authorization, process/database/owner binding, fresh private-config
checks, complete graph witnesses and retained payload. It explicitly checks
`unload:intoStream:` Bool and `currentError`; it does not load the payload, bind
the backend to a loader, change a model, store, commit or write records. The
source root's special-root dispatch is checked separately from ordinary graph
callbacks. Its preparation now has an explicit exception wrapper.

The original attempted preparation compiled but raised an uncaught guard
exception for `ByteArray/isSpecialRootForDumpingFor:` before parent readiness.
The parent did not authorize serialization, no dispatch/pending was created,
and no terminal native reply was recovered. The subsequent single health check
received a 16-byte null-handle frame; the private ASCET UI/process remains alive
but rejects a new ToolAPI owner. Do not relabel this as a successful dump.
The corrected native template has not been compiled/executed in ASCET.

The fixed receipt validators and independent-confirmation contract have
self-contained offline tests. A payload mismatch is reported without asserting
format equivalence. Confirmation requires the original durable receipt plus
independent full owner/reference double reads and identical public bookends;
it only clears the exact bound pending. An unknown dump is never replayed.

## Continue after runtime recovery

Preserve all existing native material/failed evidence and old-epoch pending.
No token/workbench index is rebound to a new process. After a separately
authorized runtime recovery, create a new private workbench and new inventory
for an isolated component, then use the new successful inventory proof:

```powershell
E:\PYTHON\python.exe -X utf8 scripts\bde_fresh_serializer_dump_probe.py `
  --inventory-probe analysis\bde-experiments\<date>\<new-inventory> `
  --output analysis\bde-experiments\<date>\<new-dump>
```

Before dump success, loading/proxy extraction and persistent graphical payload
editing remain unverified. After dump success, verify native extraction on
fresh bytes and actual changed graphical payload, then combine owner record,
reciprocal reference, model/source/cache and formal journal inverse. The first
real connection/diff/original-BDE/conflict/revert lifecycle remains required.
Message 60-case completeness and T0–T9 completion are not promoted by this work.
