"Fixed actual create capture. This does not authorize inverse execution.
 Native/source images and actual factory resources stay bound to the record."
[:helpers | [:component :context |
 component handleExceptionsIn: [
 | token mode record root diagram parent material native source sameOrder sameMap
   models modelRefs beforeOrder beforeDrawing orderRecord orderBefore drawingBefore
   created api afterOrder afterDrawing nativeAfter sourceAfter combinedNative actual
   orderAfter drawingAfter originalRefs actualRefs addedRefs removedRefs receipt allocator
   sourceEntry names slot currentModels createdModel createdDefinition modelOID declaration
   declarationBefore declarationAfter declarationImages declarationSnapshots declarationActual declarationReceipt
   declarationLinks declarationRefs enumDeclaration enumReferences enumBinding messageDeclaration messageReferences ownerPointer ownerFields ownerPointerRef cacheRead cacheCurrent cacheResult |
 (helpers isArray and: [(#(4 5 6 7) includes: helpers size) and: [context isArray and: [context size = 2]]])
   ifFalse: [component error: 'Fixed create helpers and token/action required'].
 token := context first. mode := context last.
 (#('prepare' 'inspect_prepared' 'capture_attached' 'reconcile_attached' 'inspect_attached' 'inspect_original' 'inspect_attached_read_cache') includes: mode)
   ifFalse: [component error: 'Unknown fixed creation material action'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'operation') = 'create_block' and: [(record at: 'diagramName') = 'Main' and: [
   (record at: 'targets') isEmpty]]]])
   ifFalse: [component error: 'Exact complete ordinary Main create record required'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 diagram := record at: 'diagram'. parent := (record at: 'creationParent') contents.
 ((root at: 'owner') == component item and: [(root at: 'diagram') == diagram and: [
   (root at: 'specification') == diagram specification and: [diagram isStateMachineDiagram not and: [
   parent == diagram topGraphicalHierarchy contents]]]])
   ifFalse: [component error: 'Exact creation root/parent expired'].
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
 sameMap := [:left :right | left size = right size and: [left keys allSatisfy: [:key |
   (right keys anySatisfy: [:peer | peer == key]) and: [(left at: key) == (right at: key)]]]].
 models := component getAllVariables, component getImplementationCasts.
 modelRefs := models collect: [:model | model element].
 modelOID := [:model | | out digits |
   out := WriteStream on: String new. out nextPutAll: 'm_'. digits := '0123456789abcdef'.
   model element xmlOID do: [:byte | out nextPut: (digits at: (byte // 16) + 1);
     nextPut: (digits at: (byte \\ 16) + 1)]. out contents].
 declaration := helpers size >= 5.
 enumDeclaration := helpers size >= 6 and: [(helpers at: 6) = 'enum_body_v1'].
 messageDeclaration := helpers size >= 6 and: [(helpers at: 6) = 'message_body_v1'].
 (helpers size >= 6 and: [(enumDeclaration or: [messageDeclaration]) not])
   ifTrue: [component error: 'Exact typed declaration helper profile required'].
 cacheRead := mode = 'inspect_attached_read_cache'.
 ((helpers size = 7) = cacheRead and: [cacheRead not or: [messageDeclaration]])
   ifFalse: [component error: 'Separate original Module message cache-read helper required'].
 (declaration and: [enumDeclaration not and: [messageDeclaration not and: [(record at: 'args') first ~= 'variable']]])
   ifTrue: [component error: 'Declaration material v2 currently requires variable factory'].
 (messageDeclaration and: [(#('receive_message' 'send_message' 'send_receive_message') includes: (record at: 'args') first) not])
   ifTrue: [component error: 'Declaration material v4 requires primitive-message factory'].
 (enumDeclaration and: [(record at: 'args') first ~= 'enumeration' or: [(record includesKey: 'enumFolder')]])
   ifTrue: [component error: 'Declaration material v3 requires existing enum factory'].
 mode = 'prepare' ifTrue: [
   (record at: 'state') = 'prepared' ifFalse: [component error: 'Creation capture must precede dispatch'].
   (record includesKey: 'createMaterial') ifTrue: [component error: 'Creation capture cannot replay'].
   native := helpers first value: component value: (Array with: diagram topGraphicalHierarchy).
   (native isKindOf: Dictionary) ifFalse: [component error: native asString].
   source := (helpers at: 2) value: component value:
     (Array with: diagram specification specSourceInternalOrNil with: #()).
   (source isKindOf: Dictionary) ifFalse: [component error: source asString].
   beforeOrder := parent children asArray copy. beforeDrawing := parent sortedChildren asArray copy.
   orderRecord := record copy.
   orderRecord at: 'orderParent' put: parent; at: 'orderCollection' put: parent children;
     at: 'orderToken' put: token; at: 'orderIds' put: IdentityDictionary new;
     at: 'encodeObservation' put: (root at: 'encodeObservation').
   orderBefore := (helpers at: 3) value: orderRecord value: beforeOrder.
   drawingBefore := ((helpers at: 4) value: component value: orderRecord value: beforeDrawing) value: true.
   declaration ifTrue: [
     declarationBefore := (helpers at: 5) value: component value: modelRefs asArray.
     (declarationBefore isKindOf: Dictionary) ifFalse: [component error: declarationBefore asString].
     (((declarationBefore at: 'images') at: 'verify') value)
       ifFalse: [component error: 'Original declaration body changed during prepare']
   ].
   material := Dictionary new at: 'profile' put: 'native_create_material_v1';
     at: 'token' put: token; at: 'record' put: record; at: 'root' put: root;
     at: 'generation' put: (root at: 'generation'); at: 'diagram' put: diagram;
     at: 'parent' put: parent; at: 'collection' put: parent children;
     at: 'nativeBefore' put: native; at: 'sourceBefore' put: source;
     at: 'beforeOrder' put: beforeOrder; at: 'beforeDrawing' put: beforeDrawing;
     at: 'beforeValues' put: ((root at: 'copyObservation') value: (root at: 'observationValues'));
     at: 'beforeModelRefs' put: modelRefs asArray copy;
     at: 'beforeModelOIDs' put: (models collect: [:model | modelOID value: model]) asArray;
     at: 'ids' put: (root at: 'ids'); at: 'beforeIds' put: (root at: 'ids') copy;
     at: 'beforeCounter' put: (root at: 'counter'); at: 'orderRecord' put: orderRecord;
     at: 'parentBefore' put: (orderBefore at: 'value'); at: 'drawingBefore' put: (drawingBefore at: 'value');
     at: 'phase' put: 'prepared'; yourself.
   declaration ifTrue: [material at: 'declarationBefore' put: declarationBefore;
     at: 'enumDeclaration' put: enumDeclaration; at: 'messageDeclaration' put: messageDeclaration].
   record at: 'createMaterial' put: material
 ] ifFalse: [material := record at: 'createMaterial' ifAbsent: [component error: 'Original creation material missing']].
 native := material at: 'nativeBefore'. source := material at: 'sourceBefore'.
 declaration ~= (material includesKey: 'declarationBefore')
   ifTrue: [component error: 'Exact retained declaration material profile required'].
 enumDeclaration ~= (material at: 'enumDeclaration' ifAbsent: [false])
   ifTrue: [component error: 'Original enum declaration profile cannot change'].
 messageDeclaration ~= (material at: 'messageDeclaration' ifAbsent: [false])
   ifTrue: [component error: 'Original message declaration profile cannot change'].
 declaration ifTrue: [declarationBefore := material at: 'declarationBefore'].
 orderRecord := material at: 'orderRecord'.
 ((material at: 'record') == record and: [(material at: 'root') == root and: [
   (material at: 'generation') = (root at: 'generation') and: [(material at: 'diagram') == diagram and: [
   (material at: 'parent') == parent and: [(material at: 'collection') == parent children and: [
   (material at: 'ids') == (root at: 'ids') and: [
   (source at: 'sourceRoot') == diagram specification specSourceInternalOrNil]]]]]]])
   ifFalse: [component error: 'Creation owner/root/source/parent/generation binding expired'].
 (#('prepare' 'inspect_prepared') includes: mode) ifTrue: [
   declaration ifTrue: [(((declarationBefore at: 'images') at: 'verify') value)
     ifFalse: [component error: 'Original prepared declaration body/configuration changed']].
   ((record at: 'state') = 'prepared' and: [(material at: 'phase') = 'prepared' and: [
   (native at: 'verify') value and: [(source at: 'verify') value and: [
   (sameOrder value: parent children value: (material at: 'beforeOrder')) and: [
   (sameOrder value: parent sortedChildren value: (material at: 'beforeDrawing')) and: [
   (sameOrder value: modelRefs value: (material at: 'beforeModelRefs')) and: [
   (sameMap value: (root at: 'ids') value: (material at: 'beforeIds')) and: [
   (root at: 'counter') = (material at: 'beforeCounter')]]]]]]]])
     ifFalse: [component error: 'Complete prepared creation CURRENT changed']
 ].
 mode = 'capture_attached' ifTrue: [
   ((record at: 'state') = 'applied' and: [(material at: 'phase') = 'prepared'])
     ifFalse: [component error: 'Capture actual factory result once after application'].
   api := record at: 'created'. created := api diagramElement.
   afterOrder := parent children asArray copy. afterDrawing := parent sortedChildren asArray copy.
   (created manager == parent and: [(afterOrder select: [:object | object == created]) size = 1 and: [
     afterOrder size = ((material at: 'beforeOrder') size + 1) and: [
     (sameOrder value: (afterOrder reject: [:object | object == created]) value: (material at: 'beforeOrder')) and: [
     afterDrawing size = ((material at: 'beforeDrawing') size + 1) and: [
     sameOrder value: (afterDrawing reject: [:object | object == created]) value: (material at: 'beforeDrawing')]]]]])
     ifFalse: [component error: 'Factory result does not explain complete physical/drawing insertion'].
   nativeAfter := helpers first value: component value: (Array with: diagram topGraphicalHierarchy).
   (nativeAfter isKindOf: Dictionary) ifFalse: [component error: nativeAfter asString].
   sourceAfter := (helpers at: 2) value: component value:
     (Array with: diagram specification specSourceInternalOrNil with: (source at: 'snapshots') keys).
   (sourceAfter isKindOf: Dictionary) ifFalse: [component error: sourceAfter asString].
   combinedNative := (nativeAfter at: 'captureImages') value:
     ((native at: 'snapshots') keys, (nativeAfter at: 'snapshots') keys).
   actual := (native at: 'diff') value.
   orderAfter := (helpers at: 3) value: orderRecord value: afterOrder.
   drawingAfter := ((helpers at: 4) value: component value: orderRecord value: afterDrawing) value: true.
   currentModels := component getAllVariables, component getImplementationCasts.
   originalRefs := material at: 'beforeModelRefs'. actualRefs := currentModels collect: [:model | model element].
   addedRefs := actualRefs reject: [:model | originalRefs anySatisfy: [:original | original == model]].
   removedRefs := originalRefs reject: [:model | actualRefs anySatisfy: [:current | current == model]].
   removedRefs isEmpty ifFalse: [component error: 'Creation removed a preexisting model declaration'].
   createdModel := record at: 'createdModel' ifAbsent: [nil].
   createdDefinition := record at: 'createdDefinition' ifAbsent: [nil].
   (createdModel isNil ifTrue: [addedRefs isEmpty] ifFalse: [addedRefs size = 1 and: [addedRefs first == createdModel element]])
     ifFalse: [component error: 'Actual declaration delta is not the bound original factory result'].
   declaration ifTrue: [
     declarationAfter := (helpers at: 5) value: component value: actualRefs asArray.
     (declarationAfter isKindOf: Dictionary) ifFalse: [component error: declarationAfter asString].
     enumDeclaration ifTrue: [
       ((declarationBefore at: 'definition') == (declarationAfter at: 'definition') and: [
         (declarationBefore at: 'definitionOID') = (declarationAfter at: 'definitionOID') and: [
         (declarationBefore at: 'generation') = (declarationAfter at: 'generation')]])
         ifFalse: [component error: 'Original selected enum definition identity changed']].
     enumDeclaration ifTrue: [
       (createdModel notNil and: [createdModel getModelType = 'enum' and: [
         createdModel getRepresentedClass item == (declarationBefore at: 'definition')]])
         ifFalse: [component error: 'Actual enum scalar type differs from the original selected definition']].
     (declarationAfter at: 'owned') do: [:object |
       ((declarationBefore at: 'owned') anySatisfy: [:original | original == object])
         ifFalse: [(declarationBefore at: 'owned') add: object]].
     declarationImages := declarationBefore at: 'images'.
     declarationActual := (declarationImages at: 'diff') value.
     declarationSnapshots := (declarationImages at: 'captureImages') value:
       ((declarationImages at: 'snapshots') keys, ((declarationAfter at: 'images') at: 'snapshots') keys).
     (((declarationImages at: 'verifyAfter') value) and: [
       (declarationImages at: 'verifyImages') value: declarationSnapshots])
       ifFalse: [component error: 'Actual declaration body changed during post-image capture'].
     material at: 'declarationAfter' put: declarationAfter;
       at: 'declarationAfterSnapshots' put: declarationSnapshots;
       at: 'declarationActual' put: declarationActual
   ].
   (((native at: 'verifyAfter') value) and: [((nativeAfter at: 'verifyImages') value: combinedNative)
     and: [(sourceAfter at: 'verify') value]])
     ifFalse: [component error: 'Actual native/source changed during creation capture'].
   material at: 'createdAPI' put: api; at: 'created' put: created;
     at: 'createdModel' put: createdModel; at: 'createdDefinition' put: createdDefinition;
     at: 'nativeAfter' put: nativeAfter; at: 'combinedNativeAfter' put: combinedNative;
     at: 'sourceAfter' put: sourceAfter; at: 'graphicalActual' put: actual;
     at: 'afterOrder' put: afterOrder; at: 'afterDrawing' put: afterDrawing;
     at: 'parentAfter' put: (orderAfter at: 'value'); at: 'drawingAfter' put: (drawingAfter at: 'value');
     at: 'afterModelRefs' put: actualRefs asArray copy;
     at: 'afterModelOIDs' put: (currentModels collect: [:model | modelOID value: model]) asArray;
     at: 'afterIds' put: (root at: 'ids') copy; at: 'afterCounter' put: (root at: 'counter');
     at: 'afterValues' put: ((root at: 'copyObservation') value: (root at: 'observationValues'));
     at: 'phase' put: 'attached'
 ].
 (mode = 'reconcile_attached' and: [(material at: 'phase') = 'attached'])
   ifTrue: [mode := 'inspect_attached'].
 mode = 'reconcile_attached' ifTrue: [
   "Complete only the retained metadata from the known post-image/OID failure.
    Do not repeat capture, a model factory, setter, store or normalization."
   ((record at: 'state') = 'applied' and: [(material at: 'phase') = 'prepared' and: [
     (#('createdAPI' 'created' 'createdModel' 'createdDefinition' 'nativeAfter' 'combinedNativeAfter'
       'sourceAfter' 'graphicalActual' 'afterOrder' 'afterDrawing' 'parentAfter' 'drawingAfter'
       'afterModelRefs') allSatisfy: [:field | material includesKey: field]) and: [
     (material includesKey: 'afterModelOIDs') not]]])
     ifFalse: [component error: 'Exact incomplete actual creation metadata required'].
   api := material at: 'createdAPI'. created := material at: 'created'.
   ((record at: 'created') == api and: [api diagramElement == created and: [
     created manager == parent and: [
     (sameOrder value: parent children value: (material at: 'afterOrder')) and: [
     (sameOrder value: parent sortedChildren value: (material at: 'afterDrawing')) and: [
     ((native at: 'verifyImages') value: (material at: 'combinedNativeAfter')) and: [
     ((material at: 'sourceAfter') at: 'verify') value and: [
     (sameOrder value: modelRefs value: (material at: 'afterModelRefs')) and: [
     (sameMap value: (root at: 'ids') value: (material at: 'beforeIds')) and: [
     (root at: 'counter') = (material at: 'beforeCounter')]]]]]]]]])
     ifFalse: [component error: 'Actual retained creation head changed; metadata recovery refused'].
   createdModel := record at: 'createdModel' ifAbsent: [nil].
   createdModel == (material at: 'createdModel')
     ifFalse: [component error: 'Original factory declaration binding changed'].
   material at: 'afterModelOIDs' put: (models collect: [:model | modelOID value: model]) asArray;
     at: 'afterIds' put: (root at: 'ids') copy; at: 'afterCounter' put: (root at: 'counter');
     at: 'afterValues' put: ((root at: 'copyObservation') value: (root at: 'observationValues'));
     at: 'phase' put: 'attached'.
   mode := 'inspect_attached'
 ].
 (#('inspect_attached' 'inspect_attached_read_cache') includes: mode) ifTrue: [
   (declaration and: [cacheRead not]) ifTrue: [
     (((declarationBefore at: 'images') at: 'verifyImages') value: (material at: 'declarationAfterSnapshots'))
       ifFalse: [component error: 'Actual retained declaration body/configuration changed']].
   cacheRead ifTrue: [
     declarationImages := declarationBefore at: 'images'.
     cacheCurrent := (declarationImages at: 'captureImages') value: (material at: 'declarationAfterSnapshots') keys.
     cacheResult := (helpers at: 7) value: component value: (Array
       with: (material at: 'declarationAfterSnapshots') with: cacheCurrent with: component item with: 'module_message_cache_v1').
     (cacheResult isKindOf: Dictionary) ifFalse: [component error: cacheResult asString].
     ((cacheResult at: 'non_cache_original_state_unchanged') and: [
       ((declarationImages at: 'verifyImages') value: cacheCurrent)])
       ifFalse: [component error: 'Complete live Module declaration cache-read guard refused']
   ].
   ((record at: 'state') = 'applied' and: [(material at: 'phase') = 'attached' and: [
   (record at: 'created') == (material at: 'createdAPI') and: [
   (material at: 'createdAPI') diagramElement == (material at: 'created') and: [
   ((native at: 'verifyImages') value: (material at: 'combinedNativeAfter')) and: [
   ((material at: 'sourceAfter') at: 'verify') value]]]]])
     ifFalse: [component error: 'Actual retained create head changed']
 ].
 allocator := OrderedCollection new.
 names := (source at: 'sourceRoot') class allInstVarNames collect: [:name | name asString].
 slot := names indexOf: 'highestUsedGraphicalIdentifier'.
 slot > 0 ifTrue: [
   sourceEntry := (source at: 'snapshots') at: (source at: 'sourceRoot').
   allocator add: (Dictionary new at: 'field' put: 'highestUsedGraphicalIdentifier';
     at: 'before' put: (sourceEntry last at: slot);
     at: 'after' put: ((material includesKey: 'sourceAfter')
       ifTrue: [(((material at: 'sourceAfter') at: 'snapshots') at: (source at: 'sourceRoot')) last at: slot]
       ifFalse: [nil]); at: 'rewind_authorized' put: false; yourself)
 ].
 receipt := Dictionary new at: 'profile' put: 'native_create_material_v1';
   at: 'native_token' put: token; at: 'component_oid' put: component getOID;
   at: 'diagram' put: 'Main'; at: 'operation' put: 'create_block';
   at: 'kind' put: (record at: 'args') first; at: 'phase' put: (material at: 'phase');
   at: 'before' put: (material at: 'beforeValues'); at: 'after' put: (material at: 'afterValues' ifAbsent: [nil]);
   at: 'parent_before' put: (material at: 'parentBefore'); at: 'drawing_before' put: (material at: 'drawingBefore');
   at: 'parent_after' put: (material at: 'parentAfter' ifAbsent: [nil]); at: 'drawing_after' put: (material at: 'drawingAfter' ifAbsent: [nil]);
   at: 'graphical_before' put: (native at: 'originalImage'); at: 'graphical_actual' put: (material at: 'graphicalActual' ifAbsent: [nil]);
   at: 'created_native_ref' put: ((material includesKey: 'created') ifTrue: [(orderRecord at: 'orderIds') at: (material at: 'created')] ifFalse: [nil]);
   at: 'created_model_oid' put: ((material at: 'createdModel' ifAbsent: [nil]) isNil ifTrue: [nil] ifFalse: [modelOID value: (material at: 'createdModel')]);
   at: 'created_definition_oid' put: ((material at: 'createdDefinition' ifAbsent: [nil]) isNil ifTrue: [nil] ifFalse: [(material at: 'createdDefinition') getOID]);
   at: 'model_oids_before' put: (material at: 'beforeModelOIDs'); at: 'model_oids_after' put: (material at: 'afterModelOIDs' ifAbsent: [nil]);
   at: 'original_native_objects' put: (native at: 'snapshots') size; at: 'original_source_objects' put: (source at: 'snapshots') size;
   at: 'actual_native_objects' put: ((material includesKey: 'combinedNativeAfter') ifTrue: [(material at: 'combinedNativeAfter') size] ifFalse: [nil]);
   at: 'actual_source_objects' put: ((material includesKey: 'sourceAfter') ifTrue: [((material at: 'sourceAfter') at: 'snapshots') size] ifFalse: [nil]);
   at: 'source_root_preserved' put: true; at: 'created_original_retained' put: (material includesKey: 'created');
   at: 'allocator_observations' put: allocator asArray; at: 'model_setters_called' put: 0;
   at: 'store_called' put: false; at: 'write_authorized' put: false;
   at: 'managed_inverse_enabled' put: false; at: 'declaration_body_restore_verified' put: false; yourself.
 declaration ifTrue: [
   declarationImages := declarationBefore at: 'images'.
   declarationLinks := [:capture :bindings | ((capture at: 'links') collect: [:link |
     Array with: link first with: (link at: 2) with: (bindings at: link last)]) asArray].
   declarationRefs := [:capture :bindings | ((capture at: 'roots') collect: [:object |
     Dictionary new at: 'class' put: object class name asString; at: 'ref' put: (bindings at: object); yourself]) asArray].
   declarationReceipt := Dictionary new at: 'profile' put: 'native_declaration_material_v1';
     at: 'native_token' put: token; at: 'component_oid' put: component getOID; at: 'phase' put: (material at: 'phase');
     at: 'before' put: (declarationImages at: 'originalImage');
     at: 'before_schema' put: (declarationImages at: 'fieldDiagnostics') value;
     at: 'roots_before' put: (declarationRefs value: declarationBefore value: (declarationImages at: 'tokens'));
     at: 'configuration_links_before' put: (declarationLinks value: declarationBefore value: (declarationImages at: 'tokens'));
     at: 'owner_ref' put: ((declarationImages at: 'tokens') at: component item);
     at: 'after' put: nil; at: 'after_schema' put: nil; at: 'roots_after' put: nil;
     at: 'configuration_links_after' put: nil; at: 'actual_diff' put: nil; at: 'created_model_ref' put: nil;
     at: 'foreign_database_boundaries' put: true; at: 'same_original_objects_retained' put: true;
     at: 'inverse_authorized' put: false; at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
   (material at: 'phase') = 'attached' ifTrue: [
     declarationAfter := material at: 'declarationAfter'. declarationSnapshots := material at: 'declarationAfterSnapshots'.
     declarationReceipt at: 'after' put: ((declarationImages at: 'imageFor') value: declarationSnapshots);
       at: 'after_schema' put: ((declarationImages at: 'diagnosticsFor') value: declarationSnapshots);
       at: 'actual_diff' put: (material at: 'declarationActual').
     "imageFor uses the retained shared post-image token namespace."
     declarationImages := material at: 'declarationBefore'. declarationImages := declarationImages at: 'images'.
     declarationReceipt at: 'roots_after' put: ((declarationAfter at: 'roots') collect: [:object |
       | binding |
       binding := ((declarationImages at: 'imageFor') value: (IdentityDictionary new at: object put: (declarationSnapshots at: object); yourself)) at: 'objects'.
       Dictionary new at: 'class' put: object class name asString; at: 'ref' put: (binding first at: 'ref'); yourself]) asArray;
       at: 'configuration_links_after' put: ((declarationAfter at: 'links') collect: [:link |
         | binding | binding := ((declarationImages at: 'imageFor') value:
           (IdentityDictionary new at: link last put: (declarationSnapshots at: link last); yourself)) at: 'objects'.
         Array with: link first with: (link at: 2) with: (binding first at: 'ref')]) asArray.
     declarationReceipt at: 'created_model_ref' put:
       ((((declarationImages at: 'imageFor') value: (IdentityDictionary new
         at: (material at: 'createdModel') element put: (declarationSnapshots at: (material at: 'createdModel') element); yourself)) at: 'objects') first at: 'ref')
   ].
   enumDeclaration ifTrue: [
     declarationReceipt at: 'profile' put: 'native_enum_declaration_material_v1';
       at: 'generation' put: (declarationBefore at: 'generation');
       at: 'definition_oid' put: (declarationBefore at: 'definitionOID');
       at: 'definition_path' put: (declarationBefore at: 'definitionPath');
       at: 'definition_ref' put: ((declarationImages at: 'tokens') at: (declarationBefore at: 'definition'));
       at: 'enumeration_ref' put: ((declarationImages at: 'tokens') at: (declarationBefore at: 'enumeration'));
       at: 'definition_references_before' put: (declarationBefore at: 'definitionReferences');
       at: 'definition_references_after' put: ((material at: 'phase') = 'attached'
         ifTrue: [(material at: 'declarationAfter') at: 'definitionReferences'] ifFalse: [nil]).
     enumReferences := (declarationBefore at: 'definition') dbObject readReferences.
     enumReferences isError ifTrue: [component error: 'Selected enum CURRENT references failed'].
     enumReferences := enumReferences isReferencedBys.
     enumReferences size > 4096 ifTrue: [component error: 'Selected enum reference bound exceeded'].
     enumReferences := (enumReferences collect: [:key | Array with: key globalIdString with: key className])
       asSortedCollection: [:a :b | a first = b first ifTrue: [a last < b last] ifFalse: [a first < b first]].
     enumReferences asArray = ((material at: 'phase') = 'attached'
       ifTrue: [(material at: 'declarationAfter') at: 'definitionReferences']
       ifFalse: [declarationBefore at: 'definitionReferences'])
       ifFalse: [component error: 'Original selected enum reference set changed']
   ].
   messageDeclaration ifTrue: [
     declarationReceipt at: 'profile' put: 'native_message_declaration_material_v1';
       at: 'generation' put: (declarationBefore at: 'generation'); at: 'kind' put: (declarationBefore at: 'kind');
       at: 'request_name' put: (declarationBefore at: 'requestName'); at: 'model_type' put: (declarationBefore at: 'modelType');
       at: 'message_scope' put: (declarationBefore at: 'messageScope');
       at: 'model_refs_before' put: ((declarationBefore at: 'models') collect: [:model |
         (declarationImages at: 'tokens') at: model]);
       at: 'model_refs_after' put: nil;
       at: 'owner_references_before' put: (declarationBefore at: 'ownerReferences');
       at: 'owner_database_record_references_before' put: (declarationBefore at: 'ownerDatabaseReferences');
       at: 'owner_references_after' put: nil; at: 'owner_database_record_references_after' put: nil.
     (material at: 'phase') = 'attached' ifTrue: [
       declarationReceipt at: 'model_refs_after' put: ((declarationAfter at: 'models') collect: [:model |
         | binding | binding := ((declarationImages at: 'imageFor') value:
           (IdentityDictionary new at: model put: (declarationSnapshots at: model); yourself)) at: 'objects'.
         binding first at: 'ref']);
         at: 'owner_references_after' put: (declarationAfter at: 'ownerReferences');
         at: 'owner_database_record_references_after' put: (declarationAfter at: 'ownerDatabaseReferences').
       createdModel := (material at: 'createdModel') element.
       ownerFields := (createdModel class allInstVarNames collect: [:name | name asString]) asArray.
       slot := ownerFields indexOf: 'owner'. slot > 0 ifFalse: [component error: 'Original message owner storage unavailable'].
       ownerPointer := createdModel instVarAt: slot.
       (ownerPointer class name asString = 'DBProxy' and: [ownerPointer className = 'SGModule' and: [
         ownerPointer globalIdString = component getOID and: [
         (ownerPointer getObjectIfUndefined: [component error: 'Original message Module owner unresolved']) == component item]]])
         ifFalse: [component error: 'Actual message owner proxy does not resolve to the exact original Module'].
       ownerPointerRef := ((((declarationImages at: 'imageFor') value: (IdentityDictionary new
         at: ownerPointer put: (declarationSnapshots at: ownerPointer); yourself)) at: 'objects') first at: 'ref').
       declarationReceipt at: 'created_owner_binding' put: (Dictionary new
         at: 'model_ref' put: (declarationReceipt at: 'created_model_ref');
         at: 'pointer_ref' put: ownerPointerRef;
         at: 'pointer_class' put: ownerPointer class name asString;
         at: 'database_oid' put: ownerPointer globalIdString; at: 'database_class' put: ownerPointer className;
         at: 'resolved_owner_ref' put: (declarationReceipt at: 'owner_ref');
         at: 'same_original_owner' put: true; yourself)
     ].
     messageReferences := (declarationBefore at: 'referenceRows') value: component item dbObject readReferences.
     messageReferences = ((material at: 'phase') = 'attached'
       ifTrue: [declarationAfter at: 'ownerReferences'] ifFalse: [declarationBefore at: 'ownerReferences'])
       ifFalse: [component error: 'Complete current message owner references differ'].
     messageReferences := (declarationBefore at: 'referenceRows') value: component item dbObject readIsReferencedByOnly.
     messageReferences = ((material at: 'phase') = 'attached'
       ifTrue: [declarationAfter at: 'ownerDatabaseReferences'] ifFalse: [declarationBefore at: 'ownerDatabaseReferences'])
       ifFalse: [component error: 'Complete current message owner database references differ']
   ].
   receipt at: 'profile' put: (messageDeclaration ifTrue: ['native_create_material_v4'] ifFalse: [enumDeclaration ifTrue: ['native_create_material_v3'] ifFalse: ['native_create_material_v2']]);
     at: 'declaration_material' put: declarationReceipt
 ].
 mode = 'inspect_original' ifTrue: [
   (#('reverted' 'restore_mismatch') includes: (record at: 'state')) ifFalse: [component error: 'Original inspection requires a separate inverse terminal'].
   receipt at: 'native_original_verified' put: (native at: 'verify') value;
     at: 'source_original_verified' put: (source at: 'verify') value;
     at: 'physical_original_verified' put: (sameOrder value: parent children value: (material at: 'beforeOrder'));
     at: 'drawing_original_verified' put: (sameOrder value: parent sortedChildren value: (material at: 'beforeDrawing'));
     at: 'model_identity_order_original_verified' put: (sameOrder value: modelRefs value: (material at: 'beforeModelRefs'))
 ].
 (root at: 'encodeObservation') value: receipt
 ] ifFail: [:error | 'BDE_CREATE_MATERIAL_ERROR: ', error messageText]
]]
