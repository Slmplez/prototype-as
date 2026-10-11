"Eval-only complete export of the production fixed planner. No executor called."
[:planner :dump :frozenExport | [:component :context |
 component handleExceptionsIn: [
 | record plan material native head graphs sourceClone answer |
 (context isArray and: [context size = 3]) ifFalse: [component error: 'Exact topology token/owner/state required'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: context first.
 plan := planner value: component value: record value: (Array with: (context at: 2) with: context last).
 (plan isKindOf: Dictionary) ifFalse: [component error: plan asString].
 material := plan at: 'material'. native := record at: 'topologyNativeBefore'. head := record at: 'topologyOwnedHead'.
 graphs := Dictionary new.
 #('original' 'applied' 'current' 'candidate') do: [:role | | source images |
   source := role = 'original' ifTrue: [head at: 'beforeSource'] ifFalse: [
     role = 'applied' ifTrue: [head at: 'afterSource'] ifFalse: [material at: 'sourceCurrent']].
   images := role = 'candidate' ifTrue: [material at: 'sourceDesired'] ifFalse: [source at: 'snapshots'].
   sourceClone := (source at: 'cloneImages') value: images.
   graphs at: role put: (dump value: component value: sourceClone)
 ].
 (plan at: 'verifyBeforeDispatch') value ifFalse: [component error: 'Actual topology changed during pure export'].
 answer := Dictionary new at: 'profile' put: (plan at: 'profile');
   at: 'owner' put: (plan at: 'owner'); at: 'state' put: (plan at: 'state'); at: 'sequence' put: (plan at: 'sequence');
   at: 'operation' put: (record at: 'operation'); at: 'component_oid' put: component getOID;
   at: 'before' put: (plan at: 'beforeValues'); at: 'after' put: (plan at: 'afterValues');
   at: 'current' put: (plan at: 'currentValues'); at: 'values' put: (plan at: 'values');
   at: 'source_graphs' put: graphs;
   at: 'source_identity_evidence' put: (frozenExport value: component value:
     (Array with: ((head at: 'beforeSource') at: 'sourceRoot')
       with: ((head at: 'beforeSource') at: 'snapshots')
       with: ((head at: 'afterSource') at: 'snapshots')
       with: ((material at: 'sourceCurrent') at: 'snapshots') with: (material at: 'sourceDesired')));
   at: 'native_current' put: ((native at: 'imageFor') value: (material at: 'nativeCurrent'));
   at: 'native_expected' put: ((native at: 'imageFor') value: (material at: 'nativeDesired'));
   at: 'native_fields' put: ((native at: 'diagnosticsFor') value: (material at: 'nativeCurrent'));
   at: 'source_objects' put: (material at: 'sourceDesired') size;
   at: 'source_touched_cells' put: ((material at: 'sourceMerge') at: 'touched_cells');
   at: 'native_source_targets_agree' put: true;
   at: 'real_current_verified' put: true;
   at: 'normalization_progress' put: (material at: 'progress') copy;
   at: 'current_endpoint_mode' put: (plan at: 'currentEndpointMode');
   at: 'expected_endpoint_mode' put: (plan at: 'expectedEndpointMode');
   at: 'write_authorized' put: false; at: 'managed_inverse_enabled' put: false;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
 #('parentBefore' 'parentAfter' 'parentCurrent' 'parentExpected'
   'drawingBefore' 'drawingAfter' 'drawingCurrent' 'drawingExpected') do: [:key | answer at: key put: (plan at: key)].
 (native at: 'encode') value: answer
 ] ifFail: [:error | 'BDE_TOPOLOGY_OWNED_PLAN_PROBE_ERROR: ', error messageText]
]]
