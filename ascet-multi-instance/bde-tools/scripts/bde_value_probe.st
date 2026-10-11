"Serialize a fixed detached read result; no caller Smalltalk text is executed."
[:reader | [:component |
 component handleExceptionsIn: [
 | answer out encode |
 answer := reader value: component. out := WriteStream on: (String new: 4096).
 encode := [:x |
   x isString ifTrue: [
     out nextPutAll: '{"$s":['. x asCebraString doWithIndex: [:b :i |
       i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: b printString]. out nextPutAll: ']}'
   ] ifFalse: [
   ((x == true or: [x == false]) or: [x isInteger]) ifTrue: [out nextPutAll: x printString] ifFalse: [
   (x isKindOf: Dictionary) ifTrue: [| first |
     first := true. out nextPutAll: '{"$d":['.
     x keys asSortedCollection do: [:key | first ifFalse: [out nextPut: $,]. first := false.
       out nextPut: $[. encode value: key. out nextPut: $,. encode value: (x at: key). out nextPut: $]].
     out nextPutAll: ']}'
   ] ifFalse: [x isCollection ifTrue: [| first |
     first := true. out nextPut: $[. x do: [:value | first ifFalse: [out nextPut: $,].
       first := false. encode value: value]. out nextPut: $]
   ] ifFalse: [component error: 'Unsupported fixed read probe value']]]]
 ].
 encode value: answer. out contents
 ] ifFail: [:error | 'BDE_FINITE_REFERENCE_ERROR: ', error messageText]
]]
