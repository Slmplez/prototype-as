"Fixed isolated recovery for a proved original native graph whose source stayed
 stale after another field inverse. Never replay either edit. Restore only the
 original connection's retained source images under complete native guards."
[:helpers | [:component :context |
 | mutationStarted phase repair |
 mutationStarted := false. phase := 'identity'. repair := nil.
 component handleExceptionsIn: [
 | mode token owner fieldToken fieldOwner repairId signature edits record material head field root diagram
   source original registry native raw current desired patch evidence expected sameOrder sameMap
   verifyIdentity verifyNative verifyBaseline verifyCurrent proof actualSource actual answer |
 (helpers isArray and: [helpers size = 4 and: [context isArray and: [context size = 7]]])
   ifFalse: [component error: 'Fixed source-only restoration context required'].
 mode := context first. token := context at: 2. owner := context at: 3.
 fieldToken := context at: 4. fieldOwner := context at: 5. repairId := context at: 6. signature := context last.
 (#('prepare' 'execute' 'status' 'release') includes: mode) ifFalse: [component error: 'Unknown fixed source repair mode'].
 edits := Smalltalk at: #DogeBDEStructureEditsV3.
 registry := Smalltalk at: #DogeBDEConnectSourceRepairsV1 ifAbsentPut: [Dictionary new].
 mode = 'release' ifTrue: [
   repair := registry at: repairId. proof := repair at: 'execution'.
   ((proof at: 'native_token') = token and: [(proof at: 'head_change_id') = owner and: [
     (proof at: 'field_token') = fieldToken and: [(proof at: 'field_owner') = fieldOwner and: [
     (proof at: 'repair_id') = repairId]]]])
     ifFalse: [component error: 'Retained repair release request identities differ'].
   record := repair at: 'record'. field := repair at: 'field'.
   ((record at: 'component') = component getOID and: [(field at: 'component') = component getOID])
     ifFalse: [component error: 'Retained repair release owner differs']
 ] ifFalse: [record := edits at: token. field := edits at: fieldToken].
 material := record at: 'connectMaterial'. head := material at: 'historyHead'.
 root := material at: 'root'. diagram := material at: 'diagram'.
 original := material at: 'sourceBefore'. source := original at: 'sourceRoot'. native := material at: 'nativeBefore'.
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:slot | (left at: slot) == (right at: slot)]]].
 sameMap := [:left :right | left size = right size and: [left keys allSatisfy: [:key |
   (right keys anySatisfy: [:peer | peer == key]) and: [(left at: key) == (right at: key)]]]].
 verifyIdentity := [
   ((Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main')) == root and: [
   (record at: 'owner') == component item and: [(field at: 'owner') == component item and: [
   (record at: 'operation') = 'connect_data' and: [(field at: 'operation') = 'set_literal' and: [
   (record at: 'diagramName') = 'Main' and: [(field at: 'diagramName') = 'Main' and: [
   (record at: 'state') = 'reverted' and: [(head at: 'owner') = owner and: [
   (head at: 'state') = 'reverted' and: [(field at: 'state') = 'reverted' and: [
   (field at: 'managedInverseId') = fieldOwner and: [(field at: 'fieldLocalHeadId') = fieldOwner and: [
   (field at: 'diagram') == diagram and: [(root at: 'diagram') == diagram and: [
   (root at: 'generation') = (material at: 'generation') and: [
   (root at: 'ids') == (material at: 'ids') and: [source == diagram specification specSourceInternalOrNil]]]]]]]]]]]]]]]]]].
 verifyIdentity value ifFalse: [component error: 'Original A and actual B inverse runtime/ownership changed'].
 verifyBaseline := [verifyIdentity value and: [
   ((native at: 'verifyImages') value: (native at: 'snapshots')) and: [
   (sameOrder value: (material at: 'collection') value: (material at: 'beforeOrder')) and: [
   (sameOrder value: (material at: 'parent') sortedChildren value: (material at: 'beforeDrawing')) and: [
   (sameMap value: (root at: 'ids') value: (material at: 'beforeIds')) and: [
   (root at: 'counter') = (material at: 'beforeCounter')]]]]]].
 verifyNative := [verifyBaseline value and: [
   ((record at: 'materialObservationReader') value: component value: 'Main' value: #()) =
     ((root at: 'encodeObservation') value: (material at: 'beforeValues'))]].
 verifyNative value ifFalse: [component error: 'Complete original native/typed/order/alias baseline is not restored'].
 mode = 'prepare' ifTrue: [
   (registry includesKey: repairId) ifTrue: [component error: 'Repair identity already prepared; inspect without replay'].
   registry size >= 128 ifTrue: [component error: 'Retained source repair capacity reached'].
   raw := helpers first value: component value: ((native at: 'snapshots') keys, (Array with: diagram topGraphicalHierarchy)).
   (raw isKindOf: Dictionary) ifFalse: [component error: raw asString].
   current := (helpers at: 2) value: component value: (Array with: source with:
     ((original at: 'snapshots') keys, ((head at: 'afterSource') at: 'snapshots') keys,
       ((field at: 'fieldLocalHeadBeforeSource') at: 'snapshots') keys,
       ((field at: 'fieldLocalHeadAfterSource') at: 'snapshots') keys)).
   (current isKindOf: Dictionary) ifFalse: [component error: current asString].
   desired := (current at: 'snapshots') copy.
   (original at: 'snapshots') keysAndValuesDo: [:object :entry | desired at: object put: entry].
   expected := (original at: 'cloneImages') value: (original at: 'snapshots').
   patch := (helpers at: 3) value: component value:
     (Array with: desired with: (current at: 'snapshots')) value: 'undo'.
   (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
   evidence := (helpers last) value: component value: (Array with: source with:
     (original at: 'snapshots') with: (current at: 'snapshots') with: (current at: 'snapshots') with: desired).
   (evidence isKindOf: Dictionary) ifFalse: [component error: evidence asString].
   verifyCurrent := [verifyNative value and: [(raw at: 'verify') value and: [(current at: 'verify') value]]].
   verifyCurrent value ifFalse: [component error: 'Repair CURRENT changed during nonmutating preparation'].
   repair := Dictionary new at: 'record' put: record; at: 'field' put: field; at: 'head' put: head;
     at: 'current' put: current; at: 'raw' put: raw; at: 'desired' put: desired; at: 'expected' put: expected;
     at: 'patch' put: patch; at: 'verifyCurrent' put: verifyCurrent;
     at: 'signature' put: repairId, '/r1'; at: 'state' put: 'prepared'; yourself.
   registry at: repairId put: repair.
   answer := Dictionary new at: 'profile' put: 'native_connect_original_source_repair_preparation_v1';
     at: 'native_token' put: token; at: 'head_change_id' put: owner; at: 'field_token' put: fieldToken;
     at: 'field_owner' put: fieldOwner; at: 'repair_id' put: repairId; at: 'signature' put: (repair at: 'signature');
     at: 'source_evidence' put: evidence; at: 'original_native_verified' put: true;
     at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'write_authorized' put: false; yourself.
   (raw at: 'encode') value: answer
 ] ifFalse: [
   repair := registry at: repairId.
   ((repair at: 'record') == record and: [(repair at: 'field') == field and: [(repair at: 'head') == head]])
     ifFalse: [component error: 'Original source restoration identity changed'].
   raw := repair at: 'raw'. current := repair at: 'current'. desired := repair at: 'desired'.
   (#('status' 'release') includes: mode) ifTrue: [
     (repair at: 'state') = 'verified' ifFalse: [component error: 'Retained repair terminal unavailable'].
     ((current at: 'verifyImages') value: desired) ifFalse: [component error: 'Retained original source terminal changed'].
     mode = 'release' ifTrue: [registry removeKey: repairId.
       (raw at: 'encode') value: (Dictionary new at: 'profile' put: 'native_connect_source_repair_release_v1';
         at: 'repair_id' put: repairId; at: 'released' put: true; at: 'model_setters_called' put: 0;
         at: 'source_setters_called' put: 0; at: 'store_called' put: false; yourself)
     ] ifFalse: [(raw at: 'encode') value: (repair at: 'actual')]
   ] ifFalse: [
     ((repair at: 'state') = 'prepared' and: [signature = (repair at: 'signature') and: [
       (repair at: 'verifyCurrent') value and: [((repair at: 'patch') at: 'verifyBeforeApply') value]]])
       ifFalse: [component error: 'Complete prepared repair CURRENT/signature changed; never replay'].
     proof := Dictionary new at: 'native_token' put: token; at: 'head_change_id' put: owner;
       at: 'field_token' put: fieldToken; at: 'field_owner' put: fieldOwner; at: 'repair_id' put: repairId;
       at: 'source_primitives' put: 0; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
       at: 'original_native_verified' put: false; at: 'original_source_verified' put: false; yourself.
     repair at: 'state' put: 'started'; at: 'execution' put: proof.
     mutationStarted := true. phase := 'source_patch'.
     [((repair at: 'patch') at: 'execute') value] ensure: [proof at: 'source_primitives'
       put: (((repair at: 'patch') at: 'progress') at: 'completed_primitives')].
     (verifyBaseline value and: [((current at: 'verifyImages') value: desired) and: [
       ((root at: 'sameSource') value: source value: (repair at: 'expected'))]])
       ifFalse: [component error: 'Original native/source target not fully restored'].
     root at: 'checkpoint' put: ((root at: 'copySource') value: source); at: 'checkpointVersion' put: 2.
     verifyNative value ifFalse: [component error: 'Full original typed baseline differs after source normalization'].
     actualSource := (current at: 'captureImages') value: desired keys.
     actual := (helpers last) value: component value:
       (Array with: source with: desired with: desired with: actualSource with: actualSource).
     (actual isKindOf: Dictionary) ifFalse: [component error: actual asString].
     proof at: 'original_native_verified' put: true; at: 'original_source_verified' put: true.
     answer := Dictionary new at: 'profile' put: 'native_connect_original_source_repair_actual_v1';
       at: 'execution' put: proof; at: 'source_evidence' put: actual; at: 'write_replayed' put: false; yourself.
     repair at: 'actual' put: answer; at: 'state' put: 'verified'.
     (raw at: 'encode') value: answer
   ]
 ]
 ] ifFail: [:error | mutationStarted
   ifTrue: ['BDE_CONNECT_SOURCE_REPAIR_ERROR: ', phase, ': ', error messageText]
   ifFalse: ['BDE_CONNECT_SOURCE_REPAIR_CONFLICT: ', phase, ': ', error messageText]]
]]
