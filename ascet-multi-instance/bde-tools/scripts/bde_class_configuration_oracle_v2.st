[:component |
 component handleExceptionsIn: [
 | configClasses slotClasses references roots queue ids nodes atom keyFor referenceFor encode out result links |
 configClasses := #('SGClassImplConfig' 'SGClassValueConfig' 'SGImplConfiguration' 'SGValueConfiguration').
 slotClasses := #('RBArithmeticElement' 'RBDataEnumeration' 'RBDataBoolean' 'RBDataDescription'
   'RBBoundedLattice' 'RBInterval' 'RBTypedValue' 'RBBoolean' 'RBFloat' 'RBInt16Signed'
   'RBInt32Unsigned' 'RBInt32Signed' 'RBInt16Unsigned' 'RBInt8Unsigned' 'RBInt8Signed'
   'RBStringType' 'RBFormulaId' 'RBFormulaEnum' 'RBFormulaString' 'RBOneDCharTable' 'RBTwoDCharTable' 'RBImplBoolean' 'RBDataVector' 'RBDataMatrix' 'RBDiscreteDistribution'
   'SGCodeArchive' 'SGMethodImplementation' 'ASDAdditionalImplInfo' 'SGExtraImplInfo' 'Infinity' 'RBBit' 'RBEnumeration' 'Vector' 'Matrix' 'Point' 'SGEnumeration' 'SortedCollection' 'ASDEnumerationEntry').
 keyFor := [:bytes |
   | stream digits |
   stream := WriteStream on: String new. digits := '0123456789abcdef'.
   bytes do: [:b | ((b isInteger and: [b >= 0]) and: [b <= 255])
     ifFalse: [component error: 'Configuration byte representation invalid'].
     stream nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)].
   stream contents
 ].
 "Assert the runtime representation independently of decimal formatting."
 ((keyFor value: (1.0 asByteArray)) = '000000000000f03f' and: [
   (keyFor value: ((1 to: 8) collect: [:i | 1.0 basicAt: i])) = '000000000000f03f'])
   ifFalse: [component error: 'Unsupported native Float representation'].
 atom := [:value |
   | row |
   row := nil.
   value isNil ifTrue: [row := #('nil')].
   (value == true or: [value == false]) ifTrue: [row := Array with: 'boolean' with: value].
   value isInteger ifTrue: [row := Array with: 'integer' with: value printString].
   value class == Float ifTrue: [row := Array with: 'float64le' with:
     (keyFor value: ((1 to: 8) collect: [:i | value basicAt: i]))].
   (value isKindOf: ByteArray) ifTrue: [row := Array with: 'bytes' with: (keyFor value: value)].
   (value isKindOf: Symbol) ifTrue: [row := Array with: 'symbol' with: value asString].
   value class == String ifTrue: [row := Array with: 'string' with: value].
   row
 ].
 queue := OrderedCollection new. nodes := OrderedCollection new. ids := IdentityDictionary new.
 links := Dictionary new.
 referenceFor := [:value |
   | scalar id row oid className object configIdentity |
   object := value.
   scalar := atom value: value.
   ((value class == String) or: [value isKindOf: ByteArray]) ifTrue: [scalar := nil].
   scalar isNil ifTrue: [
     (value isKindOf: DBProxy) ifTrue: [
       oid := value globalIdString. className := value className.
       (configClasses includes: className) ifTrue: [
         links at: oid put: className.
         configIdentity := oid.
         object := value getObjectIfUndefined: [component error: 'Unresolved linked configuration']
       ] ifFalse: [scalar := Array with: 'database' with: oid with: className]
     ].
     scalar isNil ifTrue: [
       id := ids at: object ifAbsent: [
         queue size >= 32768 ifTrue: [component error: 'Configuration object bound exceeded'].
         queue add: object. nodes add: nil. ids at: object put: queue size. queue size
       ].
       row := configIdentity isNil ifTrue: [Array with: 'ref' with: id]
         ifFalse: [Array with: 'config_ref' with: id with: configIdentity with: className]
     ] ifFalse: [row := scalar]
   ] ifFalse: [row := scalar]. row
 ].
 references := component item dbObject readReferences.
 references isError ifTrue: [component error: 'Configuration reference read failed'].
 references := references isReferencedBys.
 references size > 256 ifTrue: [component error: 'Configuration root reference bound exceeded'].
 references := (references select: [:reference | configClasses includes: reference className])
   asSortedCollection: [:a :b | a globalIdString < b globalIdString].
 roots := OrderedCollection new.
 references do: [:reference |
   | config oid |
   oid := reference globalIdString.
   (roots anySatisfy: [:root | root first = oid]) ifTrue: [component error: 'Duplicate configuration root'].
   config := reference getObjectIfUndefined: [component error: 'Unresolved configuration root'].
   config class name asString = reference className ifFalse: [component error: 'Configuration native class mismatch'].
   roots add: (Array with: oid with: reference className with: config label with: (referenceFor value: config))
 ].
 1 to: 32768 do: [:index |
   index <= queue size ifTrue: [
     | value name fields row entries keyed token keys |
     value := queue at: index. name := value class name asString.
     row := Dictionary new at: 'id' put: index; at: 'class' put: name; yourself.
     value class == String ifTrue: [row at: 'text' put: value copy] ifFalse: [
     value class == ByteArray ifTrue: [row at: 'hex' put: (keyFor value: value)] ifFalse: [
     ((value class == Dictionary) or: [value class == LookupTable]) ifTrue: [
       keyed := Dictionary new.
       value associations do: [:association |
         | key |
         key := atom value: association key.
         key isNil ifTrue: [component error: 'Unsupported configuration dictionary key'].
         token := key printString.
         (keyed includesKey: token) ifTrue: [component error: 'Ambiguous configuration dictionary key'].
         keyed at: token put: association
       ].
       entries := OrderedCollection new. keys := keyed keys asSortedCollection.
       keys do: [:key |
         | association |
         association := keyed at: key.
         entries add: (Array with: (referenceFor value: association key) with: (referenceFor value: association value))
       ]. row at: 'entries' put: entries
     ] ifFalse: [
     ((value class == Array) or: [value class == OrderedCollection]) ifTrue: [
       value size > 8192 ifTrue: [component error: 'Configuration collection bound exceeded'].
       row at: 'items' put: (value collect: [:item | referenceFor value: item])
     ] ifFalse: [
       ((slotClasses includes: name) or: [configClasses includes: name])
         ifFalse: [component error: 'Unsupported configuration node class: ', name].
       value basicSize = 0 ifFalse: [component error: 'Unexpected indexed configuration slots: ', name].
       fields := OrderedCollection new.
       value class allInstVarNames doWithIndex: [:slot :position |
         fields add: (Array with: slot with: (referenceFor value: (value instVarAt: position)))
       ]. row at: 'fields' put: fields
     ]]]]. nodes at: index put: row
   ]
 ].
 result := Dictionary new at: 'format' put: 'bde_configuration_graph_v2';
   at: 'component' put: component getFolderPathName; at: 'oid' put: component getOID;
   at: 'roots' put: roots; at: 'nodes' put: nodes;
   at: 'linked_configurations' put: ((links keys asSortedCollection) collect: [:oid | Array with: oid with: (links at: oid)]);
   at: 'coverage' put: 'persisted configuration storage and linked configuration objects; DB model identities are explicit boundaries; no effective configuration evaluation'; yourself.
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
     value isCollection ifFalse: [component error: 'Unsupported configuration graph encoding'].
     out nextPut: $[. value doWithIndex: [:item :i | i > 1 ifTrue: [out nextPut: $,]. encode value: item]. out nextPut: $]
   ]]]]
 ]. encode value: result. out contents
 ] ifFail: [:error | 'BDE_CLASS_CONFIGURATION_ERROR: ', error messageText]
]
