"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007c1a4; bytecode file offset 0x97c330"
!ArrayedCollection methodsFor: 'recovered'!
isCTreeRecord
    ^false
! !

"ASDBase.ic method 0x200dfe3c; bytecode file offset 0x9dc6f4"
!ArrayedCollection methodsFor: 'recovered'!
compare: recoveredArg1 blockSize: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) compare: (recoveredValue0) blockSize: (recoveredValue1) startingAt: (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2010e06c; bytecode file offset 0xa0a928"
!ArrayedCollection methodsFor: 'recovered'!
abtAddItem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) at: (1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) at: (3).
    (self) at: (recoveredValue1) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2015e368; bytecode file offset 0xa5ac2c"
!ArrayedCollection methodsFor: 'recovered'!
markReadOnlyAllInstVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280cdbe4Arg1 | 
    | block280cdbe4Value0 block280cdbe4Value1 |
    block280cdbe4Value0 := block280cdbe4Arg1.
    block280cdbe4Value1 := (block280cdbe4Value0) markReadOnlyAllInstVars.
    block280cdbe4Value1
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack1 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) markReadOnly: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017e1d8; bytecode file offset 0xa7aa94"
!ArrayedCollection methodsFor: 'recovered'!
writeToByteArray: recoveredArg1 pos: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) size.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue3) + (recoveredValue4).
    recoveredValue6 := (recoveredValue5) + (-1).
    (recoveredValue1) replaceFrom: (recoveredValue2) to: (recoveredValue6) with: (self) startingAt: (1).
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue7) + (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201bf814; bytecode file offset 0xabc0d4"
!ArrayedCollection methodsFor: 'recovered'!
asSGSimProtArgument: recoveredArg1 pos: recoveredArg2 interval: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) size.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue4) + (recoveredValue5).
    recoveredValue7 := (recoveredValue6) + (-1).
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := (recoveredValue8) from.
    (recoveredValue2) replaceFrom: (recoveredValue3) to: (recoveredValue7) with: (self) startingAt: (recoveredValue9).
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue10) + (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x201ca378; bytecode file offset 0xac6c44"
!ArrayedCollection methodsFor: 'recovered'!
markReadWriteAllInstVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBytes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280d4ec8Arg1 | 
    | block280d4ec8Value0 block280d4ec8Value1 |
    block280d4ec8Value0 := block280d4ec8Arg1.
    block280d4ec8Value1 := (block280d4ec8Value0) markReadWriteAllInstVars.
    block280d4ec8Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) markReadOnly: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dbcb0; bytecode file offset 0xad8570"
!ArrayedCollection methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
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
            recoveredStack2 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
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
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
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
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20204bd8; bytecode file offset 0xb0149c"
!ArrayedCollection methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2 ifPresent: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
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
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2029dde4; bytecode file offset 0xb9a6b0"
!ArrayedCollection methodsFor: 'recovered'!
deferredUpdateCopy
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) species.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) recursiveDeferredUpdateOperation.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 41]] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029e054; bytecode file offset 0xb9a920"
!ArrayedCollection methodsFor: 'recovered'!
deepDeepCopy
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) species.
    recoveredValue1 := (self) size.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock15Arg1 :recoveredBlock15Arg2 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 |
    recoveredBlock15Value0 := recoveredLocal2.
    recoveredBlock15Value1 := recoveredBlock15Arg2.
    recoveredBlock15Value2 := recoveredBlock15Arg1.
    recoveredBlock15Value3 := (recoveredBlock15Value2) deepCopy.
    recoveredBlock15Value4 := (recoveredBlock15Value0) at: (recoveredBlock15Value1) put: (recoveredBlock15Value3).
    recoveredBlock15Value4
].
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) applyWithIndex: (self) from: (1) to: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2035ae58; bytecode file offset 0xc57720"
!ArrayedCollection methodsFor: 'recovered'!
compareWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := [:recoveredBlock34Arg1 :recoveredBlock34Arg2 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34Stack5 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            recoveredBlock34Stack3 := recoveredArg1.
            recoveredBlock34PC := 45.
        ].
        recoveredBlock34Step = 45 ifTrue: [
            recoveredBlock34Stack4 := recoveredBlock34Arg2.
            recoveredBlock34PC := 46.
        ].
        recoveredBlock34Step = 46 ifTrue: [
            recoveredBlock34Stack3 := (recoveredBlock34Stack3) at: (recoveredBlock34Stack4).
            recoveredBlock34PC := 47.
        ].
        recoveredBlock34Step = 47 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) compareWith: (recoveredBlock34Stack3).
            recoveredBlock34PC := 48.
        ].
        recoveredBlock34Step = 48 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 55] ifFalse: [recoveredBlock34PC := 52].
        ].
        recoveredBlock34Step = 52 ifTrue: [
            recoveredBlock34PC := 53.
        ].
        recoveredBlock34Step = 53 ifTrue: [
            recoveredBlock34Stack1 := false.
            recoveredBlock34PC := 54.
        ].
        recoveredBlock34Step = 54 ifTrue: [
            ^recoveredBlock34Stack1
        ].
        recoveredBlock34Step = 55 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) applyWithIndex: (recoveredStack1) from: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037bf48; bytecode file offset 0xc78808"
