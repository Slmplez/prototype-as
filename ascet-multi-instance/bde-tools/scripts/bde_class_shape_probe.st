[:component :token |
 component handleExceptionsIn: [
 | record roots cache fresh shape encode out result |
 component getOID = '040ts00000001qg7180gki3t9j306' ifFalse: [component error: 'Exact isolated hierarchy fixture required'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 (record at: 'owner') == component item ifFalse: [component error: 'Native record owner mismatch'].
 fresh := component getDiagram: 'Main'.
 roots := Smalltalk at: #DogeBDEStructureIdentityV2.
 cache := roots at: (component getOID, '/Main').
 shape := [:view |
   | rows visit count |
   rows := OrderedCollection new. count := 0.
   visit := [:current :path :depth |
     depth > 16 ifTrue: [component error: 'Shape depth bound exceeded'].
     current getAllDiagramElements do: [:node |
       count := count + 1. count > 8192 ifTrue: [component error: 'Shape node bound exceeded'].
       node getAllPins do: [:pin |
         rows size >= 16384 ifTrue: [component error: 'Shape pin bound exceeded'].
         rows add: (Array with: path with: node diagramElement identifier with: pin diagramElement identifier
           with: (Array with: pin getName with: pin isInputPin with: pin isOutputPin))
       ].
       node isBlockDiagramHierarchy ifTrue: [visit value: node value: (path, '/h', node diagramElement identifier printString) value: depth + 1]
     ]
   ]. visit value: view value: 'Main' value: 0. rows asArray
 ].
 result := Dictionary new at: 'oid' put: component getOID; at: 'token' put: token;
   at: 'state' put: (record at: 'state'); at: 'operation' put: (record at: 'operation');
   at: 'record_shape' put: (shape value: (record at: 'diagram'));
   at: 'fresh_shape' put: (shape value: fresh); at: 'registry_shape' put: (shape value: (cache at: 'diagram'));
   at: 'generation' put: (cache at: 'generation'); at: 'created_id' put: (record at: 'created') diagramElement identifier;
   at: 'before_text' put: (record at: 'before');
   at: 'record_specification_matches' put: ((record at: 'diagram') specification == fresh specification);
   at: 'cache_is_record_diagram' put: ((cache at: 'diagram') == (record at: 'diagram')); yourself.
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
     value isCollection ifFalse: [component error: 'Unsupported diagnostic value'].
     out nextPut: $[. value doWithIndex: [:item :i | i > 1 ifTrue: [out nextPut: $,]. encode value: item]. out nextPut: $]
   ]]]]
 ]. encode value: result. out contents
 ] ifFail: [:error | 'BDE_CLASS_SHAPE_ERROR: ', error messageText]
]
