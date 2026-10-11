"Separate guarded compensation for an incomplete initial field forward.
 Original forward state/progress stays unchanged; no setter/store or replay.
 Every native/source slot write is accounted for in distinct patch progress."
[:sourceDump | [:component :token :command |
 component handleExceptionsIn: [
 | action transaction witnessToken signature record root diagram native material witness source
   sameOrder identityGuard compensation original observed sourceObserved sourceExpected sourceDesired
   nativePatch sourcePatch verifyCurrent verifyOriginal status out actual sourceBefore expectedSource count |
 command size = 4 ifFalse: [component error: 'Exact field failure compensation context required'].
 action := command first. transaction := command at: 2. witnessToken := command at: 3. signature := command last.
 (#('inspect' 'prepare' 'check' 'apply') includes: action) ifFalse: [component error: 'Unknown field failure compensation action'].
 transaction = token ifTrue: [component error: 'Compensation must be a distinct transaction'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated field failure compensation required'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 witness := (Smalltalk at: #DogeBDEMainWorkflowWitnessesV1) at: witnessToken.
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 diagram := record at: 'diagram'. native := record at: 'fieldNativeBefore'.
 material := record at: 'fieldSourceMaterialBefore'. source := diagram specification specSourceInternalOrNil.
 status := record at: 'fieldExecutionStatus'.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'diagramName') = 'Main' and: [
   #('set_literal' 'set_comment' 'move_node' 'set_edge_route') includes: (record at: 'operation')]]])
   ifFalse: [component error: 'Exact retained initial ordinary field forward required'].
 ((record at: 'state') = 'started' and: [(record includesKey: 'managedExecution') not and: [
   (status at: 'direction') = 'forward' and: [(status at: 'store_completed') and: [
   (status at: 'terminal_verified') not and: [(record at: 'fieldExecutionSourcePatch') isNil]]]]])
   ifFalse: [component error: 'Only an incomplete post-store initial forward is eligible'].
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
 identityGuard := [| matches |
   matches := (root at: 'owner') == component item.
   matches := matches and: [(root at: 'diagram') == diagram].
   matches := matches and: [(root at: 'specification') == diagram specification].
   matches := matches and: [(witness at: 'owner') == component item].
   matches := matches and: [(witness at: 'root') == root].
   matches := matches and: [(witness at: 'diagram') == diagram].
   matches := matches and: [(material at: 'sourceRoot') == source].
   matches := matches and: [diagram specification specSourceInternalOrNil == source].
   matches := matches and: [(witness at: 'parent') == diagram topGraphicalHierarchy contents].
   matches := matches and: [(witness at: 'collection') == (witness at: 'parent') children].
   matches := matches and: [sameOrder value: (witness at: 'parent') children value: (witness at: 'physical')].
   matches := matches and: [sameOrder value: (witness at: 'parent') sortedChildren value: (witness at: 'drawing')].
   matches := matches and: [(root at: 'generation') = (witness at: 'generation')].
   matches := matches and: [(root at: 'issuedGeneration') = (root at: 'generation')].
   matches := matches and: [(root at: 'counter') = (witness at: 'counter')].
   matches := matches and: [(root at: 'ids') == (witness at: 'ids')].
   matches := matches and: [(root at: 'ids') size = (witness at: 'idRows') size].
   matches := matches and: [(witness at: 'idRows') allSatisfy: [:pair |
     ((root at: 'ids') at: pair first ifAbsent: [nil]) == pair last]]. matches].
 identityGuard value ifFalse: [component error: 'Full retained root/order/identity/source binding differs; no rebinding'].
 verifyOriginal := [identityGuard value and: [(native at: 'verify') value and: [
   ((witness at: 'current') at: 'verify') value and: [(material at: 'verify') value and: [
   ((record at: 'fieldSourceSame') value: component value: source value: (witness at: 'source')) == true]]]]].
 compensation := record at: 'fieldFailureCompensation' ifAbsent: [nil].
 compensation notNil ifTrue: [
   ((compensation at: 'transaction') = transaction and: [(compensation at: 'witness') = witnessToken])
     ifFalse: [component error: 'Another failure compensation owns retained material']].
 action = 'prepare' ifTrue: [
   compensation notNil ifTrue: [component error: 'Failure compensation already prepared; classify instead'].
   ((native at: 'verifyImages') value: (record at: 'fieldAppliedPostStoreImages'))
     ifFalse: [component error: 'Actual post-store native images changed; no compensation overwrite'].
   original := native at: 'snapshots'.
   observed := (native at: 'captureImages') value: (original keys, (record at: 'fieldAppliedPostStoreImages') keys).
   sourceObserved := (material at: 'captureImages') value: (material at: 'snapshots') keys.
   sourceDesired := material at: 'snapshots'. sourceExpected := sourceObserved copy.
   "Source and graphical images may share originals. Anticipate exactly the
    native patch, then guard source CURRENT after it; never weaken sharing."
   original keysAndValuesDo: [:object :entry | (sourceExpected includesKey: object) ifTrue: [
     sourceExpected at: object put: entry]].
   nativePatch := (record at: 'fieldNativePatchFactory') value: component
     value: (Array with: original with: observed) value: 'undo'.
   (nativePatch isKindOf: Dictionary) ifFalse: [component error: nativePatch asString].
   sourcePatch := (record at: 'fieldNativePatchFactory') value: component
     value: (Array with: sourceDesired with: sourceExpected) value: 'undo'.
   (sourcePatch isKindOf: Dictionary) ifFalse: [component error: sourcePatch asString].
   verifyCurrent := [identityGuard value and: [((native at: 'verifyImages') value: observed) and: [
     ((material at: 'verifyImages') value: sourceObserved) and: [(nativePatch at: 'verifyBeforeApply') value]]]].
   verifyCurrent value ifFalse: [component error: 'Failure compensation CURRENT changed while preparing'].
   sourceBefore := sourceDump value: component value: source.
   expectedSource := sourceDump value: component value: ((material at: 'cloneImages') value: sourceDesired).
   compensation := Dictionary new at: 'profile' put: 'field_failure_compensation_v1';
     at: 'transaction' put: transaction; at: 'witness' put: witnessToken;
     at: 'signature' put: transaction, '/current/1'; at: 'state' put: 'prepared';
     at: 'originalStatus' put: status copy; at: 'nativePatch' put: nativePatch; at: 'sourcePatch' put: sourcePatch;
     at: 'observed' put: observed; at: 'sourceObserved' put: sourceObserved;
     at: 'sourceExpected' put: sourceExpected; at: 'sourceDesired' put: sourceDesired;
     at: 'verifyCurrent' put: verifyCurrent; at: 'verifyOriginal' put: verifyOriginal;
     at: 'sourceBefore' put: sourceBefore; at: 'expectedSource' put: expectedSource;
     at: 'beforeNative' put: ((native at: 'imageFor') value: observed);
     at: 'primitiveWrites' put: 0; yourself.
   record at: 'fieldFailureCompensation' put: compensation
 ].
 (#('check' 'apply') includes: action) ifTrue: [
   compensation isNil ifTrue: [component error: 'Prepared compensation required'].
   signature = (compensation at: 'signature') ifFalse: [component error: 'Durable compensation CURRENT signature differs'].
   (compensation at: 'state') = 'prepared' ifFalse: [component error: 'Started compensation cannot replay; inspect retained state'].
   (compensation at: 'verifyCurrent') value ifFalse: [component error: 'Prepared compensation CURRENT/root/source conflict']
 ].
 action = 'apply' ifTrue: [
   compensation at: 'state' put: 'native_started'. nativePatch := compensation at: 'nativePatch'.
   [(nativePatch at: 'execute') value] ensure: [compensation at: 'primitiveWrites'
     put: ((nativePatch at: 'progress') at: 'completed_primitives')].
   ((native at: 'verify') value and: [(material at: 'verifyImages') value: (compensation at: 'sourceExpected')])
     ifFalse: [component error: 'Native compensation or anticipated shared source differs'].
   compensation at: 'state' put: 'source_started'. sourcePatch := compensation at: 'sourcePatch'.
   (sourcePatch at: 'verifyBeforeApply') value ifFalse: [component error: 'Source compensation CURRENT conflict'].
   [(sourcePatch at: 'execute') value] ensure: [compensation at: 'primitiveWrites' put:
     (((nativePatch at: 'progress') at: 'completed_primitives') + ((sourcePatch at: 'progress') at: 'completed_primitives'))].
   (compensation at: 'verifyOriginal') value ifFalse: [component error: 'Full original native/source/identity/order compensation differs'].
   "Reestablish private read certificate after exact restoration, without
    changing generation, allocator, identities or original forward status."
   root at: 'checkpoint' put: ((root at: 'copySource') value: source); at: 'checkpointVersion' put: 2.
   actual := (record at: 'materialObservationReader') value: component value: 'Main' value: (record at: 'targets').
   (actual startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: actual].
   (actual = (record at: 'before') and: [(compensation at: 'verifyOriginal') value])
     ifFalse: [component error: 'Fresh terminal observation changed exact restored baseline'].
   compensation at: 'sourceAfter' put: (sourceDump value: component value: source);
     at: 'after' put: actual; at: 'state' put: 'restored'
 ].
 out := Dictionary new at: 'profile' put: 'field_failure_recovery_v1';
   at: 'native_token' put: token; at: 'native_state' put: (record at: 'state');
   at: 'operation' put: (record at: 'operation'); at: 'component_oid' put: component getOID;
   at: 'original_field_execution' put: ((record at: 'fieldStatusReader') value: component value: record value: token);
   at: 'compensation' put: (compensation isNil ifTrue: [nil] ifFalse: [Dictionary new
     at: 'profile' put: (compensation at: 'profile'); at: 'transaction' put: transaction;
     at: 'witness' put: witnessToken; at: 'signature' put: (compensation at: 'signature');
     at: 'state' put: (compensation at: 'state'); at: 'before_native' put: (compensation at: 'beforeNative');
     at: 'original_native' put: (native at: 'originalImage');
     at: 'source_before' put: (compensation at: 'sourceBefore');
     at: 'expected_source' put: (compensation at: 'expectedSource');
     at: 'source_after' put: (compensation at: 'sourceAfter' ifAbsent: [nil]);
     at: 'after' put: (compensation at: 'after' ifAbsent: [nil]);
     at: 'native_progress' put: ((compensation at: 'nativePatch') at: 'progress') copy;
     at: 'source_progress' put: ((compensation at: 'sourcePatch') at: 'progress') copy;
     at: 'primitive_writes' put: (compensation at: 'primitiveWrites');
     at: 'current_verified' put: ((compensation at: 'state') = 'prepared' and: [(compensation at: 'verifyCurrent') value]);
     at: 'original_verified' put: (compensation at: 'verifyOriginal') value;
     at: 'original_forward_status_unchanged' put: (status size = (compensation at: 'originalStatus') size and: [
       status keys allSatisfy: [:key | ((compensation at: 'originalStatus') includesKey: key) and: [
         (status at: key) = ((compensation at: 'originalStatus') at: key)]]]); yourself]);
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'original_edit_replayed' put: false;
   at: 'pending_cleared' put: false; yourself.
 (native at: 'encode') value: out
 ] ifFail: [:error | 'BDE_FIELD_FAILURE_COMPENSATION_ERROR: ', error messageText]
]]
