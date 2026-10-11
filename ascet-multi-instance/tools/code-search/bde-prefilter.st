[:pfSaved :pfComponent :pfMatches |
 | pfSeen pfScan pfPossible pfUncertain pfOwner pfCount pfModelNames pfAddModel pfCheckBlocks pfTreeSeen pfBlockCount pfSkipped pfPorts pfDisplay pfDisplaySeen |
 "A query-local superset of searchable storage/model names. Unknown storage falls
 back to the detached API reader; no graph, source cache or persistent index."
 pfPossible := false. pfUncertain := false. pfCount := 0. pfSeen := IdentitySet new.
 pfOwner := pfSaved dbObject. pfModelNames := IdentitySet new.
 pfSkipped := IdentitySet new.
 pfDisplaySeen := IdentitySet new.
 pfDisplay := [:pfDecoration :pfDecorationDepth |
  (pfDecoration isNil or: [(pfDecoration isNumber or: [pfDecoration isKindOf: String]) or: [(pfDecoration isKindOf: Symbol) or: [(pfDecoration isKindOf: ByteArray) or: [pfDecoration == true or: [pfDecoration == false]]]]])
   ifFalse: [
   (pfDecorationDepth > 64 or: [pfDisplaySeen includes: pfDecoration]) ifTrue: [pfUncertain := true] ifFalse: [
    pfDisplaySeen add: pfDecoration. pfCount := pfCount + 1. pfCount > 1000000 ifTrue: [pfUncertain := true].
    (pfDecoration isKindOf: Dictionary) ifTrue: [pfDecoration keysAndValuesDo: [:pfDisplayKey :pfDisplayValue | pfDisplay value: pfDisplayKey value: pfDecorationDepth + 1. pfDisplay value: pfDisplayValue value: pfDecorationDepth + 1]] ifFalse: [
    ((pfDecoration isKindOf: Array) or: [pfDecoration isKindOf: OrderedCollection]) ifTrue: [pfDecoration do: [:pfDisplayValue | pfDisplay value: pfDisplayValue value: pfDecorationDepth + 1]] ifFalse: [pfUncertain := true]]
   ]]
 ].
 pfAddModel := [:pfModel |
  (pfModelNames includes: pfModel) ifFalse: [
   pfModelNames add: pfModel.
   pfModel methods do: [:pfMethod | pfPossible := pfPossible or: [pfMatches value: pfMethod methodName]].
  ]
 ].
 pfPorts := [:pfPortGroups :pfPortModel |
  (pfPortGroups isKindOf: Dictionary) ifFalse: [pfUncertain := true] ifTrue: [
   pfSkipped add: pfPortGroups.
   pfPortGroups keysAndValuesDo: [:pfMethodAlias :pfPortEntries |
    (pfPortEntries isKindOf: Dictionary) ifFalse: [pfUncertain := true] ifTrue: [
     pfPortEntries keysAndValuesDo: [:pfPortAlias :pfDescription |
      ((pfDescription isKindOf: Array) and: [pfDescription size >= 4 and: [(pfDescription at: 4) == true or: [(pfDescription at: 4) == false]]])
       ifFalse: [pfUncertain := true] ifTrue: [
       (pfDescription at: 4) ifTrue: [
        (pfMethodAlias isKindOf: String) ifTrue: [pfPossible := pfPossible or: [pfMatches value: pfMethodAlias]].
        (pfPortAlias isKindOf: String) ifTrue: [
         "The reserved getter's saved return port is exposed as get/get by ASCET."
         (pfMethodAlias = 'get' and: [pfPortAlias = 'return']) ifFalse: [pfPossible := pfPossible or: [pfMatches value: pfPortAlias]]
        ] ifFalse: [
         pfPortModel isNil ifTrue: [pfUncertain := true] ifFalse: [
          | pfPortParameter | pfPortParameter := pfPortModel methodParameters detect: [:pfCandidateParameter | pfCandidateParameter aliasName = pfPortAlias] ifNone: [nil].
          pfPortParameter isNil ifTrue: [
           pfPortParameter := pfPortModel allElements detect: [:pfCandidateElement | pfCandidateElement aliasName = pfPortAlias] ifNone: [nil].
           pfPortParameter isNil ifTrue: [
            pfPortParameter := pfPortModel methods detect: [:pfCandidateMethod | pfCandidateMethod aliasName = pfPortAlias] ifNone: [nil].
            pfPortParameter isNil ifTrue: [pfUncertain := true] ifFalse: [pfPossible := pfPossible or: [pfMatches value: pfPortParameter methodName]]
           ] ifFalse: [pfPossible := pfPossible or: [pfMatches value: pfPortParameter getAPIHandle getName]]
          ] ifFalse: [
           pfPossible := pfPossible or: [pfMatches value: (pfPortParameter isReturn
            ifTrue: [pfPortParameter owner methodName] ifFalse: [pfPortParameter argumentName])]
          ]
         ]]
       ]]
     ]]
   ]]
 ].
 pfComponent methods do: [:pfMethod | pfPossible := pfPossible or: [pfMatches value: pfMethod methodName]].
 pfScan := [:pfValue :pfDepth |
  (pfPossible or: [pfUncertain]) ifFalse: [
   pfCount := pfCount + 1.
   (pfCount > 1000000 or: [pfDepth > 128]) ifTrue: [pfUncertain := true] ifFalse: [
   ((pfValue == pfOwner or: [pfValue == pfSaved graphicBlock]) or: [pfSkipped includes: pfValue]) ifFalse: [
    ((pfValue isKindOf: String) or: [pfValue isKindOf: Symbol]) ifTrue: [pfPossible := pfMatches value: pfValue asString] ifFalse: [
    ((pfValue isNil or: [pfValue isNumber]) or: [pfValue == true or: [pfValue == false]]) ifFalse: [
     (pfSeen includes: pfValue) ifFalse: [
      pfSeen add: pfValue.
      (pfValue isKindOf: ByteArray) ifFalse: [
       (pfValue isKindOf: Dictionary) ifTrue: [pfValue keysAndValuesDo: [:pfKey :pfEntry | pfScan value: pfKey value: pfDepth + 1. pfScan value: pfEntry value: pfDepth + 1]] ifFalse: [
       ((pfValue isKindOf: Array) or: [pfValue isKindOf: OrderedCollection]) ifTrue: [pfValue do: [:pfEntry | pfScan value: pfEntry value: pfDepth + 1]] ifFalse: [
       (pfValue isKindOf: SGGraphicObjectsDB) ifTrue: [
        #('attributedViewNames' 'invisibleCategoryNames') do: [:pfDisplayField | | pfDecorationValue |
         pfDecorationValue := pfValue instVarNamed: pfDisplayField.
         pfDisplay value: pfDecorationValue value: 0. pfSkipped add: pfDecorationValue
        ].
        pfValue class name asString = 'SGHierarchyGODB' ifTrue: [pfPossible := pfPossible or: [(pfMatches value: 'get') or: [pfMatches value: 'set']]].
        pfValue class == SGLiteralGODB ifTrue: [pfPossible := pfPossible or: [pfMatches value: 'get/get']].
        (#('SGSwitchGODB' 'ASDConversionGODB') includes: pfValue class name asString) ifTrue: [pfUncertain := true].
        ((pfValue isKindOf: SGOperatorGODB) or: [pfValue class name asString = 'SGSwitchGODB']) ifTrue: [
         0 to: pfValue connectors size do: [:pfPinIndex |
          pfPossible := pfPossible or: [(pfMatches value: 'in#', pfPinIndex printString) or: [pfMatches value: 'out#', pfPinIndex printString]]]
        ].
        pfValue class name asString = 'SGInOutPortGODB' ifTrue: [
         pfComponent methodParameters do: [:pfParameter | pfPossible := pfPossible or: [pfMatches value: pfParameter parameterName]]
        ].
        ((pfValue class name asString = 'SGDataGODB') or: [pfValue class name asString = 'SGCodeGODB']) ifTrue: [
         | pfElement pfAPI pfRepresented pfElementModel |
         "Visible default scalar ports can be absent from saved port overrides."
         pfPossible := pfPossible or: [(pfMatches value: 'get/get') or: [
          (pfMatches value: 'set/aValue') or: [pfMatches value: 'missing_port/missing']]].
         pfElementModel := nil.
         pfElement := pfComponent elementAliasName: pfValue aliasName.
         pfElement isNil ifTrue: [pfUncertain := true] ifFalse: [
          pfAPI := pfElement getAPIHandle. pfPossible := pfPossible or: [pfMatches value: pfAPI getName].
          pfAPI isComplex ifTrue: [pfRepresented := pfAPI getRepresentedClass.
           pfRepresented isNil ifTrue: [pfUncertain := true] ifFalse: [
            pfElementModel := pfRepresented item.
            pfPossible := pfPossible or: [pfMatches value: pfRepresented getFolderPathName]. pfAddModel value: pfElementModel]]].
         pfPorts value: pfValue returnPorts value: pfElementModel.
         pfPorts value: pfValue selectorPorts value: pfElementModel
        ].
        1 to: pfValue class instSize do: [:pfIndex | pfScan value: (pfValue instVarAt: pfIndex) value: pfDepth + 1]
       ] ifFalse: [(#('Point' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: pfValue class name asString) ifFalse: [pfUncertain := true]]
       ]]
      ]
     ]
    ]]]
   ]
  ]
 ].
 pfTreeSeen := IdentitySet new. pfBlockCount := 0.
 pfCheckBlocks := [:pfTree :pfTreeDepth |
  (pfTreeDepth > 16 or: [pfTreeSeen includes: pfTree]) ifTrue: [pfUncertain := true] ifFalse: [
  pfTreeSeen add: pfTree.
  pfTree blocks do: [:pfStored | | pfBlock |
   pfBlockCount := pfBlockCount + 1. pfBlockCount > 100000 ifTrue: [pfUncertain := true].
   pfBlock := pfStored isHierarchyDB ifTrue: [pfStored graphicBlock] ifFalse: [pfStored].
   (#('SGOperatorGODB' 'SGLiteralGODB' 'SGDataGODB' 'SGCodeGODB' 'SGHierarchyGODB' 'SGInOutPortGODB' 'SGSwitchGODB' 'ASDConversionGODB') includes: pfBlock class name asString)
    ifFalse: [pfUncertain := true].
   (pfBlock iD isInteger and: [pfBlock iD >= 0]) ifFalse: [pfUncertain := true].
   (pfStored isHierarchyDB and: [pfUncertain not]) ifTrue: [pfCheckBlocks value: pfStored value: pfTreeDepth + 1]
  ].
  pfTree others do: [:pfOther | pfOther class name asString = 'SGCommentGODB' ifFalse: [pfUncertain := true]]]
 ].
 pfScan value: pfSaved value: 0.
 (pfPossible or: [pfUncertain]) ifFalse: [pfCheckBlocks value: pfSaved value: 0].
 pfPossible or: [pfUncertain]
]
