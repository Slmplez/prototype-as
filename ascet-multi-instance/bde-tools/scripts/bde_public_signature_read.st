[:component |
 component handleExceptionsIn: [
 | checked keyFor formal rows encode out |
 checked := [:value |
   (value isKindOf: EtasAPIError) ifTrue: [component error: 'Public signature getter returned an API error'].
   value
 ].
 keyFor := [:key |
   | stream digits |
   key isString ifTrue: ['string:', key] ifFalse: [
     (key isKindOf: ByteArray) ifFalse: [component error: 'Unsupported public signature alias'].
     stream := WriteStream on: String new. digits := '0123456789abcdef'.
     key do: [:b | stream nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)].
     'bytes:', stream contents
   ]
 ].
 formal := [:api :slot :index |
   Dictionary new at: 'alias' put: (keyFor value: (checked value: api element) xmlOID);
     at: 'name' put: (checked value: api getName); at: 'slot' put: slot; at: 'index' put: index; yourself
 ].
 rows := OrderedCollection new.
 (checked value: component getAllDiagrams) do: [:diagram |
   (diagram isKindOf: EtasAPIDiscreteMethodDiagram) ifTrue: [
     (checked value: diagram getAllMethods) do: [:api |
       | arguments returned |
       arguments := OrderedCollection new.
       (checked value: api getAllArgumentElements) doWithIndex: [:argument :index |
         index > 256 ifTrue: [component error: 'Public argument bound exceeded'].
         arguments add: (formal value: argument value: 'argument' value: index)
       ].
       returned := checked value: api getReturnElement.
       rows add: (Dictionary new at: 'alias' put: (keyFor value: (checked value: api method) aliasName);
         at: 'name' put: (checked value: api getName); at: 'diagram' put: (checked value: diagram getName);
         at: 'arguments' put: arguments;
         at: 'return' put: (returned isNil ifTrue: [nil] ifFalse: [formal value: returned value: 'return' value: 0]); yourself).
       rows size > 256 ifTrue: [component error: 'Public method bound exceeded']
     ]
   ]
 ].
 out := WriteStream on: String new.
 encode := [:value |
   value isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   value isString ifTrue: [
     out nextPutAll: '{"$s":['. value asCebraString doWithIndex: [:b :i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: b printString]. out nextPutAll: ']}'
   ] ifFalse: [
   value isInteger ifTrue: [out nextPutAll: value printString] ifFalse: [
   (value isKindOf: Dictionary) ifTrue: [
     out nextPutAll: '{"$d":['. value keys asSortedCollection doWithIndex: [:key :i |
       i > 1 ifTrue: [out nextPut: $,]. out nextPut: $[. encode value: key.
       out nextPut: $,. encode value: (value at: key). out nextPut: $]]. out nextPutAll: ']}'
   ] ifFalse: [
     value isCollection ifFalse: [component error: 'Unsupported public signature value'].
     out nextPut: $[. value doWithIndex: [:item :i | i > 1 ifTrue: [out nextPut: $,]. encode value: item]. out nextPut: $]
   ]]]]
 ].
 encode value: rows. out contents
 ] ifFail: [:error | 'BDE_PUBLIC_SIGNATURE_ERROR: ', error messageText]
]
