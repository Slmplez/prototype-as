"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003788; bytecode file offset 0x90206c"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
inlinePrivateAdditionalMethods: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004010; bytecode file offset 0x90206c"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
updateMethodDecls: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000f434; bytecode file offset 0x90bd10"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
isResolvedInfo: recoveredArg1 inMethod: recoveredArg2
    ^true
! !

"ASDBase.ic method 0x20067e9c; bytecode file offset 0x965b90"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
read
    | recoveredValue0 |
    recoveredValue0 := read.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069980; bytecode file offset 0x966bdc"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
pendingWrite
    | recoveredValue0 |
    recoveredValue0 := write.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a84c; bytecode file offset 0x967a18"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
completedWrite
    | recoveredValue0 |
    recoveredValue0 := completedWrite.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bd20; bytecode file offset 0x96873c"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
values
    | recoveredValue0 |
    recoveredValue0 := values.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074d24; bytecode file offset 0x9757c8"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
isMdlSideEffectAnalysisInfo
    ^true
! !

"ASDBase.ic method 0x20086b54; bytecode file offset 0x98376c"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
analyseSideEffects: recoveredArg1 arguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) resolvedAccess: (recoveredValue0) arguments: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a926c; bytecode file offset 0x9a5d18"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printOn: (recoveredValue0) indent: ('').
    ^self
! !

"ASDBase.ic method 0x200c022c; bytecode file offset 0x9bd228"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
read: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    read := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1658; bytecode file offset 0x9bdf14"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
pendingWrite: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    write := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1e14; bytecode file offset 0x9beac8"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
completedWrite: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    completedWrite := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e9958; bytecode file offset 0x9e6240"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
addValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) assertValueType: (recoveredValue0).
    recoveredValue1 := (self) values.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) add: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ff934; bytecode file offset 0x9fc26c"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
allWriteDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) pendingWrite.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) completedWrite.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2011afb4; bytecode file offset 0xa1787c"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
sequencePoint
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) completedWrite.
    recoveredValue1 := (self) pendingWrite.
    (recoveredValue0) addAll: (recoveredValue1).
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    write := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20186740; bytecode file offset 0xa83004"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
mergeInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) read.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) read.
    (recoveredValue0) addAll: (recoveredValue2).
    recoveredValue3 := (self) pendingWrite.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) pendingWrite.
    (recoveredValue3) addAll: (recoveredValue5).
    recoveredValue6 := (self) completedWrite.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) completedWrite.
    (recoveredValue6) addAll: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201a12a0; bytecode file offset 0xa9db64"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
isEmpty
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) read.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) pendingWrite.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) completedWrite.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b6b7c; bytecode file offset 0xab3464"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
analysePendingWriteMatches: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) pendingWrite.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) analyseWriteMatches: (recoveredBlock5Value1) source: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201b6b90; bytecode file offset 0xab3464"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
analyseReadMatches: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) read.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) analyseReadMatches: (recoveredBlock5Value1) source: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201f2a60; bytecode file offset 0xaef324"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initialize.
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    read := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    write := recoveredValue3.
    recoveredValue4 := Set.
    recoveredValue5 := (recoveredValue4) new.
    completedWrite := recoveredValue5.
    recoveredValue6 := Set.
    recoveredValue7 := (recoveredValue6) new.
    values := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x20229094; bytecode file offset 0xb2595c"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
addReadAccess: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isMdlSideEffectObjectAccess.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    'Invalid object type'
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := read.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202290d4; bytecode file offset 0xb2599c"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
addPendingWriteAccess: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isMdlSideEffectObjectAccess.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    'Invalid object type'
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := write.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20229114; bytecode file offset 0xb259dc"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
addCompletedWriteAccess: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isMdlSideEffectObjectAccess.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    'Invalid object type'
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := completedWrite.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024c3a8; bytecode file offset 0xb48c70"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
assertValueType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isMdlSideEffectRecordAccess.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 23] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isMdlSideEffectVarAccess.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [
    'Invalid value type'
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20276afc; bytecode file offset 0xb733d0"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
addAllValues: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280e0ca0Arg1 | 
    | block280e0ca0Value0 block280e0ca0Value1 |
    block280e0ca0Value0 := block280e0ca0Arg1.
    block280e0ca0Value1 := (block280e0ca0Value0) isCollection.
    block280e0ca0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) halt.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := (self) assertValueType: (recoveredBlock22Value0).
    recoveredBlock22Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f3b34; bytecode file offset 0xbf0414"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
