[:currentReader | [:component :command |
 component handleExceptionsIn: [
 | mode token roots root diagram parent ids counter idRows current schemas describe refs sameOrder physical drawing beforeSource restores repair expectedPhysical expectedDrawing out check |
 mode := command first. token := command at: 2.
 (#('probe' 'prepare' 'check' 'execute' 'inspect') includes: mode)
   ifFalse: [component error: 'Unknown attached order action'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Disposable experiment required'].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2.
 root := roots at: (component getOID, '/Main'). diagram := root at: 'diagram'.
 (root at: 'owner') == component item ifFalse: [component error: 'Native owner changed'].
 parent := diagram topGraphicalHierarchy contents. ids := root at: 'ids'.
 counter := root at: 'counter'. idRows := ids associations collect: [:association | Array with: association key with: association value].
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:i | (left at: i) ~~ (right at: i)]) not]].
 refs := [:members | (members collect: [:member | | id prefix |
   id := member identifier. prefix := member class name asString = 'SGConnectionWrapperGO' ifTrue: ['e'] ifFalse: ['n'].
   (id isInteger and: [id >= 0]) ifTrue: [prefix, id printString]
     ifFalse: [ids at: member ifAbsent: [component error: 'Existing native alias required']]]) asArray].
 physical := parent children asArray copy. drawing := parent sortedChildren asArray copy.
 (physical size = physical asSet size and: [drawing size = physical size and: [drawing asSet = physical asSet]])
   ifFalse: [component error: 'Complete unique physical/drawing roster required'].
 (physical allSatisfy: [:member | member manager == parent])
   ifFalse: [component error: 'Attached original manager changed'].
 current := currentReader value: component value: (Array with: diagram topGraphicalHierarchy).
 (current isKindOf: Dictionary) ifFalse: [component error: current asString].
 schemas := Dictionary new.
 (current at: 'snapshots') keys do: [:object |
   (((current at: 'snapshots') at: object) first = 'fields') ifTrue: [
     schemas at: object class name asString put: (object class allInstVarNames collect: [:name | name asString]) asArray]].
 describe := [:member | Dictionary new at: 'ref' put: (refs value: (Array with: member)) first;
   at: 'class' put: member class name asString; at: 'raw_ref' put: ((current at: 'tokens') at: member);
   at: 'basic_raw_ref' put: ((current at: 'tokens') at: member basicGraphObject);
   at: 'drawing_order' put: member basicGraphObject drawingOrder; yourself].
 ((refs value: physical) asSet size = physical size)
   ifFalse: [component error: 'Existing attached aliases collide'].
 ((current at: 'verify') value and: [sameOrder value: parent children value: physical])
   ifFalse: [component error: 'Complete read-only image changed'].
 (ids size = idRows size and: [(root at: 'counter') = counter and: [
   idRows allSatisfy: [:pair | (ids at: pair first ifAbsent: [nil]) == pair last]]])
   ifFalse: [component error: 'Read-only identity registry changed'].
 mode = 'probe' ifTrue: [
   out := Dictionary new at: 'profile' put: 'attached_order_probe_v1'; at: 'complete' put: true;
     at: 'component_oid' put: component getOID; at: 'diagram' put: 'Main'; at: 'generation' put: (root at: 'generation');
     at: 'schemas' put: schemas; at: 'physical' put: (physical collect: [:member | describe value: member]);
     at: 'drawing' put: (drawing collect: [:member | describe value: member]);
     at: 'parent_raw_ref' put: ((current at: 'tokens') at: parent);
     at: 'children_raw_ref' put: ((current at: 'tokens') at: parent children);
     at: 'raw_current' put: (current at: 'descriptor');
     at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'identity_registry_unchanged' put: true; yourself.
   (current at: 'encode') value: out
 ] ifFalse: [
 restores := Smalltalk at: #DogeBDEAttachedOrderRestoresV1 ifAbsentPut: [Dictionary new].
 mode = 'prepare' ifTrue: [
   (restores includesKey: token) ifTrue: [component error: 'Separate restoration cannot replay'].
   restores size >= 128 ifTrue: [component error: 'Attached restoration capacity reached'].
   (restores values anySatisfy: [:other | (other at: 'owner') == component item and: [
     #('restore_started' 'stored') includes: (other at: 'state')]])
     ifTrue: [component error: 'Unresolved attached restoration exists'].
   expectedPhysical := (command at: 3) subStrings: $,.
   expectedDrawing := (command at: 4) subStrings: $,.
   (expectedPhysical = (refs value: physical) and: [expectedDrawing size = physical size and: [
     expectedDrawing asSet size = physical size and: [expectedDrawing asSet = expectedPhysical asSet]]])
     ifFalse: [component error: 'Complete order-only original roster required'].
   beforeSource := (root at: 'copySource') value: diagram specification specSourceInternalOrNil.
   repair := Dictionary new at: 'owner' put: component item; at: 'root' put: root; at: 'diagram' put: diagram;
     at: 'parent' put: parent; at: 'collection' put: parent children; at: 'ids' put: ids;
     at: 'counter' put: counter; at: 'idRows' put: idRows; at: 'generation' put: (root at: 'generation');
     at: 'physicalBefore' put: physical; at: 'drawingBefore' put: drawing; at: 'beforeSource' put: beforeSource;
     at: 'current' put: current; at: 'signature' put: token, '/current/1';
     at: 'expectedPhysical' put: expectedPhysical copy; at: 'expectedDrawing' put: expectedDrawing copy;
     at: 'state' put: 'prepared'; yourself.
   restores at: token put: repair
 ] ifFalse: [
   repair := restores at: token ifAbsent: [component error: 'Prepared attached restoration unavailable'].
   ((repair at: 'root') == root and: [(repair at: 'owner') == component item and: [
     (repair at: 'diagram') == diagram and: [(repair at: 'parent') == parent and: [
     (repair at: 'collection') == parent children and: [(repair at: 'generation') = (root at: 'generation')]]]]])
     ifFalse: [component error: 'Attached restoration identity expired'].
   mode = 'inspect' ifFalse: [
     ((repair at: 'state') = 'prepared' and: [(command at: 3) = (repair at: 'signature')])
       ifFalse: [component error: 'Frozen signature changed or restoration already executed']]
 ].
 current := repair at: 'current'.
 mode = 'inspect' ifFalse: [
   check := (current at: 'verify') value.
   check := check and: [(root at: 'ids') == (repair at: 'ids')].
   check := check and: [(root at: 'counter') = (repair at: 'counter')].
   check := check and: [ids size = (repair at: 'idRows') size].
   check := check and: [(repair at: 'idRows') allSatisfy: [:pair | (ids at: pair first ifAbsent: [nil]) == pair last]].
   check := check and: [sameOrder value: parent children value: (repair at: 'physicalBefore')].
   check := check and: [sameOrder value: parent sortedChildren value: (repair at: 'drawingBefore')].
   check := check and: [(root at: 'sameSource') value: diagram specification specSourceInternalOrNil value: (repair at: 'beforeSource')].
   check ifFalse: [component error: 'Frozen complete attached restoration changed']
 ].
 mode = 'execute' ifTrue: [ | bound stored |
   repair at: 'state' put: 'restore_started'.
   bound := Dictionary new. parent children do: [:member | bound at: (refs value: (Array with: member)) first put: member].
   (repair at: 'expectedDrawing') doWithIndex: [:ref :index | (bound at: ref) basicGraphObject drawingOrder: index].
   ((refs value: parent children) = (repair at: 'expectedPhysical') and: [
     (refs value: parent sortedChildren) = (repair at: 'expectedDrawing')])
     ifFalse: [component error: 'Order-only actual expectation differs before store'].
   stored := diagram storeToCache.
   ((stored isKindOf: EtasAPIError) or: [stored == false]) ifTrue: [component error: 'Attached order store failed'].
   repair at: 'state' put: 'stored'.
   ((refs value: parent children) = (repair at: 'expectedPhysical') and: [
     (refs value: parent sortedChildren) = (repair at: 'expectedDrawing')])
     ifFalse: [component error: 'Stored original order differs'].
   parent sortedChildren doWithIndex: [:member :index |
     member basicGraphObject drawingOrder = index ifFalse: [component error: 'Stored original drawing number differs']].
   repair at: 'actual' put: ((current at: 'encode') value: (current at: 'diff') value).
   root at: 'checkpoint' put: ((root at: 'copySource') value: diagram specification specSourceInternalOrNil).
   repair at: 'state' put: 'restored'
 ].
 out := Dictionary new at: 'profile' put: 'attached_order_restore_v1'; at: 'state' put: (repair at: 'state');
   at: 'restoration_token' put: token; at: 'prepared_signature' put: (repair at: 'signature');
   at: 'generation' put: (repair at: 'generation'); at: 'component_oid' put: component getOID;
   at: 'physical_expected' put: (repair at: 'expectedPhysical'); at: 'drawing_expected' put: (repair at: 'expectedDrawing');
   at: 'physical_current' put: (refs value: parent children); at: 'drawing_current' put: (refs value: parent sortedChildren);
   at: 'current' put: (current at: 'descriptor');
   at: 'actual' put: (mode = 'inspect' ifTrue: [(current at: 'encode') value: (current at: 'diff') value]
     ifFalse: [repair at: 'actual' ifAbsent: [nil]]);
   at: 'model_setters_called' put: (mode = 'execute' ifTrue: [parent children size] ifFalse: [0]);
   at: 'store_called' put: (mode = 'execute'); yourself.
 (current at: 'encode') value: out
 ]
 ] ifFail: [:error | 'BDE_ATTACHED_ORDER_ERROR: ', error messageText]
]]
