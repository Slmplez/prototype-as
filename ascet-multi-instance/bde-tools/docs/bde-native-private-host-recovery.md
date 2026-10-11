# Same-epoch PRIVATE native recovery after bridge termination

Status: implemented and verified for dedicated C# bridge termination after a
PRIVATE native command completes. ASCET stays alive. Production edits, unknown
partial physical mutation, ASCET restart/archive recovery, genuine display01
restoration and complete BDE delivery remain INCOMPLETE.

The newer [physical recovery study](bde-native-private-physical-recovery.md)
adds controlled exceptions between real writes of a composite private recovery.
It does not certify failure inside a primitive or production mutation/restart.

## Retention And Protocol

`bde_native_private_registry.st` keeps the exact wire block in the separate
`#DogeBDEPrivateSessionsV1` registry. Binding covers token, process epoch, native
database session, actual owner OID/path and source fingerprint. It also retains
actual dbAccess/dbInterface/owner objects. Registration obtains the owner directly
from the fixed wire through backend-only `registry_owner` and refuses overwrite.
Lookup returns the SAME closure/reference table/CURRENT/steps/recovery state;
it cannot supply replacements, prepare as a fallback or regenerate ref numbers.
The bridge validates the checksummed descriptor and current source before launch,
then rechecks identity and clean editors before each native request.

Capacity is 16 with no eviction; exhaustion is not a verified live case. Release
requires recovered AND complete CURRENT, including reset of the independent field.
It invalidates the wire then removes one registry root. Stale handles refuse.
Root-size equality does not prove physical garbage collection of every allocation.

`bd_private_registry.py` reopens only the exact nonterminal checksummed private WAL.
It uses the existing flushed write-once publisher. Mutation intent and actual
observation remain separate. The C# bridge receives the native reply, publishes a
flushed diagnostic completion-window signal, then pauses BEFORE protocol stdout.
The coordinator kills only that exact Popen PID. A new bridge opens, looks up the
original wire, exports the same immutable material and independently observes
CURRENT. The diagnostic signal is not used as authorization to repeat a setter.
A second bridge dies after the last recovery unit; both reconciliations are
read-only. Another private x edit survives recovery; explicit reset permits release.

This tests real C# bridge death and TCP disconnection AFTER native completion.
Python coordinator and ASCET stay alive. It does not test coordinator death,
pre-completion packet loss, death during a physical setter, disk/power failure,
ASCET restart or native-object reload. Exports remain descriptive, not executable
native archives. No public tool or expanded normal six-tool response is added.

## Verified Results

[Final host-exit07](../analysis/bde-experiments/2026-10-03/bde-private-host-exit-07/result.json)
passes three unchanged-source/public-bookended rounds. Each retains 4 owners,
7 scopes, 31 nodes, 59 public pins and 23 unique edges, including empty hierarchy
scopes. One connected pin per owner is sampled at first/middle/final step positions;
this is not the separate 42-pin matrix or a thousand-block performance fixture.

| Check | Per Round | Three Rounds |
|---|---:|---:|
| Private sessions / dedicated bridge connections | 12 / 36 | 36 / 108 |
| Actual bridge deaths / observed client RSTs | 24 / 24 | 72 / 72 |
| Exact lookups / read-only reconciliations | 24 / 24 | 72 / 72 |
| Execution primitives / actual recovery units | 74 / 71 | 222 / 213 |
| Registry refusals / stale-root and wire refusals | 108 / 24 | 324 / 72 |
| CURRENT objects / fields across sessions | 7656 / 35580 | 22968 / 106740 |
| Additional audited native Sets | 27 | 81 |

Negatives cover duplicate registration, wrong source/epoch/database/OID, missing
token, supplied replacement wire and premature release in both prepared and
recovered-but-independently-changed states. Every session has registry size0->0.
All45 candidate source fingerprints match. Public bookends are unchanged; no
model setter/store/UI install/edit record/new assertion is observed. Generated
Point positives and wrong-owner wire registration negatives remain separately
unverified from the positive native owner-identity check.

