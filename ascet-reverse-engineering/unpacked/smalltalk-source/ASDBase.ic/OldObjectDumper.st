"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20070b08; bytecode file offset 0x96d3ec"
!OldObjectDumper methodsFor: 'recovered'!
instClassBuffer
    | recoveredValue0 |
    recoveredValue0 := instClassBuffer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070bb4; bytecode file offset 0x96d580"
!OldObjectDumper methodsFor: 'recovered'!
instVarClassBuffer
    | recoveredValue0 |
    recoveredValue0 := instVarClassBuffer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008791c; bytecode file offset 0x9841d4"
!OldObjectDumper methodsFor: 'recovered'!
dump: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dumpOnArrayOfByteObjects: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009975c; bytecode file offset 0x9961d0"
!OldObjectDumper methodsFor: 'recovered'!
dump: recoveredArg1 into: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) unload: (recoveredValue0) intoFile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d90f0; bytecode file offset 0x9d5b4c"
!OldObjectDumper methodsFor: 'recovered'!
initializeUnLinking: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) unLinkNonSwapClasses: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) unLinkVarsFromAllClasses: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201bf4bc; bytecode file offset 0xabbd88"
!OldObjectDumper methodsFor: 'recovered'!
dumpOnArrayOfByteObjects: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getArrayOfByteObjectsFor: (recoveredStack1).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) unload: (recoveredStack1) intoByteObjects: (recoveredStack2) offsetsIntoByteObjects: (recoveredStack3) maximumLimit: (recoveredStack4) errorStream: (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022072c; bytecode file offset 0xb1d018"
!OldObjectDumper methodsFor: 'recovered'!
unLinkNonSwapClasses: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280dbc78Arg1 | 
    | block280dbc78Stack0 block280dbc78Stack1 block280dbc78Stack2 block280dbc78PC block280dbc78Step block280dbc78Done block280dbc78Result |
    block280dbc78Stack0 := self.
    block280dbc78PC := 4.
    block280dbc78Done := false.
    [block280dbc78Done not] whileTrue: [
        block280dbc78Step := block280dbc78PC.
        block280dbc78Step = 4 ifTrue: [
            block280dbc78Stack1 := block280dbc78Arg1.
            block280dbc78PC := 5.
        ].
        block280dbc78Step = 5 ifTrue: [
            block280dbc78Stack1 := (block280dbc78Stack1) isClass.
            block280dbc78PC := 6.
        ].
        block280dbc78Step = 6 ifTrue: [
            (block280dbc78Stack1) ifTrue: [block280dbc78PC := 10] ifFalse: [block280dbc78PC := 16].
        ].
        block280dbc78Step = 10 ifTrue: [
            block280dbc78Stack1 := block280dbc78Arg1.
            block280dbc78PC := 11.
        ].
        block280dbc78Step = 11 ifTrue: [
            block280dbc78Stack1 := (block280dbc78Stack1) isSwap.
            block280dbc78PC := 12.
        ].
        block280dbc78Step = 12 ifTrue: [
            block280dbc78Stack1 := (block280dbc78Stack1) not.
            block280dbc78PC := 13.
        ].
        block280dbc78Step = 13 ifTrue: [
            block280dbc78PC := 17.
        ].
        block280dbc78Step = 16 ifTrue: [
            block280dbc78Stack1 := false.
            block280dbc78PC := 17.
        ].
        block280dbc78Step = 17 ifTrue: [
            block280dbc78Result := block280dbc78Stack1.
            block280dbc78Done := true.
        ].
    ].
    block280dbc78Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
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
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) unlinkInstancesOfClasses: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025c72c; bytecode file offset 0xb58ff0"
!OldObjectDumper methodsFor: 'recovered'!
dumpCollection: recoveredArg1 into: recoveredArg2 atOffset: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) currentError: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) unload: (recoveredStack1) intoFile: (recoveredStack2) atOffset: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) totalSizeBeforeUnload: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d6ac0; bytecode file offset 0xbd3388"
!OldObjectDumper methodsFor: 'recovered'!
dumpCollection: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) / (2).
    recoveredValue3 := (recoveredValue2) asInteger.
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal4.
    recoveredValue6 := (recoveredValue4) copyFrom: (1) to: (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal4.
    recoveredValue9 := (recoveredValue8) + (1).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) size.
    recoveredValue12 := (recoveredValue7) copyFrom: (recoveredValue9) to: (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := recoveredArg2.
    recoveredValue15 := (self) dumpCollection: (recoveredValue13) into: (recoveredValue14) atOffset: (0).
    recoveredLocal3 := recoveredValue15.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := recoveredArg2.
    recoveredValue18 := recoveredLocal3.
    (self) dumpCollection: (recoveredValue16) into: (recoveredValue17) atOffset: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x20350b90; bytecode file offset 0xc4d45c"
!OldObjectDumper methodsFor: 'recovered'!
getArrayOfByteObjects: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 65520.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) outputBufferLimit: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 65520.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := ByteArray.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := 65520.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) new: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 26] ifFalse: [recoveredLocal1 := nil. recoveredPC := 49]] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := 65520.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) \\ (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036da84; bytecode file offset 0xc6a34c"
!OldObjectDumper methodsFor: 'recovered'!
getArrayOfByteObjectsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) totalSizeBeforeUnload: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 17.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentError.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentError.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 54.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) currentError: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) getArrayOfByteObjects: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040abfc; bytecode file offset 0xd07588"
!OldObjectDumper methodsFor: 'recovered'!
nilIndicesOf: recoveredArg1 from: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNilIndicesClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) nilIndices.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) allInstVarNames.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Stack0 recoveredBlock54Stack1 recoveredBlock54Stack2 recoveredBlock54Stack3 recoveredBlock54Stack4 recoveredBlock54PC recoveredBlock54Step recoveredBlock54Done recoveredBlock54Result |
    recoveredBlock54Stack0 := self.
    recoveredBlock54PC := 60.
    recoveredBlock54Done := false.
    [recoveredBlock54Done not] whileTrue: [
        recoveredBlock54Step := recoveredBlock54PC.
        recoveredBlock54Step = 60 ifTrue: [
            recoveredBlock54Stack1 := nil.
            recoveredBlock54PC := 61.
        ].
        recoveredBlock54Step = 61 ifTrue: [
            recoveredBlock54Stack2 := recoveredLocal4.
            recoveredBlock54PC := 64.
        ].
        recoveredBlock54Step = 64 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Arg1.
            recoveredBlock54PC := 65.
        ].
        recoveredBlock54Step = 65 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) indexOf: (recoveredBlock54Stack3).
            recoveredBlock54PC := 67.
        ].
        recoveredBlock54Step = 67 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Stack2.
            recoveredBlock54PC := 68.
        ].
        recoveredBlock54Step = 68 ifTrue: [
            recoveredLocal1 := recoveredBlock54Stack3.
            recoveredBlock54PC := 71.
        ].
        recoveredBlock54Step = 71 ifTrue: [
            recoveredBlock54Stack3 := 0.
            recoveredBlock54PC := 73.
        ].
        recoveredBlock54Step = 73 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) > (recoveredBlock54Stack3).
            recoveredBlock54PC := 74.
        ].
        recoveredBlock54Step = 74 ifTrue: [
            (recoveredBlock54Stack2) ifTrue: [recoveredBlock54PC := 78] ifFalse: [recoveredBlock54PC := 87].
        ].
        recoveredBlock54Step = 78 ifTrue: [
            recoveredBlock54PC := 79.
        ].
        recoveredBlock54Step = 79 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal2.
            recoveredBlock54PC := 82.
        ].
        recoveredBlock54Step = 82 ifTrue: [
            recoveredBlock54Stack2 := recoveredLocal1.
            recoveredBlock54PC := 85.
        ].
        recoveredBlock54Step = 85 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) add: (recoveredBlock54Stack2).
            recoveredBlock54PC := 87.
        ].
        recoveredBlock54Step = 87 ifTrue: [
            recoveredBlock54Result := recoveredBlock54Stack1.
            recoveredBlock54Done := true.
        ].
    ].
    recoveredBlock54Result
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2054ffc4; bytecode file offset 0xe4c8ec"
!OldObjectDumper methodsFor: 'recovered'!
unLinkVarsFromAllClasses: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:block2810f474Arg1 | 
    | block2810f474Stack0 block2810f474Stack1 block2810f474Stack2 block2810f474Stack3 block2810f474PC block2810f474Step block2810f474Done block2810f474Result |
    block2810f474Stack0 := self.
    block2810f474PC := 4.
    block2810f474Done := false.
    [block2810f474Done not] whileTrue: [
        block2810f474Step := block2810f474PC.
        block2810f474Step = 4 ifTrue: [
            block2810f474Stack1 := true.
            block2810f474PC := 5.
        ].
        block2810f474Step = 5 ifTrue: [
            block2810f474Stack2 := block2810f474Arg1.
            block2810f474PC := 6.
        ].
        block2810f474Step = 6 ifTrue: [
            block2810f474Stack2 := (block2810f474Stack2) basicNew.
            block2810f474PC := 7.
        ].
        block2810f474Step = 7 ifTrue: [
            block2810f474Stack2 := (block2810f474Stack2) isErrorClass.
            block2810f474PC := 9.
        ].
        block2810f474Step = 9 ifTrue: [
            (block2810f474Stack2) ifTrue: [block2810f474PC := 17] ifFalse: [block2810f474PC := 12].
        ].
        block2810f474Step = 12 ifTrue: [
            block2810f474PC := 13.
        ].
        block2810f474Step = 13 ifTrue: [
            block2810f474Stack1 := block2810f474Arg1.
            block2810f474PC := 14.
        ].
        block2810f474Step = 14 ifTrue: [
            block2810f474Stack1 := (block2810f474Stack1) basicNew.
            block2810f474PC := 15.
        ].
        block2810f474Step = 15 ifTrue: [
            block2810f474Stack1 := (block2810f474Stack1) isTerminalClass.
            block2810f474PC := 17.
        ].
        block2810f474Step = 17 ifTrue: [
            block2810f474Result := block2810f474Stack1.
            block2810f474Done := true.
        ].
    ].
    block2810f474Result
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Stack0 recoveredBlock54Stack1 recoveredBlock54Stack2 recoveredBlock54Stack3 recoveredBlock54Stack4 recoveredBlock54PC recoveredBlock54Step recoveredBlock54Done recoveredBlock54Result |
    recoveredBlock54Stack0 := self.
    recoveredBlock54PC := 60.
    recoveredBlock54Done := false.
    [recoveredBlock54Done not] whileTrue: [
        recoveredBlock54Step := recoveredBlock54PC.
        recoveredBlock54Step = 60 ifTrue: [
            recoveredBlock54Stack1 := nil.
            recoveredBlock54PC := 61.
        ].
        recoveredBlock54Step = 61 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 62.
        ].
        recoveredBlock54Step = 62 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) unLinkInstVarNames.
            recoveredBlock54PC := 64.
        ].
        recoveredBlock54Step = 64 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Stack2.
            recoveredBlock54PC := 65.
        ].
        recoveredBlock54Step = 65 ifTrue: [
            recoveredLocal4 := recoveredBlock54Stack3.
            recoveredBlock54PC := 68.
        ].
        recoveredBlock54Step = 68 ifTrue: [
            (recoveredBlock54Stack2 == nil) ifTrue: [recoveredBlock54PC := 153] ifFalse: [recoveredBlock54PC := 72].
        ].
        recoveredBlock54Step = 72 ifTrue: [
            recoveredBlock54PC := 73.
        ].
        recoveredBlock54Step = 73 ifTrue: [
            recoveredBlock54Stack1 := nil.
            recoveredBlock54PC := 74.
        ].
        recoveredBlock54Step = 74 ifTrue: [
            recoveredBlock54Stack2 := recoveredLocal4.
            recoveredBlock54PC := 77.
        ].
        recoveredBlock54Step = 77 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) notEmpty.
            recoveredBlock54PC := 79.
        ].
        recoveredBlock54Step = 79 ifTrue: [
            (recoveredBlock54Stack2) ifTrue: [recoveredBlock54PC := 82] ifFalse: [recoveredBlock54PC := 153].
        ].
        recoveredBlock54Step = 82 ifTrue: [
            recoveredBlock54PC := 83.
        ].
        recoveredBlock54Step = 83 ifTrue: [
            recoveredBlock54Stack1 := self.
            recoveredBlock54PC := 84.
        ].
        recoveredBlock54Step = 84 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 85.
        ].
        recoveredBlock54Step = 85 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) basicNew.
            recoveredBlock54PC := 86.
        ].
        recoveredBlock54Step = 86 ifTrue: [
            recoveredBlock54Stack3 := recoveredLocal4.
            recoveredBlock54PC := 89.
        ].
        recoveredBlock54Step = 89 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) nilIndicesOf: (recoveredBlock54Stack2) from: (recoveredBlock54Stack3).
            recoveredBlock54PC := 91.
        ].
        recoveredBlock54Step = 91 ifTrue: [
            recoveredLocal2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 94.
        ].
        recoveredBlock54Step = 94 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal2.
            recoveredBlock54PC := 97.
        ].
        recoveredBlock54Step = 97 ifTrue: [
            (recoveredBlock54Stack1 ~~ nil) ifTrue: [recoveredBlock54PC := 112] ifFalse: [recoveredBlock54PC := 100].
        ].
        recoveredBlock54Step = 100 ifTrue: [
            recoveredBlock54Stack1 := DBLinDeLinError.
            recoveredBlock54PC := 102.
        ].
        recoveredBlock54Step = 102 ifTrue: [
            recoveredBlock54Stack2 := 'shouldNotUseNil for nilIndices'.
            recoveredBlock54PC := 104.
        ].
        recoveredBlock54Step = 104 ifTrue: [
            recoveredBlock54Stack3 := 'unLinkVarsFromAllClasses'.
            recoveredBlock54PC := 106.
        ].
        recoveredBlock54Step = 106 ifTrue: [
            (recoveredBlock54Stack1) create: (recoveredBlock54Stack2) location: (recoveredBlock54Stack3).
            recoveredBlock54PC := 108.
        ].
        recoveredBlock54Step = 108 ifTrue: [
            recoveredBlock54PC := 139.
        ].
        recoveredBlock54Step = 112 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal2.
            recoveredBlock54PC := 115.
        ].
        recoveredBlock54Step = 115 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) isEmpty.
            recoveredBlock54PC := 117.
        ].
        recoveredBlock54Step = 117 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 120] ifFalse: [recoveredBlock54PC := 139].
        ].
        recoveredBlock54Step = 120 ifTrue: [
            recoveredBlock54Stack1 := DBLinDeLinError.
            recoveredBlock54PC := 122.
        ].
        recoveredBlock54Step = 122 ifTrue: [
            recoveredBlock54Stack2 := 'shouldNotUseEmptyArray for nilIndices'.
            recoveredBlock54PC := 124.
        ].
        recoveredBlock54Step = 124 ifTrue: [
            recoveredBlock54Stack3 := 'unLinkVarsFromAllClasses'.
            recoveredBlock54PC := 126.
        ].
        recoveredBlock54Step = 126 ifTrue: [
            (recoveredBlock54Stack1) create: (recoveredBlock54Stack2) location: (recoveredBlock54Stack3).
            recoveredBlock54PC := 128.
        ].
        recoveredBlock54Step = 128 ifTrue: [
            recoveredBlock54Stack1 := self.
            recoveredBlock54PC := 129.
        ].
        recoveredBlock54Step = 129 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 130.
        ].
        recoveredBlock54Step = 130 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) basicNew.
            recoveredBlock54PC := 131.
        ].
        recoveredBlock54Step = 131 ifTrue: [
            recoveredBlock54Stack3 := recoveredLocal4.
            recoveredBlock54PC := 134.
        ].
        recoveredBlock54Step = 134 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) nilIndicesOf: (recoveredBlock54Stack2) from: (recoveredBlock54Stack3).
            recoveredBlock54PC := 136.
        ].
        recoveredBlock54Step = 136 ifTrue: [
            recoveredLocal2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 139.
        ].
        recoveredBlock54Step = 139 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal3.
            recoveredBlock54PC := 142.
        ].
        recoveredBlock54Step = 142 ifTrue: [
            recoveredBlock54Stack2 := recoveredLocal2.
            recoveredBlock54PC := 145.
        ].
        recoveredBlock54Step = 145 ifTrue: [
            (recoveredBlock54Stack1) addLast: (recoveredBlock54Stack2).
            recoveredBlock54PC := 147.
        ].
        recoveredBlock54Step = 147 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal5.
            recoveredBlock54PC := 150.
        ].
        recoveredBlock54Step = 150 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 151.
        ].
        recoveredBlock54Step = 151 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) addLast: (recoveredBlock54Stack2).
            recoveredBlock54PC := 153.
        ].
        recoveredBlock54Step = 153 ifTrue: [
            recoveredBlock54Result := recoveredBlock54Stack1.
            recoveredBlock54Done := true.
        ].
    ].
    recoveredBlock54Result
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 181] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) library.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := DBLinDeLinError.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := 'size mismatch'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) createBasic: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) showError: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentError.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 195] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := DBLinDeLinError.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) createSwapper: (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) unlinkInstVars: (recoveredStack1) fromClasses: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

