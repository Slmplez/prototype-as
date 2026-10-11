# V3 preparation-only guard at the native execution boundary

This corrects two Smalltalk guards that previously recognized only v2 materials
while v3 relied on Python/C# refusal. The canonical editor and generated staged
guard now reject a stored `native_connect_material_v3` before apply, revert or
validation can reach a mutator. Exact/local connection history rejects both
v2 and v3 materials until persistent inverse closure exists.

The real compiled staged guard ran three controlled native invocations:
`apply`, `revert`, `validate_revert`. Inputs were detached, deliberately
non-executable frames with no production token, global registry, observation
reader or mutator. All three returned the exact v3 refusal and preserved the
detached record. This is a native runtime guard control, not a real online
connect/revert lifecycle or proof that history was invoked. The changed history
template was runtime-compiled, not invoked.

Production v3 prepare/inspect/discard and Python/C# no-mutation refusals then
passed on the actual isolated component; complete public/native bookends were
equal. Controlled guard: 104 request / 103 response frames, 210,949 request /
113,348 response bytes. Production preflight: 441/440 frames, 309,581/373,555
bytes. Both used one connection without parse errors. PID56068 / 32631 was
reused and no ASCET was started, closed or restarted.

The first production preflight correctly refused at build time because the
generated stage was changed before the canonical editor. It made no native
call. After correcting the canonical source, generation consistency passed
and a fresh production preflight passed. The first failed verdict is retained.

24 targeted conflict/history controls passed. 960 archived source hashes were
verified. The result contains the source manifest bound to the successful
production preflight. No full T0-T9 case or Message matrix completion is claimed.

From `E:\Repo\ASCET`, the recorded commands were:

```powershell
E:\PYTHON\python.exe -X utf8 scripts/bde_structure_stages.py --check
E:\PYTHON\python.exe -X utf8 scripts/bde_connect_compile_probe.py --port 32631 --pid 56068 --component 'BDE_Tool_Experiments\Trial_ConnectReferences_20261011_034859_7419e31d' --persistent-references --target-key 0101de0000000000ea070a0b03955911a5230000 --target-key 0101de0000000000ea070a0b03955920ab230000 --native-guard-controls --output analysis/bde-experiments/2026-10-11/bde-v3-native-guard-controls-01
E:\PYTHON\python.exe -X utf8 scripts/bde_connect_reference_preflight.py --read-probe analysis/bde-experiments/2026-10-11/bde-v3-native-guard-controls-01 --output analysis/bde-experiments/2026-10-11/bde-v3-native-guard-production-preflight-02 --persistent-references --verify-host-write-gate
```

Existing outputs refuse overwrite. Repeat only justified checks with fresh
output paths and a currently verified licensed isolated instance. General
finite native patch/inverse, actual attached capture and T5.1 connect closure
remain pending. Performance is subordinate to complete core functions.
