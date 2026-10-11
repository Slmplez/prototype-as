# Experimental Class interface tools

2026-10-02. Existing Doge tools use the Python bd_class_tools adapter and fixed
native Smalltalk templates. No arbitrary agent code is compiled inside ASCET.
Writes are opt-in and restricted to BDE_Tool_Experiments\Trial_* definitions
and their supported Class/Module callers. Main and its exact hierarchy scopes
are collected with automatic caller discovery. This is not a general release.

## Read and select

```json
{"component":"BDE_Tool_Experiments\\Trial_Example","view":"class_interface","max_bytes":8192}
```

bd_read returns an immutable snapshot plus paged complete collected owner data.
Drain every page using bd_read(cursor); subsequent pages do not reconnect ASCET.
The snapshot includes the definition signature, public body, known caller owners,
all collected Main scopes, configuration storage, sampling limits and any
write_resource_error. Unsupported excluded reference identities are retained;
that diagnostic does not grant write authority. Effective instance evaluation,
external type contents and runtime scheduling are not collected.

Complete read and read-only previews now use fixed in-process public API getter
batches by default. ASCET_BD_CLASS_OBSERVATION_MODE=public_oracle restores the
independent field-by-field diagnostic path. Ordered graph/signature fields and
snapshot refs are unchanged. Fresh read identity is acquired/rechecked within
one bridge; edit/inverse identity and all-owner guards remain strict.
Immutable cursor-only continuations now run locally in the existing Doge process;
they make no ASCET connection. Python checksum/session/UTF-8/budget and durable
delivery semantics are retained, with Python fallback for unsupported records.
ASCET_BD_LOCAL_PAGING=0 restores the previous continuation path.
On the existing four-owner/seven-scope fixture, 30 fresh reads at 16 KiB paging
have live capture P95=763.768 ms and complete three-Tool.call P95=933.749 ms,
30721 bytes / 180 request frames. Application startup=102.147 ms is separate.
Class read15 verifies the current shared backend; read14's prior measurements
remain historical evidence. AEB_dFxTar independently passes 30 full declared
semantic reads, complete P95=663.115 ms / 33978 bytes / 93 frames.
This profile reaches 1s; other roots/types/cold images and whole PERF-01 remain
unaccepted. The fixed compiled-query cache remains OFF because it did not show
an improvement. See [read optimization](bde-read-optimization.md).

bd_find and bd_inspect use refs under ownerOID/scope/ref. Method refs contain the
native alias; names and diagram element positions never select a formal.
For bounded caller discovery use bd_inspect(query="class_callers") and its exact
selector. Structural/semantic refs and Class all-owner refs are distinct domains.

## Delete one existing formal

Require ASCET_BD_CLASS_WRITES=1. Exact aliases must come from the read snapshot.

```json
{
  "snapshot":"s_observed",
  "request_id":"remove-formal-001",
  "operations":[{
    "op":"delete_class_formal",
    "selector":{
      "diagram":"Main",
      "method_alias":"bytes:exact_method_alias",
      "formal_alias":"bytes:exact_formal_alias",
      "slot":"argument"
    },
    "layout_policy":"follow_verified_pins_and_orthogonal_routes",
    "sequence_policy":"no_implicit_changes"
  }]
}
```

bd_edit accepts one formal deletion. slot="return" additionally requires an
explicit sequence policy: no_implicit_changes or allow_unassigned. The latter
records native unassigned sequence changes and does not certify execution.
Class creation and redo are not currently supported. Read-only inverse preview
is available; positive native retained-object checks still lack online acceptance.

## Read-only argument creation preview

`bd_edit(preview=true, operations=[{op:"create_class_argument", ...}])` selects
an exact `{diagram:"Main", method_alias:...}` without an existing formal alias.
Supply `name`, `model_type` (`cont`, `sdisc`, `udisc`, `log`),
`layout_policy:"follow_verified_pins_and_orthogonal_routes"` and
`sequence_policy:"no_implicit_changes"`. The bounded profile appends a primitive
input argument and enumerates one planned input pin per exact Class occurrence,
including nested caller scopes. Native preflight validates method ownership,
duplicate argument names and the typed profile against the unchanged complete
owner snapshot. Native recovery keys/capacity are also observed without allocation.

The parameterized native executor, all-owner WAL plan and actual effect checker
are implemented but real create/inverse and fault gates are unaccepted. Preview
reports `NATIVE_CREATION_NOT_ACCEPTED`; actual requests refuse before creating an
intent or sending a native setter. An existing database restoration hold remains
an independent refusal. Return/out/in-out/enum/complex Class formals are outside
this profile. See [creation contract and commands](bde-class-argument-creation.md).

## Read-only deletion preview

Supply the same exact deletion operation with preview=true. The tool re-observes
the complete collected owner baseline and database/process identity, then lists
the exact planned node/pin/edge/model removals and remaining layout candidates.
It creates neither an edit intent nor a native recovery record and does not
reserve request_id. Actual diff is available only after a real edit.

write_eligibility="refused" reports unsupported references, a retained database
restoration hold, occupied recovery keys or insufficient native recovery capacity.
The probe observes both signature and material registries without allocating or
releasing records. Capacity is checked for the complete owner group, not one slot.
A successful read-only preview can coexist with disabled writes.
write_eligibility="prepare_required" is not a guarantee of apply: execution-time
prepare guards, actual layout/sequence identities and future GUI changes still
need rechecks. Invalid/changed observed ownership or pin bindings refuse.

The latest native preview costs1165.099-1213.397ms/263 request frames on the
four-owner fixture, three samples checked against surrounding independent
public RPC reads. Its adapter predates the final cancellation-only fix. The
earlier candidate cost13.3-13.7s/8595 frames. This is
read-only preview performance, not accepted actual edit/inverse performance.

