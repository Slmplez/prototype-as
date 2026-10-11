"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200babd8; bytecode file offset 0x9b7498"
!ASDCodeContainerHandle class methodsFor: 'recovered'!
createByteArrayProjectKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ByteArray.
    recoveredValue2 := (recoveredValue1) new: (12).
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2011b040; bytecode file offset 0xa17908"
!ASDCodeContainerHandle class methodsFor: 'recovered'!
createFirstVersionIdKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) printString.
    recoveredValue1 := CTreeRecord.
    recoveredValue2 := (recoveredValue1) pcIdLength.
    recoveredValue3 := CTreeRecord.
    recoveredValue4 := (recoveredValue3) timeLength.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (recoveredValue0) copyFrom: (1) to: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202a2de8; bytecode file offset 0xb9f6b8"
!ASDCodeContainerHandle class methodsFor: 'recovered'!
createByteArrayPrimaryKey: recoveredArg1 targetKey: recoveredArg2 codeGenPath: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 11.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 25].
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
            recoveredStack3 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := 11.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) asByteArray.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 11.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203acae4; bytecode file offset 0xca93d0"
!ASDCodeContainerHandle class methodsFor: 'recovered'!
lookupWildcardPrimaryKey: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) queriesForClassName: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := recoveredLocal1.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value1) searchDatabase.
    recoveredBlock19Value3 := (recoveredBlock19Value0) addAll: (recoveredBlock19Value2).
    recoveredBlock19Value3
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:block280f5718Arg1 | 
    | block280f5718Stack0 block280f5718Stack1 block280f5718Stack2 block280f5718Stack3 block280f5718PC block280f5718Step block280f5718Done block280f5718Result |
    block280f5718Stack0 := self.
    block280f5718PC := 4.
    block280f5718Done := false.
    [block280f5718Done not] whileTrue: [
        block280f5718Step := block280f5718PC.
        block280f5718Step = 4 ifTrue: [
            block280f5718Stack1 := block280f5718Arg1.
            block280f5718PC := 5.
        ].
        block280f5718Step = 5 ifTrue: [
            block280f5718Stack2 := [:block280f573cArg1 | 
    nil
].
            block280f5718PC := 7.
        ].
        block280f5718Step = 7 ifTrue: [
            block280f5718PC := 12.
        ].
        block280f5718Step = 12 ifTrue: [
            block280f5718Stack1 := (block280f5718Stack1) getObjectIfUndefined: (block280f5718Stack2).
            block280f5718PC := 14.
        ].
        block280f5718Step = 14 ifTrue: [
            block280f5718Result := block280f5718Stack1.
            block280f5718Done := true.
        ].
    ].
    block280f5718Result
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:block280f5760Arg1 | 
    | block280f5760Stack0 block280f5760Stack1 block280f5760Stack2 block280f5760Stack3 block280f5760PC block280f5760Step block280f5760Done block280f5760Result |
    block280f5760Stack0 := self.
    block280f5760PC := 4.
    block280f5760Done := false.
    [block280f5760Done not] whileTrue: [
        block280f5760Step := block280f5760PC.
        block280f5760Step = 4 ifTrue: [
            block280f5760Stack1 := false.
            block280f5760PC := 5.
        ].
        block280f5760Step = 5 ifTrue: [
            block280f5760Stack2 := block280f5760Arg1.
            block280f5760PC := 6.
        ].
        block280f5760Step = 6 ifTrue: [
            (block280f5760Stack2 == nil) ifTrue: [block280f5760PC := 14] ifFalse: [block280f5760PC := 10].
        ].
        block280f5760Step = 10 ifTrue: [
            block280f5760PC := 11.
        ].
        block280f5760Step = 11 ifTrue: [
            block280f5760Stack1 := block280f5760Arg1.
            block280f5760PC := 12.
        ].
        block280f5760Step = 12 ifTrue: [
            block280f5760Stack1 := (block280f5760Stack1) isCodeContainerHandle.
            block280f5760PC := 14.
        ].
        block280f5760Step = 14 ifTrue: [
            block280f5760Result := block280f5760Stack1.
            block280f5760Done := true.
        ].
    ].
    block280f5760Result
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

