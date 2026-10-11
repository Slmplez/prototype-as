"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20002c90; bytecode file offset 0x3ecb0"
!FixedSizeLookupTable class methodsFor: 'recovered'!
defaultMaximumSize
    ^1000
! !

"lib.ic method 0x20004548; bytecode file offset 0x40578"
!FixedSizeLookupTable class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredValue1 := (self) defaultMaximumSize.
    recoveredValue2 := (recoveredValue0) maximumSize: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20006690; bytecode file offset 0x426c4"
!FixedSizeLookupTable class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super new: (recoveredValue0).
    recoveredValue2 := (self) defaultMaximumSize.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) max: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) maximumSize: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x20009938; bytecode file offset 0x4596c"
!FixedSizeLookupTable class methodsFor: 'recovered'!
newWithMaximum: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := MxEMcsESa7.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := super new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) maximumSize: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

