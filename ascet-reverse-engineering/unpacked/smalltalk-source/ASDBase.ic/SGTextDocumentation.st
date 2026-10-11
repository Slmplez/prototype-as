"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000dbb4; bytecode file offset 0x90a4b8"
!SGTextDocumentation methodsFor: 'recovered'!
xmlCollectDependent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023db0; bytecode file offset 0x92209c"
!SGTextDocumentation methodsFor: 'recovered'!
labelForCompare
    ^'Notes for: '
! !

"ASDBase.ic method 0x20038550; bytecode file offset 0x935c54"
!SGTextDocumentation methodsFor: 'recovered'!
assignedViewsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) assignedViewNames.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20067f24; bytecode file offset 0x965b90"
!SGTextDocumentation methodsFor: 'recovered'!
textObjects
    | recoveredValue0 |
    recoveredValue0 := textObjects.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200819cc; bytecode file offset 0x97e284"
!SGTextDocumentation methodsFor: 'recovered'!
dbXmlCleanOut: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := dbObject.
    (recoveredValue0) unload.
    ^self
! !

"ASDBase.ic method 0x20089734; bytecode file offset 0x986060"
!SGTextDocumentation methodsFor: 'recovered'!
reinitDocumentation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    textObjects := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200b92e4; bytecode file offset 0x9b5b9c"
!SGTextDocumentation methodsFor: 'recovered'!
xmlInit: recoveredArg1
    | recoveredValue0 |
    documentation := 'not used'.
    recoveredValue0 := recoveredArg1.
    textObjects := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8ed4; bytecode file offset 0x9c57a0"
!SGTextDocumentation methodsFor: 'recovered'!
renameTextObject: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) name: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200e75dc; bytecode file offset 0x9e3ea8"
!SGTextDocumentation methodsFor: 'recovered'!
addTextDocuObject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := textObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) copyWith: (recoveredValue1).
    textObjects := recoveredValue2.
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200e75ec; bytecode file offset 0x9e3ea8"
!SGTextDocumentation methodsFor: 'recovered'!
removeTextDocuObject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := textObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) copyWithout: (recoveredValue1).
    textObjects := recoveredValue2.
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x20130944; bytecode file offset 0xa2d204"
!SGTextDocumentation methodsFor: 'recovered'!
entryForTextObject: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := textObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20170b54; bytecode file offset 0xa6d420"
!SGTextDocumentation methodsFor: 'recovered'!
initialize
    (self) reinitDocumentation.
    super initialize.
    (self) label: ('Text-Dokumentation').
    documentation := 'not used'.
    ^self
! !

"ASDBase.ic method 0x20187268; bytecode file offset 0xa83b30"
!SGTextDocumentation methodsFor: 'recovered'!
textObjectsAssignedToView: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) textObjects.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) assignedViewsFor: (recoveredBlock5Value0).
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) name.
    recoveredBlock5Value4 := (recoveredBlock5Value1) includes: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a68dc; bytecode file offset 0xaa31ac"
!SGTextDocumentation methodsFor: 'recovered'!
entriesForView: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjectsAssignedToView: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280d3068Arg1 | 
    | block280d3068Value0 block280d3068Value1 block280d3068Value2 block280d3068Value3 block280d3068Value4 block280d3068Value5 |
    block280d3068Value0 := Association.
    block280d3068Value1 := block280d3068Arg1.
    block280d3068Value2 := (block280d3068Value1) name.
    block280d3068Value3 := block280d3068Arg1.
    block280d3068Value4 := (block280d3068Value3) contents.
    block280d3068Value5 := (block280d3068Value0) key: (block280d3068Value2) value: (block280d3068Value4).
    block280d3068Value5
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bdd60; bytecode file offset 0xaba62c"
!SGTextDocumentation methodsFor: 'recovered'!
addTextObject: recoveredArg1 assignedViews: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGTextDocuObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := [:block280d467cArg1 | 
    | block280d467cValue0 block280d467cValue1 |
    block280d467cValue0 := block280d467cArg1.
    block280d467cValue1 := (block280d467cValue0) name.
    block280d467cValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2) assignedViewNames: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addTextDocuObject: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20228e00; bytecode file offset 0xb256c8"
