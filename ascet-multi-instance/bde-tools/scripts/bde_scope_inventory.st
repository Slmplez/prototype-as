[:component :action |
 component handleExceptionsIn: [
 | result policy roots retained owner other graph key tests run encode out generation mode specification scopes edits answer refused |
 mode := action.
 action isString ifFalse: [
   ((action isKindOf: Array) and: [action size = 2 and: [action first = 'retire' and: [action last isString]]])
     ifFalse: [component error: 'Fixed exact retirement argument required'].
   generation := action last asNumber. (generation isInteger and: [generation > 0])
     ifFalse: [component error: 'Exact positive retirement generation required']. mode := action first
 ].
 (#('inventory' 'policy_tests' 'retire' 'diagram_kind') includes: mode) ifFalse: [component error: 'Fixed scope diagnostic action required'].
 mode = 'diagram_kind' ifTrue: [
   graph := component getDiagram: 'Main'. specification := graph specification.
   result := Dictionary new at: 'specification_class' put: specification class name asString;
     at: 'graphical' put: (specification respondsTo: #specSourceInternalOrNil);
     at: 'ordinary' put: graph isStateMachineDiagram not; yourself
 ] ifFalse: [mode = 'retire' ifTrue: [
   result := (Smalltalk at: #DogeBDEStructureLifecycleV1) value: component value: 'retire'
     value: (Array with: component getOID, '/Main' with: generation)
 ] ifFalse: [mode = 'inventory' ifTrue: [
   result := (Smalltalk at: #DogeBDEStructureLifecycleV1) value: component value: 'inventory' value: ''
 ] ifFalse: [
   policy := Smalltalk at: #DogeBDEStructureScopePinsV1.
   owner := Object new. other := Object new. graph := Object new. key := component getOID, '/Main'.
   roots := Dictionary new at: key put: (Dictionary new at: 'owner' put: owner;
     at: 'diagram' put: graph; at: 'generation' put: 9; at: 'lastAccess' put: 2; yourself);
     at: 'other/Main' put: (Dictionary new at: 'owner' put: other;
       at: 'diagram' put: Object new; at: 'generation' put: 4; at: 'lastAccess' put: 1; yourself); yourself.
   tests := OrderedCollection new.
   run := [:name :kind :record | [:expected |
     | observed |
     retained := Dictionary new at: kind put: (Dictionary new at: 'token' put: record; yourself); yourself.
     observed := policy value: roots value: retained.
     (((observed at: 'pins') at: key) size = expected and: [
       ((observed at: 'pins') at: 'other/Main') isEmpty]) ifFalse: [component error: 'Scope policy test failed: ', name].
     tests add: name
   ]].
   #('prepared' 'started' 'applied' 'revert_started' 'reverted' 'restore_mismatch') do: [:state |
     (run value: ('retained edit ', state) value: 'DogeBDEStructureEditsV3'
       value: (Dictionary new at: 'component' put: component getOID; at: 'diagramName' put: 'Main/h7';
         at: 'owner' put: owner; at: 'state' put: state; yourself)) value: 1
   ].
   #('DogeBDELayoutRestoresV1' 'DogeBDEDeletionRestoresV1' 'DogeBDEAttachedOrderRestoresV1') do: [:kind |
     (run value: kind value: kind value: (Dictionary new at: 'root' put: (roots at: key);
       at: 'state' put: 'restored'; yourself)) value: 1
   ].
   (run value: 'private owner' value: 'DogeBDEPrivateSessionsV1'
     value: (Dictionary new at: 'owner' put: owner; yourself)) value: 1.
   (run value: 'Main original witness' value: 'DogeBDEMainWorkflowWitnessesV1'
     value: (Dictionary new at: 'root' put: (roots at: key); at: 'owner' put: owner;
       at: 'diagram' put: graph; yourself)) value: 1.
   (run value: 'commit original resources' value: 'DogeBDECommitResourceWitnessesV1'
     value: (Dictionary new at: 'root' put: (roots at: key); at: 'owner' put: owner;
       yourself)) value: 1.
   (run value: 'order graph' value: 'DogeBDEOrderEvalV1'
     value: (Dictionary new at: 'graph' put: graph; yourself)) value: 1.
   #('DogeBDEOverlaysV1' 'DogeBDEGroupOverlaysV1') do: [:kind |
     (run value: kind value: kind value: (Dictionary new at: 'component' put: component; yourself)) value: 1
   ].
   retained := Dictionary new at: 'DogeBDEClassMaterializeV1' put:
     (Dictionary new at: key put: Dictionary new; yourself); yourself.
   (((policy value: roots value: retained) at: 'pins') at: key) size = 1
     ifFalse: [component error: 'Retained caller material not pinned']. tests add: 'caller material'.
   retained := Dictionary new at: 'DogeBDEClassStudyV1' put:
     (Dictionary new at: component getOID put: Dictionary new; yourself); yourself.
   (((policy value: roots value: retained) at: 'pins') at: key) size = 1
     ifFalse: [component error: 'Retained Class study not pinned']. tests add: 'Class study'.
   retained := Dictionary new at: 'DogeBDESourceEvalV1' put:
     (Dictionary new at: 'token' put: Dictionary new; yourself); yourself.
   ((policy value: roots value: retained) at: 'oldest') isNil
     ifFalse: [component error: 'Opaque source study must pin every scope']. tests add: 'opaque source'.
   ((policy value: roots value: Dictionary new) at: 'oldest') = 'other/Main'
     ifFalse: [component error: 'Least recently used scope differs']. tests add: 'least recently used'.
   (roots at: key) at: 'lastAccess' put: 1.
   ((policy value: roots value: Dictionary new) at: 'oldest') = key
     ifFalse: [component error: 'Stable scope tie break differs']. tests add: 'stable tie break'.
   (roots at: key) removeKey: 'lastAccess'.
   ((policy value: roots value: Dictionary new) at: 'oldest') = key
     ifFalse: [component error: 'Legacy unaccessed scope differs']. tests add: 'legacy recency'.
   run := [:name :badRoots :badRetained |
     refused := component handleExceptionsIn: [policy value: badRoots value: badRetained. false]
       ifFail: [:error | true].
     refused == true ifFalse: [component error: 'Unsafe scope policy input accepted: ', name]. tests add: name
   ].
   run value: 'malformed edit refusal' value: roots value: (Dictionary new
     at: 'DogeBDEStructureEditsV3' put: (Dictionary new at: 'token' put: Dictionary new; yourself); yourself).
   run value: 'unknown retained registry refusal' value: roots value: (Dictionary new
     at: 'UnauditedRegistry' put: (Dictionary new at: 'token' put: Dictionary new; yourself); yourself).
   run value: 'unbound restoration refusal' value: roots value: (Dictionary new
     at: 'DogeBDELayoutRestoresV1' put: (Dictionary new at: 'token' put:
       (Dictionary new at: 'root' put: Dictionary new; yourself); yourself); yourself).
   run value: 'aliased root refusal' value: (Dictionary new at: key put: (roots at: key);
     at: 'other/Main' put: (roots at: key); yourself) value: Dictionary new.
   scopes := Dictionary new. edits := Dictionary new.
   1 to: 64 do: [:index | | oid record |
     oid := 's', index printString.
     record := Dictionary new at: 'owner' put: Object new; at: 'generation' put: index;
       at: 'lastAccess' put: index; yourself. scopes at: oid, '/Main' put: record.
     edits at: index printString put: (Dictionary new at: 'component' put: oid;
       at: 'diagramName' put: 'Main'; at: 'owner' put: (record at: 'owner'); at: 'state' put: 'prepared'; yourself)
   ].
   retained := Dictionary new at: 'DogeBDEStructureEditsV3' put: edits; yourself.
   answer := policy value: scopes value: retained.
   ((answer at: 'oldest') isNil and: [(answer at: 'pins') values allSatisfy: [:reasons | reasons size = 1]])
     ifFalse: [component error: 'All64pinned policy failed']. tests add: 'all64pinned'.
   edits removeKey: '64'.
   ((policy value: scopes value: retained) at: 'oldest') = 's64/Main'
     ifFalse: [component error: 'Single unpinned scope is not the only candidate']. tests add: 'single unpinned'.
   result := Dictionary new at: 'profile' put: 'structural_scope_policy_tests_v1';
     at: 'passed' put: true; at: 'tests' put: tests asArray; at: 'model_setters_called' put: 0;
     at: 'store_called' put: false; at: 'registry_unchanged' put: true; yourself
 ]]].
 out := WriteStream on: String new.
 encode := [:value |
   value isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   value isString ifTrue: [out nextPutAll: '{"$s":['.
     value asCebraString doWithIndex: [:byte :index | index > 1 ifTrue: [out nextPut: $,]. out nextPutAll: byte printString].
     out nextPutAll: ']}'] ifFalse: [
   ((value == true or: [value == false]) or: [value isInteger]) ifTrue: [out nextPutAll: value printString] ifFalse: [
   (value isKindOf: Dictionary) ifTrue: [ | first | first := true. out nextPutAll: '{"$d":['.
     value keys asSortedCollection do: [:name | first ifFalse: [out nextPut: $,]. first := false.
       out nextPut: $[. encode value: name. out nextPut: $,. encode value: (value at: name). out nextPut: $]].
     out nextPutAll: ']}'] ifFalse: [
   value isCollection ifTrue: [ | first | first := true. out nextPut: $[.
     value do: [:item | first ifFalse: [out nextPut: $,]. first := false. encode value: item]. out nextPut: $]
   ] ifFalse: [component error: 'Unsupported scope diagnostic value']]]]]
 ]. encode value: result. out contents
 ] ifFail: [:error | 'BDE_SCOPE_ERROR: ', error messageText]
]
