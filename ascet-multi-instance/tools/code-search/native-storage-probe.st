[:probeDb :probeMode :probeInput |
 probeDb handleExceptionsIn: [
  | out field row seen counts walk inspect |
  out := WriteStream on: String new. seen := Set new. counts := Dictionary new.
  field := [:value | value do: [:ch | | n | n := ch asInteger.
   (n > 126 or: [n = 37 or: [n = 124]]) ifTrue: [out nextPut: $%; nextPutAll: n printString; nextPut: $;] ifFalse: [out nextPut: ch]]. out nextPut: $|].
  row := [:values | values do: [:v | field value: v]. values size + 1 to: 10 do: [:i | field value: '']].
  inspect := [:value |
   | name | name := value class name asString.
   counts at: name put: (counts at: name ifAbsent: [0]) + 1.
   (seen includes: name) ifFalse: [
    seen add: name.
    row value: (Array with: 'CLASS' with: name with: value class superclass name asString).
    value class allInstVarNames do: [:slot | | raw | raw := value instVarNamed: slot.
     (#('dbObject' 'position' 'lineStyle' 'attributedViewNames') includes: slot) ifFalse: [
      row value: (Array with: 'FIELD' with: name with: slot with: raw class name asString with: raw printString)]
    ]
   ]
  ].
  walk := [:tree :depth |
   depth > 16 ifTrue: [probeDb error: 'STORAGE_PROBE_DEPTH'].
   inspect value: tree. inspect value: tree graphicBlock.
   tree blocks do: [:node | node isHierarchyDB ifTrue: [walk value: node value: depth + 1] ifFalse: [inspect value: node]].
   tree connections do: [:edge | inspect value: edge]. tree others do: [:other | inspect value: other]
  ].
  (probeDb library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search do: [:key | | component |
   component := key getObjectIfUndefined: [:unused | nil].
   (component notNil and: [component isValidObject and: [component isContainer not]]) ifTrue: [
    component specifications do: [:spec | spec isBdSpecification ifTrue: [
     spec specSourceInternalOrNil ifNotNil: [:source | walk value: source value: 0]
    ]]
   ]
  ].
  counts keysAndValuesDo: [:name :count | row value: (Array with: 'COUNT' with: name with: count printString)].
  out contents
 ] ifFail: [:error | 'PROBE_ERROR: ', error printString, ' ', error arguments printString]
]
