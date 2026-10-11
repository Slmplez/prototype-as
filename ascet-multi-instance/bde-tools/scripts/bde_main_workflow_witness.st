[:currentReader | [:component :command |
 component handleExceptionsIn: [
 | action token roots root diagram parent registry record current physical drawing sameOrder refs unchanged sourceSame idsSame out actual |
 action := command first. token := command at: 2.
 (#('capture' 'check' 'export' 'release') includes: action)
   ifFalse: [component error: 'Unknown Main witness action'].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2.
 root := roots at: (component getOID, '/Main'). diagram := root at: 'diagram'.
 (root at: 'owner') == component item ifFalse: [component error: 'Main witness owner changed'].
 parent := diagram topGraphicalHierarchy contents.
 registry := Smalltalk at: #DogeBDEMainWorkflowWitnessesV1 ifAbsentPut: [Dictionary new].
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:i | (left at: i) ~~ (right at: i)]) not]].
 refs := [:members | (members collect: [:member | | id prefix |
   id := member identifier. prefix := member class name asString = 'SGConnectionWrapperGO' ifTrue: ['e'] ifFalse: ['n'].
   (id isInteger and: [id >= 0]) ifTrue: [prefix, id printString]
     ifFalse: [(root at: 'ids') at: member ifAbsent: [component error: 'Main witness alias missing']]]) asArray].
 action = 'capture' ifTrue: [
   (registry includesKey: token) ifTrue: [component error: 'Main witness cannot replay capture'].
   registry size >= 128 ifTrue: [component error: 'Main witness capacity reached'].
   physical := parent children asArray copy. drawing := parent sortedChildren asArray copy.
   (physical size = physical asSet size and: [drawing asSet = physical asSet and: [drawing size = physical size]])
     ifFalse: [component error: 'Main witness incomplete roster'].
   current := currentReader value: component value: (Array with: diagram topGraphicalHierarchy).
   (current isKindOf: Dictionary) ifFalse: [component error: current asString].
   (current at: 'verify') value ifFalse: [component error: 'Main witness image changed during capture'].
   record := Dictionary new at: 'owner' put: component item; at: 'root' put: root;
     at: 'diagram' put: diagram; at: 'parent' put: parent; at: 'collection' put: parent children;
     at: 'physical' put: physical; at: 'drawing' put: drawing; at: 'generation' put: (root at: 'generation');
     at: 'ids' put: (root at: 'ids'); at: 'counter' put: (root at: 'counter');
     at: 'idRows' put: ((root at: 'ids') associations collect: [:a | Array with: a key with: a value]);
     at: 'physicalRefs' put: (refs value: physical); at: 'drawingRefs' put: (refs value: drawing);
     at: 'source' put: ((root at: 'copySource') value: diagram specification specSourceInternalOrNil);
     at: 'current' put: current; yourself.
   record at: 'objectBindings' put: (physical collect: [:member | Dictionary new
     at: 'ref' put: (refs value: (Array with: member)) first;
     at: 'wrapper_ref' put: ((current at: 'tokens') at: member);
     at: 'basic_ref' put: ((current at: 'tokens') at: member basicGraphObject); yourself]).
   registry at: token put: record
 ] ifFalse: [
   record := registry at: token ifAbsent: [component error: 'Main witness unavailable'].
   ((record at: 'owner') == component item and: [(record at: 'root') == root])
     ifFalse: [component error: 'Main witness identity expired'].
   current := record at: 'current'
 ].
 physical := record at: 'physical'. drawing := record at: 'drawing'.
 idsSame := (root at: 'ids') == (record at: 'ids') and: [
   (root at: 'counter') = (record at: 'counter') and: [
   (root at: 'ids') size = (record at: 'idRows') size and: [
   (record at: 'idRows') allSatisfy: [:pair | ((root at: 'ids') at: pair first ifAbsent: [nil]) == pair last]]]].
 sourceSame := (root at: 'sameSource') value: diagram specification specSourceInternalOrNil value: (record at: 'source').
 unchanged := (record at: 'diagram') == diagram and: [(record at: 'parent') == parent and: [
   (record at: 'collection') == parent children and: [(record at: 'generation') = (root at: 'generation') and: [
   (sameOrder value: parent children value: physical) and: [
   (sameOrder value: parent sortedChildren value: drawing) and: [
   idsSame and: [sourceSame and: [(current at: 'verify') value]]]]]]]].
 out := Dictionary new at: 'profile' put: 'main_readonly_witness_v1'; at: 'action' put: action;
   at: 'token' put: token; at: 'component_oid' put: component getOID; at: 'diagram' put: 'Main';
   at: 'generation' put: (root at: 'generation'); at: 'unchanged' put: unchanged;
   at: 'physical' put: (record at: 'physicalRefs'); at: 'drawing' put: (record at: 'drawingRefs');
   at: 'objects' put: (current at: 'snapshots') size;
   at: 'ids_unchanged' put: idsSame; at: 'source_unchanged' put: sourceSame;
   at: 'physical_identity_order_unchanged' put: (sameOrder value: parent children value: physical);
   at: 'drawing_identity_order_unchanged' put: (sameOrder value: parent sortedChildren value: drawing);
   at: 'native_fields_unchanged' put: (current at: 'verify') value;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'released' put: (action = 'release'); at: 'retained' put: (action ~= 'release');
   at: 'original_graph' put: (current at: 'originalImage');
   at: 'original_fields' put: (current at: 'fieldDiagnostics') value;
   at: 'object_bindings' put: (record at: 'objectBindings'); yourself.
 action = 'capture' ifFalse: [
   actual := (current at: 'diff') value.
   out at: 'graphical_diff' put: actual;
     at: 'terminal_graph' put: (current at: 'terminalImage') value;
     at: 'terminal_fields' put: (current at: 'terminalFieldDiagnostics') value].
 (action = 'release' and: [unchanged not]) ifTrue: [
   component error: 'Failed Main witness must remain retained until exact restoration'].
 action = 'release' ifTrue: [registry removeKey: token].
 (current at: 'encode') value: out
 ] ifFail: [:error | 'BDE_MAIN_WITNESS_ERROR: ', error messageText]
]]