The proxy optionally records client RST and accepts a subsequent connection.
Upstream errors still fail; truncated frames remain invalid and cannot be joined
to the next stream. Two local socket regressions cover complete/truncated RST.
Final07 records12161-12168 request frames/24918640-24962944 response bytes per round,
zero parse errors/incomplete bytes. Directions are counted independently;
per-ID request/response pairing is not certified by these counters.
Each12-session round takes45602.964-47438.061ms including repeated host startup,
verbose WAL/checksum scans and negatives,excluding public bookends. Offline tests
ran concurrently during part. These are diagnostics,not read/edit/P95/1s acceptance.

[Offline102](../analysis/bde-experiments/2026-10-03/offline-contract-102/result.json)
passes660 Python/21 Doge tests/1042 assertions/version,6 live skips unverified.
Twenty registry/descriptor/recorded-WAL groups include prelaunch source drift.
Recorded-WAL tests audit evidence;they are not additional live failure trials.
[Safety17](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-17/result.json)
preserves29 original failed-edit files/hold,restored=false.
[Ledger36](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-36/report.json)
keeps28 incomplete cases/0 missing links.
[Candidate integrity](../analysis/bde-experiments/2026-10-03/bde-private-host-candidate-integrity-01/result.json)
matched359 offline/45 native source fingerprints at that recorded candidate.
Subsequent physical protocol changes supersede that current-source comparison.
These are integrity and
evidence checks,not full G0-G7 passes.

## Failures And Reproduction

01 retains mixed initialization stdout;02 registry Smalltalk syntax;03 projection
container audit after registration;04 proxy client-RST handling.03 separate
same-source prepared cleanup restores CURRENT/releases the root.04 separate direct
same-source continuation finds the original closure,does not replay the completed
step,finishes both death windows and releases it. Failure runs are not promoted
to complete-round passes.05 is one-round pilot;06 three rounds before final source/
owner checks;07 final candidate. Failure public bookends/assertion/drift checks pass.

```powershell
E:\PYTHON\python.exe scripts\bde_private_host_exit_experiment.py `
  --component 'BDE_Tool_Experiments\Trial_GeneralClass_20261002_050256_d0e048' `
  --repeats 3 `
  --output analysis\bde-experiments\2026-10-03\fresh-private-host-exit
```

Use a fresh output directory and freeze an active case's source manifest. Retain
original descriptors/WAL;do not substitute tokens/material. Next: unknown partial
physical mutation,pre-completion transport failure,executable native archives and
audited reload linking,then production original/applied/current/model dependencies
and scoped inverse. Genuine display01 repair,Class creation/shared/UI,AEB_Core/FLOW
and final package remain required. No old epoch rebind or hold clearance.

## Physical-Protocol Regression And Signal Publication

[Host-exit09](../analysis/bde-experiments/2026-10-03/bde-private-host-exit-09/result.json)
passes one regression round/12 sessions/24 bridge deaths and exact lookups,
74 forward primitives/71 recovery cells/108 registry refusals with unchanged
complete public bookends and registry0->0. It is not three new rounds of the
updated completion-file publisher.

[Host-exit08](../analysis/bde-experiments/2026-10-03/bde-private-host-exit-08/result.json)
retains a real permission race: a visible completion file was still open under
C# FileShare.None. The native recovery had completed. Its fallback FIFO probes
then consumed outstanding prior responses, so the failure's diagnostic action
labels must not be treated as independent observations. A separate fresh original
lookup/full-CURRENT check/reset/release is recorded in
[retained cleanup](../analysis/bde-experiments/2026-10-03/bde-private-host-exit-08/retained-cleanup/result.json);
the original run stays failed.

The C# bridge now writes and flushes a separate `.writing` file, closes it, then
renames it to the completion path. Python retries only the local file observation
for transient missing/permission/partial-JSON errors within its original deadline.
It sends the native command once. Foreign signal identity refuses; unresolved
pending replies prevent additional FIFO diagnostic requests. Two focused offline
tests cover file-observation retries and foreign signals without command replay.
