"Fixed isolated graphical history finalization. Restore an audited original allocator
 only after exact original graph/order/aliases and no competing retained history.
 No factory, model setter or store; explicit declaration closure uses exact retained
 field images. Redo and ordinary writes close before the first field patch."
[:helpers | [:component :context |
 | mutated material stage |
 mutated := false. material := nil. stage := 'identity'.
 component handleExceptionsIn: [
 | mode token owner resultId signature registry record root diagram parent sourceRoot native source head
   sameOrder sameMap sameImage originals peers originalHigh currentHigh slot names reachable currentSource
   desired entry raw sourceEvidence prepared answer version census actualSource patch proof retirement namespace
   declaration declarationCapture declarationOwned declarationReader cacheGuard rawDeclaration
   declarationOriginal declarationDesired declarationPatch declarationEvidence cacheEvidence cacheResult
   imageBinding cacheEvidenceFor modelObject originalModelOID terminalDeclaration terminalReader
   enumDeclaration enumGuard enumEvidence enumActualEvidence
   messageDeclaration messageGuard messageEvidence messageActualEvidence cacheContext |
 (helpers isArray and: [(#(6 8 10) includes: helpers size) and: [context isArray and: [context size = 5]]])
   ifFalse: [component error: 'Fixed finalization helpers and context required'].
 mode := context first. token := context at: 2. owner := context at: 3.
 resultId := context at: 4. signature := context last.
 (#('prepare' 'execute' 'status') includes: mode)
   ifFalse: [component error: 'Unknown original graphical finalization mode'].
 registry := Smalltalk at: #DogeBDEStructureEditsV3. record := registry at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'operation') = 'create_block' and: [(record at: 'diagramName') = 'Main' and: [
   (record at: 'targets') isEmpty and: [#('literal' 'operator' 'variable' 'enumeration' 'receive_message' 'send_message' 'send_receive_message') includes: (record at: 'args') first]]]]])
   ifFalse: [component error: 'Exact retained graphical Main creation required'].
 material := record at: 'createMaterial'. head := material at: 'historyHead'.
 enumDeclaration := (record at: 'args') first = 'enumeration'.
 messageDeclaration := #('receive_message' 'send_message' 'send_receive_message') includes: (record at: 'args') first.
 declaration := enumDeclaration or: [messageDeclaration or: [(record at: 'args') first = 'variable']].
 ((enumDeclaration or: [messageDeclaration]) ~= (helpers size = 10))
   ifTrue: [component error: 'Independent original Enum finalization helper profile required'].
 enumDeclaration ifTrue: [
   ((helpers at: 10) = 'enum_body_original_release_v1' and: [material at: 'enumDeclaration' ifAbsent: [false]])
     ifFalse: [component error: 'Original Enum body finalization profile/material required'].
   enumGuard := helpers at: 9].
 messageDeclaration ifTrue: [
   ((helpers at: 10) = 'message_body_original_release_v1' and: [material at: 'messageDeclaration' ifAbsent: [false]])
     ifFalse: [component error: 'Original Module message body finalization profile/material required'].
   messageGuard := helpers at: 9].
 declaration ifTrue: [
   ((#(8 10) includes: helpers size) and: [(material includesKey: 'declarationBefore') and: [
     (head includesKey: 'afterDeclaration') and: [(material at: 'createdDefinition') isNil]]])
     ifFalse: [component error: 'Explicit original body-before declaration finalization required'].
   declarationCapture := material at: 'declarationBefore'.
   declarationOwned := declarationCapture at: 'owned'. declarationReader := helpers at: 7. cacheGuard := helpers at: 8.
   declarationOriginal := (declarationCapture at: 'images') at: 'snapshots'.
   modelObject := (material at: 'createdModel') element.
   (record at: 'createdModel') element == modelObject
     ifFalse: [component error: 'Original created declaration pointer changed'].
   originalModelOID := ((material at: 'afterModelOIDs') at: ((material at: 'afterModelRefs') indexOf: modelObject))
 ].
 imageBinding := [:snapshots :reader :newReader | | mappings |
   mappings := snapshots keys collect: [:object | | single oldRef |
     single := IdentityDictionary new at: object put: (snapshots at: object); yourself.
     oldRef := (((reader at: 'imageFor') value: single) at: 'objects') first at: 'ref'.
     Array with: oldRef with: ((newReader at: 'tokens') at: object)].
   Dictionary new at: 'profile' put: 'native_declaration_image_binding_v1';
     at: 'previous_recorded' put: ((reader at: 'imageFor') value: snapshots);
     at: 'previous_schema' put: ((reader at: 'diagnosticsFor') value: snapshots);
     at: 'namespace_bindings' put: mappings;
     at: 'recorded' put: ((newReader at: 'imageFor') value: snapshots);
     at: 'recorded_schema' put: ((newReader at: 'diagnosticsFor') value: snapshots); yourself
 ].
 cacheEvidenceFor := [:snapshots :reader :newReader | | binding guarded |
   binding := imageBinding value: snapshots value: reader value: newReader.
   cacheContext := Array with: snapshots with: (newReader at: 'snapshots') with: component item.
   messageDeclaration ifTrue: [cacheContext := cacheContext copyWith: 'module_message_cache_v1'].
   guarded := cacheGuard value: component value: cacheContext.
   (guarded isKindOf: Dictionary) ifFalse: [component error: guarded asString].
   binding at: 'profile' put: 'native_declaration_read_cache_evidence_v1';
     at: 'current' put: (newReader at: 'originalImage');
     at: 'current_schema' put: (newReader at: 'fieldDiagnostics') value;
     at: 'owner_ref' put: ((newReader at: 'tokens') at: component item);
     at: 'native_guard' put: guarded; at: 'write_authorized' put: false. binding
 ].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 diagram := record at: 'diagram'. parent := material at: 'parent'.
 native := material at: 'nativeBefore'. source := material at: 'sourceBefore'. sourceRoot := source at: 'sourceRoot'.
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
 sameMap := [:left :right | left size = right size and: [left keys allSatisfy: [:key |
   (right keys anySatisfy: [:peer | peer == key]) and: [(left at: key) == (right at: key)]]]].
 sameImage := [:object :left :right | left first = right first and: [
   left first = 'boundary' ifTrue: [true] ifFalse: [left first = 'value'
   ifTrue: [left last = right last] ifFalse: [
     (#('Dictionary' 'IdentityDictionary') includes: object class name asString)
       ifTrue: [sameMap value: left last value: right last]
       ifFalse: [sameOrder value: left last value: right last]]]]].
 ((material at: 'record') == record and: [(material at: 'root') == root and: [
   (root at: 'owner') == component item and: [(root at: 'diagram') == diagram and: [
   (root at: 'specification') == diagram specification and: [
   (root at: 'generation') = (material at: 'generation') and: [
   parent == diagram topGraphicalHierarchy contents and: [parent children == (material at: 'collection') and: [
   (root at: 'ids') == (material at: 'ids') and: [sourceRoot == diagram specification specSourceInternalOrNil]]]]]]]]])
   ifFalse: [component error: 'Original finalization owner/root/source binding expired'].
 ((head at: 'owner') = owner and: [(head at: 'state') = 'reverted' and: [
   (record at: 'state') = 'reverted' and: [(declaration or: [(material at: 'createdModel') isNil]) and: [
   (material at: 'createdDefinition') isNil]]]])
   ifFalse: [component error: 'Completed same-object graphical undo required'].
 ((native at: 'verify') value and: [
   (sameOrder value: parent children value: (material at: 'beforeOrder')) and: [
   (sameOrder value: parent sortedChildren value: (material at: 'beforeDrawing')) and: [
   (sameMap value: (root at: 'ids') value: (material at: 'beforeIds')) and: [
   (root at: 'counter') = (material at: 'beforeCounter')]]]])
   ifFalse: [component error: 'Complete original native/order/aliases must already be restored'].
 (declaration and: [mode = 'status']) ifFalse: [
 ((record at: 'materialObservationReader') value: component value: 'Main' value: #()) =
   ((root at: 'encodeObservation') value: (material at: 'beforeValues'))
   ifFalse: [component error: 'Complete original typed graph differs']].
 peers := registry values select: [:peer | peer ~~ record and: [(peer at: 'owner' ifAbsent: [nil]) == component item]].
 peers isEmpty ifFalse: [component error: 'Competing retained owner histories prevent allocator finalization'].
 names := sourceRoot class allInstVarNames collect: [:name | name asString].
 slot := names indexOf: 'highestUsedGraphicalIdentifier'.
 slot > 0 ifFalse: [component error: 'Audited original allocator slot unavailable'].
 originalHigh := ((source at: 'snapshots') at: sourceRoot) last at: slot.
 currentHigh := sourceRoot instVarAt: slot.
 (originalHigh isInteger and: [originalHigh >= 0 and: [currentHigh isInteger and: [currentHigh >= originalHigh]]])
   ifFalse: [component error: 'Recorded original and actual allocator bounds required'].
 mode = 'status' ifTrue: [
   answer := material at: 'finalizeActual' ifAbsent: [component error: 'Finalization terminal unavailable; never replay'].
   (((answer at: 'execution') at: 'result_change_id') = resultId and: [
     ((answer at: 'execution') at: 'head_change_id') = owner and: [
     ((answer at: 'execution') at: 'terminal_verified') == true and: [(source at: 'verify') value]]])
     ifFalse: [component error: 'Exact original finalization terminal changed'].
   declaration ifTrue: [
     terminalDeclaration := material at: 'finalizeDeclarationTarget'.
     terminalReader := material at: 'finalizeDeclarationImages'.
     rawDeclaration := declarationReader value: component value: terminalDeclaration keys value: declarationOwned.
     (rawDeclaration isKindOf: Dictionary) ifFalse: [component error: rawDeclaration asString].
     cacheEvidence := cacheEvidenceFor value: terminalDeclaration value: terminalReader value: rawDeclaration.
     enumDeclaration ifTrue: [
       enumEvidence := enumGuard value: component value:
         ((Array with: record with: material with: head with: rawDeclaration) copyWith: 'finalize_current').
       (enumEvidence isKindOf: Dictionary) ifFalse: [component error: enumEvidence asString]].
     messageDeclaration ifTrue: [
       messageEvidence := messageGuard value: component value:
         ((Array with: record with: material with: head with: rawDeclaration) copyWith: 'finalize_current').
       (messageEvidence isKindOf: Dictionary) ifFalse: [component error: messageEvidence asString].
       (rawDeclaration at: 'verify') value
         ifFalse: [component error: 'Message finalization terminal reference read changed complete declaration']].
     answer := Dictionary new at: 'profile' put: 'native_create_finalize_terminal_query_v3';
       at: 'actual' put: answer; at: 'read_cache_evidence' put: cacheEvidence;
       at: 'original_declaration_current_verified' put: (((declarationCapture at: 'images') at: 'verify') value);
       at: 'model_setters_called' put: 0; at: 'store_called' put: false;
       at: 'execution_redispatched' put: false; yourself
     . enumDeclaration ifTrue: [answer at: 'profile' put: 'native_create_finalize_terminal_query_v4';
       at: 'enum_definition_evidence' put: enumEvidence].
     messageDeclaration ifTrue: [answer at: 'profile' put: 'native_create_finalize_terminal_query_v5';
       at: 'message_owner_evidence' put: messageEvidence]
   ].
   (root at: 'encodeObservation') value: answer
 ] ifFalse: [
   (root includesKey: 'allocatorRetirementPending')
     ifTrue: [component error: 'Allocator scope already closing; query without replay'].
   (material at: 'historyClosed' ifAbsent: [false]) ifTrue: [component error: 'History already closing/closed; query without replay'].
   (((native at: 'verifyImages') value: (head at: 'afterNative')) and: [
     ((head at: 'afterSource') at: 'verify') value])
     ifFalse: [component error: 'Complete retained undo head changed before finalization'].
   declaration ifTrue: [
     rawDeclaration := declarationReader value: component
       value: (declarationOriginal keys, (head at: 'afterDeclaration') keys) value: declarationOwned.
     (rawDeclaration isKindOf: Dictionary) ifFalse: [component error: rawDeclaration asString].
     cacheEvidence := cacheEvidenceFor value: (head at: 'afterDeclaration') value: (head at: 'declarationImages') value: rawDeclaration.
     enumDeclaration ifTrue: [
       enumEvidence := enumGuard value: component value:
         ((Array with: record with: material with: head with: rawDeclaration) copyWith: 'finalize_current').
       (enumEvidence isKindOf: Dictionary) ifFalse: [component error: enumEvidence asString].
       (rawDeclaration at: 'verify') value
         ifFalse: [component error: 'Original Enum type/reference query changed CURRENT declaration']].
     messageDeclaration ifTrue: [
       messageEvidence := messageGuard value: component value:
         ((Array with: record with: material with: head with: rawDeclaration) copyWith: 'finalize_current').
       (messageEvidence isKindOf: Dictionary) ifFalse: [component error: messageEvidence asString].
       (rawDeclaration at: 'verify') value
         ifFalse: [component error: 'Original message role/type/reference query changed CURRENT declaration']].
     declarationDesired := (rawDeclaration at: 'snapshots') copy.
     declarationOriginal keysAndValuesDo: [:object :saved | declarationDesired at: object put: saved].
     declarationEvidence := Dictionary new at: 'profile' put: 'native_declaration_finalize_target_v1';
       at: 'original_before_binding' put: (imageBinding value: declarationOriginal value: (declarationCapture at: 'images') value: rawDeclaration);
       at: 'target' put: (Dictionary new at: 'profile' put: 'native_declaration_exact_target_v2';
         at: 'current' put: (rawDeclaration at: 'originalImage');
         at: 'original' put: ((rawDeclaration at: 'imageFor') value: declarationOriginal);
         at: 'expected' put: ((rawDeclaration at: 'imageFor') value: declarationDesired);
         at: 'current_schema' put: (rawDeclaration at: 'fieldDiagnostics') value;
         at: 'original_schema' put: ((rawDeclaration at: 'diagnosticsFor') value: declarationOriginal);
         at: 'expected_schema' put: ((rawDeclaration at: 'diagnosticsFor') value: declarationDesired);
         at: 'owner_ref' put: ((rawDeclaration at: 'tokens') at: component item);
         at: 'read_cache_evidence' put: cacheEvidence;
         at: 'created_model_ref' put: ((rawDeclaration at: 'tokens') at: modelObject);
         at: 'created_model_oid' put: originalModelOID; at: 'expected_model_present' put: false;
         at: 'same_original_objects_retained' put: true; yourself); yourself.
     enumDeclaration ifTrue: [declarationEvidence at: 'profile' put: 'native_enum_declaration_finalize_target_v1'.
       (declarationEvidence at: 'target') at: 'profile' put: 'native_enum_declaration_finalize_body_v1';
         at: 'definition_evidence' put: enumEvidence].
     messageDeclaration ifTrue: [declarationEvidence at: 'profile' put: 'native_message_declaration_finalize_target_v1'.
       (declarationEvidence at: 'target') at: 'profile' put: 'native_message_declaration_finalize_body_v1';
         at: 'message_evidence' put: messageEvidence].
     declarationPatch := (helpers at: 5) value: component
       value: (Array with: declarationDesired with: (rawDeclaration at: 'snapshots')) value: 'undo'.
     (declarationPatch isKindOf: Dictionary) ifFalse: [component error: declarationPatch asString]
   ].
   reachable := (helpers at: 2) value: component value: (Array with: sourceRoot with: #()).
   (reachable isKindOf: Dictionary) ifFalse: [component error: reachable asString].
   originals := source at: 'snapshots'.
   ((reachable at: 'snapshots') size = originals size and: [originals keys allSatisfy: [:object |
     (reachable at: 'snapshots') includesKey: object]])
     ifFalse: [component error: 'Reachable source must contain exactly original objects'].
   originals keysAndValuesDo: [:object :saved | | actual |
     actual := (reachable at: 'snapshots') at: object.
     object == sourceRoot ifTrue: [
       actual := Array with: actual first with: actual last copy. actual last at: slot put: originalHigh].
     (sameImage value: object value: saved value: actual)
       ifFalse: [component error: 'Original source differs outside audited allocator slot']].
   census := sourceRoot calculateHighestUsedGraphicalIdentifier.
   (census isInteger and: [census <= originalHigh and: [(reachable at: 'verify') value]])
     ifFalse: [component error: 'Complete source identifier census exceeds original allocator or mutated source'].
   mode = 'prepare' ifTrue: [
     stage := 'preparation'.
     raw := helpers first value: component value: ((head at: 'beforeNative') keys, (head at: 'afterNative') keys).
     (raw isKindOf: Dictionary) ifFalse: [component error: raw asString].
     currentSource := (helpers at: 2) value: component value: (Array with: sourceRoot with:
       (originals keys, ((head at: 'afterSource') at: 'snapshots') keys)).
     (currentSource isKindOf: Dictionary) ifFalse: [component error: currentSource asString].
     desired := (currentSource at: 'snapshots') copy.
     entry := desired at: sourceRoot. entry := Array with: entry first with: entry last copy.
     entry last at: slot put: originalHigh. desired at: sourceRoot put: entry.
     sourceEvidence := (helpers at: 6) value: component value: (Array with: sourceRoot with: originals
       with: ((head at: 'afterSource') at: 'snapshots') with: (currentSource at: 'snapshots') with: desired).
     (sourceEvidence isKindOf: Dictionary) ifFalse: [component error: sourceEvidence asString].
     version := (material at: 'finalizeVersion' ifAbsent: [0]) + 1. material at: 'finalizeVersion' put: version.
     prepared := Dictionary new at: 'head' put: head; at: 'owner' put: owner; at: 'result' put: resultId;
       at: 'signature' put: token, '/f', version printString; at: 'raw' put: raw;
       at: 'source' put: currentSource; at: 'desired' put: desired; at: 'slot' put: slot;
       at: 'originalHigh' put: originalHigh; at: 'currentHigh' put: currentHigh; at: 'census' put: census; yourself.
     material at: 'finalizePrepared' put: prepared.
     declaration ifTrue: [prepared at: 'rawDeclaration' put: rawDeclaration;
       at: 'declarationDesired' put: declarationDesired; at: 'declarationPatch' put: declarationPatch;
       at: 'declarationEvidence' put: declarationEvidence].
     namespace := Dictionary new at: 'profile' put: 'allocator_scope_retirement_plan_v1';
       at: 'scope' put: component getOID, '/Main'; at: 'generation' put: (root at: 'generation');
       at: 'native_token' put: token; at: 'result_change_id' put: resultId;
       at: 'blocks_writes_before_allocator_patch' put: true; at: 'requires_unpinned_retirement' put: true; yourself.
     prepared at: 'namespace' put: namespace.
     answer := Dictionary new at: 'profile' put: 'native_create_finalize_preparation_v2';
       at: 'native_token' put: token; at: 'owner_change_id' put: owner; at: 'result_change_id' put: resultId;
       at: 'signature' put: (prepared at: 'signature'); at: 'sequence' put: (head at: 'sequence');
       at: 'before' put: (head at: 'afterValues'); at: 'expected' put: (material at: 'beforeValues');
       at: 'graphical_current' put: (raw at: 'originalImage');
       at: 'graphical_original' put: ((raw at: 'imageFor') value: (native at: 'snapshots'));
       at: 'source_evidence' put: sourceEvidence;
       at: 'allocator' put: (Dictionary new at: 'field' put: 'highestUsedGraphicalIdentifier';
         at: 'slot' put: slot; at: 'before' put: currentHigh; at: 'expected' put: originalHigh;
         at: 'identifier_census' put: census; at: 'competing_histories' put: peers size;
         at: 'closes_redo_before_execution' put: true; yourself);
       at: 'namespace' put: namespace;
       at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'write_authorized' put: false; yourself.
     declaration ifTrue: [answer at: 'profile' put: 'native_create_finalize_preparation_v3';
       at: 'declaration_evidence' put: declarationEvidence].
     enumDeclaration ifTrue: [answer at: 'profile' put: 'native_create_finalize_preparation_v4'].
     messageDeclaration ifTrue: [answer at: 'profile' put: 'native_create_finalize_preparation_v5'].
     (root at: 'encodeObservation') value: answer
   ] ifFalse: [
     stage := 'guard'. prepared := material at: 'finalizePrepared'.
     ((prepared at: 'head') == head and: [(prepared at: 'owner') = owner and: [
       (prepared at: 'result') = resultId and: [(prepared at: 'signature') = signature and: [
       (prepared at: 'consumed' ifAbsent: [false]) not and: [
       ((prepared at: 'raw') at: 'verify') value and: [((prepared at: 'source') at: 'verify') value]]]]]])
       ifFalse: [component error: 'Exact unconsumed finalization preparation required'].
     declaration ifTrue: [
       rawDeclaration := prepared at: 'rawDeclaration'. declarationDesired := prepared at: 'declarationDesired'.
       declarationPatch := prepared at: 'declarationPatch'.
       ((rawDeclaration at: 'verify') value and: [(declarationPatch at: 'verifyBeforeApply') value])
         ifFalse: [component error: 'Complete unconsumed original declaration preparation changed']
     ].
     raw := prepared at: 'raw'. currentSource := prepared at: 'source'. desired := prepared at: 'desired'.
     proof := Dictionary new at: 'profile' put: 'native_create_finalize_execution_v1';
       at: 'native_token' put: token; at: 'head_change_id' put: owner; at: 'result_change_id' put: resultId;
       at: 'sequence' put: (head at: 'sequence'); at: 'phase' put: 'source_patch';
       at: 'source_primitives' put: 0; at: 'model_setters_called' put: 0;
       at: 'store_called' put: false; at: 'redo_closed' put: true; at: 'terminal_verified' put: false; yourself.
     declaration ifTrue: [proof at: 'profile' put: 'native_create_finalize_execution_v2';
       at: 'declaration_primitives' put: 0].
     enumDeclaration ifTrue: [proof at: 'profile' put: 'native_create_finalize_execution_v3'].
     messageDeclaration ifTrue: [proof at: 'profile' put: 'native_create_finalize_execution_v4'].
     material at: 'finalizeExecution' put: proof; at: 'historyClosed' put: true.
     retirement := Dictionary new at: 'profile' put: 'allocator_scope_retirement_v1';
       at: 'scope' put: component getOID, '/Main'; at: 'generation' put: (root at: 'generation');
       at: 'native_token' put: token; at: 'result_change_id' put: resultId;
       at: 'terminal_verified' put: false; yourself.
     root at: 'allocatorRetirementPending' put: retirement.
     prepared at: 'consumed' put: true. mutated := true. stage := 'source_patch'.
     declaration ifTrue: [
       stage := 'declaration_patch'. proof at: 'phase' put: stage.
       material at: 'finalizeDeclarationPatch' put: declarationPatch.
       [(declarationPatch at: 'execute') value] ensure: [proof at: 'declaration_primitives'
         put: ((declarationPatch at: 'progress') at: 'completed_primitives')].
       (((declarationCapture at: 'images') at: 'verify') value and: [
         (rawDeclaration at: 'verifyImages') value: declarationDesired])
         ifFalse: [component error: 'Complete initial declaration/cache/config baseline differs']
     ].
     stage := 'source_patch'. proof at: 'phase' put: stage.
     patch := (helpers at: 5) value: component value: (Array with: desired with: (currentSource at: 'snapshots')) value: 'undo'.
     (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
     material at: 'finalizePatch' put: patch.
     [(patch at: 'execute') value] ensure: [proof at: 'source_primitives' put: ((patch at: 'progress') at: 'completed_primitives')].
     ((source at: 'verify') value and: [(native at: 'verify') value and: [(raw at: 'verify') value]])
       ifFalse: [component error: 'Complete original native/source target differs'].
     root at: 'checkpoint' put: ((root at: 'copySource') value: sourceRoot); at: 'checkpointVersion' put: 2.
     actualSource := (helpers at: 2) value: component value: (Array with: sourceRoot with: desired keys).
     sourceEvidence := (helpers at: 6) value: component value: (Array with: sourceRoot with: originals
       with: ((head at: 'afterSource') at: 'snapshots') with: (currentSource at: 'snapshots') with: (actualSource at: 'snapshots')).
     proof at: 'phase' put: 'terminal'; at: 'terminal_verified' put: true.
     retirement at: 'terminal_verified' put: true.
     namespace := (prepared at: 'namespace') copy.
     namespace at: 'profile' put: 'allocator_scope_retirement_actual_v1';
       at: 'retirement_pending' put: true; at: 'ordinary_writes_blocked' put: true.
     answer := Dictionary new at: 'profile' put: 'native_create_finalize_actual_v2'; at: 'execution' put: proof;
       at: 'observation' put: (material at: 'beforeValues'); at: 'graphical_current' put: (raw at: 'originalImage');
       at: 'graphical_actual' put: (raw at: 'diff') value; at: 'source_actual_evidence' put: sourceEvidence;
       at: 'original_native_verified' put: true; at: 'original_source_verified' put: true;
       at: 'original_order_aliases_verified' put: true; at: 'material_retained' put: true;
       at: 'namespace' put: namespace; yourself.
     declaration ifTrue: [
       (((declarationCapture at: 'images') at: 'verify') value and: [
         (rawDeclaration at: 'verifyImages') value: declarationDesired])
         ifFalse: [component error: 'Original declaration baseline changed during final source closure'].
       answer at: 'profile' put: 'native_create_finalize_actual_v3';
         at: 'declaration_current' put: (rawDeclaration at: 'originalImage');
         at: 'declaration_actual' put: (rawDeclaration at: 'diff') value;
         at: 'declaration_schema' put: (rawDeclaration at: 'fieldDiagnostics') value;
         at: 'declaration_target_verified' put: true; at: 'created_model_original_retained' put: true;
         at: 'original_declaration_verified' put: true.
       material at: 'finalizeDeclarationTarget' put: declarationDesired;
         at: 'finalizeDeclarationImages' put: rawDeclaration
     ].
     enumDeclaration ifTrue: [
       enumActualEvidence := enumGuard value: component value:
         ((Array with: record with: material with: head with: rawDeclaration) copyWith: 'finalize_target').
       (enumActualEvidence isKindOf: Dictionary) ifFalse: [component error: enumActualEvidence asString].
       ((rawDeclaration at: 'verifyImages') value: declarationDesired)
         ifFalse: [component error: 'Final Enum type/reference query changed the exact original declaration target'].
       answer at: 'profile' put: 'native_create_finalize_actual_v4';
         at: 'enum_definition_evidence' put: enumActualEvidence].
     messageDeclaration ifTrue: [
       messageActualEvidence := messageGuard value: component value:
         ((Array with: record with: material with: head with: rawDeclaration) copyWith: 'finalize_target').
       (messageActualEvidence isKindOf: Dictionary) ifFalse: [component error: messageActualEvidence asString].
       ((rawDeclaration at: 'verifyImages') value: declarationDesired)
         ifFalse: [component error: 'Final message role/type/reference query changed the original declaration target'].
       answer at: 'profile' put: 'native_create_finalize_actual_v5';
         at: 'message_owner_evidence' put: messageActualEvidence.
       material at: 'finalizeMessageGuard' put: messageGuard].
     material at: 'finalizeActual' put: answer.
     (root at: 'encodeObservation') value: answer
   ]
 ]
 ] ifFail: [:error | mutated ifTrue: ['BDE_CREATE_FINALIZE_ERROR: ', stage, ': ', error messageText]
   ifFalse: ['BDE_CREATE_FINALIZE_CONFLICT: ', stage, ': ', error messageText]]
]]
