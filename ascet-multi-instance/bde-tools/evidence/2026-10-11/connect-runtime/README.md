# Isolated actual connection/remove/restoration, 2026-10-11

The existing private Module/Main performed one real native connection and
removed that exact created edge. The native graphical diff contains three
changes to existing objects and twelve newly observed objects. Two native
field restore primitives restored the original graph/source/drawing order.
Complete public/native bookends matched the original before. A new connection
independently read all owner/reference observations twice and confirmed the
original state; a zero-native confirmer cleared only this operation's pending.

This verifies **memory graph connection/remove/restoration without Store**.
There was no `storeToCache`, Commit or persistent writer. Production v4
connection/history gates remain closed; persistent model/source/cache closure,
native inverse, original BDE display lifecycle and the full Message matrix are
still outstanding. Message 0/60, T3.1/T5.1, 43 required cases and full delivery
are not upgraded. ASCET was not started or restarted.

The checkpoint recomputes the original durable prepared/dispatch/actual/
inspection files and independent confirmation, checks 2,082 archived source
hashes, and runs nine offline controls from 139 frozen source files. Offline
controls are not counted as online acceptance. Two failures remain intact:
API wrapper identity comparison stopped before write dispatch, and an incorrect
command-log decoder failed without native calls or pending clearance.

Reproduce the pure checkpoint using a new output directory:

```powershell
E:\PYTHON\python.exe -X utf8 scripts\bde_connect_runtime_increment.py --output analysis\bde-experiments\2026-10-11\bde-connect-runtime-increment-NEW
```

Do not replay the consumed runtime token. See `result.json`, `controls.log`,
and the immutable original evidence directories named by the local evidence
hashes. Ongoing Store-resource preparation failure is tracked separately at
`../bde-connect-store-resources-preflight-02/result.json`.
