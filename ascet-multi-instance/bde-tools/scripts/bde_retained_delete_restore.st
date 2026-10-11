[:helpers | [:component :command |
 component handleExceptionsIn: [
 | edits restores roots original root diagram parent plan current sourceSource sourceKeys mode token repairToken repaired sameOrder checkReturn unchanged describe out encode orderBefore orderDesired projection currentReader edgeGuard planner projectionReader currentVerified planVerified sourceVerified endpointsVerified |
 mode := command first. token := command at: 2. repairToken := command at: 3.
 (#('prepare' 'check' 'execute') includes: mode) ifFalse: [component error: 'Unknown retained deletion restoration action'].
 edits := Smalltalk at: #DogeBDEStructureEditsV3 ifAbsent: [component error: 'Original deletion registry unavailable'].
 original := edits at: token ifAbsent: [component error: 'Original deletion objects unavailable'].
 ((original at: 'component') = component getOID and: [(original at: 'owner') == component item])
   ifFalse: [component error: 'Original restoration owner changed'].
 ((#('started' 'applied') includes: (original at: 'state')) and: [
   (original at: 'operation') = 'delete_node' and: [(original at: 'diagramName') = 'Main']])
   ifFalse: [component error: 'Retained ordinary Main deletion required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated retained restoration required'].
 restores := Smalltalk at: #DogeBDEDeletionRestoresV1 ifAbsentPut: [Dictionary new].
 restores size >= 128 ifTrue: [component error: 'Retained restoration capacity reached'].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2.
 root := roots at: (component getOID, '/Main'). diagram := original at: 'diagram'. parent := original at: 'orderParent'.
 ((root at: 'diagram') == diagram and: [(root at: 'owner') == component item and: [
   diagram specification == (root at: 'specification') and: [diagram topGraphicalHierarchy contents == parent]]])
   ifFalse: [component error: 'Original restoration graphical lineage expired'].
 edgeGuard := helpers first. planner := helpers at: 2. currentReader := helpers at: 3. projectionReader := helpers last.
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:i | (left at: i) ~~ (right at: i)]) not]].
 checkReturn := [:value | (value isKindOf: EtasAPIError) ifTrue: [component error: value errorMessage].
   value == false ifTrue: [component error: 'Restoration native operation returned false']. value].
 sourceKeys := original keys asSet copy.
 mode = 'prepare' ifTrue: [
   (restores includesKey: repairToken) ifTrue: [component error: 'Restoration request cannot be replayed'].
   (edgeGuard value: component value: original value: 'detached') == true
     ifFalse: [component error: 'Current original endpoint dependencies conflict'].
   plan := planner value: component value: original value: parent.
   ((plan isKindOf: Dictionary) and: [(plan at: 'compatible') and: [(plan at: 'verifyBeforeApply') value]])
     ifFalse: [component error: 'Current restoration order conflicts'].
   sourceSource := (root at: 'copySource') value: diagram specification specSourceInternalOrNil.
   current := currentReader value: component value: ((Array with: diagram topGraphicalHierarchy),
     ((original at: 'retainedSet') collect: [:entry | entry first]) asArray).
   (current isKindOf: Dictionary) ifFalse: [component error: current].
   projection := projectionReader value: component value: diagram.
   (projection startsWith: 'BDE_') ifTrue: [component error: projection].
   repaired := Dictionary new at: 'source' put: original; at: 'root' put: root;
     at: 'diagram' put: diagram; at: 'parent' put: parent; at: 'plan' put: plan;
     at: 'current' put: current; at: 'sourceSource' put: sourceSource;
     at: 'projection' put: projection; at: 'state' put: 'prepared'; yourself.
   repaired at: 'parentCurrent' put: parent children asArray copy;
     at: 'orderIds' put: (original at: 'orderIds') copy;
     at: 'sourceKeys' put: sourceKeys; at: 'sourceState' put: (original at: 'state').
   restores at: repairToken put: repaired
 ] ifFalse: [
   repaired := restores at: repairToken ifAbsent: [component error: 'Prepared restoration request unavailable'].
   ((repaired at: 'state') = 'prepared' and: [(repaired at: 'source') == original and: [(repaired at: 'root') == root]])
     ifFalse: [component error: 'Restoration cannot replay or replace original binding'].
   plan := repaired at: 'plan'. current := repaired at: 'current'.
   (((current at: 'verify') value and: [(plan at: 'verifyBeforeApply') value]) and: [
     ((root at: 'sameSource') value: diagram specification specSourceInternalOrNil value: (repaired at: 'sourceSource')) and: [
     (edgeGuard value: component value: original value: 'detached') == true]])
     ifFalse: [component error: 'Prepared restoration CURRENT changed'].
   (command at: 4) = (current at: 'descriptor') ifFalse: [component error: 'Durable restoration CURRENT descriptor differs'].
   mode = 'execute' ifTrue: [repaired at: 'state' put: 'restore_started'.
   (plan at: 'restores') do: [:entry | | object position |
     object := entry first. position := (plan at: 'positions') at: object.
     parent addGO: object display: false.
     parent children remove: object. parent children add: object beforeIndex: position.
     entry last do: [:point | | edgeRow pinRow |
       edgeRow := (original at: 'edgeDependencies') detect: [:row | (row at: 'edge') == object].
       pinRow := (edgeRow at: 'pins') detect: [:row | (row at: 'point') == point].
       point connections at: object put: (pinRow at: 'registration')]
   ].
   (sameOrder value: parent children value: (plan at: 'merged')) ifFalse: [component error: 'Restoration actual parent order differs'].
   (edgeGuard value: component value: original value: 'attached') == true
     ifFalse: [component error: 'Restored endpoint dependencies differ'].
   checkReturn value: diagram storeToCache.
   repaired at: 'state' put: 'stored'.
   ((sameOrder value: parent children value: (plan at: 'merged')) and: [
     (edgeGuard value: component value: original value: 'attached') == true])
     ifFalse: [component error: 'Stored restoration parent or endpoints differ'].
   repaired at: 'actualFields' put: ((current at: 'encode') value: (current at: 'diff') value);
     at: 'actualProjection' put: (projectionReader value: component value: diagram).
   "Only a verified new restoration can re-anchor the existing graphical registry."
   root at: 'checkpoint' put: ((root at: 'copySource') value: diagram specification specSourceInternalOrNil).
   repaired at: 'state' put: 'restored']
 ].
 current := repaired at: 'current'. plan := repaired at: 'plan'.
 currentVerified := (current at: 'verify') value.
 planVerified := (plan at: 'verifyBeforeApply') value.
 sourceVerified := (root at: 'sameSource') value: diagram specification specSourceInternalOrNil value: (repaired at: 'sourceSource').
 endpointsVerified := (edgeGuard value: component value: original
   value: ((repaired at: 'state') = 'restored' ifTrue: ['attached'] ifFalse: ['detached'])) == true.
 (mode = 'execute') ifFalse: [
   (currentVerified and: [planVerified and: [sourceVerified and: [endpointsVerified]]])
     ifFalse: [component error: 'Restoration preparation failed verification']].
 describe := [:objects | objects collect: [:object | (repaired at: 'orderIds') at: object
   ifAbsentPut: ['r', ((current at: 'tokens') at: object)]]].
 orderBefore := describe value: (repaired at: 'parentCurrent'). orderDesired := describe value: (plan at: 'merged').
 unchanged := (original at: 'state') = (repaired at: 'sourceState') and: [original keys asSet = (repaired at: 'sourceKeys')].
 out := WriteStream on: String new.
 encode := [:value |
   value isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   value isString ifTrue: [out nextPutAll: '{"$s":['.
     value asCebraString doWithIndex: [:byte :i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: byte printString]. out nextPutAll: ']}'] ifFalse: [
   ((value == true or: [value == false]) or: [value isInteger]) ifTrue: [out nextPutAll: value printString] ifFalse: [
   (value isKindOf: Dictionary) ifTrue: [out nextPutAll: '{"$d":['.
     value keys asSortedCollection doWithIndex: [:key :i | i > 1 ifTrue: [out nextPut: $,].
       out nextPut: $[. encode value: key. out nextPut: $,. encode value: (value at: key). out nextPut: $]]. out nextPutAll: ']}']
   ifFalse: [out nextPut: $[. value doWithIndex: [:member :i | i > 1 ifTrue: [out nextPut: $,]. encode value: member]. out nextPut: $]]]]]
 ].
 encode value: (Dictionary new at: 'state' put: (repaired at: 'state'); at: 'current' put: (current at: 'descriptor');
   at: 'before_projection' put: (repaired at: 'projection');
   at: 'after_projection' put: (repaired at: 'actualProjection' ifAbsent: [nil]);
   at: 'actual_graphical_fields' put: (repaired at: 'actualFields' ifAbsent: [nil]);
   at: 'parent_before' put: orderBefore; at: 'parent_expected' put: orderDesired;
   at: 'source_record_keys_and_state_unchanged' put: unchanged;
   at: 'current_verified' put: currentVerified; at: 'plan_verified' put: planVerified;
   at: 'source_verified' put: sourceVerified; at: 'endpoints_verified' put: endpointsVerified;
   at: 'graphical_object_count' put: (current at: 'snapshots') size; yourself). out contents
 ] ifFail: [:error | 'BDE_RETAINED_RESTORE_ERROR: ', error messageText]
]]
