[:component :diagramName :targets |
 component handleExceptionsIn: [
 | rows out encode |
 rows := OrderedCollection new.
 component getAllVariables do: [:m |
   ((m respondsTo: #getModelType) and: [m getModelType = 'enum']) ifTrue: [
     | native key type represented enumeration row |
     native := m element. key := native sgClassKey. type := native sgClass.
     type hasBasicType ifTrue: [type := type basicType].
     represented := m getRepresentedClass. enumeration := m getEnumeration.
     row := Dictionary new at: 'name' put: m getName;
       at: 'model_oid' put: native xmlOID asArray;
       at: 'native_class' put: native class name asString;
       at: 'key_class' put: key class name asString;
       at: 'key_is_database_object' put: key isRBDBObject;
       at: 'enum_class' put: type class name asString;
       at: 'represented_class' put: represented class name asString;
       at: 'enumeration_api_class' put: enumeration class name asString; yourself.
     (represented isKindOf: EtasAPIError) ifTrue: [row at: 'represented_error' put: represented errorCode].
     (enumeration isKindOf: EtasAPIError) ifTrue: [row at: 'enumeration_error' put: enumeration errorCode].
     type isSGEnumeration ifFalse: [component error: 'Enum type is not SGEnumeration'].
     type values size > 4096 ifTrue: [component error: 'Enum item bound exceeded'].
     row at: 'values' put: type values.
     (represented isKindOf: EtasAPIEnumeration) ifTrue: [
       row at: 'definition' put: (Dictionary new at: 'path' put: represented getFolderPathName;
         at: 'oid' put: represented getOID; yourself);
         at: 'api_values' put: represented getEnumerationValues
     ].
     rows add: row
   ]
 ].
 out := WriteStream on: String new.
 encode := [:x |
   x isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   ((x isKindOf: String) or: [x isSymbol or: [x isKindOf: Character]]) ifTrue: [
     out nextPutAll: '{"$s":['. x asString asCebraString doWithIndex: [:b :i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: b printString]. out nextPutAll: ']}'
   ] ifFalse: [
   ((x == true or: [x == false]) or: [x isInteger]) ifTrue: [out nextPutAll: x printString] ifFalse: [
   (x isKindOf: Dictionary) ifTrue: [
     | first | first := true. out nextPutAll: '{"$d":['.
     x keys asSortedCollection do: [:k | first ifFalse: [out nextPut: $,]. first := false.
       out nextPut: $[. encode value: k. out nextPut: $,. encode value: (x at: k). out nextPut: $]]. out nextPutAll: ']}'
   ] ifFalse: [x isCollection ifTrue: [
     | first | first := true. out nextPut: $[. x do: [:v | first ifFalse: [out nextPut: $,]. first := false. encode value: v]. out nextPut: $]
   ] ifFalse: [component error: ('Unsupported enum audit value ', x class name asString)]]]]]
 ].
 encode value: (Dictionary new at: 'enums' put: rows; yourself). out contents
 ] ifFail: [:error | 'BDE_STRUCTURE_ERROR: enum audit ', error messageText]
]
