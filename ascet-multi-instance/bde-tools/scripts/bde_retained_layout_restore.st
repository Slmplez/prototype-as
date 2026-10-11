[:currentReader | [:component :command |
 component handleExceptionsIn: [
 | mode token repairToken edits original roots root parent diagram retained object current restores repair ids refFor describe physicalRefs drawingRefs expectedPhysical expectedDrawing physical drawing sameOrder check numberRows sourceKeys sourceState sourceSource sourceRepair out |
 mode := command first. token := command at: 2. repairToken := command at: 3.
 (#('prepare' 'prepare_completion' 'check' 'execute' 'inspect') includes: mode) ifFalse: [component error: 'Unknown layout restoration action'].
 edits := Smalltalk at: #DogeBDEStructureEditsV3 ifAbsent: [component error: 'Retained source unavailable'].
 original := edits at: token ifAbsent: [component error: 'Retained original unavailable'].
 ((original at: 'owner') == component item and: [(original at: 'component') = component getOID and: [
   (original at: 'diagramName') = 'Main' and: [(original at: 'operation') = 'delete_node' and: [
   (original at: 'state') = 'applied']]]]) ifFalse: [component error: 'Exact applied Main source required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Disposable experiment restoration required'].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2.
 root := roots at: (component getOID, '/Main'). parent := original at: 'orderParent'. diagram := original at: 'diagram'.
 ((root at: 'owner') == component item and: [(root at: 'diagram') == diagram and: [
   diagram topGraphicalHierarchy contents == parent and: [parent children == (original at: 'orderCollection')]]])
   ifFalse: [component error: 'Original graphical owner or collection changed'].
 retained := (original at: 'retainedSet') asArray.
 (retained size = 1 and: [retained first first class name asString = 'SGLiteralGO' and: [retained first last isEmpty]])
   ifFalse: [component error: 'Exactly one retained unconnected literal required'].
 object := retained first first. ids := root at: 'ids'.
 refFor := [:member | | id prefix | id := member identifier.
   prefix := member class name asString = 'SGConnectionWrapperGO' ifTrue: ['e'] ifFalse: ['n'].
   (id isInteger and: [id >= 0]) ifTrue: [prefix, id printString] ifFalse: [
     ids at: member ifAbsent: [component error: 'Existing original alias required']]] .
 describe := [:members | (members collect: [:member | refFor value: member]) asArray].
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:i | (left at: i) ~~ (right at: i)]) not]].
 restores := Smalltalk at: #DogeBDELayoutRestoresV1 ifAbsentPut: [Dictionary new].
 mode = 'inspect' ifTrue: [
   repair := restores at: repairToken ifAbsent: [component error: 'Exact partially executed restoration unavailable'].
   ((repair at: 'source') == original and: [(repair at: 'root') == root and: [
     (repair at: 'parent') == parent and: [parent children == (repair at: 'collection')]]])
     ifFalse: [component error: 'Partial restoration source or parent expired'].
   current := repair at: 'current'.
   out := Dictionary new at: 'profile' put: 'retained_original_layout_diagnostic_v1';
     at: 'state' put: (repair at: 'state'); at: 'source_token' put: token; at: 'restoration_token' put: repairToken;
     at: 'physical_current' put: (describe value: parent children);
     at: 'drawing_current' put: (describe value: parent sortedChildren);
     at: 'physical_expected' put: (repair at: 'expectedPhysical'); at: 'drawing_expected' put: (repair at: 'expectedDrawing');
     at: 'numbers_current' put: (parent sortedChildren collect: [:member | member basicGraphObject drawingOrder]) asArray;
     at: 'current' put: (current at: 'descriptor'); at: 'actual' put: ((current at: 'encode') value: (current at: 'diff') value);
     at: 'completion_only' put: (repair at: 'completeOnly');
     at: 'combined_current' put: (repair at: 'combinedCurrent' ifAbsent: [nil]);
     at: 'combined_actual' put: (repair at: 'combinedActual' ifAbsent: [nil]);
     at: 'source_record_unchanged' put: (original keys asSet = (repair at: 'sourceKeys') and: [
       (original at: 'state') = (repair at: 'sourceState')]);
     at: 'retained_object_attached' put: (object manager == parent and: [parent children includes: object]);
     at: 'detached_intrinsic_guard_matches' put: ((original at: 'detachedGraphicalGuard') at: 'verify') value;
     at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
   (current at: 'encode') value: out
 ] ifFalse: [
 (#('prepare' 'prepare_completion') includes: mode) ifTrue: [
   (restores includesKey: repairToken) ifTrue: [component error: 'Restoration cannot replay'].
   restores size >= 128 ifTrue: [component error: 'Layout restoration capacity reached'].
   ((original at: 'detachedGraphicalGuard') at: 'verify') value
     ifFalse: [component error: 'Retained intrinsic original changed'].
   mode = 'prepare_completion' ifTrue: [
     sourceRepair := restores at: (command at: 4) ifAbsent: [component error: 'Exact partial restoration unavailable'].
     ((sourceRepair at: 'state') = 'restore_started' and: [(sourceRepair at: 'source') == original and: [
       (sourceRepair at: 'root') == root and: [(sourceRepair at: 'parent') == parent and: [
       parent children == (sourceRepair at: 'collection') and: [object manager == parent and: [parent children includes: object]]]]]])
       ifFalse: [component error: 'Known attached partial restoration required'].
     (restores values anySatisfy: [:other | (other at: 'partialSource' ifAbsent: [nil]) == sourceRepair])
       ifTrue: [component error: 'Partial restoration already has a separate completion; do not replay'].
     expectedPhysical := (sourceRepair at: 'expectedPhysical') copy.
     expectedDrawing := (sourceRepair at: 'expectedDrawing') copy.
     ((describe value: parent children) = expectedPhysical and: [(describe value: parent sortedChildren) = expectedDrawing])
       ifFalse: [component error: 'Partial restoration does not match full original layout'].
     parent sortedChildren doWithIndex: [:member :index |
       member basicGraphObject drawingOrder = index ifFalse: [component error: 'Partial original drawing numbers differ']]
   ] ifFalse: [
     (object manager == parent and: [(parent children includes: object) not])
       ifFalse: [component error: 'Original retained ownership or absence changed'].
     expectedPhysical := (command at: 4) subStrings: $,.
     expectedDrawing := (command at: 5) subStrings: $,
   ].
   physical := parent children asArray copy. drawing := parent sortedChildren asArray copy.
   physicalRefs := describe value: physical. drawingRefs := describe value: drawing.
   ((expectedPhysical asSet size = expectedPhysical size) and: [expectedPhysical asSet = expectedDrawing asSet and: [
     expectedDrawing asSet size = expectedDrawing size and: [mode = 'prepare_completion' or: [
     expectedPhysical size = (physical size + 1) and: [
     ((expectedPhysical reject: [:ref | ref = (refFor value: object)]) = physicalRefs) and: [
     (expectedDrawing reject: [:ref | ref = (refFor value: object)]) = drawingRefs]]]]]])
     ifFalse: [component error: 'Exact complete restoration-only original lineage required'].
   numberRows := physical collect: [:member | Array with: member basicGraphObject with: member basicGraphObject drawingOrder].
   sourceKeys := original keys asSet copy. sourceState := original at: 'state'.
   sourceSource := (root at: 'copySource') value: diagram specification specSourceInternalOrNil.
   current := currentReader value: component value: (Array with: diagram topGraphicalHierarchy with: object).
   (current isKindOf: Dictionary) ifFalse: [component error: current asString].
   repair := Dictionary new at: 'source' put: original; at: 'root' put: root;
     at: 'ids' put: ids; at: 'generation' put: (root at: 'generation');
     at: 'idRows' put: (ids associations collect: [:association | Array with: association key with: association value]);
     at: 'counter' put: (root at: 'counter'); at: 'signature' put: repairToken, '/current/1';
     at: 'parent' put: parent; at: 'collection' put: parent children;
     at: 'physicalBefore' put: physical; at: 'drawingBefore' put: drawing;
     at: 'physicalRefs' put: physicalRefs; at: 'drawingRefs' put: drawingRefs;
     at: 'expectedPhysical' put: expectedPhysical copy; at: 'expectedDrawing' put: expectedDrawing copy;
     at: 'current' put: current; at: 'sourceSource' put: sourceSource;
     at: 'sourceKeys' put: sourceKeys; at: 'sourceState' put: sourceState;
     at: 'completeOnly' put: (mode = 'prepare_completion'); at: 'partialSource' put: sourceRepair;
     at: 'numbers' put: numberRows; at: 'state' put: 'prepared'; yourself.
   restores at: repairToken put: repair
 ] ifFalse: [
   repair := restores at: repairToken ifAbsent: [component error: 'Prepared layout restoration unavailable'].
   current := repair at: 'current'.
   ((repair at: 'source') == original and: [(repair at: 'root') == root and: [(repair at: 'state') = 'prepared']])
     ifFalse: [component error: 'Prepared restoration source expired or already executed'].
   (command at: 4) = (repair at: 'signature') ifFalse: [component error: 'Durable restoration CURRENT signature differs']
 ].
 check := [ | matches |
   matches := (current at: 'verify') value.
   matches := matches and: [(root at: 'ids') == (repair at: 'ids')].
   matches := matches and: [(root at: 'generation') = (repair at: 'generation')].
   matches := matches and: [(root at: 'counter') = (repair at: 'counter')].
   matches := matches and: [ids size = (repair at: 'idRows') size].
   matches := matches and: [(repair at: 'idRows') allSatisfy: [:pair | (ids at: pair first ifAbsent: [nil]) == pair last]].
   matches := matches and: [parent children == (repair at: 'collection')].
   matches := matches and: [sameOrder value: parent children value: (repair at: 'physicalBefore')].
   matches := matches and: [sameOrder value: parent sortedChildren value: (repair at: 'drawingBefore')].
   matches := matches and: [original keys asSet = (repair at: 'sourceKeys')].
   matches := matches and: [(original at: 'state') = (repair at: 'sourceState')].
   matches := matches and: [((original at: 'detachedGraphicalGuard') at: 'verify') value].
   matches and: [(root at: 'sameSource') value: diagram specification specSourceInternalOrNil value: (repair at: 'sourceSource')]
 ].
 check value ifFalse: [component error: 'Frozen complete layout preparation changed'].
 mode = 'execute' ifTrue: [ | bound position stored |
   repair at: 'state' put: 'restore_started'.
   (repair at: 'completeOnly') ifFalse: [
   parent addGO: object display: false.
   position := (repair at: 'expectedPhysical') indexOf: (refFor value: object).
   parent children remove: object. parent children add: object beforeIndex: position.
   bound := Dictionary new. parent children do: [:member | | ref | ref := refFor value: member.
     (bound includesKey: ref) ifTrue: [component error: 'Actual original alias collision'].
     bound at: ref put: member].
   (repair at: 'expectedDrawing') doWithIndex: [:ref :index | (bound at: ref) basicGraphObject drawingOrder: index].
   ].
   ((describe value: parent children) = (repair at: 'expectedPhysical') and: [
     (describe value: parent sortedChildren) = (repair at: 'expectedDrawing')])
     ifFalse: [component error: 'Actual restored original order differs before store'].
   stored := diagram storeToCache.
   ((stored isKindOf: EtasAPIError) or: [stored == false]) ifTrue: [component error: 'Native restoration store failed'].
   repair at: 'state' put: 'stored'.
   ((describe value: parent children) = (repair at: 'expectedPhysical') and: [
     (describe value: parent sortedChildren) = (repair at: 'expectedDrawing') and: [
     parent children == (repair at: 'collection') and: [object manager == parent and: [
     parent children allSatisfy: [:member | member manager == parent]]]]])
     ifFalse: [component error: 'Stored restoration identity or order differs'].
   parent sortedChildren doWithIndex: [:member :index |
     member basicGraphObject drawingOrder = index ifFalse: [component error: 'Stored original drawing number differs']].
   repair at: 'actual' put: ((current at: 'encode') value: (current at: 'diff') value).
   (repair at: 'completeOnly') ifTrue: [ | priorCurrent |
     priorCurrent := (repair at: 'partialSource') at: 'current'.
     repair at: 'combinedCurrent' put: (priorCurrent at: 'descriptor');
       at: 'combinedActual' put: ((priorCurrent at: 'encode') value: (priorCurrent at: 'diff') value)
   ].
   root at: 'checkpoint' put: ((root at: 'copySource') value: diagram specification specSourceInternalOrNil).
   repair at: 'state' put: 'restored'
 ].
 out := Dictionary new at: 'profile' put: 'retained_original_layout_restore_v1';
   at: 'state' put: (repair at: 'state'); at: 'source_token' put: token; at: 'restoration_token' put: repairToken;
   at: 'generation' put: (repair at: 'generation'); at: 'component_oid' put: component getOID;
   at: 'prepared_signature' put: (repair at: 'signature');
   at: 'physical_before' put: (repair at: 'physicalRefs'); at: 'drawing_before' put: (repair at: 'drawingRefs');
   at: 'physical_expected' put: (repair at: 'expectedPhysical'); at: 'drawing_expected' put: (repair at: 'expectedDrawing');
   at: 'current' put: (current at: 'descriptor'); at: 'actual' put: (repair at: 'actual' ifAbsent: [nil]);
   at: 'completion_only' put: (repair at: 'completeOnly');
   at: 'combined_current' put: (repair at: 'combinedCurrent' ifAbsent: [nil]);
   at: 'combined_actual' put: (repair at: 'combinedActual' ifAbsent: [nil]);
   at: 'source_record_unchanged' put: (original keys asSet = (repair at: 'sourceKeys') and: [
     (original at: 'state') = (repair at: 'sourceState')]); yourself.
 (current at: 'encode') value: out
 ]
 ] ifFail: [:error | 'BDE_RETAINED_LAYOUT_RESTORE_ERROR: ', error messageText]
]]