!SGTextDocumentation methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('Notes').
    recoveredValue1 := textObjects.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) writeXML: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) closeComplex.
    ^self
! !

"ASDBase.ic method 0x203c90f4; bytecode file offset 0xcc59d0"
!SGTextDocumentation methodsFor: 'recovered'!
labelForTextObject: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) assignedViewsFor: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := ' ('.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := '+'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 48] ifFalse: [recoveredLocal1 := nil. recoveredPC := 74]] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20416e98; bytecode file offset 0xd1377c"
!SGTextDocumentation methodsFor: 'recovered'!
checkTextAssignment: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280fb964Arg1 | 
    | block280fb964Value0 block280fb964Value1 |
    block280fb964Value0 := block280fb964Arg1.
    block280fb964Value1 := (block280fb964Value0) name.
    block280fb964Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 recoveredBlock20Value7 |
    recoveredBlock20Value0 := Array.
    recoveredBlock20Value1 := (recoveredBlock20Value0) new.
    recoveredLocal1 := recoveredBlock20Value1.
    recoveredBlock20Value2 := recoveredBlock20Arg1.
    recoveredBlock20Value3 := (recoveredBlock20Value2) assignedViewNames.
    recoveredBlock20Value4 := [:recoveredBlock20Block38Arg1 | 
    | recoveredBlock20Block38Stack0 recoveredBlock20Block38Stack1 recoveredBlock20Block38Stack2 recoveredBlock20Block38Stack3 recoveredBlock20Block38Stack4 recoveredBlock20Block38PC recoveredBlock20Block38Step recoveredBlock20Block38Done recoveredBlock20Block38Result |
    recoveredBlock20Block38Stack0 := nil.
    recoveredBlock20Block38PC := 44.
    recoveredBlock20Block38Done := false.
    [recoveredBlock20Block38Done not] whileTrue: [
        recoveredBlock20Block38Step := recoveredBlock20Block38PC.
        recoveredBlock20Block38Step = 44 ifTrue: [
            recoveredBlock20Block38Stack1 := nil.
            recoveredBlock20Block38PC := 45.
        ].
        recoveredBlock20Block38Step = 45 ifTrue: [
            recoveredBlock20Block38Stack2 := recoveredLocal2.
            recoveredBlock20Block38PC := 48.
        ].
        recoveredBlock20Block38Step = 48 ifTrue: [
            recoveredBlock20Block38Stack3 := recoveredBlock20Block38Arg1.
            recoveredBlock20Block38PC := 49.
        ].
        recoveredBlock20Block38Step = 49 ifTrue: [
            recoveredBlock20Block38Stack2 := (recoveredBlock20Block38Stack2) includes: (recoveredBlock20Block38Stack3).
            recoveredBlock20Block38PC := 51.
        ].
        recoveredBlock20Block38Step = 51 ifTrue: [
            (recoveredBlock20Block38Stack2) ifTrue: [recoveredBlock20Block38PC := 65] ifFalse: [recoveredBlock20Block38PC := 54].
        ].
        recoveredBlock20Block38Step = 54 ifTrue: [
            recoveredBlock20Block38PC := 55.
        ].
        recoveredBlock20Block38Step = 55 ifTrue: [
            recoveredBlock20Block38Stack1 := recoveredLocal1.
            recoveredBlock20Block38PC := 58.
        ].
        recoveredBlock20Block38Step = 58 ifTrue: [
            recoveredBlock20Block38Stack2 := recoveredBlock20Block38Arg1.
            recoveredBlock20Block38PC := 59.
        ].
        recoveredBlock20Block38Step = 59 ifTrue: [
            recoveredBlock20Block38Stack1 := (recoveredBlock20Block38Stack1) copyWith: (recoveredBlock20Block38Stack2).
            recoveredBlock20Block38PC := 61.
        ].
        recoveredBlock20Block38Step = 61 ifTrue: [
            recoveredBlock20Block38Stack2 := recoveredBlock20Block38Stack1.
            recoveredBlock20Block38PC := 62.
        ].
        recoveredBlock20Block38Step = 62 ifTrue: [
            recoveredLocal1 := recoveredBlock20Block38Stack2.
            recoveredBlock20Block38PC := 65.
        ].
        recoveredBlock20Block38Step = 65 ifTrue: [
            recoveredBlock20Block38Result := recoveredBlock20Block38Stack1.
            recoveredBlock20Block38Done := true.
        ].
    ].
    recoveredBlock20Block38Result
].
    (recoveredBlock20Value3) do: (recoveredBlock20Value4).
    recoveredBlock20Value5 := recoveredLocal1.
    recoveredBlock20Value6 := [:recoveredBlock20Block71Arg1 | 
    | recoveredBlock20Block71Value0 recoveredBlock20Block71Value1 recoveredBlock20Block71Value2 recoveredBlock20Block71Value3 recoveredBlock20Block71Value4 recoveredBlock20Block71Value5 |
    recoveredBlock20Block71Value0 := recoveredBlock20Arg1.
    recoveredBlock20Block71Value1 := recoveredBlock20Arg1.
    recoveredBlock20Block71Value2 := (recoveredBlock20Block71Value1) assignedViewNames.
    recoveredBlock20Block71Value3 := recoveredBlock20Block71Arg1.
    recoveredBlock20Block71Value4 := (recoveredBlock20Block71Value2) copyWithout: (recoveredBlock20Block71Value3).
    recoveredBlock20Block71Value5 := (recoveredBlock20Block71Value0) assignedViewNames: (recoveredBlock20Block71Value4).
    recoveredBlock20Block71Value5
].
    recoveredBlock20Value7 := (recoveredBlock20Value5) do: (recoveredBlock20Value6).
    recoveredBlock20Value7
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204388e4; bytecode file offset 0xd351e4"
!SGTextDocumentation methodsFor: 'recovered'!
existingItemBelongsTo
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) readReferences.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIsReferencedBy.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block280fdf6cArg1 | 
    | block280fdf6cLocal1 block280fdf6cStack0 block280fdf6cStack1 block280fdf6cStack2 block280fdf6cStack3 block280fdf6cStack4 block280fdf6cPC block280fdf6cStep block280fdf6cDone block280fdf6cResult |
    block280fdf6cStack0 := self.
    block280fdf6cPC := 4.
    block280fdf6cDone := false.
    [block280fdf6cDone not] whileTrue: [
        block280fdf6cStep := block280fdf6cPC.
        block280fdf6cStep = 4 ifTrue: [
            block280fdf6cStack1 := false.
            block280fdf6cPC := 5.
        ].
        block280fdf6cStep = 5 ifTrue: [
            block280fdf6cStack2 := block280fdf6cArg1.
            block280fdf6cPC := 6.
        ].
        block280fdf6cStep = 6 ifTrue: [
            block280fdf6cStack3 := [:block280fdf90Arg1 | 
    nil
].
            block280fdf6cPC := 8.
        ].
        block280fdf6cStep = 8 ifTrue: [
            block280fdf6cPC := 14.
        ].
        block280fdf6cStep = 14 ifTrue: [
            block280fdf6cStack2 := (block280fdf6cStack2) readKeyIfUndefined: (block280fdf6cStack3).
            block280fdf6cPC := 16.
        ].
        block280fdf6cStep = 16 ifTrue: [
            block280fdf6cStack3 := block280fdf6cStack2.
            block280fdf6cPC := 17.
        ].
        block280fdf6cStep = 17 ifTrue: [
            block280fdf6cLocal1 := block280fdf6cStack3.
            block280fdf6cPC := 18.
        ].
        block280fdf6cStep = 18 ifTrue: [
            (block280fdf6cStack2 == nil) ifTrue: [block280fdf6cPC := 49] ifFalse: [block280fdf6cPC := 22].
        ].
        block280fdf6cStep = 22 ifTrue: [
            block280fdf6cPC := 23.
        ].
        block280fdf6cStep = 23 ifTrue: [
            block280fdf6cStack1 := RBTopFolder.
            block280fdf6cPC := 25.
        ].
        block280fdf6cStep = 25 ifTrue: [
            block280fdf6cStack1 := (block280fdf6cStack1) allSubclasses.
            block280fdf6cPC := 27.
        ].
        block280fdf6cStep = 27 ifTrue: [
            block280fdf6cStack2 := SGConfig.
            block280fdf6cPC := 29.
        ].
        block280fdf6cStep = 29 ifTrue: [
            block280fdf6cStack2 := (block280fdf6cStack2) allSubclasses.
            block280fdf6cPC := 31.
        ].
        block280fdf6cStep = 31 ifTrue: [
            block280fdf6cStack1 := (block280fdf6cStack1) , (block280fdf6cStack2).
            block280fdf6cPC := 33.
        ].
        block280fdf6cStep = 33 ifTrue: [
            block280fdf6cStack2 := [:block280fdfb4Arg1 | 
    | block280fdfb4Value0 block280fdfb4Value1 |
    block280fdfb4Value0 := block280fdfb4Arg1.
    block280fdfb4Value1 := (block280fdfb4Value0) printString.
    block280fdfb4Value1
].
            block280fdf6cPC := 35.
        ].
        block280fdf6cStep = 35 ifTrue: [
            block280fdf6cPC := 42.
        ].
        block280fdf6cStep = 42 ifTrue: [
            block280fdf6cStack1 := (block280fdf6cStack1) collect: (block280fdf6cStack2).
            block280fdf6cPC := 44.
        ].
        block280fdf6cStep = 44 ifTrue: [
            block280fdf6cStack2 := block280fdf6cLocal1.
            block280fdf6cPC := 45.
        ].
        block280fdf6cStep = 45 ifTrue: [
            block280fdf6cStack2 := (block280fdf6cStack2) className.
            block280fdf6cPC := 47.
        ].
        block280fdf6cStep = 47 ifTrue: [
            block280fdf6cStack1 := (block280fdf6cStack1) includes: (block280fdf6cStack2).
            block280fdf6cPC := 49.
        ].
        block280fdf6cStep = 49 ifTrue: [
            block280fdf6cResult := block280fdf6cStack1.
            block280fdf6cDone := true.
        ].
    ].
    block280fdf6cResult
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := [:recoveredBlock89Arg1 | 
    ^nil
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c2c20; bytecode file offset 0xdbf4f4"
!SGTextDocumentation methodsFor: 'recovered'!
shiftUpTextObjects: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 :recoveredBlock17Arg2 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 |
    recoveredBlock17Value0 := (self) textObjects.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) indexOf: (recoveredBlock17Value1).
    recoveredBlock17Value3 := (self) textObjects.
    recoveredBlock17Value4 := recoveredBlock17Arg2.
    recoveredBlock17Value5 := (recoveredBlock17Value3) indexOf: (recoveredBlock17Value4).
    recoveredBlock17Value6 := (recoveredBlock17Value2) < (recoveredBlock17Value5).
    recoveredBlock17Value6
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45Stack4 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) textObjects.
            recoveredBlock45PC := 53.
        ].
        recoveredBlock45Step = 53 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Arg1.
            recoveredBlock45PC := 54.
        ].
        recoveredBlock45Step = 54 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) indexOf: (recoveredBlock45Stack1).
            recoveredBlock45PC := 55.
        ].
        recoveredBlock45Step = 55 ifTrue: [
            recoveredLocal3 := recoveredBlock45Stack0.
            recoveredBlock45PC := 58.
        ].
        recoveredBlock45Step = 58 ifTrue: [
            recoveredBlock45Stack0 := recoveredLocal3.
            recoveredBlock45PC := 61.
        ].
        recoveredBlock45Step = 61 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal2.
            recoveredBlock45PC := 64.
        ].
        recoveredBlock45Step = 64 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) + (1).
            recoveredBlock45PC := 65.
        ].
        recoveredBlock45Step = 65 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) = (recoveredBlock45Stack1).
            recoveredBlock45PC := 66.
        ].
        recoveredBlock45Step = 66 ifTrue: [
            (recoveredBlock45Stack0) ifTrue: [recoveredBlock45PC := 70] ifFalse: [recoveredBlock45PC := 82].
        ].
        recoveredBlock45Step = 70 ifTrue: [
            recoveredBlock45Stack0 := recoveredLocal2.
            recoveredBlock45PC := 73.
        ].
        recoveredBlock45Step = 73 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) + (1).
            recoveredBlock45PC := 74.
        ].
        recoveredBlock45Step = 74 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Stack0.
            recoveredBlock45PC := 75.
        ].
        recoveredBlock45Step = 75 ifTrue: [
            recoveredLocal2 := recoveredBlock45Stack1.
            recoveredBlock45PC := 78.
        ].
        recoveredBlock45Step = 78 ifTrue: [
            recoveredBlock45PC := 143.
        ].
        recoveredBlock45Step = 82 ifTrue: [
            recoveredBlock45Stack0 := recoveredLocal3.
            recoveredBlock45PC := 85.
        ].
        recoveredBlock45Step = 85 ifTrue: [
            recoveredBlock45Stack1 := 1.
            recoveredBlock45PC := 87.
        ].
        recoveredBlock45Step = 87 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) <= (recoveredBlock45Stack1).
            recoveredBlock45PC := 88.
        ].
        recoveredBlock45Step = 88 ifTrue: [
            (recoveredBlock45Stack0) ifTrue: [recoveredBlock45PC := 92] ifFalse: [recoveredBlock45PC := 102].
        ].
        recoveredBlock45Step = 92 ifTrue: [
            recoveredBlock45Stack0 := 1.
            recoveredBlock45PC := 94.
        ].
        recoveredBlock45Step = 94 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Stack0.
            recoveredBlock45PC := 95.
        ].
        recoveredBlock45Step = 95 ifTrue: [
            recoveredLocal2 := recoveredBlock45Stack1.
            recoveredBlock45PC := 98.
        ].
        recoveredBlock45Step = 98 ifTrue: [
            recoveredBlock45PC := 143.
        ].
        recoveredBlock45Step = 102 ifTrue: [
            recoveredBlock45Stack0 := recoveredLocal3.
            recoveredBlock45PC := 105.
        ].
        recoveredBlock45Step = 105 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) + (-1).
            recoveredBlock45PC := 106.
        ].
        recoveredBlock45Step = 106 ifTrue: [
            recoveredLocal2 := recoveredBlock45Stack0.
            recoveredBlock45PC := 109.
        ].
        recoveredBlock45Step = 109 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 110.
        ].
        recoveredBlock45Step = 110 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) textObjects.
            recoveredBlock45PC := 111.
        ].
        recoveredBlock45Step = 111 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal2.
            recoveredBlock45PC := 114.
        ].
        recoveredBlock45Step = 114 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) at: (recoveredBlock45Stack1).
            recoveredBlock45PC := 116.
        ].
        recoveredBlock45Step = 116 ifTrue: [
            recoveredLocal4 := recoveredBlock45Stack0.
            recoveredBlock45PC := 119.
        ].
        recoveredBlock45Step = 119 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 120.
        ].
        recoveredBlock45Step = 120 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) textObjects.
            recoveredBlock45PC := 121.
        ].
        recoveredBlock45Step = 121 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal2.
            recoveredBlock45PC := 124.
        ].
        recoveredBlock45Step = 124 ifTrue: [
            recoveredBlock45Stack2 := self.
            recoveredBlock45PC := 125.
        ].
        recoveredBlock45Step = 125 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) textObjects.
            recoveredBlock45PC := 126.
        ].
        recoveredBlock45Step = 126 ifTrue: [
            recoveredBlock45Stack3 := recoveredLocal3.
            recoveredBlock45PC := 129.
        ].
        recoveredBlock45Step = 129 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) at: (recoveredBlock45Stack3).
            recoveredBlock45PC := 131.
        ].
        recoveredBlock45Step = 131 ifTrue: [
            (recoveredBlock45Stack0) at: (recoveredBlock45Stack1) put: (recoveredBlock45Stack2).
            recoveredBlock45PC := 133.
        ].
        recoveredBlock45Step = 133 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 134.
        ].
        recoveredBlock45Step = 134 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) textObjects.
            recoveredBlock45PC := 135.
        ].
        recoveredBlock45Step = 135 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal3.
            recoveredBlock45PC := 138.
        ].
        recoveredBlock45Step = 138 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal4.
            recoveredBlock45PC := 141.
        ].
        recoveredBlock45Step = 141 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) at: (recoveredBlock45Stack1) put: (recoveredBlock45Stack2).
            recoveredBlock45PC := 143.
        ].
        recoveredBlock45Step = 143 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack0.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d54ac; bytecode file offset 0xdd1d84"
