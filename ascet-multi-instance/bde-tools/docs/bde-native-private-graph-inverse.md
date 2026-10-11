# Native private graph deletion and local inverse

Status: verified on private graphical copies of four current isolated owners.
Production model inverse, original display01 recovery and full delivery remain
INCOMPLETE. The six public tools and restoration hold remain enforced.

Latest private CURRENT execution/recovery additionally passes three rounds/378
post-primitive fault cases. Its material is in memory and its exact step-index
guards are research interfaces; durable CURRENT WAL and real model/transport
faults remain unaccepted. [Contract/evidence](bde-native-private-current-recovery.md).

## Implementation

`bde_native_graph_clone.st` audits the entire reachable graphical root with
bounded depth/object/byte limits. One IdentityDictionary memo copies graphics,
connection points, styles, points, strings and supported collections. Every
exact keyed member must map to a distinct new graphical object. Unknown types
or unreachable members refuse. Each copied graphical field and collection is
verified against the memo alongside exact root/diagram/checkpoint provenance.

Database objects, exact checkpoint owners and audited fonts/images/icons remain
shared external boundaries and are never mutation targets. Ordinary `deepCopy`
does not establish this memo contract; the unverified object dumper/loader is not
used. The private diagram is a shallow wrapper with only its graphical root
replaced. Other fields, particularly its graphical server, can still reference
the original context. Never call model edit/remove/store or UI installation on
this wrapper. Research uses projection getters and mutates only audited
memo-owned graphical objects, collections and connection points.

`bde_native_graph_splice.st` resolves every connected public pin and incident edge
by its saved scope-qualified key and actual memo mapping. Endpoint, route, label
or identifier=-1 never reconstructs an edge identity. Exact pin/edge parent
membership and both endpoint dictionaries are checked before private deletion.

Private `RBConnectionPointBranch>>removeConnection:` regenerates branching points
and calls `RBConnectionWrapperGO>>setCornerPoints` for remaining edges. The probe
captures actual changed fields/references and collections across the copied memo,
including those side effects. It records field names/indices, ordered membership
and manager changes; the requested pin/edge list is not treated as a complete diff.

`bde_native_private_collection_plan.st` prepares the inverse from actual
before/after/current copied references. Touched graphical cells, dictionaries
and unkeyed collections remain strict. Keyed OrderedCollections use the existing
three-way order kernel and one-based minimal insertion/removal steps. The plan
captures exact current order, parent/collection binding and member manager links.
Its execute closure rechecks every condition before its first mutation.

Dependency closure follows the keyed port, block, scope and hierarchy bindings
to the exact private root, checking wrapper.contents/basicGraphObject references
and exact ancestor membership/manager links. Affected edges are identified by
actual keyed-member removal and wrapper/internal field changes. Wrapper manager
setters delegate to internal SGOrthogonalLineGO/RBConnectLineGO objects; testing
only the wrapper's field diff omitted endpoint dependencies. The corrected plan
checks both retained connection points and each endpoint's pin/port/node ancestry.
This private guard is not a complete model signature/configuration dependency guard.

A separate visible node's coordinate change survives inverse. Additionally,
eligible unconnected pins in the same exact port collection are independently
deleted: inverse restores the primary pin/incident edges, preserves that peer
deletion and matches the entire independent-only private state/public projection.
Finally, peer cleanup must restore all original copied identities and contents.
This does not establish same-collection additions, hidden-peer cases, Caller peer
cases or the general production patch-preserving inverse.

## Evidence

[Final three-round result](../analysis/bde-experiments/2026-10-03/bde-native-private-merge-10/result.json).
Each round has independent complete public API bookends: 4 owners, 7 scopes,
31 nodes, 59 public pins and 23 unique edges. Nested occurrences reach
`Main/h1/h2/h3`; empty intermediate scopes remain in baseline coverage.

| Check | Per Round | Three Rounds |
|---|---:|---:|
| Private copied objects | 2543 | 7629 |
| Keyed member mappings | 177 | 531 |
| Verified graphical fields | 11860 | 35580 |
| Connected-pin deletion/inverse cases | 42 | 126 |
| Incident-edge deletion events | 46 | 138 |
| Endpoint dictionary checks | 88 | 264 |
| Actual graphical field changes | 264 | 792 |
| Actual collection changes | 180 | 540 |
| Preparation-time field/dictionary/order refusals | 126 | 378 |
| Preparation-time ancestry/endpoint refusals | 84 | 252 |
| Prepared-plan state-change execution refusals | 336 | 1008 |
| Same-collection independent deletion/inverse cases | 3 | 9 |
| No eligible peer (not counted as a pass) | 39 | 117 |
| Minimal ordered splices, including peer primary inverses | 94 | 282 |
| Bound ancestor collections across cases | 241 | 723 |
| Bound endpoint pins across cases | 88 | 264 |
| Clone correspondence negatives | 24 | 72 |

