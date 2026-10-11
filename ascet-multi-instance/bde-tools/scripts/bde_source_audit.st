[:component :diagramName :targets |
 component handleExceptionsIn: [
 | source visit seen counts unknown stream first count maxDepth |
 source := (component getDiagram: diagramName) specification specSourceInternalOrNil.
 seen := IdentitySet new. counts := Dictionary new. unknown := Set new. count := 0. maxDepth := 0.
 visit := [:v :depth |
   | name |
   count := count + 1. count > 1000000 ifTrue: [component error: 'Source audit object bound reached'].
   maxDepth := maxDepth max: depth. depth > 128 ifTrue: [component error: 'Source audit depth bound reached'].
   name := v class name asString. counts at: name put: ((counts at: name ifAbsent: [0]) + 1).
   ((v isKindOf: SGGraphicObjectsDB) or: [#('Point' 'RBAreaStyle' 'RBLineStyle') includes: name]) ifTrue: [
     (seen includes: v) ifFalse: [seen add: v.
       1 to: v class instSize do: [:i | | child | child := v instVarAt: i.
         child == source dbObject ifFalse: [visit value: child value: depth + 1]]
     ]
   ] ifFalse: [(v isKindOf: Dictionary) ifTrue: [
     (seen includes: v) ifFalse: [seen add: v. v keysAndValuesDo: [:key :val | visit value: key value: depth + 1. visit value: val value: depth + 1]]
   ] ifFalse: [((v isKindOf: Array) or: [v isKindOf: OrderedCollection]) ifTrue: [
     (seen includes: v) ifFalse: [seen add: v. v do: [:child | visit value: child value: depth + 1]]
   ] ifFalse: [
     ((v isNil or: [v isNumber]) or: [(v isKindOf: String) or: [(v isKindOf: Symbol) or: [(v isKindOf: ByteArray) or: [v == true or: [v == false]]]]])
       ifFalse: [unknown add: name]
   ]]]
 ].
 visit value: source value: 0.
 stream := WriteStream on: String new.
 stream nextPutAll: '{"source_class":"'; nextPutAll: source class name asString;
   nextPutAll: '","visited":'; nextPutAll: count printString;
   nextPutAll: ',"max_depth":'; nextPutAll: maxDepth printString; nextPutAll: ',"classes":{'.
 first := true. counts keys asSortedCollection do: [:name |
   first ifFalse: [stream nextPut: $,]. first := false.
   stream nextPut: $"; nextPutAll: name; nextPutAll: '":'; nextPutAll: (counts at: name) printString
 ].
 stream nextPutAll: '},"unknown":['. first := true.
 unknown asSortedCollection do: [:name | first ifFalse: [stream nextPut: $,]. first := false. stream nextPut: $"; nextPutAll: name; nextPut: $"].
 stream nextPutAll: ']}'. stream contents
 ] ifFail: [:error | 'BDE_STRUCTURE_ERROR: ', error messageText]
]
