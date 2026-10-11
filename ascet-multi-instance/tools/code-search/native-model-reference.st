[:dbAPI :mode :needle |
 | refStage | refStage := 'start'.
 dbAPI handleExceptionsIn: [
  | output encode emit walk componentId specId componentKind hex count |
  output := WriteStream on: String new. count := 0.
  encode := [:value |
   value do: [:ch | | code | code := ch asInteger.
    (code < 32 or: [code > 126 or: [code = 37 or: [code = 124]]])
     ifTrue: [output nextPut: $%; nextPutAll: code printString; nextPut: $;]
     ifFalse: [output nextPut: ch]]. output nextPut: $|
  ].
  emit := [:values | count := count + 1. count > 1000000 ifTrue: [dbAPI error: 'REFERENCE_RECORD_LIMIT'].
   values do: [:v | encode value: v]. values size + 1 to: 10 do: [:i | encode value: '']].
  hex := [:bytes | | text digits | text := WriteStream on: String new. digits := '0123456789abcdef'.
   bytes do: [:byte | text nextPut: (digits at: byte // 16 + 1); nextPut: (digits at: byte \\ 16 + 1)]. text contents].
  walk := [:tree :scope :depth |
   | object |
   depth > 16 ifTrue: [dbAPI error: 'REFERENCE_DEPTH_LIMIT'].
   tree isHierarchyDB ifFalse: [dbAPI error: 'REFERENCE_EXPECTED_HIERARCHY'].
   emit value: (Array with: 'S' with: componentId with: specId with: scope).
   tree blocks do: [:stored |
    | nativeId rawName alias childScope |
    object := stored isHierarchyDB ifTrue: [stored graphicBlock] ifFalse: [stored].
    refStage := 'node ', componentId, '/', scope, ' ', object class name asString.
    nativeId := object iD. rawName := ''. alias := ''.
    (object isKindOf: SGLiteralGODB) ifTrue: [rawName := object literalString].
    (object respondsTo: #aliasName) ifTrue: [object aliasName ifNotNil: [:a | alias := hex value: a]].
    emit value: (Array with: 'N' with: componentId with: specId with: scope with: nativeId printString
     with: object class name asString with: rawName with: alias).
    stored isHierarchyDB ifTrue: [childScope := scope, '/h', nativeId printString.
     walk value: stored value: childScope value: depth + 1]
   ].
   tree connections do: [:edge |
    refStage := 'edge ', componentId, '/', scope, ' ', edge class name asString.
    emit value: (OrderedCollection new add: 'E'; add: componentId; add: specId; add: scope;
     add: edge startConnector printString; add: edge endConnector printString;
     add: edge startBlock printString; add: edge endBlock printString; add: edge class name asString; yourself)
   ].
   tree others do: [:other |
    refStage := 'other ', componentId, '/', scope, ' ', other class name asString.
    emit value: (Array with: 'O' with: componentId with: specId with: scope with: other class name asString
     with: ((other isKindOf: SGCommentGODB) ifTrue: [other text] ifFalse: ['']))
   ]
  ].
  (dbAPI library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search do: [:key |
   | component |
   component := key getObjectIfUndefined: [:unused | nil].
   (component notNil and: [component isValidObject and: [component isContainer not]]) ifTrue: [
    componentId := key globalIdString.
    refStage := 'component ', componentId, ' ', component class name asString.
    componentKind := component isSmClass ifTrue: ['state_machine'] ifFalse: [component class name asString].
    emit value: (Array with: 'C' with: componentId with: componentKind with: component getAPIHandle getFolderPathName).
    component specifications do: [:spec |
     spec isBdSpecification ifTrue: [
      | source | refStage := 'spec ', componentId, '/', spec specificationName.
      specId := spec sourceKey globalIdString. source := spec specSourceInternalOrNil.
      emit value: (Array with: 'D' with: componentId with: specId with: spec specificationName with: componentKind
        with: (spec isPublicSpec ifTrue: ['public'] ifFalse: [spec isPrivateSpec ifTrue: ['private'] ifFalse: ['unknown']])).
      source isNil ifTrue: [emit value: (Array with: 'MISSING' with: componentId with: specId)]
       ifFalse: [walk value: source value: 'root' value: 0]
     ]
    ]
   ]
  ].
  emit value: (Array with: 'END' with: count printString). output contents
 ] ifFail: [:error | 'PROBE_ERROR: ', refStage, ' ', error printString, ' ', error arguments printString]
]
