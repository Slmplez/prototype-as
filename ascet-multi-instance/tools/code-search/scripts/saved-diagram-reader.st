[:drAPI :drInput :drOffset :drPhase |
 | drTables drRequire drRecord drWord drLookup drString drPointers drLayouts drResolve drMemo drActive drAllowed drRoot drInstances drCount |
 drTables := @@SAVED_TABLE_READER@@ valueWithArguments: (Array with: drAPI with: drInput with: drOffset with: drPhase).
 drRecord := drTables at: #record. drWord := drTables at: #word. drLookup := drTables at: #lookup.
 drString := drTables at: #string. drPointers := drTables at: #pointers. drLayouts := Dictionary new.
 drRequire := [:condition :reason | condition ifFalse: [drAPI error: 'SAVED_DIAGRAM_UNSUPPORTED: ', reason]].
 drAllowed := Dictionary new.
 (Array with: SGTopGraphicsBlockDB with: SGGraphicsBlockDB with: SGHierarchyGODB with: SGCodeGODB) do: [:c | drAllowed at: c name asString put: c].
 (Array with: SGDataGODB with: SGLiteralGODB with: SGOperatorGODB with: SGInOutPortGODB) do: [:c | drAllowed at: c name asString put: c].
 (Array with: SGSwitchGODB with: SGCommentGODB with: SGConnectionGODB with: Point) do: [:c | drAllowed at: c name asString put: c].
 (Array with: RBAreaStyle with: RBLineStyle with: CgRGBColor) do: [:c | drAllowed at: c name asString put: c].
 drMemo := Dictionary new. drActive := Set new. drCount := 0. drInstances := 0.
 drResolve := [:address :depth |
  | object result layout descriptor names name cls values drEntryCount entries |
  drCount := drCount + 1.
  drRequire value: (depth <= 128 and: [drCount <= 1000000]) value: 'graph bounds'.
  address odd ifTrue: [(address > 2147483647 ifTrue: [address - 4294967296] ifFalse: [address]) // 2] ifFalse: [
  address = 14 ifTrue: [nil] ifFalse: [address = 30 ifTrue: [true] ifFalse: [address = 46 ifTrue: [false] ifFalse: [
  drMemo at: address ifAbsent: [
   drRequire value: (drActive includes: address) not value: 'recursive Dictionary dependency'.
   object := drLookup value: address.
   object first = 7 ifTrue: [
    values := drPointers value: address value: 7. result := Array new: values size. drMemo at: address put: result.
    1 to: values size do: [:i | result at: i put: (drResolve value: (values at: i) value: depth + 1)]
   ] ifFalse: [
   (#(3 5 23) includes: object first) ifTrue: [
    object first = 5 ifTrue: [
     drRequire value: ((object at: 2) = 3) value: 'Symbol format'.
     result := ((drRecord copyFrom: (object at: 4) to: (object at: 4) + (object at: 3) - 1) asString) asSymbol
    ] ifFalse: [
     drRequire value: ((object at: 2) = 11) value: 'byte format'.
     result := ByteArray new: (object at: 3).
     (object at: 3) > 0 ifTrue: [result replaceFrom: 1 to: (object at: 3) with: drRecord startingAt: (object at: 4)].
     object first = 3 ifTrue: [result := result asString]
    ]. drMemo at: address put: result
   ] ifFalse: [
    drRequire value: ((object at: 2) = 8 and: [(object at: 3) \\ 4 = 0]) value: 'instance format'.
    layout := drLayouts at: object first ifAbsent: [
     descriptor := drLookup value: object first.
     drRequire value: (descriptor first = 9 and: [(descriptor at: 2) = 0 and: [#(56 64) includes: (descriptor at: 3)]]) value: 'Class descriptor'.
     names := (drPointers value: (drWord value: (descriptor at: 4) + 36) value: 25) collect: [:drFieldName | drString value: drFieldName value: #(27)].
     drRequire value: (names asSet size = names size) value: 'duplicate fields'.
     name := drString value: (drWord value: (descriptor at: 4) + 44) value: #(27).
     drRequire value: ((descriptor at: 3) = 56 or: [name = 'CgRGBColor']) value: 'extended Class descriptor'.
     names := names asArray.
     (name = 'DBObject' or: [name = 'Dictionary']) ifFalse: [
      cls := drAllowed at: name ifAbsent: [drAPI error: 'SAVED_DIAGRAM_UNSUPPORTED: class ', name].
      drRequire value: ((cls allInstVarNames collect: [:drFieldName | drFieldName asString]) asArray = names and: [cls instSize = names size]) value: 'native field layout'
     ].
     layout := Array with: name with: names with: cls. drLayouts at: object first put: layout. layout
    ]. name := layout first. names := layout at: 2. cls := layout at: 3.
    drRequire value: ((object at: 3) = (names size * 4)) value: 'instance size'.
    name = 'DBObject' ifTrue: [
     "The independently owned source has no database owner; no proxy is restored."
     drRequire value: (names = #('istate' 'globalId' 'interface' 'firstVersionId' 'className' 'name' 'version' 'objectState' 'referenceState')) value: 'owner layout'.
     result := nil. drMemo at: address put: result
    ] ifFalse: [name = 'Dictionary' ifTrue: [
     drRequire value: (names = #('elementCount' 'elements')) value: 'Dictionary layout'.
     drActive add: address.
     drEntryCount := drWord value: (object at: 4). drRequire value: (drEntryCount odd and: [drEntryCount >= 1]) value: 'Dictionary count'. drEntryCount := drEntryCount // 2.
     entries := drPointers value: (drWord value: (object at: 4) + 4) value: 7. result := Dictionary new: drEntryCount.
     entries do: [:entryAddress | entryAddress = 14 ifFalse: [| entry entryDescriptor entryFields key value |
      entry := drLookup value: entryAddress. entryDescriptor := drLookup value: entry first.
      drRequire value: ((entry at: 2) = 8 and: [(entry at: 3) = 8 and: [entryDescriptor first = 9 and: [(entryDescriptor at: 2) = 0 and: [(entryDescriptor at: 3) = 56]]]]) value: 'Association format'.
      entryFields := (drPointers value: (drWord value: (entryDescriptor at: 4) + 36) value: 25) collect: [:drFieldName | drString value: drFieldName value: #(27)].
      drRequire value: ((drString value: (drWord value: (entryDescriptor at: 4) + 44) value: #(27)) = 'Association' and: [entryFields asArray = #('key' 'value')]) value: 'Association layout'.
      key := drResolve value: (drWord value: (entry at: 4)) value: depth + 1.
      drRequire value: ((key isString or: [key isInteger]) or: [key isKindOf: ByteArray]) value: 'Dictionary key'.
      drRequire value: (result includesKey: key) not value: 'duplicate Dictionary key'.
      value := drResolve value: (drWord value: (entry at: 4) + 4) value: depth + 1. result at: key put: value
     ]].
     drRequire value: (result size = drEntryCount) value: 'Dictionary entry count'. drActive remove: address. drMemo at: address put: result
    ] ifFalse: [
     result := cls basicNew. drMemo at: address put: result. drInstances := drInstances + 1.
     1 to: names size do: [:i | result instVarAt: i put: (drResolve value: (drWord value: (object at: 4) + ((i - 1) * 4)) value: depth + 1)]
    ]]
   ]]. result
  ]]]]]
 ].
 drRoot := drPointers value: (drTables at: #root) value: 33.
 drRequire value: (drRoot size = 1) value: 'one source root'.
 drRoot := drResolve value: drRoot first value: 0.
 drRequire value: (drRoot class == SGTopGraphicsBlockDB) value: 'top Diagram class'.
 drRoot
]
