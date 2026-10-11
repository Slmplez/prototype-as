[:component :target :mode |
 component handleExceptionsIn: [
 | checked point identity describePin graph walk kinds tree total encode out result includeTree scopeNamesOnly |
 (#('graph' 'tree' 'scopes') includes: mode) ifFalse: [component error: 'Unknown public graph mode'].
 includeTree := mode ~= 'graph'. scopeNamesOnly := mode = 'scopes'.
 checked := [:value |
   (value isKindOf: EtasAPIError) ifTrue: [component error: 'Public graph getter returned an API error'].
   value
 ].
 point := [:value |
   | p |
   p := checked value: value.
   (p isKindOf: Point) ifFalse: [component error: 'Public graph point unavailable'].
   (p x isInteger and: [p y isInteger]) ifFalse: [component error: 'Noninteger public geometry'].
   Array with: p x with: p y
 ].
 identity := [:api |
   | native |
   native := checked value: api diagramElement.
   Dictionary new at: 'native_class' put: native class name asString;
     at: 'id' put: native identifier; yourself
 ].
 kinds := Dictionary new
   at: 'EtasAPIBlockDiagramFunctionalElement' put: 'BlockDiagramFunctionalElement';
   at: 'EtasAPIBlockDiagramHierarchy' put: 'BlockDiagramHierarchy';
   at: 'EtasAPIBlockDiagramHierarchyPin' put: 'BlockDiagramHierarchyPin';
   at: 'EtasAPIBlockDiagramOperator' put: 'BlockDiagramOperator';
   at: 'EtasAPIBlockDiagramControl' put: 'BlockDiagramControlElement';
   at: 'EtasAPIBlockDiagramLiteral' put: 'BlockDiagramLiteral'; yourself.
 total := 0.
 describePin := [:api |
   | owner sequence call method |
   total := total + 1. total > 100000 ifTrue: [component error: 'Public graph item bound exceeded'].
   owner := checked value: api getBlockDiagramElement.
   sequence := nil.
   (checked value: api hasSequenceCall) ifTrue: [
     call := checked value: api getSequenceCall.
     method := checked value: call getSequenceActivator.
     sequence := Dictionary new at: 'number' put: (checked value: call getSequenceNumber);
       at: 'method' put: (method isNil ifTrue: [nil] ifFalse: [checked value: method getName]);
       at: 'position' put: (point value: call getPosition); yourself
   ].
   Dictionary new at: 'native' put: (identity value: api);
     at: 'owner' put: (checked value: owner identifier);
     at: 'name' put: (checked value: api getName);
     at: 'input' put: (checked value: api isInputPin);
     at: 'output' put: (checked value: api isOutputPin);
     at: 'sequence' put: sequence; yourself
 ].
 graph := [:scope :elements |
   | nodes edges comments |
   nodes := OrderedCollection new. edges := OrderedCollection new. comments := OrderedCollection new.
   elements do: [:api |
     | kind pins |
     total := total + 1. total > 100000 ifTrue: [component error: 'Public graph item bound exceeded'].
     kind := kinds at: api class name asString ifAbsent: [component error: 'Unsupported public node wrapper'].
     pins := (checked value: api getAllPins) collect: [:pin | describePin value: pin].
     nodes add: (Dictionary new at: 'id' put: (checked value: api identifier);
       at: 'kind' put: kind; at: 'position' put: (point value: api getPosition);
       at: 'size' put: (point value: api getSize); at: 'pins' put: pins;
       at: 'literal' put: (kind = 'BlockDiagramLiteral' ifTrue: [checked value: api getLiteralText] ifFalse: [nil]);
       at: 'op' put: (kind = 'BlockDiagramOperator' ifTrue: [checked value: api getType] ifFalse: [nil]); yourself)
   ].
   (checked value: scope getAllDiagramConnections) do: [:api |
     | coordinates count route |
     total := total + 1. total > 100000 ifTrue: [component error: 'Public graph item bound exceeded'].
     coordinates := checked value: api getSegmentCoordinatesAsArray.
     coordinates size > 20000 ifTrue: [component error: 'Public route point bound exceeded'].
     coordinates size odd ifTrue: [component error: 'Incomplete public route coordinates'].
     count := coordinates size // 2.
     route := (1 to: count) collect: [:index | Array with: (coordinates at: index) with: (coordinates at: count + index)].
     edges add: (Dictionary new at: 'native' put: (identity value: api);
       at: 'source' put: (describePin value: (checked value: api getOutputPin));
       at: 'target' put: (describePin value: (checked value: api getInputPin));
       at: 'route' put: route; at: 'type' put: (checked value: api getConnectionType); yourself)
   ].
   (checked value: scope getAllDiagramComments) do: [:api |
     total := total + 1. total > 100000 ifTrue: [component error: 'Public graph item bound exceeded'].
     comments add: (Dictionary new at: 'native' put: (identity value: api);
       at: 'text' put: (checked value: api getComment);
       at: 'position' put: (point value: api getPosition); at: 'size' put: (point value: api getSize); yourself)
   ].
   Dictionary new at: 'nodes' put: nodes; at: 'edges' put: edges; at: 'comments' put: comments; yourself
 ].
 tree := Dictionary new.
 walk := [:scope :name :depth |
   | elements |
   (depth > 16 or: [tree size >= 64]) ifTrue: [component error: 'Public hierarchy oracle bound exceeded'].
   (tree includesKey: name) ifTrue: [component error: 'Duplicate public hierarchy scope'].
   elements := checked value: scope getAllDiagramElements.
   tree at: name put: (scopeNamesOnly ifTrue: [nil] ifFalse: [graph value: scope value: elements]).
   elements do: [:api |
     api class name asString = 'EtasAPIBlockDiagramHierarchy' ifTrue: [
       walk value: api value: (name, '/h', api identifier printString) value: depth + 1
     ]
   ]
 ].
 includeTree ifTrue: [walk value: target value: 'Main' value: 0. result := tree]
   ifFalse: [result := graph value: target value: (checked value: target getAllDiagramElements)].
 out := WriteStream on: String new.
 encode := [:value |
   value isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   value isString ifTrue: [
     out nextPutAll: '{"$s":['. value asCebraString doWithIndex: [:b :i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: b printString]. out nextPutAll: ']}'
   ] ifFalse: [
   ((value == true or: [value == false]) or: [value isInteger]) ifTrue: [out nextPutAll: value printString] ifFalse: [
   (value isKindOf: Dictionary) ifTrue: [
     out nextPutAll: '{"$d":['. value keys asSortedCollection doWithIndex: [:key :i |
       i > 1 ifTrue: [out nextPut: $,]. out nextPut: $[. encode value: key.
       out nextPut: $,. encode value: (value at: key). out nextPut: $]]. out nextPutAll: ']}'
   ] ifFalse: [
     value isCollection ifFalse: [component error: 'Unsupported public graph value'].
     out nextPut: $[. value doWithIndex: [:item :i | i > 1 ifTrue: [out nextPut: $,]. encode value: item]. out nextPut: $]
   ]]]].
   out position > 33554432 ifTrue: [component error: 'Public graph payload bound exceeded']
 ].
 encode value: result. out contents
 ] ifFail: [:error | 'BDE_PUBLIC_GRAPH_ERROR: ', error messageText]
]
