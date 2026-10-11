"Exact retained-material repair of one reverted ordinary topology transaction.
 Not a local topology inverse and not an arbitrary snapshot replacement."
[:helpers | [:component :token :command |
 component handleExceptionsIn: [
 | action transaction witnessToken signature record root diagram native material source witness head
   factory strictSame sourceDump sameOrder identityGuard verifyOriginal repair original observed
   sourceObserved sourceDesired sourceExpected nativePatch sourcePatch nativeSame originalSource inverseSource
   verifyCurrent actual out |
 (helpers isArray and: [helpers size = 3 and: [command size = 4]])
   ifFalse: [component error: 'Fixed topology terminal fidelity context required'].
 factory := helpers first. strictSame := helpers at: 2. sourceDump := helpers last.
 action := command first. transaction := command at: 2. witnessToken := command at: 3. signature := command last.
 (#('prepare' 'check' 'apply' 'inspect') includes: action)
   ifFalse: [component error: 'Unknown topology terminal fidelity action'].
 transaction = token ifTrue: [component error: 'Distinct fidelity transaction required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Exact isolated topology terminal required'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 witness := (Smalltalk at: #DogeBDEMainWorkflowWitnessesV1) at: witnessToken.
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 diagram := record at: 'diagram'. native := record at: 'topologyNativeBefore'.
 material := record at: 'topologySourceMaterialBefore'. source := diagram specification specSourceInternalOrNil.
 head := record at: 'topologyExecutedHead'.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'diagramName') = 'Main' and: [#('disconnect_data' 'delete_node') includes: (record at: 'operation')]]])
   ifFalse: [component error: 'Retained ordinary topology identity differs'].
 ((record at: 'state') = 'reverted' and: [(head at: 'direction') = 'undo' and: [
   (record at: 'topologyExecutionSerial') = 2 and: [
   (record at: 'materialProtocol') = 'retained_inverse_v1']]])
   ifFalse: [component error: 'Only a confirmed first retained topology inverse is eligible'].
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
 identityGuard value ifFalse: [component error: 'Exact original source/root/order/IDs expired; no rebinding'].
 verifyOriginal := [identityGuard value and: [(native at: 'verify') value and: [
   ((witness at: 'current') at: 'verify') value and: [(material at: 'verify') value and: [
   (strictSame value: component value: source value: (witness at: 'source')) == true]]]]].
 repair := record at: 'topologyTerminalFidelity' ifAbsent: [nil].
 repair notNil ifTrue: [((repair at: 'transaction') = transaction and: [(repair at: 'witness') = witnessToken])
   ifFalse: [component error: 'Another fidelity transaction owns the retained materials']].
 action = 'prepare' ifTrue: [
   repair notNil ifTrue: [component error: 'Fidelity transaction already exists; classify without replay'].
   ((root at: 'encodeObservation') value: (head at: 'beforeValues')) =
     ((root at: 'encodeObservation') value: (record at: 'topologyHeadAfterValues'))
     ifFalse: [component error: 'Independent typed changes prohibit complete original fidelity repair'].
   nativeSame := factory value: component value:
     (Array with: (record at: 'topologyHeadAfterNative') with: (head at: 'beforeNative')) value: 'undo'.
   (nativeSame isKindOf: Dictionary) ifFalse: [component error: nativeSame asString].
   ((nativeSame at: 'cells') isEmpty and: [(nativeSame at: 'introduced') isEmpty])
     ifFalse: [component error: 'Independent native changes prohibit complete original fidelity repair'].
   originalSource := ((record at: 'topologyHeadAfterSource') at: 'cloneImages')
     value: ((record at: 'topologyHeadAfterSource') at: 'snapshots').
   inverseSource := ((head at: 'beforeSource') at: 'cloneImages') value: ((head at: 'beforeSource') at: 'snapshots').
   (strictSame value: component value: originalSource value: inverseSource) == true
     ifFalse: [component error: 'Independent source values/sharing prohibit complete original fidelity repair'].
   ((native at: 'verifyImages') value: (head at: 'afterNative'))
     ifFalse: [component error: 'Actual inverse native terminal changed; no overwrite'].
   ((head at: 'afterSource') at: 'verify') value
     ifFalse: [component error: 'Actual inverse source terminal changed; no overwrite'].
   original := native at: 'snapshots'.
   observed := (native at: 'captureImages') value: (original keys, (head at: 'afterNative') keys).
   sourceObserved := (material at: 'captureImages') value:
     ((material at: 'snapshots') keys, ((head at: 'afterSource') at: 'snapshots') keys).
   sourceDesired := material at: 'snapshots'. sourceExpected := sourceObserved copy.
   original keysAndValuesDo: [:object :entry | (sourceExpected includesKey: object) ifTrue: [sourceExpected at: object put: entry]].
   nativePatch := factory value: component value: (Array with: original with: observed) value: 'undo'.
   sourcePatch := factory value: component value: (Array with: sourceDesired with: sourceExpected) value: 'undo'.
   (nativePatch isKindOf: Dictionary) ifFalse: [component error: nativePatch asString].
   (sourcePatch isKindOf: Dictionary) ifFalse: [component error: sourcePatch asString].
   verifyCurrent := [identityGuard value and: [((native at: 'verifyImages') value: observed) and: [
     ((material at: 'verifyImages') value: sourceObserved) and: [(nativePatch at: 'verifyBeforeApply') value]]]].
   verifyCurrent value ifFalse: [component error: 'Fidelity CURRENT changed while preparing'].
   repair := Dictionary new at: 'profile' put: 'ordinary_topology_terminal_fidelity_v1';
     at: 'transaction' put: transaction; at: 'witness' put: witnessToken;
     at: 'signature' put: transaction, '/current/1'; at: 'state' put: 'prepared';
     at: 'nativePatch' put: nativePatch; at: 'sourcePatch' put: sourcePatch;
     at: 'sourceExpected' put: sourceExpected; at: 'verifyCurrent' put: verifyCurrent;
     at: 'verifyOriginal' put: verifyOriginal; at: 'primitiveWrites' put: 0;
     at: 'beforeNative' put: ((native at: 'imageFor') value: observed);
     at: 'sourceBefore' put: (sourceDump value: component value: source);
     at: 'sourceExpectedDump' put: (sourceDump value: component value: ((material at: 'cloneImages') value: sourceDesired)); yourself.
   record at: 'topologyTerminalFidelity' put: repair
 ].
 (#('check' 'apply') includes: action) ifTrue: [
   repair isNil ifTrue: [component error: 'Prepared fidelity transaction required'].
   ((repair at: 'state') = 'prepared' and: [signature = (repair at: 'signature')])
     ifFalse: [component error: 'Started fidelity transaction cannot replay or use another CURRENT'].
   (repair at: 'verifyCurrent') value ifFalse: [component error: 'Prepared fidelity CURRENT changed']
 ].
 action = 'apply' ifTrue: [
   repair at: 'state' put: 'native_started'. nativePatch := repair at: 'nativePatch'.
   [(nativePatch at: 'execute') value] ensure: [repair at: 'primitiveWrites'
     put: ((nativePatch at: 'progress') at: 'completed_primitives')].
   ((native at: 'verify') value and: [(material at: 'verifyImages') value: (repair at: 'sourceExpected')])
     ifFalse: [component error: 'Native fidelity or anticipated source sharing differs'].
   repair at: 'state' put: 'source_started'. sourcePatch := repair at: 'sourcePatch'.
   (sourcePatch at: 'verifyBeforeApply') value ifFalse: [component error: 'Source fidelity CURRENT changed'].
   [(sourcePatch at: 'execute') value] ensure: [repair at: 'primitiveWrites' put:
     (((nativePatch at: 'progress') at: 'completed_primitives') + ((sourcePatch at: 'progress') at: 'completed_primitives'))].
   (repair at: 'verifyOriginal') value ifFalse: [component error: 'Complete original identity/source/order fidelity differs'].
   root at: 'checkpoint' put: ((root at: 'copySource') value: source); at: 'checkpointVersion' put: 2.
   actual := (record at: 'materialObservationReader') value: component value: 'Main' value: (record at: 'targets').
   (actual startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: actual].
   (actual = (record at: 'before') and: [(repair at: 'verifyOriginal') value])
     ifFalse: [component error: 'Terminal read changed the exact original baseline'].
   repair at: 'sourceAfter' put: (sourceDump value: component value: source);
     at: 'after' put: actual; at: 'state' put: 'restored'
 ].
 out := Dictionary new at: 'profile' put: 'ordinary_topology_terminal_fidelity_v1';
   at: 'native_token' put: token; at: 'native_state' put: (record at: 'state');
   at: 'component_oid' put: component getOID; at: 'operation' put: (record at: 'operation');
   at: 'repair' put: (repair isNil ifTrue: [nil] ifFalse: [Dictionary new
     at: 'transaction' put: transaction; at: 'signature' put: (repair at: 'signature');
     at: 'state' put: (repair at: 'state'); at: 'before_native' put: (repair at: 'beforeNative');
     at: 'original_native' put: (native at: 'originalImage');
     at: 'source_before' put: (repair at: 'sourceBefore'); at: 'source_expected' put: (repair at: 'sourceExpectedDump');
     at: 'source_after' put: (repair at: 'sourceAfter' ifAbsent: [nil]);
     at: 'native_progress' put: ((repair at: 'nativePatch') at: 'progress') copy;
     at: 'source_progress' put: ((repair at: 'sourcePatch') at: 'progress') copy;
     at: 'primitive_writes' put: (repair at: 'primitiveWrites');
     at: 'current_verified' put: ((repair at: 'state') = 'prepared' and: [(repair at: 'verifyCurrent') value]);
     at: 'original_verified' put: (repair at: 'verifyOriginal') value; yourself]);
   at: 'managed_topology_inverse_enabled' put: false; at: 'model_setters_called' put: 0;
   at: 'store_called' put: false; at: 'original_edit_replayed' put: false; yourself.
 (native at: 'encode') value: out
 ] ifFail: [:error | 'BDE_TOPOLOGY_TERMINAL_FIDELITY_ERROR: ', error messageText]
]]
