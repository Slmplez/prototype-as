[:component |
 component handleExceptionsIn: [
 | raw references callers excluded check keyFor aliasFor encode out visited scopeCount pinCount declarationCount |
 component isClass ifFalse: [component error: 'Class required'].
 check := [:v | (v isKindOf: EtasAPIError) ifTrue: [component error: v errorMessage]. v].
 keyFor := [:key |
   | stream digits |
   (key isKindOf: ByteArray) ifFalse: [component error: 'Byte identity required'].
   stream := WriteStream on: String new. digits := '0123456789abcdef'.
   key do: [:b | stream nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)].
   stream contents
 ].
 aliasFor := [:key | key isNil ifTrue: [nil] ifFalse: [
   key isString ifTrue: ['string:', key] ifFalse: ['bytes:', (keyFor value: key)]]].
 raw := component item dbObject.
 (raw isKindOf: DBProxy) ifTrue: [
   references := raw readReferences. references isError ifTrue: [component error: 'Class reference read failed'].
   references := references isReferencedBys
 ] ifFalse: [component error: 'Caller discovery currently requires DBProxy'].
 references size > 256 ifTrue: [component error: 'Caller reference bound exceeded'].
 callers := OrderedCollection new. excluded := OrderedCollection new. visited := 0. scopeCount := 0.
 pinCount := 0. declarationCount := 0.
 references do: [:reference |
   | oid name item api declarations scopes resourceScopes nonBde visit |
   oid := reference globalIdString. name := reference className.
   ((#('SGClass' 'SGModule') includes: name) and: [oid ~= component getOID]) ifTrue: [
     item := reference getObjectIfUndefined: [nil].
     item isNil ifTrue: [component error: 'Caller reference cannot be resolved'].
     api := check value: item getAPIHandle.
     ((api getOID = oid) and: [api item == item]) ifFalse: [component error: 'Resolved caller identity mismatch'].
     declarations := OrderedCollection new.
     api getAllVariables do: [:model |
       declarationCount := declarationCount + 1.
       declarationCount > 8192 ifTrue: [component error: 'Caller declaration bound exceeded'].
       model isComplex ifTrue: [
         (check value: model getRepresentedClass) getOID = component getOID ifTrue: [
           declarations add: (Dictionary new at: 'ref' put: ('m_', (keyFor value: model element xmlOID));
             at: 'name' put: model getName; at: 'native' put: model element; yourself)
         ]
       ]
     ].
     scopes := OrderedCollection new. resourceScopes := OrderedCollection new. nonBde := OrderedCollection new.
     visit := [:view :scope :depth |
       | occurrences |
       depth > 16 ifTrue: [component error: 'Caller hierarchy depth bound exceeded'].
       scopeCount := scopeCount + 1. scopeCount > 1024 ifTrue: [component error: 'Caller scope bound exceeded'].
       resourceScopes add: scope.
       occurrences := OrderedCollection new.
       view getAllDiagramElements do: [:node |
         visited := visited + 1. visited > 8192 ifTrue: [component error: 'Caller node bound exceeded'].
         node isBlockDiagramFunctionalElement ifTrue: [
           declarations do: [:declaration |
             node diagramElement element == (declaration at: 'native') ifTrue: [
               occurrences add: (Dictionary new at: 'node' put: node diagramElement identifier;
                 at: 'model_ref' put: (declaration at: 'ref'); at: 'name' put: (declaration at: 'name');
                 at: 'pins' put: (node getAllPins collect: [:pin |
                   | position |
                   pinCount := pinCount + 1. pinCount > 16384 ifTrue: [component error: 'Caller pin bound exceeded'].
                   position := pin diagramElement getPosition.
                   Dictionary new
                   at: 'id' put: pin diagramElement identifier; at: 'name' put: pin getName;
                   at: 'input' put: pin isInputPin; at: 'output' put: pin isOutputPin;
                   at: 'position' put: (Array with: position x with: position y);
                   at: 'formal_alias' put: (aliasFor value: pin diagramElement connectorAliasName);
                   at: 'method_alias' put: (aliasFor value: pin diagramElement manager methodAliasName); yourself]); yourself)
             ]
           ]
         ].
         node isBlockDiagramHierarchy ifTrue: [visit value: node
           value: (scope, '/h', node diagramElement identifier printString) value: depth + 1]
       ].
       occurrences notEmpty ifTrue: [scopes add: (Dictionary new at: 'diagram' put: scope;
         at: 'occurrences' put: (occurrences asSortedCollection: [:a :b | (a at: 'node') < (b at: 'node')]); yourself)]
     ].
     api getAllDiagrams do: [:diagram |
       diagram isBlockDiagram ifTrue: [visit value: diagram value: diagram getName value: 0]
         ifFalse: [nonBde add: diagram getName]
     ].
     declarations do: [:declaration | declaration removeKey: 'native'].
     declarations notEmpty ifTrue: [
       callers add: (Dictionary new at: 'component' put: api getFolderPathName; at: 'oid' put: oid;
         at: 'native_class' put: name;
         at: 'resource_scopes' put: resourceScopes asSortedCollection;
         at: 'non_bde_diagrams' put: nonBde asSortedCollection;
         at: 'declarations' put: (declarations asSortedCollection: [:a :b | (a at: 'ref') < (b at: 'ref')]);
         at: 'scopes' put: (scopes asSortedCollection: [:a :b | (a at: 'diagram') < (b at: 'diagram')]); yourself)
     ] ifFalse: [excluded add: (Dictionary new at: 'oid' put: oid; at: 'native_class' put: name;
       at: 'reason' put: 'no_direct_class_declaration'; yourself)]
   ] ifFalse: [excluded add: (Dictionary new at: 'oid' put: oid; at: 'native_class' put: name;
     at: 'reason' put: (oid = component getOID ifTrue: ['definition_self'] ifFalse: ['not_code_owner']); yourself)]
 ].
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
     value isCollection ifFalse: [component error: 'Unsupported caller discovery value'].
     out nextPut: $[. value doWithIndex: [:item :i | i > 1 ifTrue: [out nextPut: $,]. encode value: item]. out nextPut: $]
   ]]]]
 ].
 encode value: (Dictionary new at: 'definition_oid' put: component getOID;
   at: 'callers' put: (callers asSortedCollection: [:a :b | (a at: 'oid') < (b at: 'oid')]);
   at: 'excluded' put: (excluded asSortedCollection: [:a :b | (a at: 'oid') < (b at: 'oid')]);
   at: 'visited_nodes' put: visited; at: 'visited_scopes' put: scopeCount; yourself).
 out contents
 ] ifFail: [:error | 'BDE_CLASS_CALLERS_ERROR: ', error messageText]
]
