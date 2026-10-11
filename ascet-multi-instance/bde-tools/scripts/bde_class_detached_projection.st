[:component :diagram |
 component handleExceptionsIn: [
 | checked point alias rows walk count encode out |
 checked := [:value | (value isKindOf: EtasAPIError) ifTrue: [component error: value errorMessage]. value].
 point := [:value | | p | p := checked value: value.
   (p isKindOf: Point) ifFalse: [component error: 'Detached geometry unavailable'].
   (p x isInteger and: [p y isInteger]) ifFalse: [component error: 'Detached geometry must be integral'].
   Array with: p x with: p y].
 alias := [:value |
   value isNil ifTrue: [nil] ifFalse: [
     value isString ifTrue: [Array with: 'string' with: value] ifFalse: [
       (value isKindOf: ByteArray) ifFalse: [component error: 'Unsupported detached alias'].
       Array with: 'bytes' with: value asArray]]].
 rows := OrderedCollection new. count := 0.
 diagram isStateMachineDiagram ifTrue: [component error: 'Ordinary BDE required for detached checkpoint'].
 walk := [:scope :name :depth |
   | nodes edges comments |
   (depth > 16 or: [rows size >= 64]) ifTrue: [component error: 'Detached scope bound exceeded'].
   nodes := OrderedCollection new. edges := OrderedCollection new. comments := OrderedCollection new.
   (checked value: scope getAllDiagramElements) do: [:node |
     | native frame row pins |
     count := count + 1. count > 100000 ifTrue: [component error: 'Detached item bound exceeded'].
     native := node diagramElement. frame := native basicGraphObject logicFrame.
     pins := OrderedCollection new.
     (checked value: node getAllPins) do: [:pin |
       | value entry sequence call |
       count := count + 1. count > 100000 ifTrue: [component error: 'Detached item bound exceeded'].
       value := pin diagramElement. sequence := nil.
       (checked value: pin hasSequenceCall) ifTrue: [
         call := checked value: pin getSequenceCall.
         sequence := Array with: call diagramElement identifier with: (checked value: call getSequenceNumber)
           with: (alias value: call diagramElement description first)
           with: (point value: call getPosition).
         sequence := sequence, (Array with: (call diagramElement instVarNamed: 'labelGO') text
           with: (point value: call diagramElement basicGraphObject logicFrame extent))].
       entry := Dictionary new at: 'id' put: value identifier; at: 'class' put: value class name asString;
         at: 'owner' put: (checked value: pin getBlockDiagramElement) identifier;
         at: 'input' put: (checked value: pin isInputPin); at: 'output' put: (checked value: pin isOutputPin);
         at: 'sequence' put: sequence; yourself.
       (value respondsTo: #connectorAliasName) ifTrue: [entry at: 'connector_alias' put: (alias value: value connectorAliasName)].
       (value manager respondsTo: #methodAliasName) ifTrue: [entry at: 'method_alias' put: (alias value: value manager methodAliasName)].
       pins add: entry].
     row := Dictionary new at: 'id' put: native identifier; at: 'class' put: native class name asString;
       at: 'anchor' put: (point value: native getPosition); at: 'position' put: (point value: frame origin);
       at: 'size' put: (point value: frame extent); at: 'pins' put: pins; yourself.
     node isBlockDiagramLiteral ifTrue: [row at: 'literal' put: (checked value: node getLiteralText)].
     node isBlockDiagramControl ifTrue: [row at: 'control' put: (checked value: node getType)].
     node isBlockDiagramOperator ifTrue: [row at: 'operator' put: (checked value: node getType)].
     node isBlockDiagramHierarchy ifTrue: [row at: 'hierarchy_name' put: (checked value: node getName)].
     node isBlockDiagramFunctionalElement ifTrue: [row at: 'element_alias' put: (alias value: native element xmlOID)].
     (native isKindOf: ASDConversionGO) ifTrue: [row at: 'conversion_type' put: native conversionType asString].
     nodes add: row].
   (checked value: scope getAllDiagramConnections) do: [:edge |
     count := count + 1. count > 100000 ifTrue: [component error: 'Detached item bound exceeded'].
     edges add: (Dictionary new at: 'id' put: edge diagramElement identifier;
       at: 'class' put: edge diagramElement class name asString;
       at: 'source' put: (checked value: edge getOutputPin) diagramElement identifier;
       at: 'target' put: (checked value: edge getInputPin) diagramElement identifier;
       at: 'route' put: ((checked value: edge getAllConnectionPoints) collect: [:p | point value: p]); yourself)].
   (checked value: scope getAllDiagramComments) do: [:comment |
     count := count + 1. count > 100000 ifTrue: [component error: 'Detached item bound exceeded'].
     comments add: (Dictionary new at: 'id' put: comment diagramElement identifier;
       at: 'class' put: comment diagramElement class name asString;
       at: 'text' put: (checked value: comment getComment);
       at: 'position' put: (point value: comment getPosition); at: 'size' put: (point value: comment getSize); yourself)].
   rows add: (Dictionary new at: 'diagram' put: name; at: 'nodes' put: nodes;
     at: 'edges' put: edges; at: 'comments' put: comments; yourself).
   (checked value: scope getAllDiagramElements) do: [:node | node isBlockDiagramHierarchy ifTrue: [
     walk value: node value: (name, '/h', node diagramElement identifier printString) value: depth + 1]]].
 walk value: diagram value: 'Main' value: 0.
 out := WriteStream on: String new.
 encode := [:value |
   value isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   value isString ifTrue: [value size > 1048576 ifTrue: [component error: 'Detached text bound exceeded'].
     out nextPutAll: '{"$s":['. value asCebraString doWithIndex: [:b :i |
     i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: b printString]. out nextPutAll: ']}'] ifFalse: [
   ((value == true or: [value == false]) or: [value isInteger]) ifTrue: [out nextPutAll: value printString] ifFalse: [
   (value isKindOf: Dictionary) ifTrue: [out nextPutAll: '{"$d":['.
     value keys asSortedCollection doWithIndex: [:key :i | i > 1 ifTrue: [out nextPut: $,].
       out nextPut: $[. encode value: key. out nextPut: $,. encode value: (value at: key). out nextPut: $]].
     out nextPutAll: ']}'] ifFalse: [value isCollection ifFalse: [component error: 'Unsupported detached field'].
     out nextPut: $[. value doWithIndex: [:item :i | i > 1 ifTrue: [out nextPut: $,]. encode value: item]. out nextPut: $]]]]].
   out position > 33554432 ifTrue: [component error: 'Detached projection byte bound exceeded']].
 encode value: rows. out contents
 ] ifFail: [:error | 'BDE_CLASS_DETACHED_ERROR: ', error messageText]
]
