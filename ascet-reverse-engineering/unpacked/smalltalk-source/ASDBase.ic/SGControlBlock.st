"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200044f0; bytecode file offset 0x90206c"
!SGControlBlock methodsFor: 'recovered'!
collectAllSeqForMethod: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000b8c4; bytecode file offset 0x908be4"
!SGControlBlock methodsFor: 'recovered'!
scopeName
    | recoveredValue0 |
    recoveredValue0 := (self) errLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004a31c; bytecode file offset 0x947128"
!SGControlBlock methodsFor: 'recovered'!
thenStmntList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) thenPort.
    recoveredValue1 := (self) controlBlockAtPort: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004df64; bytecode file offset 0x94d048"
!SGControlBlock methodsFor: 'recovered'!
syntacticAnalysis
    (self) analyzeControlBlocks.
    ^self
! !

"ASDBase.ic method 0x2004f0e0; bytecode file offset 0x94d048"
!SGControlBlock methodsFor: 'recovered'!
thenPort
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006be28; bytecode file offset 0x96873c"
!SGControlBlock methodsFor: 'recovered'!
controlBlocks
    | recoveredValue0 |
    recoveredValue0 := controlBlocks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074a0c; bytecode file offset 0x9757c8"
!SGControlBlock methodsFor: 'recovered'!
isBdlControlBlock
    ^true
! !

"ASDBase.ic method 0x2007aeb4; bytecode file offset 0x97c330"
!SGControlBlock methodsFor: 'recovered'!
isBdlValid
    ^false
! !

"ASDBase.ic method 0x20088238; bytecode file offset 0x984bc0"
!SGControlBlock methodsFor: 'recovered'!
nilVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: ('controlBlocks').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ae728; bytecode file offset 0x9ab034"
!SGControlBlock methodsFor: 'recovered'!
atPort: recoveredArg1 putControlBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) controlBlocks.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20119b84; bytecode file offset 0xa16880"
!SGControlBlock methodsFor: 'recovered'!
analyzeControlBlocks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) controlBlocks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7f38Arg1 | 
    | block280c7f38Value0 block280c7f38Value1 |
    block280c7f38Value0 := block280c7f38Arg1.
    block280c7f38Value1 := (block280c7f38Value0) autoAnalyze.
    block280c7f38Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201467f8; bytecode file offset 0xa430ec"
!SGControlBlock methodsFor: 'recovered'!
controlBlockAtPort: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) controlBlocks.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) fatalExpect: ('missing seqtable for control block').
    recoveredBlock6Value0
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2015c4c8; bytecode file offset 0xa58d94"
!SGControlBlock methodsFor: 'recovered'!
prepareForAnalyzing
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    controlBlocks := recoveredValue1.
    recoveredValue2 := (self) thenPort.
    recoveredValue3 := SGLmSeqTable.
    recoveredValue4 := (self) thenPort.
    recoveredValue5 := (recoveredValue3) createFor: (recoveredValue4).
    (self) atPort: (recoveredValue2) putControlBlock: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201e5db0; bytecode file offset 0xae2680"
!SGControlBlock methodsFor: 'recovered'!
prepareForSequencing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    controlBlocks := recoveredValue1.
    recoveredValue2 := (self) thenPort.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) seqTable.
    recoveredValue5 := (self) thenPort.
    recoveredValue6 := (recoveredValue4) createSeqTableForControlBlock: (recoveredValue5).
    (self) atPort: (recoveredValue2) putControlBlock: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) thenPort.
    recoveredValue9 := (self) thenStmntList.
    (recoveredValue7) atPort: (recoveredValue8) putControlBlock: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x202391d0; bytecode file offset 0xb35aa4"
!SGControlBlock methodsFor: 'recovered'!
inMethodFrom: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := OrderedCollection.
    recoveredBlock5Value1 := (recoveredBlock5Value0) new.
    recoveredBlock5Value2 := (self) methodScopeName: (recoveredBlock5Value1).
    recoveredBlock5Value3 := recoveredBlock5Arg1.
    recoveredBlock5Value4 := (recoveredBlock5Value3) aliasName.
    recoveredBlock5Value5 := (recoveredBlock5Value2) equals: (recoveredBlock5Value4).
    recoveredBlock5Value5
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024c5a4; bytecode file offset 0xb48e6c"
!SGControlBlock methodsFor: 'recovered'!
collectDefSeqForMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) thenPort.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := [:recoveredBlock5Block15Arg1 | 
    | recoveredBlock5Block15Value0 recoveredBlock5Block15Value1 recoveredBlock5Block15Value2 recoveredBlock5Block15Value3 |
    recoveredBlock5Block15Value0 := recoveredBlock5Block15Arg1.
    recoveredBlock5Block15Value1 := (self) thenPort.
    recoveredBlock5Block15Value2 := (self) thenStmntList.
    recoveredBlock5Block15Value3 := (recoveredBlock5Block15Value0) atPort: (recoveredBlock5Block15Value1) putControlBlock: (recoveredBlock5Block15Value2).
    recoveredBlock5Block15Value3
].
    recoveredBlock5Value2 := (self) inMethodFrom: (recoveredBlock5Value0) do: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) notNil: (recoveredValue1).
    ^self
! !