Each unique edge is deleted separately from each incident pin's test: 46 events
over 23 unique edges per round. Some pins have two incident edges. The eight
post-prepare cases change a touched field, connection dictionary, collection order,
retained member manager, pin-owner manager/membership, opposite block manager or
opposite pin manager. Execute refuses with unchanged complete private state. Two
additional dependency cases refuse preparation after owner/endpoint detachment.
All three eligible peer cases are visible pins in Definition; the other 39 are
explicit skips. No hidden or Caller peer positive is claimed.

Final native evidence has 38 source fingerprints/zero drift, zero model setters,
stores, recovery/edit allocations and new ASCET assertions. Middle diagnostic
4777.694-4853.900 ms/295 request frames/9750411 response bytes per round includes
dozens of private cases and verbose research projections, excludes public
bookends, and is not bd_read, production edit, P95 or one-second acceptance.

`bd_class_native_clone.py` validates unique complete owner/keyed/case coverage,
typed counts, boundary accounting, actual closure projections, independent field
and member preservation, exact native/Python splice agreement and absence of
production authority. Recorded-evidence negatives reject missing/foreign endpoint
or ancestor bindings, omitted available peers, incorrect splices and lost/extra
independent changes. They are not additional online acceptance.
[Offline98](../analysis/bde-experiments/2026-10-03/offline-contract-98/result.json)
passes 611 Python tests/21 Doge tests/1042 assertions/version, including 29
recorded clone/splice/merge/prepared/dependency test groups. Six live skips remain
unverified. Python and Smalltalk dependency roster collation may differ; these
rosters are validated as unique exact sets, while member/route order stays strict.
[Safety14](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-14/result.json)
preserves all 29 original failed-edit files and the hold; restored=false.

## Retained Failures

- splice01 used unavailable `removeAll`; corrected to `removeAll:`. No model
  dispatch; that candidate lacked an explicit failure public bookend.
- splice03/04 used an incorrect ancestry filter for independent SG block
  positions. Both failure public bookends verify unchanged owners/domain and
  no edit allocations.
- clone06 read-only field audit established mapped Point provenance for the
  tested SG blocks. Corrected selection uses SGBlockGO and exact memo ownership.
- splice02/05 are intermediate passing candidates, separate from final06.
- private-merge01/02 are intermediate minimal-order/peer passes; 03 adds four
  prepared conflicts; 04 adds ancestry without the new dependency cases.
- private-merge05 expected a boolean refusal where preflight threw; 06/07 then
  exposed the genuine missing delegated-edge dependency. Failure public bookends
  stayed unchanged, with no model dispatch or new assertions.
- private-merge08 completes native cases but its Python validator incorrectly
  required the same lexical sort as Smalltalk. Dependency rosters are sets;
  ordered member arrays remain order-sensitive. 09 completes three rounds but
  fails candidate integrity because its validator changed during the run.
  Final10 uses unchanged sources throughout all three rounds.

All failures are retained and never counted as production editing/recovery.

## Reproduction

Use a fresh output directory with the same live isolated fixture:

```powershell
E:\PYTHON\python.exe scripts\bde_class_detached_projection_experiment.py `
  --component 'BDE_Tool_Experiments\Trial_GeneralClass_20261002_050256_d0e048' `
  --splice-clone --repeats 3 `
  --output analysis\bde-experiments\2026-10-03\fresh-private-inverse
```

Mutually exclusive modes: `--inspect-clone` audits without allocation,
`--clone-graph` verifies a copy without deletion, `--splice-clone` exercises
private deletion/inverse. All collect complete native checkpoint summaries.
Failure paths attempt a fresh public API bookend and preserve collection errors.

## Remaining Production Work

Bind production original/applied/current graph lineage and model dependencies;
extend the private guard to additional audited families; prepare durable CURRENT
recovery/WAL before actual model setters. Independently accept shared Class
creation/deletion/inverse, partial/unknown faults, reload identity and original
BDE presentation. Genuine display01 recovery, AEB_Core/FLOW and final package
remain required. Copies of current objects never recover lost old-epoch originals;
this result neither rebinds old journals nor clears the hold.
