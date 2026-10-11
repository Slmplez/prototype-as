"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005b3f8; bytecode file offset 0x957cb0"
!ETASTextItemFiles class methodsFor: 'recovered'!
createFile: recoveredArg1 recordFormat: recoveredArg2 nameTable: recoveredArg3 sampleCount: recoveredArg4
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2007ec6c; bytecode file offset 0x97c330"
!ETASTextItemFiles class methodsFor: 'recovered'!
hasRecords
    ^false
! !

"ASDBase.ic method 0x200de404; bytecode file offset 0x9dacd4"
!ETASTextItemFiles class methodsFor: 'recovered'!
createFile: recoveredArg1 recordFormat: recoveredArg2 nameTable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createFile: (recoveredValue0) recordFormat: (recoveredValue1) nameTable: (recoveredValue2) sampleCount: (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201df320; bytecode file offset 0xadbbf0"
!ETASTextItemFiles class methodsFor: 'recovered'!
convertElementAccessors: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super convertElementAccessors: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280d6278Arg1 | 
    | block280d6278Value0 block280d6278Value1 block280d6278Value2 block280d6278Value3 |
    block280d6278Value0 := block280d6278Arg1.
    block280d6278Value1 := (block280d6278Value0) noFormulaAccessor.
    block280d6278Value2 := (block280d6278Value1) deepCopy.
    block280d6278Value3 := (block280d6278Value2) asStringNoCRLFAccessor.
    block280d6278Value3
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

