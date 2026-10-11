[:component |
 component handleExceptionsIn: [
 | methods result keyFor describe encode out raw refs |
 component isClass ifFalse: [component error: 'Class required'].
 keyFor := [:key |
   | s digits |
   key isString ifTrue: ['string:', key] ifFalse: [
     (key isKindOf: ByteArray) ifFalse: [component error: 'Unsupported native signature identity'].
     s := WriteStream on: String new. digits := '0123456789abcdef'.
     key do: [:b | s nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)].
     'bytes:', s contents
   ]
 ].
 describe := [:formal :method :placement |
   | row type slot index |
   slot := placement first. index := placement last.
   type := formal sgClass.
   type hasBasicType ifTrue: [type := type basicType].
   (type isSGEnumeration not and: [#('cont' 'sdisc' 'udisc' 'log') includes: type label])
     ifFalse: [component error: 'Primitive native signature type required'].
   row := Dictionary new at: 'alias' put: (keyFor value: formal xmlOID);
     at: 'name' put: (method getAPIHandle getName, '/', formal elementName);
     at: 'slot' put: slot; at: 'index' put: index;
     at: 'native_class' put: formal class name asString;
     at: 'owner_matches' put: (formal owner == method); at: 'model_type' put: type label; yourself.
   slot = 'argument' ifTrue: [
     row at: 'in' put: formal isIn; at: 'out' put: formal isOut; at: 'in_out' put: formal isInOut
   ]. row
 ].
 methods := OrderedCollection new.
 component getAllDiagrams do: [:diagram |
   (diagram isKindOf: EtasAPIDiscreteMethodDiagram) ifTrue: [
     diagram getAllMethods do: [:api |
       | method row arguments returned |
       method := api method. arguments := OrderedCollection new.
       method arguments size > 256 ifTrue: [component error: 'Argument bound exceeded'].
       method arguments doWithIndex: [:formal :index |
         arguments add: (describe value: formal value: method value: (Array with: 'argument' with: index))
       ].
       returned := method returnValue isNil ifTrue: [nil] ifFalse: [
         describe value: method returnValue value: method value: (Array with: 'return' with: 0)
       ].
       row := Dictionary new at: 'alias' put: (keyFor value: method aliasName);
         at: 'name' put: api getName; at: 'diagram' put: diagram getName;
         at: 'owner_matches' put: (method ownerSGClass == component item);
         at: 'arguments' put: arguments; at: 'return' put: returned; yourself.
       methods add: row. methods size > 256 ifTrue: [component error: 'Method bound exceeded']
     ]
   ]
 ].
 raw := component item dbObject.
 (raw isKindOf: DBProxy) ifTrue: [
   refs := raw readReferences. refs isError ifTrue: [component error: 'Class reference read failed'].
   refs := refs isReferencedBys
 ] ifFalse: [
   (raw isKindOf: DBXmlObject) ifFalse: [component error: 'Unsupported Class reference backend'].
   refs := raw references referencedBy
 ].
 refs size > 256 ifTrue: [component error: 'Reference bound exceeded'].
 result := Dictionary new at: 'oid' put: component getOID; at: 'path' put: component getFolderPathName;
   at: 'methods' put: methods; at: 'references' put: ((refs asArray collect: [:reference |
     | key |
     key := (reference isKindOf: DBProxy) ifTrue: [reference globalId] ifFalse: [
       (reference isKindOf: DBXmlObject) ifFalse: [component error: 'Unsupported Class referrer'].
       reference oid
     ].
     Dictionary new at: 'native_class' put: reference class name asString;
       at: 'identity' put: (keyFor value: key);
       at: 'class_name' put: reference className; at: 'label' put: reference label;
       at: 'oid' put: reference globalIdString; yourself])
       asSortedCollection: [:a :b | (a at: 'identity') < (b at: 'identity')]); yourself.
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
     value isCollection ifFalse: [component error: 'Unsupported native signature value'].
     out nextPut: $[. value doWithIndex: [:item :i | i > 1 ifTrue: [out nextPut: $,]. encode value: item]. out nextPut: $]
   ]]]]
 ].
 encode value: result. out contents
 ] ifFail: [:error | 'BDE_NATIVE_SIGNATURE_ERROR: ', error messageText]
]