!SGTextDocumentation methodsFor: 'recovered'!
shiftDownTextObjects: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 :recoveredBlock17Arg2 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 |
    recoveredBlock17Value0 := (self) textObjects.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) indexOf: (recoveredBlock17Value1).
    recoveredBlock17Value3 := (self) textObjects.
    recoveredBlock17Value4 := recoveredBlock17Arg2.
    recoveredBlock17Value5 := (recoveredBlock17Value3) indexOf: (recoveredBlock17Value4).
    recoveredBlock17Value6 := (recoveredBlock17Value2) > (recoveredBlock17Value5).
    recoveredBlock17Value6
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47Stack4 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) textObjects.
            recoveredBlock47PC := 55.
        ].
        recoveredBlock47Step = 55 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 56.
        ].
        recoveredBlock47Step = 56 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) indexOf: (recoveredBlock47Stack1).
            recoveredBlock47PC := 57.
        ].
        recoveredBlock47Step = 57 ifTrue: [
            recoveredLocal3 := recoveredBlock47Stack0.
            recoveredBlock47PC := 60.
        ].
        recoveredBlock47Step = 60 ifTrue: [
            recoveredBlock47Stack0 := recoveredLocal3.
            recoveredBlock47PC := 63.
        ].
        recoveredBlock47Step = 63 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal2.
            recoveredBlock47PC := 66.
        ].
        recoveredBlock47Step = 66 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) + (-1).
            recoveredBlock47PC := 67.
        ].
        recoveredBlock47Step = 67 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) = (recoveredBlock47Stack1).
            recoveredBlock47PC := 68.
        ].
        recoveredBlock47Step = 68 ifTrue: [
            (recoveredBlock47Stack0) ifTrue: [recoveredBlock47PC := 72] ifFalse: [recoveredBlock47PC := 84].
        ].
        recoveredBlock47Step = 72 ifTrue: [
            recoveredBlock47Stack0 := recoveredLocal2.
            recoveredBlock47PC := 75.
        ].
        recoveredBlock47Step = 75 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) + (-1).
            recoveredBlock47PC := 76.
        ].
        recoveredBlock47Step = 76 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Stack0.
            recoveredBlock47PC := 77.
        ].
        recoveredBlock47Step = 77 ifTrue: [
            recoveredLocal2 := recoveredBlock47Stack1.
            recoveredBlock47PC := 80.
        ].
        recoveredBlock47Step = 80 ifTrue: [
            recoveredBlock47PC := 149.
        ].
        recoveredBlock47Step = 84 ifTrue: [
            recoveredBlock47Stack0 := recoveredLocal3.
            recoveredBlock47PC := 87.
        ].
        recoveredBlock47Step = 87 ifTrue: [
            recoveredBlock47Stack1 := self.
            recoveredBlock47PC := 88.
        ].
        recoveredBlock47Step = 88 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) textObjects.
            recoveredBlock47PC := 89.
        ].
        recoveredBlock47Step = 89 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) size.
            recoveredBlock47PC := 91.
        ].
        recoveredBlock47Step = 91 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) >= (recoveredBlock47Stack1).
            recoveredBlock47PC := 92.
        ].
        recoveredBlock47Step = 92 ifTrue: [
            (recoveredBlock47Stack0) ifTrue: [recoveredBlock47PC := 96] ifFalse: [recoveredBlock47PC := 108].
        ].
        recoveredBlock47Step = 96 ifTrue: [
            recoveredBlock47Stack0 := self.
            recoveredBlock47PC := 97.
        ].
        recoveredBlock47Step = 97 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) textObjects.
            recoveredBlock47PC := 98.
        ].
        recoveredBlock47Step = 98 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) size.
            recoveredBlock47PC := 100.
        ].
        recoveredBlock47Step = 100 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Stack0.
            recoveredBlock47PC := 101.
        ].
        recoveredBlock47Step = 101 ifTrue: [
            recoveredLocal2 := recoveredBlock47Stack1.
            recoveredBlock47PC := 104.
        ].
        recoveredBlock47Step = 104 ifTrue: [
            recoveredBlock47PC := 149.
        ].
        recoveredBlock47Step = 108 ifTrue: [
            recoveredBlock47Stack0 := recoveredLocal3.
            recoveredBlock47PC := 111.
        ].
        recoveredBlock47Step = 111 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) + (1).
            recoveredBlock47PC := 112.
        ].
        recoveredBlock47Step = 112 ifTrue: [
            recoveredLocal2 := recoveredBlock47Stack0.
            recoveredBlock47PC := 115.
        ].
        recoveredBlock47Step = 115 ifTrue: [
            recoveredBlock47Stack0 := self.
            recoveredBlock47PC := 116.
        ].
        recoveredBlock47Step = 116 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) textObjects.
            recoveredBlock47PC := 117.
        ].
        recoveredBlock47Step = 117 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal2.
            recoveredBlock47PC := 120.
        ].
        recoveredBlock47Step = 120 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) at: (recoveredBlock47Stack1).
            recoveredBlock47PC := 122.
        ].
        recoveredBlock47Step = 122 ifTrue: [
            recoveredLocal4 := recoveredBlock47Stack0.
            recoveredBlock47PC := 125.
        ].
        recoveredBlock47Step = 125 ifTrue: [
            recoveredBlock47Stack0 := self.
            recoveredBlock47PC := 126.
        ].
        recoveredBlock47Step = 126 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) textObjects.
            recoveredBlock47PC := 127.
        ].
        recoveredBlock47Step = 127 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal2.
            recoveredBlock47PC := 130.
        ].
        recoveredBlock47Step = 130 ifTrue: [
            recoveredBlock47Stack2 := self.
            recoveredBlock47PC := 131.
        ].
        recoveredBlock47Step = 131 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) textObjects.
            recoveredBlock47PC := 132.
        ].
        recoveredBlock47Step = 132 ifTrue: [
            recoveredBlock47Stack3 := recoveredLocal3.
            recoveredBlock47PC := 135.
        ].
        recoveredBlock47Step = 135 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) at: (recoveredBlock47Stack3).
            recoveredBlock47PC := 137.
        ].
        recoveredBlock47Step = 137 ifTrue: [
            (recoveredBlock47Stack0) at: (recoveredBlock47Stack1) put: (recoveredBlock47Stack2).
            recoveredBlock47PC := 139.
        ].
        recoveredBlock47Step = 139 ifTrue: [
            recoveredBlock47Stack0 := self.
            recoveredBlock47PC := 140.
        ].
        recoveredBlock47Step = 140 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) textObjects.
            recoveredBlock47PC := 141.
        ].
        recoveredBlock47Step = 141 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal3.
            recoveredBlock47PC := 144.
        ].
        recoveredBlock47Step = 144 ifTrue: [
            recoveredBlock47Stack2 := recoveredLocal4.
            recoveredBlock47PC := 147.
        ].
        recoveredBlock47Step = 147 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) at: (recoveredBlock47Stack1) put: (recoveredBlock47Stack2).
            recoveredBlock47PC := 149.
        ].
        recoveredBlock47Step = 149 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack0.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

