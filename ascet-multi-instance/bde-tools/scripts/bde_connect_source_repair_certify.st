"Certify already-completed source primitives and restore only the retained live
 scope metadata. No source/native setter, store, inverse or factory is called."
[:helpers | [:component :context |
 component handleExceptionsIn: [
 | mode token owner fieldToken fieldOwner repairId signature repair record field material head root diagram
   native current desired patch progress epoch highWater sameOrder sameMap source evidence certificate proof answer actual |
 mode := context first. token := context at: 2. owner := context at: 3. fieldToken := context at: 4.
 fieldOwner := context at: 5. repairId := context at: 6. signature := context last.
 repair := (Smalltalk at: #DogeBDEConnectSourceRepairsV1) at: repairId.
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 field := (Smalltalk at: #DogeBDEStructureEditsV3) at: fieldToken.
 material := record at: 'connectMaterial'. head := material at: 'historyHead'. root := material at: 'root'.
 diagram := material at: 'diagram'. native := material at: 'nativeBefore'. current := repair at: 'current'.
 desired := repair at: 'desired'. patch := repair at: 'patch'. progress := patch at: 'progress'.
 source := (material at: 'sourceBefore') at: 'sourceRoot'.
 epoch := Smalltalk at: #DogeBDEStructureEpochV1. highWater := epoch at: 'highWater'.
 ((repair at: 'record') == record and: [(repair at: 'field') == field and: [(repair at: 'head') == head and: [
   (repair at: 'state') = 'started' and: [(record at: 'owner') == component item and: [(field at: 'owner') == component item and: [
   (head at: 'owner') = owner and: [(record at: 'state') = 'reverted' and: [(head at: 'state') = 'reverted' and: [
   (field at: 'managedInverseId') = fieldOwner and: [(field at: 'state') = 'reverted' and: [
   (progress at: 'state') = 'applied' and: [(progress at: 'completed_primitives') = (progress at: 'cell_count')]]]]]]]]]]]])
   ifFalse: [component error: 'Exact completed, unconfirmed source repair required'].
 (((Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main')) == root and: [
   (root at: 'owner') == component item and: [(root at: 'specification') == diagram specification and: [
   (root at: 'diagram') specification == diagram specification and: [
   source == diagram specification specSourceInternalOrNil and: [(root at: 'scopeEpoch') == epoch and: [
   (root at: 'issuedGeneration') = (root at: 'generation') and: [(root at: 'generation') <= highWater]]]]]]])
   ifFalse: [component error: 'Original live scope/root/source/allocator expired; no reconstruction'].
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:slot | (left at: slot) == (right at: slot)]]].
 sameMap := [:left :right | left size = right size and: [left keys allSatisfy: [:key |
   (right keys anySatisfy: [:peer | peer == key]) and: [(left at: key) == (right at: key)]]]].
 (((native at: 'verifyImages') value: (native at: 'snapshots')) and: [
   ((repair at: 'raw') at: 'verify') value and: [((current at: 'verifyImages') value: desired) and: [
   ((root at: 'sameSource') value: source value: (repair at: 'expected')) and: [
   (sameOrder value: (material at: 'collection') value: (material at: 'beforeOrder')) and: [
   (sameOrder value: (material at: 'parent') sortedChildren value: (material at: 'beforeDrawing')) and: [
   (sameMap value: (material at: 'ids') value: (material at: 'beforeIds'))]]]]]])
   ifFalse: [component error: 'Complete original native/source/reference/order/alias targets differ'].
 actual := (current at: 'captureImages') value: desired keys.
 evidence := (helpers last) value: component value:
   (Array with: source with: desired with: desired with: actual with: actual).
 (evidence isKindOf: Dictionary) ifFalse: [component error: evidence asString].
 answer := Dictionary new at: 'profile' put: 'completed_source_repair_metadata_certificate_v1';
   at: 'repair_id' put: repairId; at: 'native_token' put: token; at: 'head_change_id' put: owner;
   at: 'field_token' put: fieldToken; at: 'field_owner' put: fieldOwner;
   at: 'source_evidence' put: evidence; at: 'complete_original_material_verified' put: true;
   at: 'source_primitives_completed' put: (progress at: 'completed_primitives');
   at: 'allocator_high_water' put: highWater; at: 'model_setters_called' put: 0; at: 'source_setters_called' put: 0;
   at: 'store_called' put: false; at: 'write_replayed' put: false; at: 'certified' put: false; yourself.
 mode = 'inspect' ifTrue: [
   certificate := Dictionary new at: 'root' put: root; at: 'diagram' put: (root at: 'diagram');
     at: 'generation' put: (root at: 'generation'); at: 'ids' put: (root at: 'ids');
     at: 'highWater' put: highWater; at: 'committed' put: false; yourself.
   repair at: 'certificate' put: certificate.
   answer at: 'signature' put: repairId, '/m1'. (native at: 'encode') value: answer
 ] ifFalse: [
   mode = 'certify' ifFalse: [component error: 'Fixed metadata inspect/certify only'].
   certificate := repair at: 'certificate'.
   ((certificate at: 'committed') == false and: [signature = (repairId, '/m1') and: [
   (certificate at: 'root') == root and: [(certificate at: 'diagram') == (root at: 'diagram') and: [
   (certificate at: 'generation') = (root at: 'generation') and: [(certificate at: 'ids') == (root at: 'ids') and: [
   (certificate at: 'highWater') = highWater]]]]]]) ifFalse: [component error: 'Prepared same-live-scope certificate changed; never replay'].
   certificate at: 'committed' put: true.
   root at: 'diagram' put: diagram; at: 'ids' put: (material at: 'ids'); at: 'counter' put: (material at: 'beforeCounter');
     at: 'generation' put: (material at: 'generation'); at: 'issuedGeneration' put: (material at: 'generation');
     at: 'checkpoint' put: ((root at: 'copySource') value: source); at: 'checkpointVersion' put: 2.
   proof := (repair at: 'execution') copy.
   proof at: 'original_native_verified' put: true; at: 'original_source_verified' put: true.
   repair at: 'actual' put: (Dictionary new at: 'profile' put: 'native_connect_original_source_repair_actual_v1';
     at: 'execution' put: proof; at: 'source_evidence' put: evidence; at: 'write_replayed' put: false; yourself);
     at: 'state' put: 'verified'.
   (epoch at: 'highWater') = highWater ifFalse: [component error: 'Certificate consumed a new generation'].
   answer at: 'certified' put: true; at: 'restored_generation' put: (root at: 'generation').
   (native at: 'encode') value: answer
 ]
 ] ifFail: [:error | 'BDE_CONNECT_SOURCE_REPAIR_CERTIFICATE_ERROR: ', error messageText]
]]
