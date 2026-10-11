[:component |
 | encode out result |
 result := Smalltalk at: #DogeBDEConfigAuditResult.
 (result at: 'oid') = component getOID ifFalse: [component error: 'Configuration audit owner mismatch'].
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
     value isCollection ifFalse: [component error: 'Unsupported configuration audit encoding'].
     out nextPut: $[. value doWithIndex: [:item :i | i > 1 ifTrue: [out nextPut: $,]. encode value: item]. out nextPut: $]
   ]]]]
 ]. encode value: result. Smalltalk removeKey: #DogeBDEConfigAuditResult. out contents
]