removeLocalVariables
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) read.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280e8644Arg1 | 
    | block280e8644Value0 block280e8644Value1 block280e8644Value2 |
    block280e8644Value0 := block280e8644Arg1.
    block280e8644Value1 := (block280e8644Value0) isLocalVariable.
    block280e8644Value2 := (block280e8644Value1) not.
    block280e8644Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) read: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) pendingWrite.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:block280e8668Arg1 | 
    | block280e8668Value0 block280e8668Value1 block280e8668Value2 |
    block280e8668Value0 := block280e8668Arg1.
    block280e8668Value1 := (block280e8668Value0) isLocalVariable.
    block280e8668Value2 := (block280e8668Value1) not.
    block280e8668Value2
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) pendingWrite: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) completedWrite.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:block280e868cArg1 | 
    | block280e868cValue0 block280e868cValue1 block280e868cValue2 |
    block280e868cValue0 := block280e868cArg1.
    block280e868cValue1 := (block280e868cValue0) isLocalVariable.
    block280e868cValue2 := (block280e868cValue1) not.
    block280e868cValue2
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) completedWrite: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20384b18; bytecode file offset 0xc813f4"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
asConditionalInfo
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) read.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) asConditionalInfo.
    recoveredBlock11Value3 := (recoveredBlock11Value0) addReadAccess: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) pendingWrite.
    recoveredValue5 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 |
    recoveredBlock31Value0 := recoveredLocal1.
    recoveredBlock31Value1 := recoveredBlock31Arg1.
    recoveredBlock31Value2 := (recoveredBlock31Value1) asConditionalInfo.
    recoveredBlock31Value3 := (recoveredBlock31Value0) addPendingWriteAccess: (recoveredBlock31Value2).
    recoveredBlock31Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) completedWrite.
    recoveredValue7 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 |
    recoveredBlock51Value0 := recoveredLocal1.
    recoveredBlock51Value1 := recoveredBlock51Arg1.
    recoveredBlock51Value2 := (recoveredBlock51Value1) asConditionalInfo.
    recoveredBlock51Value3 := (recoveredBlock51Value0) addCompletedWriteAccess: (recoveredBlock51Value2).
    recoveredBlock51Value3
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20385b34; bytecode file offset 0xc82428"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
asDOM: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ownerDocument.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) xmlName.
    recoveredValue4 := (recoveredValue1) createElement: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) conditional.
    (recoveredValue5) setAttribute: ('conditional') value: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) read.
    recoveredValue9 := (self) class.
    recoveredValue10 := (recoveredValue9) xmlReadName.
    recoveredValue11 := recoveredArg2.
    (self) asDOM: (recoveredValue7) list: (recoveredValue8) name: (recoveredValue10) context: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (self) pendingWrite.
    recoveredValue14 := (self) class.
    recoveredValue15 := (recoveredValue14) xmlWriteName.
    recoveredValue16 := recoveredArg2.
    (self) asDOM: (recoveredValue12) list: (recoveredValue13) name: (recoveredValue15) context: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (self) completedWrite.
    recoveredValue19 := (self) class.
    recoveredValue20 := (recoveredValue19) xmlCompletedWriteName.
    recoveredValue21 := recoveredArg2.
    (self) asDOM: (recoveredValue17) list: (recoveredValue18) name: (recoveredValue20) context: (recoveredValue21).
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := (self) values.
    recoveredValue24 := (self) class.
    recoveredValue25 := (recoveredValue24) xmlValuesName.
    recoveredValue26 := recoveredArg2.
    (self) asDOM: (recoveredValue22) list: (recoveredValue23) name: (recoveredValue25) context: (recoveredValue26).
    recoveredValue27 := recoveredLocal1.
    ^recoveredValue27
! !

"ASDBase.ic method 0x2038fa0c; bytecode file offset 0xc8c2d8"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
memorySegmentedDeclsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) read.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) memorySegmentedDeclsDo: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) pendingWrite.
    recoveredValue3 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) memorySegmentedDeclsDo: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) completedWrite.
    recoveredValue5 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 |
    recoveredBlock39Value0 := recoveredBlock39Arg1.
    recoveredBlock39Value1 := recoveredArg1.
    recoveredBlock39Value2 := (recoveredBlock39Value0) memorySegmentedDeclsDo: (recoveredBlock39Value1).
    recoveredBlock39Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) values.
    recoveredValue7 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 |
    recoveredBlock57Value0 := recoveredBlock57Arg1.
    recoveredBlock57Value1 := recoveredArg1.
    recoveredBlock57Value2 := (recoveredBlock57Value0) memorySegmentedDeclsDo: (recoveredBlock57Value1).
    recoveredBlock57Value2
].
    (recoveredValue6) do: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2042241c; bytecode file offset 0xd1ed08"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
