"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200599a8; bytecode file offset 0x956284"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
checkForValidMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) unitAliasName.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005ff5c; bytecode file offset 0x95c810"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
resetAutoNumber
    number := 0.
    ^self
! !

"ASDBase.ic method 0x20067624; bytecode file offset 0x9646f8"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
sequences
    | recoveredValue0 |
    recoveredValue0 := sequences.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068dbc; bytecode file offset 0x965b90"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
currentNumber
    | recoveredValue0 |
    recoveredValue0 := number.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069738; bytecode file offset 0x966bdc"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
entryElements
    | recoveredValue0 |
    recoveredValue0 := entryElements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aec4; bytecode file offset 0x967a18"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
selectedElements
    | recoveredValue0 |
    recoveredValue0 := selectedElements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b220; bytecode file offset 0x96873c"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
lastElements
    | recoveredValue0 |
    recoveredValue0 := lastElements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084174; bytecode file offset 0x980a28"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
currentNumber: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) + (-1).
    number := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20098194; bytecode file offset 0x995850"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
addLastElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) lastElements.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098384; bytecode file offset 0x995850"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
addEntryElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) entryElements.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098b44; bytecode file offset 0x995850"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
addSequence: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sequences.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098ec4; bytecode file offset 0x995850"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
addSelectedElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) selectedElements.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009d148; bytecode file offset 0x999a00"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
nextNumber
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := number.
    recoveredValue1 := (recoveredValue0) + (1).
    number := recoveredValue1.
    recoveredValue2 := (self) currentNumber.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c16e4; bytecode file offset 0x9beac8"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
selectedElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedElements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011308c; bytecode file offset 0xa0f950"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
createSeqTableForControlBlock: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGBdlAutoSeqTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createFor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) selectedElements.
    (recoveredValue3) selectedElements: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20114b44; bytecode file offset 0xa11410"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
autoNumberSeqCT
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGBdlGraph.
    recoveredValue1 := (self) selectedElements.
    recoveredValue2 := (self) entryElements.
    recoveredValue3 := (self) lastElements.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    (recoveredValue0) createForElementsCT: (recoveredValue1) entryElements: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20219a54; bytecode file offset 0xb1631c"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    entryElements := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    selectedElements := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    sequences := recoveredValue5.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    lastElements := recoveredValue7.
    (self) resetAutoNumber.
    ^self
! !

"ASDBase.ic method 0x20471668; bytecode file offset 0xd6df60"
!SGBdlAutoSeqTable methodsFor: 'recovered'!
autoNumberSeqStartingFrom: recoveredArg1 useNumberInfo: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) sequences.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := false.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isUndef.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 31] ifFalse: [recoveredBlock12PC := 24].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) number.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack2 := recoveredArg1.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) >= (recoveredBlock12Stack2).
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := SGBdlGraph.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) selectedElements.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) entryElements.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2) validElements: (recoveredStack3) entryElements: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) currentNumber: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedElements.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Value0 recoveredBlock61Value1 |
    recoveredBlock61Value0 := recoveredBlock61Arg1.
    recoveredBlock61Value1 := (recoveredBlock61Value0) numberSequence: (self).
    recoveredBlock61Value1
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := [:recoveredBlock85Arg1 | 
    | recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 recoveredBlock85Value3 |
    recoveredBlock85Value0 := (self) unit.
    recoveredBlock85Value1 := (recoveredBlock85Value0) changedSequences.
    recoveredBlock85Value2 := recoveredBlock85Arg1.
    recoveredBlock85Value3 := (recoveredBlock85Value1) includes: (recoveredBlock85Value2).
    recoveredBlock85Value3
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := [:recoveredBlock108Arg1 | 
    | recoveredBlock108Value0 recoveredBlock108Value1 |
    recoveredBlock108Value0 := recoveredBlock108Arg1.
    recoveredBlock108Value1 := (recoveredBlock108Value0) autoNumber: (self).
    recoveredBlock108Value1
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