!ArrayedCollection methodsFor: 'recovered'!
compare: recoveredArg1 blockSize: recoveredArg2 startingAt: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) memcpyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) memcpyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20393384; bytecode file offset 0xc8fc58"
!ArrayedCollection methodsFor: 'recovered'!
select: recoveredArg1 collect: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) size.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredArg1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) value: (recoveredBlock12Stack3).
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 28] ifFalse: [recoveredBlock12PC := 39].
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack2 := recoveredArg2.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) value: (recoveredBlock12Stack3).
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (self) do: (recoveredValue3).
    recoveredValue4 := (self) class.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue4) new: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue9) size.
    recoveredValue11 := recoveredLocal2.
    (recoveredValue8) replaceFrom: (1) to: (recoveredValue10) with: (recoveredValue11) startingAt: (1).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x2039fb94; bytecode file offset 0xc9c468"
!ArrayedCollection methodsFor: 'recovered'!
collect: recoveredArg1 select: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) size.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg1.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) value: (recoveredBlock12Stack2).
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack2 := recoveredArg2.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Local1.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) value: (recoveredBlock12Stack3).
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 34] ifFalse: [recoveredBlock12PC := 41].
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local1.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (self) do: (recoveredValue3).
    recoveredValue4 := (self) class.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue4) new: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue9) size.
    recoveredValue11 := recoveredLocal2.
    (recoveredValue8) replaceFrom: (1) to: (recoveredValue10) with: (recoveredValue11) startingAt: (1).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x2044a86c; bytecode file offset 0xd47168"
!ArrayedCollection methodsFor: 'recovered'!
countObjectsIn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'aTotal'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := 'aTotal'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := [
    1
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 recoveredBlock45Value3 recoveredBlock45Value4 recoveredBlock45Value5 recoveredBlock45Value6 |
    recoveredBlock45Value0 := recoveredArg1.
    recoveredBlock45Value1 := recoveredLocal1.
    recoveredBlock45Value2 := (self) at: (recoveredBlock45Value1).
    recoveredBlock45Value3 := (recoveredBlock45Value2) class.
    recoveredBlock45Value4 := recoveredBlock45Arg1.
    recoveredBlock45Value5 := (recoveredBlock45Value4) + (1).
    recoveredBlock45Value6 := (recoveredBlock45Value0) at: (recoveredBlock45Value3) put: (recoveredBlock45Value5).
    recoveredBlock45Value6
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifAbsentPut: (recoveredStack4) ifPresent: (recoveredStack5).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack2) countObjectsIn: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 24] ifFalse: [recoveredPC := 109]] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045eeb4; bytecode file offset 0xd5b78c"
!ArrayedCollection methodsFor: 'recovered'!
separate: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredLocal3 := 0.
    recoveredLocal2 := 0.
    recoveredValue0 := (self) species.
    recoveredValue1 := (self) size.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal5 := recoveredValue3.
    recoveredValue4 := (self) species.
    recoveredValue5 := (self) size.
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (recoveredValue4) new: (recoveredValue5).
    recoveredLocal4 := recoveredValue7.
    recoveredValue8 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := recoveredArg1.
            recoveredBlock36PC := 45.
        ].
        recoveredBlock36Step = 45 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) value: (recoveredBlock36Stack2).
            recoveredBlock36PC := 47.
        ].
        recoveredBlock36Step = 47 ifTrue: [
            (recoveredBlock36Stack1) ifTrue: [recoveredBlock36PC := 50] ifFalse: [recoveredBlock36PC := 68].
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal5.
            recoveredBlock36PC := 53.
        ].
        recoveredBlock36Step = 53 ifTrue: [
            recoveredBlock36Stack2 := recoveredLocal3.
            recoveredBlock36PC := 56.
        ].
        recoveredBlock36Step = 56 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) + (1).
            recoveredBlock36PC := 57.
        ].
        recoveredBlock36Step = 57 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Stack2.
            recoveredBlock36PC := 58.
        ].
        recoveredBlock36Step = 58 ifTrue: [
            recoveredLocal3 := recoveredBlock36Stack3.
            recoveredBlock36PC := 61.
        ].
        recoveredBlock36Step = 61 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Arg1.
            recoveredBlock36PC := 62.
        ].
        recoveredBlock36Step = 62 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) at: (recoveredBlock36Stack2) put: (recoveredBlock36Stack3).
            recoveredBlock36PC := 64.
        ].
        recoveredBlock36Step = 64 ifTrue: [
            recoveredBlock36PC := 82.
        ].
        recoveredBlock36Step = 68 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal4.
            recoveredBlock36PC := 71.
        ].
        recoveredBlock36Step = 71 ifTrue: [
            recoveredBlock36Stack2 := recoveredLocal2.
            recoveredBlock36PC := 74.
        ].
        recoveredBlock36Step = 74 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) + (1).
            recoveredBlock36PC := 75.
        ].
        recoveredBlock36Step = 75 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Stack2.
            recoveredBlock36PC := 76.
        ].
        recoveredBlock36Step = 76 ifTrue: [
            recoveredLocal2 := recoveredBlock36Stack3.
            recoveredBlock36PC := 79.
        ].
        recoveredBlock36Step = 79 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Arg1.
            recoveredBlock36PC := 80.
        ].
        recoveredBlock36Step = 80 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) at: (recoveredBlock36Stack2) put: (recoveredBlock36Stack3).
            recoveredBlock36PC := 82.
        ].
        recoveredBlock36Step = 82 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) apply: (self) from: (1) to: (recoveredValue9).
    recoveredValue10 := Array.
    recoveredValue11 := recoveredLocal5.
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := (recoveredValue11) copyFrom: (1) to: (recoveredValue12).
    recoveredValue14 := recoveredLocal4.
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := (recoveredValue14) copyFrom: (1) to: (recoveredValue15).
    recoveredValue17 := (recoveredValue10) with: (recoveredValue13) with: (recoveredValue16).
    ^recoveredValue17
! !

