"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200024c0; bytecode file offset 0x635c4"
!SstCronEvent methodsFor: 'recovered'!
isEnabled
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := entry.
    recoveredValue1 := (recoveredValue0) isEnabled.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200024d8; bytecode file offset 0x635c4"
!SstCronEvent methodsFor: 'recovered'!
workBlock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := entry.
    recoveredValue1 := (recoveredValue0) workBlock.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20003734; bytecode file offset 0x649e8"
!SstCronEvent methodsFor: 'recovered'!
entry
    | recoveredValue0 |
    recoveredValue0 := entry.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200039c8; bytecode file offset 0x64bac"
!SstCronEvent methodsFor: 'recovered'!
activationTime
    | recoveredValue0 |
    recoveredValue0 := activationTime.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20007cc4; bytecode file offset 0x68f50"
!SstCronEvent methodsFor: 'recovered'!
entry: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    entry := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007f20; bytecode file offset 0x69104"
!SstCronEvent methodsFor: 'recovered'!
activationTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    activationTime := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20019acc; bytecode file offset 0x7abac"
!SstCronEvent methodsFor: 'recovered'!
printOn: recoveredArg1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := $(.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEnabled.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := activationTime.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'disabled'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := $).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001bab0; bytecode file offset 0x7cb90"
!SstCronEvent methodsFor: 'recovered'!
firedFrom: recoveredArg1 at: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := (self) workBlock.
    recoveredBlock4Value1 := (recoveredBlock4Value0) value.
    recoveredBlock4Value1
].
    recoveredValue1 := [
    | recoveredBlock13Local1 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) entry.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) nextEventAfter: (recoveredBlock13Stack1).
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            (recoveredBlock13Stack0 ~~ nil) ifTrue: [recoveredBlock13PC := 40] ifFalse: [recoveredBlock13PC := 30].
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack0 := recoveredArg1.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) entry.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) remove: (recoveredBlock13Stack1).
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack0 := recoveredArg1.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local1.
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) addEvent: (recoveredBlock13Stack1).
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue0) ensure: (recoveredValue1).
    ^self
! !