## Read-only inverse preview

```json
{"change_id":"edit_exact_hash","request_id":"preview-restore-001","preview":true}
```

bd_revert returns planned_definition_effect, planned_resource_effects and
planned_configuration_effects by reversing the actual immutable WAL diff.
These are planned effects, not an observed inverse. It neither creates a new
edit intent nor reserves the request_id. Pagination uses the existing bd_read
cursor contract; all returned planned values originate from the durable WAL.

A retained restoration hold or an already confirmed inverse refuses directly
from logs without querying the ASCET listener. If no such reason is already known,
the endpoint PID is checked; expired or unavailable endpoints refuse without
connecting Cebra. Such output says observed_preconditions
and native_recovery are not_checked. Otherwise it re-observes complete collected
owners against actual-after and probes signature/formal bindings, after-signature
identities, native owner/specification, stored source and original graphical
object identities. Missing, partial or conflicting native material refuses.
execute_recheck_required is a preflight result, not authorization or a successful
inverse; actual execution retains its own guards. Detached object field contents,
effective instance values and full external types are not checked by this probe.

The current inverse remains strict across all owners, including unrelated changes.
When a same-domain live observation is possible, the preview additionally returns
`patch_analysis`: an exact field-level comparison of actual WAL before/after and
the collected current graphs. It lists conflicts, proposed current-to-restored
value differences and unrelated changes to preserve. Ordered arrays are compared
as a unit; row identity, generation and new incident/declaration dependencies are
checked. Signature/configuration/public observation changes are listed separately
as requiring native recheck. These are planned values, not an executed inverse.

A changed observation returns `STRICT_INVERSE_BASELINE_REQUIRED` even when the
collected graph patch is compatible: the native whole-owner executor cannot yet
preserve those changes. `write_authorized=false` and
`native_merge_executor_available=false` make that limitation explicit. Holds,
expired endpoints and released changes return `patch_analysis="not_checked"`
without live collection. The analyzer does not clear restoration holds.

Three latest real Tool.calls prove the held refusal path uses0 Cebra frames and
leaves original WAL/hold bytes unchanged. The positive retained-object path,
capacity exhaustion and partial native states are only offline contracts so far.
No existing failure was restored by these previews.
Latest held preview first calls273-281ms plus217-224ms cached continuation;
combined Tool.call times492.763/492.803/504.751ms. These three refusal samples
do not measure complete Class reads, positive inverse or30-sampleP95.

Before each mutation, native ownership/resource closure, database session,
configuration storage and clean editors are rechecked. Unsupported references
such as Project owners prevent the edit. The native all-owner journal records
preparation and started/completed batches before actual after observations.
The verified receipt returns change_id and after_snapshot, not a full patch.
The patch is available via bd_diff(change_id) without a new semantic bd_read.
All owner scopes are sampled; this is not an atomic database transaction.

## Diff, history and inverse

```json
{"change_id":"edit_exact_hash","max_bytes":8192}
```

bd_diff calculates actual signature/configuration/scope effects from the immutable
native WAL. All pages/history queries remain offline. Lost or incomplete evidence
returns actual_effects="not_observed" or unknown, never an invented no-op.
bd_inspect(query="edits",component=...) matches both definition and caller owners.

```json
{"change_id":"edit_exact_hash","request_id":"restore-formal-001"}
```

bd_revert is a separate strict all-owner inverse. It must match the complete
collected actual after baseline before the first setter and restores retained
original objects, ordering and graph storage. A later unrelated owner change also
causes refusal; preserving unrelated changes is still a delivery requirement.
An inverse receipt has its own change_id and after_snapshot. Replaying the same
confirmed request is offline; a different intent with the same ID refuses.

## Recovery and presentation

```json
{"query":"recovery","change_id":"edit_exact_hash","reconcile":false}
```

bd_inspect recovery is offline unless reconcile=true is explicitly supplied.
Reconciliation requires complete terminal WAL, the original session/process/
database domain and a fresh identical all-owner observation. It can publish a
missing receipt/snapshot/inverse pointer and clear only its own quarantine, with
zero setters. Partial/unknown WAL cannot take this route and is not retried.
Native original-object inverse does not survive an ASCET process restart.

A genuinely unrecovered isolated experiment can retain a checksummed database
restoration hold across process epochs and STORE directories. Fresh read manifests
withhold edit/revert; new mutations return DATABASE_RESTORATION_REQUIRED before
dispatch. Read, offline diff/history and read-only deletion preview remain usable.
Confirming a transport pending marker does not clear this independent record.
Removing the record requires verified original-state recovery; no unverified
clear/override tool is offered. This mechanism prevents additional writes, not
restoration of missing original objects.

bd_diff(change_id,presentation="show" or "clear") additionally requires
ASCET_BD_NATIVE_PRESENTATION=1. Current show reuses an already-open exact original
editor and fails with UI_EDITOR_NOT_OPEN when absent. Automatic opening is
withheld because native edit/viewer initialization can modify DEFAULT Projects.
Each affected owner/scope draws independently; no false cross-window edge is
drawn. Token ownership prevents another change clearing this overlay.
Callback/native success is not full visual acceptance. Class zoom/scroll/labels,
owner switching, close/reopen and complete Project purity remain open gates.

The persisted failed display01 fixture remains outstanding after restart. Its
fresh display/audit domains do not rebind the original inverse or modify its WAL.
See bde-tools-experiment-report.md for evidence, failed attempts and all remaining
delivery requirements. Whole G0-G7/FLOW and final AEB_Core acceptance are incomplete.
