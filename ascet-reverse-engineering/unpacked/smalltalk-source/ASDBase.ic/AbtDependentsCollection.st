"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040a68; bytecode file offset 0x93d83c"
!AbtDependentsCollection methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := eventDependents.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040c48; bytecode file offset 0x93d83c"
!AbtDependentsCollection methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := eventDependents.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040c6c; bytecode file offset 0x93d83c"
!AbtDependentsCollection methodsFor: 'recovered'!
notEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := eventDependents.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065964; bytecode file offset 0x963428"
!AbtDependentsCollection methodsFor: 'recovered'!
event
    | recoveredValue0 |
    recoveredValue0 := event.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078bdc; bytecode file offset 0x9757c8"
!AbtDependentsCollection methodsFor: 'recovered'!
abtIsDependentsCollection
    ^true
! !

"ASDBase.ic method 0x20081cd8; bytecode file offset 0x97e6e0"
!AbtDependentsCollection methodsFor: 'recovered'!
removeAtIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := eventDependents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) removeAtIndex: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20092974; bytecode file offset 0x98f298"
!AbtDependentsCollection methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := eventDependents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f7fc; bytecode file offset 0x99c9e0"
!AbtDependentsCollection methodsFor: 'recovered'!
resetDependents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultSize.
    (self) initialize: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a2880; bytecode file offset 0x99f13c"
!AbtDependentsCollection methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    eventDependents := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200ac7d0; bytecode file offset 0x9a9094"
!AbtDependentsCollection methodsFor: 'recovered'!
detect: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := eventDependents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bdb1c; bytecode file offset 0x9bb178"
!AbtDependentsCollection methodsFor: 'recovered'!
event: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    event := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2019f804; bytecode file offset 0xa9c0c4"
!AbtDependentsCollection methodsFor: 'recovered'!
signalEvent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := eventDependents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d2084Arg1 | 
    | block280d2084Stack0 block280d2084Stack1 block280d2084Stack2 block280d2084Stack3 block280d2084PC block280d2084Step block280d2084Done block280d2084Result |
    block280d2084Stack0 := self.
    block280d2084PC := 4.
    block280d2084Done := false.
    [block280d2084Done not] whileTrue: [
        block280d2084Step := block280d2084PC.
        block280d2084Step = 4 ifTrue: [
            block280d2084Stack1 := nil.
            block280d2084PC := 5.
        ].
        block280d2084Step = 5 ifTrue: [
            block280d2084Stack2 := block280d2084Arg1.
            block280d2084PC := 6.
        ].
        block280d2084Step = 6 ifTrue: [
            (block280d2084Stack2 == nil) ifTrue: [block280d2084PC := 13] ifFalse: [block280d2084PC := 10].
        ].
        block280d2084Step = 10 ifTrue: [
            block280d2084PC := 11.
        ].
        block280d2084Step = 11 ifTrue: [
            block280d2084Stack1 := block280d2084Arg1.
            block280d2084PC := 12.
        ].
        block280d2084Step = 12 ifTrue: [
            block280d2084Stack1 := (block280d2084Stack1) abrSend.
            block280d2084PC := 13.
        ].
        block280d2084Step = 13 ifTrue: [
            block280d2084Result := block280d2084Stack1.
            block280d2084Done := true.
        ].
    ].
    block280d2084Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dafb8; bytecode file offset 0xad7874"
!AbtDependentsCollection methodsFor: 'recovered'!
signalEventWithArguments: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := eventDependents.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 24] ifFalse: [recoveredBlock6PC := 18].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) abrSendWithArguments: (recoveredBlock6Stack2).
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2025b730; bytecode file offset 0xb57ff4"
!AbtDependentsCollection methodsFor: 'recovered'!
signalEventWith: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := eventDependents.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            (recoveredBlock15Stack2 == nil) ifTrue: [recoveredBlock15PC := 34] ifFalse: [recoveredBlock15PC := 28].
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 30.
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack2 := recoveredLocal1.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) abrSendWithArguments: (recoveredBlock15Stack2).
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203ff55c; bytecode file offset 0xcfbe24"
!AbtDependentsCollection methodsFor: 'recovered'!
removeSelectedDependencies: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := eventDependents.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := eventDependents.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) removeAtIndex: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := eventDependents.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) removeFirst.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 56] ifFalse: [recoveredPC := 70]] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := eventDependents.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

