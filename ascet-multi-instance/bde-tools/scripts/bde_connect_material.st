"Fixed insertion material capture. All object references originate in the
 prepared native request or its actual factory result. This block performs
 no model setter, store, factory, normalization or inverse dispatch."
[:helpers | [:component :context |
 component handleExceptionsIn: [
 | token mode record root diagram parent material sameOrder sameMap snapshotPin
   pinMatches sourcePin targetPin sourcePoint targetPoint originalOrder originalDrawing
   native source orderRecord orderBefore drawingBefore receipt originalSourceMembers
   edge api afterOrder afterDrawing sourceAfter nativeAfter orderAfter drawingAfter
   endpoints edgeRecord retained anchors boundaries detachedGuard answer combinedNativeAfter
   actualValues actualEncoded alias reservations graphicalActual referenceProfile referenceRows
   referenceRead referenceOwner referenceDBObject referenceBefore referenceAfter referenceReceipt |
 (helpers isArray and: [helpers size = 5 and: [context isArray and: [context size = 3]]])
   ifFalse: [component error: 'Fixed connect material helpers and token/mode required'].
 token := context first. mode := context at: 2. referenceProfile := context last.
 (#('none' 'module_inbound_v1') includes: referenceProfile)
   ifFalse: [component error: 'Unknown fixed Module inbound reference profile'].
 (#('prepare' 'inspect_prepared' 'capture_attached' 'inspect_attached' 'inspect_detached' 'inspect_original') includes: mode)
   ifFalse: [component error: 'Unknown fixed connect material command'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'diagramName') = 'Main' and: [(record at: 'operation') = 'connect_data']]])
   ifFalse: [component error: 'Exact prepared ordinary Main connection required'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 diagram := record at: 'diagram'. parent := diagram topGraphicalHierarchy contents.
 ((root at: 'owner') == component item and: [(root at: 'diagram') == diagram and: [
   (root at: 'specification') == diagram specification and: [diagram isStateMachineDiagram not]]])
   ifFalse: [component error: 'Original connect runtime scope expired'].
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
 sameMap := [:left :right | left size = right size and: [left keys allSatisfy: [:key |
   (right keys anySatisfy: [:peer | peer == key]) and: [(left at: key) == (right at: key)]]]].
 snapshotPin := [:pinAPI | | pin owner connector point ownerSlot |
   pin := pinAPI diagramElement. owner := pinAPI getBlockDiagramElement diagramElement.
   connector := pin getExternalConnectorGO. point := connector connectionPoint.
   (owner manager == parent and: [(parent children select: [:member | member == owner]) size = 1])
     ifFalse: [component error: 'Connect pin owner outside exact Main parent'].
   (pin manager interfaceGOs select: [:member | member == pin]) size = 1
     ifFalse: [component error: 'Connect pin membership is not exact'].
   point isNil ifTrue: [component error: 'Connect endpoint unavailable'].
   ownerSlot := point class allInstVarNames indexOf: 'owner'.
   ownerSlot = 0 ifTrue: [component error: 'Connect point owner field unavailable'].
   Dictionary new at: 'api' put: pinAPI; at: 'pin' put: pin; at: 'owner' put: owner;
     at: 'basic' put: owner basicGraphObject; at: 'manager' put: pin manager;
     at: 'members' put: pin manager interfaceGOs; at: 'connector' put: connector;
     at: 'connectorManager' put: connector manager; at: 'point' put: point;
     at: 'pointOwnerSlot' put: ownerSlot; at: 'pointOwner' put: (point instVarAt: ownerSlot);
     at: 'pointPosition' put: point position copy; at: 'connections' put: point connections;
     at: 'connectionMembers' put: point connections copy;
     at: 'input' put: pinAPI isInputPin; at: 'output' put: pinAPI isOutputPin; yourself
 ].
 pinMatches := [:saved | | pin point connector owner pinAPI |
   pin := saved at: 'pin'. point := saved at: 'point'. connector := saved at: 'connector'.
   owner := saved at: 'owner'. pinAPI := saved at: 'api'.
   pinAPI diagramElement == pin and: [pinAPI getBlockDiagramElement diagramElement == owner and: [
   owner manager == parent and: [owner basicGraphObject == (saved at: 'basic') and: [
   (parent children select: [:member | member == owner]) size = 1 and: [
   pin manager == (saved at: 'manager') and: [pin manager interfaceGOs == (saved at: 'members') and: [
   ((saved at: 'members') select: [:member | member == pin]) size = 1 and: [
   pinAPI isInputPin == (saved at: 'input') and: [pinAPI isOutputPin == (saved at: 'output') and: [
   pin getExternalConnectorGO == connector and: [connector manager == (saved at: 'connectorManager') and: [
   connector connectionPoint == point and: [(point instVarAt: (saved at: 'pointOwnerSlot')) == (saved at: 'pointOwner') and: [
   point position = (saved at: 'pointPosition') and: [point connections == (saved at: 'connections')]]]]]]]]]]]]]]]
 ].
 mode = 'prepare' ifTrue: [
   (record at: 'state') = 'prepared' ifFalse: [component error: 'Connect material must precede dispatch'].
   (record includesKey: 'connectMaterial') ifTrue: [component error: 'Connect material preparation cannot replay'].
   sourcePin := snapshotPin value: (record at: 'source'). targetPin := snapshotPin value: (record at: 'target').
   (((sourcePin at: 'output') == true and: [(sourcePin at: 'input') == false]) and: [
     (targetPin at: 'input') == true and: [(targetPin at: 'output') == false]])
     ifFalse: [component error: 'Exact output to input connection required'].
   (targetPin at: 'connections') isEmpty ifFalse: [component error: 'Connect input is occupied'].
   native := helpers first value: component value: (Array with: diagram topGraphicalHierarchy).
   (native isKindOf: Dictionary) ifFalse: [component error: native asString].
   source := (helpers at: 2) value: component value:
     (Array with: diagram specification specSourceInternalOrNil with: #()).
   (source isKindOf: Dictionary) ifFalse: [component error: source asString].
   originalOrder := parent children asArray copy. originalDrawing := parent sortedChildren asArray copy.
   (record at: 'targets') isEmpty ifFalse: [component error: 'Complete Main connection material observation required'].
   orderRecord := record copy.
   orderRecord at: 'orderParent' put: parent; at: 'orderCollection' put: parent children;
     at: 'orderToken' put: token; at: 'orderIds' put: IdentityDictionary new;
     at: 'encodeObservation' put: (root at: 'encodeObservation').
   orderBefore := (helpers at: 3) value: orderRecord value: originalOrder.
   drawingBefore := ((helpers at: 4) value: component value: orderRecord value: originalDrawing) value: true.
   orderRecord at: 'orderIdsBinding' put: (orderRecord at: 'orderIds');
     at: 'orderOriginalIds' put: (orderRecord at: 'orderIds') copy.
   material := Dictionary new at: 'profile' put: 'native_connect_material_v1';
     at: 'token' put: token; at: 'record' put: record; at: 'root' put: root;
     at: 'generation' put: (root at: 'generation'); at: 'diagram' put: diagram;
     at: 'parent' put: parent; at: 'collection' put: parent children;
     at: 'sourcePin' put: sourcePin; at: 'targetPin' put: targetPin;
     at: 'nativeBefore' put: native; at: 'sourceBefore' put: source;
     at: 'beforeOrder' put: originalOrder; at: 'beforeDrawing' put: originalDrawing;
     at: 'beforeValues' put: ((root at: 'copyObservation') value: (root at: 'observationValues'));
     at: 'ids' put: (root at: 'ids'); at: 'beforeIds' put: (root at: 'ids') copy;
     at: 'beforeCounter' put: (root at: 'counter');
     at: 'orderRecord' put: orderRecord; at: 'parentBefore' put: (orderBefore at: 'value');
     at: 'drawingBefore' put: (drawingBefore at: 'value'); at: 'phase' put: 'prepared'; yourself.
   "Retain the material before querying additional resources so a failed
    reference read never destroys the only original graphical/source witness."
   record at: 'connectMaterial' put: material.
   referenceProfile = 'module_inbound_v1' ifTrue: [
     (component class name asString = 'EtasAPIModuleBDE' and: [component item class name asString = 'SGModule'])
       ifFalse: [component error: 'Exact native Module BDE owner required for inbound reference capture'].
     referenceOwner := component item. referenceDBObject := referenceOwner dbObject.
     referenceRows := [:referenceRecord |
       referenceRecord isError ifTrue: [component error: 'Module inbound reference query failed'].
       referenceRecord isReferencedBys size > 4096
         ifTrue: [component error: 'Complete Module inbound reference bound exceeded'].
       ((referenceRecord isReferencedBys collect: [:key |
         Array with: key globalIdString copy with: key className asString copy])
         asSortedCollection: [:a :b | a first = b first ifTrue: [a last < b last] ifFalse: [a first < b first]]) asArray
     ].
     referenceRead := [
       (component item == referenceOwner and: [referenceOwner dbObject == referenceDBObject and: [
         (root at: 'owner') == referenceOwner and: [(root at: 'generation') = (material at: 'generation')]]])
         ifFalse: [component error: 'Original Module reference owner/database/generation expired'].
       Dictionary new at: 'owner_references' put: (referenceRows value: referenceDBObject readReferences);
         at: 'owner_database_record_references' put: (referenceRows value: referenceDBObject readIsReferencedByOnly); yourself
     ].
     material at: 'profile' put: 'native_connect_material_v2';
       at: 'moduleReferenceReader' put: referenceRead; at: 'moduleReferenceProfile' put: referenceProfile.
     referenceBefore := referenceRead value.
     material at: 'moduleReferencesBefore' put: referenceBefore;
       at: 'moduleReferenceGuard' put: [ | actualReferences |
         actualReferences := referenceRead value.
         #('owner_references' 'owner_database_record_references') allSatisfy: [:key |
           (actualReferences at: key) = (referenceBefore at: key)]
       ]
   ]
 ] ifFalse: [material := record at: 'connectMaterial' ifAbsent: [component error: 'Original connect material unavailable']].
 ((material at: 'record') == record and: [(material at: 'root') == root and: [
   (material at: 'generation') = (root at: 'generation') and: [(material at: 'diagram') == diagram and: [
   (material at: 'parent') == parent and: [(material at: 'collection') == parent children and: [
   ((material at: 'sourceBefore') at: 'sourceRoot') == diagram specification specSourceInternalOrNil]]]]]])
   ifFalse: [component error: 'Original connect material owner/root/generation expired'].
 sourcePin := material at: 'sourcePin'. targetPin := material at: 'targetPin'.
 (material at: 'moduleReferenceProfile' ifAbsent: ['none']) = referenceProfile
   ifFalse: [component error: 'Original connect reference coverage cannot be rebound'].
 ((record at: 'source') == (sourcePin at: 'api') and: [(record at: 'target') == (targetPin at: 'api') and: [
   (pinMatches value: sourcePin) and: [pinMatches value: targetPin]]])
   ifFalse: [component error: 'Original connect endpoint identity or geometry changed'].
 sourcePoint := sourcePin at: 'point'. targetPoint := targetPin at: 'point'.
 originalOrder := material at: 'beforeOrder'. originalDrawing := material at: 'beforeDrawing'.
 native := material at: 'nativeBefore'. source := material at: 'sourceBefore'. orderRecord := material at: 'orderRecord'.
 (#('prepare' 'inspect_prepared') includes: mode) ifTrue: [
   referenceProfile = 'module_inbound_v1' ifTrue: [
     (material at: 'moduleReferenceGuard') value
       ifFalse: [component error: 'Prepared Module inbound references changed']].
   ((material at: 'phase') = 'prepared' and: [(record at: 'state') = 'prepared' and: [
   (sameOrder value: parent children value: originalOrder) and: [
   (sameOrder value: parent sortedChildren value: originalDrawing) and: [
   (native at: 'verify') value and: [(source at: 'verify') value and: [
   (sameMap value: sourcePoint connections value: (sourcePin at: 'connectionMembers')) and: [targetPoint connections isEmpty]]]]]]])
     ifFalse: [component error: 'Prepared full native/source/order/endpoint CURRENT changed']
 ].
 mode = 'capture_attached' ifTrue: [
   ((material at: 'phase') = 'prepared' and: [(record at: 'state') = 'applied'])
     ifFalse: [component error: 'Actual connect result can be captured once after observed application'].
   referenceProfile = 'module_inbound_v1' ifTrue: [
     material at: 'moduleReferencesAfter' put: (material at: 'moduleReferenceReader') value].
   api := record at: 'created' ifAbsent: [component error: 'Actual created connection unavailable'].
   edge := api diagramElement. afterOrder := parent children asArray copy. afterDrawing := parent sortedChildren asArray copy.
   (edge manager == parent and: [(afterOrder select: [:member | member == edge]) size = 1 and: [
     (originalOrder anySatisfy: [:member | member == edge]) not and: [
     afterOrder size = (originalOrder size + 1) and: [
     (sameOrder value: (afterOrder reject: [:member | member == edge]) value: originalOrder) and: [
     afterDrawing size = (originalDrawing size + 1) and: [
     (sameOrder value: (afterDrawing reject: [:member | member == edge]) value: originalDrawing)]]]]]])
     ifFalse: [component error: 'Actual connect does not explain complete physical/drawing insertion'].
   ((api getOutputPin diagramElement == (sourcePin at: 'pin')) and: [
     api getInputPin diagramElement == (targetPin at: 'pin')])
     ifFalse: [component error: 'Created edge differs from exact requested pins'].
   endpoints := edge connectionPoints asArray copy.
   (endpoints size = 2 and: [(endpoints anySatisfy: [:point | point == sourcePoint]) and: [
     endpoints anySatisfy: [:point | point == targetPoint]]])
     ifFalse: [component error: 'Created edge endpoint tuple differs'].
   originalSourceMembers := sourcePoint connections copy. originalSourceMembers removeKey: edge ifAbsent: [].
   ((sameMap value: originalSourceMembers value: (sourcePin at: 'connectionMembers')) and: [
     targetPoint connections size = 1 and: [targetPoint connections includesKey: edge]])
     ifFalse: [component error: 'Connect changed existing fanout or occupied another input'].
   retained := Array with: edge with: parent with: (afterOrder indexOf: edge) with: endpoints.
   edgeRecord := orderRecord copy. edgeRecord at: 'retained' put: retained;
     at: 'operation' put: 'disconnect_data'; at: 'deletedEdgeAPIs' put: (Array with: api).
   ((helpers last value: component value: edgeRecord value: 'capture') == true)
     ifFalse: [component error: 'Actual created endpoint registration capture failed'].
   nativeAfter := helpers first value: component value: (Array with: diagram topGraphicalHierarchy).
   (nativeAfter isKindOf: Dictionary) ifFalse: [component error: nativeAfter asString].
   sourceAfter := (helpers at: 2) value: component value:
     (Array with: diagram specification specSourceInternalOrNil with: (source at: 'snapshots') keys).
   (sourceAfter isKindOf: Dictionary) ifFalse: [component error: sourceAfter asString].
   "Freeze the union at actual capture, including original detached anchors.
    A later history preparation must never manufacture a historical image."
   combinedNativeAfter := (nativeAfter at: 'captureImages') value:
     ((native at: 'snapshots') keys, (nativeAfter at: 'snapshots') keys).
   (nativeAfter at: 'diff') value.
   graphicalActual := (native at: 'diff') value.
   orderAfter := (helpers at: 3) value: orderRecord value: afterOrder.
   drawingAfter := ((helpers at: 4) value: component value: orderRecord value: afterDrawing) value: true.
   anchors := OrderedCollection with: edge. boundaries := IdentitySet new.
   boundaries add: parent; add: diagram topGraphicalHierarchy.
   (edgeRecord at: 'edgeDependencies') do: [:row | (row at: 'pins') do: [:saved |
     anchors add: (saved at: 'registration').
     #('owner' 'basic' 'manager' 'members' 'pin' 'connector' 'connectorManager' 'point' 'connections')
       do: [:key | boundaries add: (saved at: key)]
   ]].
   detachedGuard := (nativeAfter at: 'freezeTerminalSubset') value: anchors value: boundaries.
   actualEncoded := (record at: 'materialObservationReader') value: component value: 'Main' value: #().
   actualValues := (root at: 'copyObservation') value: (root at: 'observationValues').
   ((root at: 'ids') includesKey: edge) ifFalse: [component error: 'Actual created read alias unavailable'].
   alias := (root at: 'ids') at: edge.
   reservations := root at: 'connectAliasReservations' ifAbsentPut: [Dictionary new].
   ((reservations includesKey: alias) or: [reservations size >= 100000])
     ifTrue: [component error: 'Created read alias was already reserved or capacity reached'].
   ((native at: 'verifyAfter') value and: [(nativeAfter at: 'verify') value and: [
     ((nativeAfter at: 'verifyImages') value: combinedNativeAfter) and: [
     (sourceAfter at: 'verify') value and: [(detachedGuard at: 'verify') value and: [
     (root at: 'diagram') == diagram and: [
     actualEncoded = ((root at: 'encodeObservation') value: actualValues)]]]]]])
     ifFalse: [component error: 'Actual connect material changed during capture'].
   "A tombstone reserves an issued alias without retaining the native edge."
   reservations at: alias put: true.
   material at: 'createdAPI' put: api; at: 'created' put: edge; at: 'retained' put: retained;
     at: 'edgeRecord' put: edgeRecord; at: 'nativeAfter' put: nativeAfter;
     at: 'combinedNativeAfter' put: combinedNativeAfter; at: 'sourceAfter' put: sourceAfter;
     at: 'graphicalActual' put: graphicalActual;
     at: 'afterOrder' put: afterOrder; at: 'afterDrawing' put: afterDrawing;
     at: 'parentAfter' put: (orderAfter at: 'value'); at: 'drawingAfter' put: (drawingAfter at: 'value');
     at: 'afterValues' put: actualValues;
     at: 'afterIds' put: (root at: 'ids') copy; at: 'afterCounter' put: (root at: 'counter');
     at: 'detachedGuard' put: detachedGuard; at: 'phase' put: 'attached'.
   "Freeze the actual first history head before any later independent edit.
    Preparing a local inverse may never reconstruct this from CURRENT."
   material at: 'historyHead' put: (Dictionary new
     at: 'owner' put: token; at: 'state' put: 'applied'; at: 'sequence' put: 1;
     at: 'beforeNative' put: (native at: 'snapshots'); at: 'afterNative' put: combinedNativeAfter;
     at: 'beforeSource' put: source; at: 'afterSource' put: sourceAfter;
     at: 'beforeOrder' put: (material at: 'beforeOrder'); at: 'afterOrder' put: afterOrder;
     at: 'beforeDrawing' put: (material at: 'beforeDrawing'); at: 'afterDrawing' put: afterDrawing;
     at: 'beforeIds' put: (material at: 'beforeIds'); at: 'afterIds' put: (material at: 'afterIds');
     at: 'beforeCounter' put: (material at: 'beforeCounter'); at: 'afterCounter' put: (material at: 'afterCounter');
     at: 'beforeValues' put: (material at: 'beforeValues'); at: 'afterValues' put: actualValues; yourself)
 ].
 mode = 'inspect_original' ifTrue: [
   referenceProfile = 'module_inbound_v1' ifTrue: [
     component error: 'Module inbound references require persistent inverse closure before original verification'].
   (record at: 'state') = 'reverted' ifFalse: [component error: 'Original baseline inspection requires a verified reverted connection'].
   receipt := Dictionary new at: 'profile' put: 'native_connect_original_baseline_v1';
     at: 'native_token' put: token; at: 'component_oid' put: component getOID;
     at: 'native_original_verified' put: (native at: 'verify') value;
     at: 'source_original_verified' put: ((material at: 'sourceBefore') at: 'verify') value;
     at: 'physical_original_verified' put: (sameOrder value: (material at: 'collection') value: (material at: 'beforeOrder'));
     at: 'drawing_original_verified' put: (sameOrder value: parent sortedChildren value: (material at: 'beforeDrawing'));
     at: 'aliases_original_verified' put: ((sameMap value: (root at: 'ids') value: (material at: 'beforeIds'))
       and: [(root at: 'counter') = (material at: 'beforeCounter')]);
     at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
   (native at: 'encode') value: receipt
 ] ifFalse: [
 (#('capture_attached' 'inspect_attached' 'inspect_detached') includes: mode) ifTrue: [
   referenceProfile = 'module_inbound_v1' ifTrue: [
     mode = 'inspect_detached' ifTrue: [component error: 'Module reference detached history is not implemented'].
     referenceAfter := (material at: 'moduleReferenceReader') value.
     (#('owner_references' 'owner_database_record_references') allSatisfy: [:key |
       (referenceAfter at: key) = ((material at: 'moduleReferencesAfter') at: key)])
       ifFalse: [component error: 'Frozen actual Module inbound reference head changed']].
   (material at: 'phase') = 'attached' ifFalse: [component error: 'Actual retained connection material required'].
   ((record at: 'created') == (material at: 'createdAPI') and: [
     (material at: 'createdAPI') diagramElement == (material at: 'created')])
     ifFalse: [component error: 'Created connection API or native identity replaced'].
   ((helpers last value: component value: (material at: 'edgeRecord')
     value: (mode = 'inspect_detached' ifTrue: ['detached'] ifFalse: ['attached'])) == true)
     ifFalse: [component error: 'Actual retained connect endpoint guard failed'].
   (material at: 'detachedGuard') at: 'verify' ifAbsent: [component error: 'Detached original-reference checkpoint missing'].
   ((material at: 'detachedGuard') at: 'verify') value
     ifFalse: [component error: 'Retained created connection/registration material changed'].
   mode = 'inspect_detached' ifFalse: [
     (((material at: 'nativeAfter') at: 'verify') value and: [((material at: 'sourceAfter') at: 'verify') value])
       ifFalse: [component error: 'Full actual attached native/source material changed']]
 ].
 receipt := Dictionary new at: 'profile' put: (material at: 'profile');
   at: 'native_token' put: token; at: 'component_oid' put: component getOID; at: 'diagram' put: 'Main';
   at: 'operation' put: 'connect_data'; at: 'phase' put: (mode = 'inspect_detached' ifTrue: ['detached'] ifFalse: [material at: 'phase']);
   at: 'source' put: ('p', (sourcePin at: 'pin') identifier printString);
   at: 'target' put: ('p', (targetPin at: 'pin') identifier printString);
   at: 'parent_before' put: (material at: 'parentBefore'); at: 'drawing_before' put: (material at: 'drawingBefore');
   at: 'parent_after' put: (material at: 'parentAfter' ifAbsent: [nil]);
   at: 'drawing_after' put: (material at: 'drawingAfter' ifAbsent: [nil]);
   at: 'created_native_ref' put: ((material includesKey: 'created')
     ifTrue: [(orderRecord at: 'orderIds') at: (material at: 'created')] ifFalse: [nil]);
   at: 'graphical_before' put: (native at: 'originalImage');
   at: 'graphical_actual' put: (material at: 'graphicalActual' ifAbsent: [nil]);
   at: 'original_native_objects' put: (native at: 'snapshots') size;
   at: 'original_source_objects' put: (source at: 'snapshots') size;
   at: 'actual_native_objects' put: ((material includesKey: 'nativeAfter')
     ifTrue: [((material at: 'nativeAfter') at: 'snapshots') size] ifFalse: [nil]);
   at: 'actual_source_objects' put: ((material includesKey: 'sourceAfter')
     ifTrue: [((material at: 'sourceAfter') at: 'snapshots') size] ifFalse: [nil]);
   at: 'endpoint_identity_verified' put: true; at: 'source_root_preserved' put: true;
   at: 'full_current_verified' put: mode ~= 'inspect_detached';
   at: 'created_original_retained' put: (material includesKey: 'created');
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'write_authorized' put: false; at: 'managed_inverse_enabled' put: false; yourself.
 referenceProfile = 'module_inbound_v1' ifTrue: [
   referenceReceipt := Dictionary new at: 'profile' put: 'native_module_inbound_references_v1';
     at: 'native_token' put: token; at: 'component_oid' put: component getOID;
     at: 'generation' put: (material at: 'generation');
     at: 'before' put: (material at: 'moduleReferencesBefore');
     at: 'after' put: (material at: 'moduleReferencesAfter' ifAbsent: [nil]);
     at: 'complete' put: true; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
     at: 'inverse_authorized' put: false; at: 'full_commit_resource_closure' put: false; yourself.
   receipt at: 'module_references' put: referenceReceipt
 ].
 answer := (native at: 'encode') value: receipt. answer
 ]
 ] ifFail: [:error | 'BDE_CONNECT_MATERIAL_ERROR: ', error messageText]
]]