fromDOM: recoveredArg1 in: recoveredArg2 context: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'conditional'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) asBoolean.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) conditional: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlReadName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromDOM: (recoveredStack1) in: (recoveredStack2) name: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            read := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) read.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlWriteName.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromDOM: (recoveredStack1) in: (recoveredStack2) name: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            write := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingWrite.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCompletedWriteName.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromDOM: (recoveredStack1) in: (recoveredStack2) name: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            completedWrite := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) completedWrite.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlValuesName.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromDOM: (recoveredStack1) in: (recoveredStack2) name: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            values := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20446b6c; bytecode file offset 0xd43448"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
printValuesOn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasValues.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := recoveredArg1.
    recoveredBlock27Value2 := (recoveredBlock27Value0) printOn: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := ${.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 |
    recoveredBlock57Value0 := recoveredBlock57Arg1.
    recoveredBlock57Value1 := recoveredArg1.
    recoveredBlock57Value2 := (recoveredBlock57Value0) printOn: (recoveredBlock57Value1).
    recoveredBlock57Value2
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock70Value0 recoveredBlock70Value1 |
    recoveredBlock70Value0 := recoveredArg1.
    recoveredBlock70Value1 := (recoveredBlock70Value0) nextPutAll: (', ').
    recoveredBlock70Value1
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) separatedBy: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := $}.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := '{}'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045cb78; bytecode file offset 0xd5945c"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
resolvedAccess: recoveredArg1 arguments: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) read.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := recoveredArg2.
    recoveredBlock11Value4 := (recoveredBlock11Value1) resolvedAccess: (recoveredBlock11Value2) arguments: (recoveredBlock11Value3).
    recoveredBlock11Value5 := (recoveredBlock11Value0) addReadAccess: (recoveredBlock11Value4).
    recoveredBlock11Value5
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) pendingWrite.
    recoveredValue5 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 |
    recoveredBlock38Value0 := recoveredLocal1.
    recoveredBlock38Value1 := recoveredBlock38Arg1.
    recoveredBlock38Value2 := recoveredArg1.
    recoveredBlock38Value3 := recoveredArg2.
    recoveredBlock38Value4 := (recoveredBlock38Value1) resolvedAccess: (recoveredBlock38Value2) arguments: (recoveredBlock38Value3).
    recoveredBlock38Value5 := (recoveredBlock38Value0) addPendingWriteAccess: (recoveredBlock38Value4).
    recoveredBlock38Value5
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) completedWrite.
    recoveredValue7 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 recoveredBlock64Value4 recoveredBlock64Value5 |
    recoveredBlock64Value0 := recoveredLocal1.
    recoveredBlock64Value1 := recoveredBlock64Arg1.
    recoveredBlock64Value2 := recoveredArg1.
    recoveredBlock64Value3 := recoveredArg2.
    recoveredBlock64Value4 := (recoveredBlock64Value1) resolvedAccess: (recoveredBlock64Value2) arguments: (recoveredBlock64Value3).
    recoveredBlock64Value5 := (recoveredBlock64Value0) addCompletedWriteAccess: (recoveredBlock64Value4).
    recoveredBlock64Value5
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := (self) values.
    recoveredValue9 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 recoveredBlock90Value5 |
    recoveredBlock90Value0 := recoveredLocal1.
    recoveredBlock90Value1 := recoveredBlock90Arg1.
    recoveredBlock90Value2 := recoveredArg1.
    recoveredBlock90Value3 := recoveredArg2.
    recoveredBlock90Value4 := (recoveredBlock90Value1) resolvedAccess: (recoveredBlock90Value2) arguments: (recoveredBlock90Value3).
    recoveredBlock90Value5 := (recoveredBlock90Value0) addValue: (recoveredBlock90Value4).
    recoveredBlock90Value5
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x204f2638; bytecode file offset 0xdeef18"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
printOn: recoveredArg1 indent: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) read.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'Read access:'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) read.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 recoveredBlock28Value5 |
    recoveredBlock28Value0 := recoveredArg1.
    recoveredBlock28Value1 := recoveredArg2.
    (recoveredBlock28Value0) nextPutAll: (recoveredBlock28Value1).
    recoveredBlock28Value2 := recoveredBlock28Arg1.
    recoveredBlock28Value3 := recoveredArg1.
    (recoveredBlock28Value2) printOn: (recoveredBlock28Value3).
    recoveredBlock28Value4 := recoveredArg1.
    recoveredBlock28Value5 := (recoveredBlock28Value4) cr.
    recoveredBlock28Value5
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingWrite.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'Pending write access:'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingWrite.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 recoveredBlock83Value3 recoveredBlock83Value4 recoveredBlock83Value5 |
    recoveredBlock83Value0 := recoveredArg1.
    recoveredBlock83Value1 := recoveredArg2.
    (recoveredBlock83Value0) nextPutAll: (recoveredBlock83Value1).
    recoveredBlock83Value2 := recoveredBlock83Arg1.
    recoveredBlock83Value3 := recoveredArg1.
    (recoveredBlock83Value2) printOn: (recoveredBlock83Value3).
    recoveredBlock83Value4 := recoveredArg1.
    recoveredBlock83Value5 := (recoveredBlock83Value4) cr.
    recoveredBlock83Value5
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) completedWrite.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := 'Completed write access:'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) completedWrite.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Value0 recoveredBlock139Value1 recoveredBlock139Value2 recoveredBlock139Value3 recoveredBlock139Value4 recoveredBlock139Value5 |
    recoveredBlock139Value0 := recoveredArg1.
    recoveredBlock139Value1 := recoveredArg2.
    (recoveredBlock139Value0) nextPutAll: (recoveredBlock139Value1).
    recoveredBlock139Value2 := recoveredBlock139Arg1.
    recoveredBlock139Value3 := recoveredArg1.
    (recoveredBlock139Value2) printOn: (recoveredBlock139Value3).
    recoveredBlock139Value4 := recoveredArg1.
    recoveredBlock139Value5 := (recoveredBlock139Value4) cr.
    recoveredBlock139Value5
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20564a84; bytecode file offset 0xe61368"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
intersect: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) read.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11Stack5 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) conditional.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 79] ifFalse: [recoveredBlock11PC := 26].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) read.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack3 := [:recoveredBlock11Block32Arg1 | 
    | recoveredBlock11Block32Value0 recoveredBlock11Block32Value1 recoveredBlock11Block32Value2 |
    recoveredBlock11Block32Value0 := recoveredBlock11Block32Arg1.
    recoveredBlock11Block32Value1 := recoveredBlock11Arg1.
    recoveredBlock11Block32Value2 := (recoveredBlock11Block32Value0) = (recoveredBlock11Block32Value1).
    recoveredBlock11Block32Value2
].
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack4 := [].
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) detect: (recoveredBlock11Stack3) ifNone: (recoveredBlock11Stack4).
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack3.
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 52 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 75] ifFalse: [recoveredBlock11PC := 56].
        ].
        recoveredBlock11Step = 56 ifTrue: [
            recoveredBlock11PC := 57.
        ].
        recoveredBlock11Step = 57 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 58.
        ].
        recoveredBlock11Step = 58 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 61.
        ].
        recoveredBlock11Step = 61 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) conditional.
            recoveredBlock11PC := 62.
        ].
        recoveredBlock11Step = 62 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 75] ifFalse: [recoveredBlock11PC := 66].
        ].
        recoveredBlock11Step = 66 ifTrue: [
            recoveredBlock11PC := 67.
        ].
        recoveredBlock11Step = 67 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 70.
        ].
        recoveredBlock11Step = 70 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 73.
        ].
        recoveredBlock11Step = 73 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) addReadAccess: (recoveredBlock11Stack2).
            recoveredBlock11PC := 75.
        ].
        recoveredBlock11Step = 75 ifTrue: [
            recoveredBlock11Stack2 := nil.
            recoveredBlock11PC := 76.
        ].
        recoveredBlock11Step = 76 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 79.
        ].
        recoveredBlock11Step = 79 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) pendingWrite.
    recoveredValue5 := [:recoveredBlock85Arg1 | 
    | recoveredBlock85Local1 recoveredBlock85Stack0 recoveredBlock85Stack1 recoveredBlock85Stack2 recoveredBlock85Stack3 recoveredBlock85Stack4 recoveredBlock85Stack5 recoveredBlock85PC recoveredBlock85Step recoveredBlock85Done recoveredBlock85Result |
    recoveredBlock85Stack0 := self.
    recoveredBlock85PC := 92.
    recoveredBlock85Done := false.
    [recoveredBlock85Done not] whileTrue: [
        recoveredBlock85Step := recoveredBlock85PC.
        recoveredBlock85Step = 92 ifTrue: [
            recoveredBlock85Stack1 := nil.
            recoveredBlock85PC := 93.
        ].
        recoveredBlock85Step = 93 ifTrue: [
            recoveredBlock85Stack2 := recoveredBlock85Arg1.
            recoveredBlock85PC := 96.
        ].
        recoveredBlock85Step = 96 ifTrue: [
            recoveredBlock85Stack2 := (recoveredBlock85Stack2) conditional.
            recoveredBlock85PC := 97.
        ].
        recoveredBlock85Step = 97 ifTrue: [
            (recoveredBlock85Stack2) ifTrue: [recoveredBlock85PC := 155] ifFalse: [recoveredBlock85PC := 100].
        ].
        recoveredBlock85Step = 100 ifTrue: [
            recoveredBlock85PC := 101.
        ].
        recoveredBlock85Step = 101 ifTrue: [
            recoveredBlock85Stack1 := nil.
            recoveredBlock85PC := 102.
        ].
        recoveredBlock85Step = 102 ifTrue: [
            recoveredBlock85Stack2 := recoveredArg1.
            recoveredBlock85PC := 105.
        ].
        recoveredBlock85Step = 105 ifTrue: [
            recoveredBlock85Stack2 := (recoveredBlock85Stack2) pendingWrite.
            recoveredBlock85PC := 107.
        ].
        recoveredBlock85Step = 107 ifTrue: [
            recoveredBlock85Stack3 := [:recoveredBlock85Block107Arg1 | 
    | recoveredBlock85Block107Value0 recoveredBlock85Block107Value1 recoveredBlock85Block107Value2 |
    recoveredBlock85Block107Value0 := recoveredBlock85Block107Arg1.
    recoveredBlock85Block107Value1 := recoveredBlock85Arg1.
    recoveredBlock85Block107Value2 := (recoveredBlock85Block107Value0) = (recoveredBlock85Block107Value1).
    recoveredBlock85Block107Value2
].
            recoveredBlock85PC := 120.
        ].
        recoveredBlock85Step = 120 ifTrue: [
            recoveredBlock85Stack4 := [].
            recoveredBlock85PC := 122.
        ].
        recoveredBlock85Step = 122 ifTrue: [
            recoveredBlock85Stack2 := (recoveredBlock85Stack2) detect: (recoveredBlock85Stack3) ifNone: (recoveredBlock85Stack4).
            recoveredBlock85PC := 124.
        ].
        recoveredBlock85Step = 124 ifTrue: [
            recoveredBlock85Stack3 := recoveredBlock85Stack2.
            recoveredBlock85PC := 125.
        ].
        recoveredBlock85Step = 125 ifTrue: [
            recoveredBlock85Local1 := recoveredBlock85Stack3.
            recoveredBlock85PC := 128.
        ].
        recoveredBlock85Step = 128 ifTrue: [
            (recoveredBlock85Stack2 == nil) ifTrue: [recoveredBlock85PC := 151] ifFalse: [recoveredBlock85PC := 132].
        ].
        recoveredBlock85Step = 132 ifTrue: [
            recoveredBlock85PC := 133.
        ].
        recoveredBlock85Step = 133 ifTrue: [
            recoveredBlock85Stack1 := nil.
            recoveredBlock85PC := 134.
        ].
        recoveredBlock85Step = 134 ifTrue: [
            recoveredBlock85Stack2 := recoveredBlock85Local1.
            recoveredBlock85PC := 137.
        ].
        recoveredBlock85Step = 137 ifTrue: [
            recoveredBlock85Stack2 := (recoveredBlock85Stack2) conditional.
            recoveredBlock85PC := 138.
        ].
        recoveredBlock85Step = 138 ifTrue: [
            (recoveredBlock85Stack2) ifTrue: [recoveredBlock85PC := 151] ifFalse: [recoveredBlock85PC := 142].
        ].
        recoveredBlock85Step = 142 ifTrue: [
            recoveredBlock85PC := 143.
        ].
        recoveredBlock85Step = 143 ifTrue: [
            recoveredBlock85Stack1 := recoveredLocal1.
            recoveredBlock85PC := 146.
        ].
        recoveredBlock85Step = 146 ifTrue: [
            recoveredBlock85Stack2 := recoveredBlock85Arg1.
            recoveredBlock85PC := 149.
        ].
        recoveredBlock85Step = 149 ifTrue: [
            recoveredBlock85Stack1 := (recoveredBlock85Stack1) addPendingWriteAccess: (recoveredBlock85Stack2).
            recoveredBlock85PC := 151.
        ].
        recoveredBlock85Step = 151 ifTrue: [
            recoveredBlock85Stack2 := nil.
            recoveredBlock85PC := 152.
        ].
        recoveredBlock85Step = 152 ifTrue: [
            recoveredBlock85Local1 := recoveredBlock85Stack2.
            recoveredBlock85PC := 155.
        ].
        recoveredBlock85Step = 155 ifTrue: [
            recoveredBlock85Result := recoveredBlock85Stack1.
            recoveredBlock85Done := true.
        ].
    ].
    recoveredBlock85Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) completedWrite.
    recoveredValue7 := [:recoveredBlock161Arg1 | 
    | recoveredBlock161Local1 recoveredBlock161Stack0 recoveredBlock161Stack1 recoveredBlock161Stack2 recoveredBlock161Stack3 recoveredBlock161Stack4 recoveredBlock161Stack5 recoveredBlock161PC recoveredBlock161Step recoveredBlock161Done recoveredBlock161Result |
    recoveredBlock161Stack0 := self.
    recoveredBlock161PC := 168.
    recoveredBlock161Done := false.
    [recoveredBlock161Done not] whileTrue: [
        recoveredBlock161Step := recoveredBlock161PC.
        recoveredBlock161Step = 168 ifTrue: [
            recoveredBlock161Stack1 := nil.
            recoveredBlock161PC := 169.
        ].
        recoveredBlock161Step = 169 ifTrue: [
            recoveredBlock161Stack2 := recoveredBlock161Arg1.
            recoveredBlock161PC := 172.
        ].
        recoveredBlock161Step = 172 ifTrue: [
            recoveredBlock161Stack2 := (recoveredBlock161Stack2) conditional.
            recoveredBlock161PC := 173.
        ].
        recoveredBlock161Step = 173 ifTrue: [
            (recoveredBlock161Stack2) ifTrue: [recoveredBlock161PC := 231] ifFalse: [recoveredBlock161PC := 176].
        ].
        recoveredBlock161Step = 176 ifTrue: [
            recoveredBlock161PC := 177.
        ].
        recoveredBlock161Step = 177 ifTrue: [
            recoveredBlock161Stack1 := nil.
            recoveredBlock161PC := 178.
        ].
        recoveredBlock161Step = 178 ifTrue: [
            recoveredBlock161Stack2 := recoveredArg1.
            recoveredBlock161PC := 181.
        ].
        recoveredBlock161Step = 181 ifTrue: [
            recoveredBlock161Stack2 := (recoveredBlock161Stack2) completedWrite.
            recoveredBlock161PC := 183.
        ].
        recoveredBlock161Step = 183 ifTrue: [
            recoveredBlock161Stack3 := [:recoveredBlock161Block183Arg1 | 
    | recoveredBlock161Block183Value0 recoveredBlock161Block183Value1 recoveredBlock161Block183Value2 |
    recoveredBlock161Block183Value0 := recoveredBlock161Block183Arg1.
    recoveredBlock161Block183Value1 := recoveredBlock161Arg1.
    recoveredBlock161Block183Value2 := (recoveredBlock161Block183Value0) = (recoveredBlock161Block183Value1).
    recoveredBlock161Block183Value2
].
            recoveredBlock161PC := 196.
        ].
        recoveredBlock161Step = 196 ifTrue: [
            recoveredBlock161Stack4 := [].
            recoveredBlock161PC := 198.
        ].
        recoveredBlock161Step = 198 ifTrue: [
            recoveredBlock161Stack2 := (recoveredBlock161Stack2) detect: (recoveredBlock161Stack3) ifNone: (recoveredBlock161Stack4).
            recoveredBlock161PC := 200.
        ].
        recoveredBlock161Step = 200 ifTrue: [
            recoveredBlock161Stack3 := recoveredBlock161Stack2.
            recoveredBlock161PC := 201.
        ].
        recoveredBlock161Step = 201 ifTrue: [
            recoveredBlock161Local1 := recoveredBlock161Stack3.
            recoveredBlock161PC := 204.
        ].
        recoveredBlock161Step = 204 ifTrue: [
            (recoveredBlock161Stack2 == nil) ifTrue: [recoveredBlock161PC := 227] ifFalse: [recoveredBlock161PC := 208].
        ].
        recoveredBlock161Step = 208 ifTrue: [
            recoveredBlock161PC := 209.
        ].
        recoveredBlock161Step = 209 ifTrue: [
            recoveredBlock161Stack1 := nil.
            recoveredBlock161PC := 210.
        ].
        recoveredBlock161Step = 210 ifTrue: [
            recoveredBlock161Stack2 := recoveredBlock161Local1.
            recoveredBlock161PC := 213.
        ].
        recoveredBlock161Step = 213 ifTrue: [
            recoveredBlock161Stack2 := (recoveredBlock161Stack2) conditional.
            recoveredBlock161PC := 214.
        ].
        recoveredBlock161Step = 214 ifTrue: [
            (recoveredBlock161Stack2) ifTrue: [recoveredBlock161PC := 227] ifFalse: [recoveredBlock161PC := 218].
        ].
        recoveredBlock161Step = 218 ifTrue: [
            recoveredBlock161PC := 219.
        ].
        recoveredBlock161Step = 219 ifTrue: [
            recoveredBlock161Stack1 := recoveredLocal1.
            recoveredBlock161PC := 222.
        ].
        recoveredBlock161Step = 222 ifTrue: [
            recoveredBlock161Stack2 := recoveredBlock161Arg1.
            recoveredBlock161PC := 225.
        ].
        recoveredBlock161Step = 225 ifTrue: [
            recoveredBlock161Stack1 := (recoveredBlock161Stack1) addCompletedWriteAccess: (recoveredBlock161Stack2).
            recoveredBlock161PC := 227.
        ].
        recoveredBlock161Step = 227 ifTrue: [
            recoveredBlock161Stack2 := nil.
            recoveredBlock161PC := 228.
        ].
        recoveredBlock161Step = 228 ifTrue: [
            recoveredBlock161Local1 := recoveredBlock161Stack2.
            recoveredBlock161PC := 231.
        ].
        recoveredBlock161Step = 231 ifTrue: [
            recoveredBlock161Result := recoveredBlock161Stack1.
            recoveredBlock161Done := true.
        ].
    ].
    recoveredBlock161Result
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2057cfec; bytecode file offset 0xe798d0"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
< recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectVarAccess.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAccess.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAllFieldsAccess.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectIndexAccess.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlNoSideEffectAnalysisInfo.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectAnalysisInfo.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) read.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) read.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) read.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) read.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingWrite.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) pendingWrite.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingWrite.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) pendingWrite.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) completedWrite.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) completedWrite.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) completedWrite.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) completedWrite.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) read.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) read.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := [:recoveredBlock166Arg1 :recoveredBlock166Arg2 | 
    | recoveredBlock166Stack0 recoveredBlock166Stack1 recoveredBlock166Stack2 recoveredBlock166Stack3 recoveredBlock166Stack4 recoveredBlock166PC recoveredBlock166Step recoveredBlock166Done recoveredBlock166Result |
    recoveredBlock166Stack0 := self.
    recoveredBlock166PC := 172.
    recoveredBlock166Done := false.
    [recoveredBlock166Done not] whileTrue: [
        recoveredBlock166Step := recoveredBlock166PC.
        recoveredBlock166Step = 172 ifTrue: [
            recoveredBlock166Stack1 := nil.
            recoveredBlock166PC := 173.
        ].
        recoveredBlock166Step = 173 ifTrue: [
            recoveredBlock166Stack2 := recoveredBlock166Arg1.
            recoveredBlock166PC := 174.
        ].
        recoveredBlock166Step = 174 ifTrue: [
            recoveredBlock166Stack3 := recoveredBlock166Arg2.
            recoveredBlock166PC := 175.
        ].
        recoveredBlock166Step = 175 ifTrue: [
            recoveredBlock166Stack2 := (recoveredBlock166Stack2) ~= (recoveredBlock166Stack3).
            recoveredBlock166PC := 176.
        ].
        recoveredBlock166Step = 176 ifTrue: [
            (recoveredBlock166Stack2) ifTrue: [recoveredBlock166PC := 180] ifFalse: [recoveredBlock166PC := 185].
        ].
        recoveredBlock166Step = 180 ifTrue: [
            recoveredBlock166PC := 181.
        ].
        recoveredBlock166Step = 181 ifTrue: [
            recoveredBlock166Stack1 := recoveredBlock166Arg1.
            recoveredBlock166PC := 182.
        ].
        recoveredBlock166Step = 182 ifTrue: [
            recoveredBlock166Stack2 := recoveredBlock166Arg2.
            recoveredBlock166PC := 183.
        ].
        recoveredBlock166Step = 183 ifTrue: [
            recoveredBlock166Stack1 := (recoveredBlock166Stack1) < (recoveredBlock166Stack2).
            recoveredBlock166PC := 184.
        ].
        recoveredBlock166Step = 184 ifTrue: [
            ^recoveredBlock166Stack1
        ].
        recoveredBlock166Step = 185 ifTrue: [
            recoveredBlock166Result := recoveredBlock166Stack1.
            recoveredBlock166Done := true.
        ].
    ].
    recoveredBlock166Result
].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) with: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingWrite.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) pendingWrite.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := [:recoveredBlock200Arg1 :recoveredBlock200Arg2 | 
    | recoveredBlock200Stack0 recoveredBlock200Stack1 recoveredBlock200Stack2 recoveredBlock200Stack3 recoveredBlock200Stack4 recoveredBlock200PC recoveredBlock200Step recoveredBlock200Done recoveredBlock200Result |
    recoveredBlock200Stack0 := self.
    recoveredBlock200PC := 206.
    recoveredBlock200Done := false.
    [recoveredBlock200Done not] whileTrue: [
        recoveredBlock200Step := recoveredBlock200PC.
        recoveredBlock200Step = 206 ifTrue: [
            recoveredBlock200Stack1 := nil.
            recoveredBlock200PC := 207.
        ].
        recoveredBlock200Step = 207 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Arg1.
            recoveredBlock200PC := 208.
        ].
        recoveredBlock200Step = 208 ifTrue: [
            recoveredBlock200Stack3 := recoveredBlock200Arg2.
            recoveredBlock200PC := 209.
        ].
        recoveredBlock200Step = 209 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) ~= (recoveredBlock200Stack3).
            recoveredBlock200PC := 210.
        ].
        recoveredBlock200Step = 210 ifTrue: [
            (recoveredBlock200Stack2) ifTrue: [recoveredBlock200PC := 214] ifFalse: [recoveredBlock200PC := 219].
        ].
        recoveredBlock200Step = 214 ifTrue: [
            recoveredBlock200PC := 215.
        ].
        recoveredBlock200Step = 215 ifTrue: [
            recoveredBlock200Stack1 := recoveredBlock200Arg1.
            recoveredBlock200PC := 216.
        ].
        recoveredBlock200Step = 216 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Arg2.
            recoveredBlock200PC := 217.
        ].
        recoveredBlock200Step = 217 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) < (recoveredBlock200Stack2).
            recoveredBlock200PC := 218.
        ].
        recoveredBlock200Step = 218 ifTrue: [
            ^recoveredBlock200Stack1
        ].
        recoveredBlock200Step = 219 ifTrue: [
            recoveredBlock200Result := recoveredBlock200Stack1.
            recoveredBlock200Done := true.
        ].
    ].
    recoveredBlock200Result
].
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) with: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) completedWrite.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) completedWrite.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := [:recoveredBlock234Arg1 :recoveredBlock234Arg2 | 
    | recoveredBlock234Stack0 recoveredBlock234Stack1 recoveredBlock234Stack2 recoveredBlock234Stack3 recoveredBlock234Stack4 recoveredBlock234PC recoveredBlock234Step recoveredBlock234Done recoveredBlock234Result |
    recoveredBlock234Stack0 := self.
    recoveredBlock234PC := 240.
    recoveredBlock234Done := false.
    [recoveredBlock234Done not] whileTrue: [
        recoveredBlock234Step := recoveredBlock234PC.
        recoveredBlock234Step = 240 ifTrue: [
            recoveredBlock234Stack1 := nil.
            recoveredBlock234PC := 241.
        ].
        recoveredBlock234Step = 241 ifTrue: [
            recoveredBlock234Stack2 := recoveredBlock234Arg1.
            recoveredBlock234PC := 242.
        ].
        recoveredBlock234Step = 242 ifTrue: [
            recoveredBlock234Stack3 := recoveredBlock234Arg2.
            recoveredBlock234PC := 243.
        ].
        recoveredBlock234Step = 243 ifTrue: [
            recoveredBlock234Stack2 := (recoveredBlock234Stack2) ~= (recoveredBlock234Stack3).
            recoveredBlock234PC := 244.
        ].
        recoveredBlock234Step = 244 ifTrue: [
            (recoveredBlock234Stack2) ifTrue: [recoveredBlock234PC := 248] ifFalse: [recoveredBlock234PC := 253].
        ].
        recoveredBlock234Step = 248 ifTrue: [
            recoveredBlock234PC := 249.
        ].
        recoveredBlock234Step = 249 ifTrue: [
            recoveredBlock234Stack1 := recoveredBlock234Arg1.
            recoveredBlock234PC := 250.
        ].
        recoveredBlock234Step = 250 ifTrue: [
            recoveredBlock234Stack2 := recoveredBlock234Arg2.
            recoveredBlock234PC := 251.
        ].
        recoveredBlock234Step = 251 ifTrue: [
            recoveredBlock234Stack1 := (recoveredBlock234Stack1) < (recoveredBlock234Stack2).
            recoveredBlock234PC := 252.
        ].
        recoveredBlock234Step = 252 ifTrue: [
            ^recoveredBlock234Stack1
        ].
        recoveredBlock234Step = 253 ifTrue: [
            recoveredBlock234Result := recoveredBlock234Stack1.
            recoveredBlock234Done := true.
        ].
    ].
    recoveredBlock234Result
].
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack0) with: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2057d128; bytecode file offset 0xe79a0c"
!SGMdSideEffectAnalysisInfo methodsFor: 'recovered'!
<= recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectVarAccess.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAccess.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAllFieldsAccess.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectIndexAccess.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlNoSideEffectAnalysisInfo.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectAnalysisInfo.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) read.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) read.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) read.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) read.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingWrite.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) pendingWrite.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingWrite.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) pendingWrite.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) completedWrite.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) completedWrite.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) completedWrite.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) completedWrite.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) read.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) read.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := [:recoveredBlock166Arg1 :recoveredBlock166Arg2 | 
    | recoveredBlock166Stack0 recoveredBlock166Stack1 recoveredBlock166Stack2 recoveredBlock166Stack3 recoveredBlock166Stack4 recoveredBlock166PC recoveredBlock166Step recoveredBlock166Done recoveredBlock166Result |
    recoveredBlock166Stack0 := self.
    recoveredBlock166PC := 172.
    recoveredBlock166Done := false.
    [recoveredBlock166Done not] whileTrue: [
        recoveredBlock166Step := recoveredBlock166PC.
        recoveredBlock166Step = 172 ifTrue: [
            recoveredBlock166Stack1 := nil.
            recoveredBlock166PC := 173.
        ].
        recoveredBlock166Step = 173 ifTrue: [
            recoveredBlock166Stack2 := recoveredBlock166Arg1.
            recoveredBlock166PC := 174.
        ].
        recoveredBlock166Step = 174 ifTrue: [
            recoveredBlock166Stack3 := recoveredBlock166Arg2.
            recoveredBlock166PC := 175.
        ].
        recoveredBlock166Step = 175 ifTrue: [
            recoveredBlock166Stack2 := (recoveredBlock166Stack2) ~= (recoveredBlock166Stack3).
            recoveredBlock166PC := 176.
        ].
        recoveredBlock166Step = 176 ifTrue: [
            (recoveredBlock166Stack2) ifTrue: [recoveredBlock166PC := 180] ifFalse: [recoveredBlock166PC := 185].
        ].
        recoveredBlock166Step = 180 ifTrue: [
            recoveredBlock166PC := 181.
        ].
        recoveredBlock166Step = 181 ifTrue: [
            recoveredBlock166Stack1 := recoveredBlock166Arg1.
            recoveredBlock166PC := 182.
        ].
        recoveredBlock166Step = 182 ifTrue: [
            recoveredBlock166Stack2 := recoveredBlock166Arg2.
            recoveredBlock166PC := 183.
        ].
        recoveredBlock166Step = 183 ifTrue: [
            recoveredBlock166Stack1 := (recoveredBlock166Stack1) < (recoveredBlock166Stack2).
            recoveredBlock166PC := 184.
        ].
        recoveredBlock166Step = 184 ifTrue: [
            ^recoveredBlock166Stack1
        ].
        recoveredBlock166Step = 185 ifTrue: [
            recoveredBlock166Result := recoveredBlock166Stack1.
            recoveredBlock166Done := true.
        ].
    ].
    recoveredBlock166Result
].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) with: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingWrite.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) pendingWrite.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := [:recoveredBlock200Arg1 :recoveredBlock200Arg2 | 
    | recoveredBlock200Stack0 recoveredBlock200Stack1 recoveredBlock200Stack2 recoveredBlock200Stack3 recoveredBlock200Stack4 recoveredBlock200PC recoveredBlock200Step recoveredBlock200Done recoveredBlock200Result |
    recoveredBlock200Stack0 := self.
    recoveredBlock200PC := 206.
    recoveredBlock200Done := false.
    [recoveredBlock200Done not] whileTrue: [
        recoveredBlock200Step := recoveredBlock200PC.
        recoveredBlock200Step = 206 ifTrue: [
            recoveredBlock200Stack1 := nil.
            recoveredBlock200PC := 207.
        ].
        recoveredBlock200Step = 207 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Arg1.
            recoveredBlock200PC := 208.
        ].
        recoveredBlock200Step = 208 ifTrue: [
            recoveredBlock200Stack3 := recoveredBlock200Arg2.
            recoveredBlock200PC := 209.
        ].
        recoveredBlock200Step = 209 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) ~= (recoveredBlock200Stack3).
            recoveredBlock200PC := 210.
        ].
        recoveredBlock200Step = 210 ifTrue: [
            (recoveredBlock200Stack2) ifTrue: [recoveredBlock200PC := 214] ifFalse: [recoveredBlock200PC := 219].
        ].
        recoveredBlock200Step = 214 ifTrue: [
            recoveredBlock200PC := 215.
        ].
        recoveredBlock200Step = 215 ifTrue: [
            recoveredBlock200Stack1 := recoveredBlock200Arg1.
            recoveredBlock200PC := 216.
        ].
        recoveredBlock200Step = 216 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Arg2.
            recoveredBlock200PC := 217.
        ].
        recoveredBlock200Step = 217 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) < (recoveredBlock200Stack2).
            recoveredBlock200PC := 218.
        ].
        recoveredBlock200Step = 218 ifTrue: [
            ^recoveredBlock200Stack1
        ].
        recoveredBlock200Step = 219 ifTrue: [
            recoveredBlock200Result := recoveredBlock200Stack1.
            recoveredBlock200Done := true.
        ].
    ].
    recoveredBlock200Result
].
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) with: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) completedWrite.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) completedWrite.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := [:recoveredBlock234Arg1 :recoveredBlock234Arg2 | 
    | recoveredBlock234Stack0 recoveredBlock234Stack1 recoveredBlock234Stack2 recoveredBlock234Stack3 recoveredBlock234Stack4 recoveredBlock234PC recoveredBlock234Step recoveredBlock234Done recoveredBlock234Result |
    recoveredBlock234Stack0 := self.
    recoveredBlock234PC := 240.
    recoveredBlock234Done := false.
    [recoveredBlock234Done not] whileTrue: [
        recoveredBlock234Step := recoveredBlock234PC.
        recoveredBlock234Step = 240 ifTrue: [
            recoveredBlock234Stack1 := nil.
            recoveredBlock234PC := 241.
        ].
        recoveredBlock234Step = 241 ifTrue: [
            recoveredBlock234Stack2 := recoveredBlock234Arg1.
            recoveredBlock234PC := 242.
        ].
        recoveredBlock234Step = 242 ifTrue: [
            recoveredBlock234Stack3 := recoveredBlock234Arg2.
            recoveredBlock234PC := 243.
        ].
        recoveredBlock234Step = 243 ifTrue: [
            recoveredBlock234Stack2 := (recoveredBlock234Stack2) ~= (recoveredBlock234Stack3).
            recoveredBlock234PC := 244.
        ].
        recoveredBlock234Step = 244 ifTrue: [
            (recoveredBlock234Stack2) ifTrue: [recoveredBlock234PC := 248] ifFalse: [recoveredBlock234PC := 253].
        ].
        recoveredBlock234Step = 248 ifTrue: [
            recoveredBlock234PC := 249.
        ].
        recoveredBlock234Step = 249 ifTrue: [
            recoveredBlock234Stack1 := recoveredBlock234Arg1.
            recoveredBlock234PC := 250.
        ].
        recoveredBlock234Step = 250 ifTrue: [
            recoveredBlock234Stack2 := recoveredBlock234Arg2.
            recoveredBlock234PC := 251.
        ].
        recoveredBlock234Step = 251 ifTrue: [
            recoveredBlock234Stack1 := (recoveredBlock234Stack1) < (recoveredBlock234Stack2).
            recoveredBlock234PC := 252.
        ].
        recoveredBlock234Step = 252 ifTrue: [
            ^recoveredBlock234Stack1
        ].
        recoveredBlock234Step = 253 ifTrue: [
            recoveredBlock234Result := recoveredBlock234Stack1.
            recoveredBlock234Done := true.
        ].
    ].
    recoveredBlock234Result
].
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack0) with: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

