[:component :scopeName |
 component handleExceptionsIn: [
 | registry root view rows encode out describe point |
 registry := Smalltalk at: #DogeBDEStructureIdentityV2.
 root := registry at: component getOID, '/', (scopeName subStrings: $/) first.
 view := root at: 'activeDiagram'. rows := OrderedCollection new.
 point := [:p | Array with: p x with: p y].
 describe := [:object | | row parent |
   parent := object manager.
   row := Dictionary new at: 'class' put: object class name asString;
     at: 'manager_class' put: parent class name asString; yourself.
   (object respondsTo: #identifier) ifTrue: [row at: 'identifier' put: object identifier].
   (parent respondsTo: #children) ifTrue: [row at: 'children_index' put: (parent children indexOf: object)].
   (object respondsTo: #basicGraphObject) ifTrue: [
     row at: 'basic_class' put: object basicGraphObject class name asString.
     (object basicGraphObject respondsTo: #logicFrame) ifTrue: [
       row at: 'position' put: (point value: object basicGraphObject logicFrame origin);
           at: 'size' put: (point value: object basicGraphObject logicFrame extent)
     ]
   ]. row
 ].
 view getAllDiagramElements do: [:node |
   node isBlockDiagramHierarchy ifTrue: [
     | hierarchy graph ports |
     hierarchy := node diagramElement. graph := hierarchy basicGraphObject.
     ports := OrderedCollection new.
     node getAllPins do: [:pin |
       | external internal connector row |
       external := pin diagramElement. internal := external getInternalConnectorGO.
       connector := internal getConnectorGO.
       row := Dictionary new at: 'name' put: pin getName;
         at: 'input' put: pin isInputPin; at: 'output' put: pin isOutputPin;
         at: 'external' put: (describe value: external);
         at: 'internal_connector' put: (describe value: internal);
         at: 'internal_node' put: (describe value: connector);
         at: 'external_in_interface_gos' put: (graph interfaceGOs includes: external);
         at: 'internal_interface_matches' put: (internal interfaceElementGO == external);
         yourself.
       ports add: row
     ].
     rows add: (Dictionary new at: 'hierarchy' put: (describe value: hierarchy);
       at: 'child_manager_class' put: hierarchy contents class name asString;
       at: 'interface_classes' put: (graph interfaceGOs collect: [:port | port class name asString]);
       at: 'ports' put: ports; yourself)
   ]
 ].
 out := WriteStream on: String new.
 encode := [:value |
   value isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   value isString ifTrue: [
     out nextPutAll: '{"$s":['. value asCebraString doWithIndex: [:b :i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: b printString]. out nextPutAll: ']}'
   ] ifFalse: [
   ((value == true or: [value == false]) or: [value isInteger]) ifTrue: [out nextPutAll: value printString] ifFalse: [
   (value isKindOf: Dictionary) ifTrue: [
     out nextPutAll: '{"$d":['.
     value keys asSortedCollection doWithIndex: [:key :i | i > 1 ifTrue: [out nextPut: $,]. out nextPut: $[.
       encode value: key. out nextPut: $,. encode value: (value at: key). out nextPut: $]]. out nextPutAll: ']}'
   ] ifFalse: [
     value isCollection ifFalse: [component error: 'Unsupported port probe value'].
     out nextPut: $[. value doWithIndex: [:item :i | i > 1 ifTrue: [out nextPut: $,]. encode value: item]. out nextPut: $]
   ]]]]
 ].
 encode value: rows. out contents
 ] ifFail: [:error | 'BDE_PORT_PROBE_ERROR: ', error messageText]
]
