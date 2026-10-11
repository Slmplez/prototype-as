"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007334; bytecode file offset 0x908be4"
!ETASAlignment methodsFor: 'recovered'!
position
    | recoveredValue0 |
    recoveredValue0 := (self) alignment.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006656c; bytecode file offset 0x963428"
!ETASAlignment methodsFor: 'recovered'!
alignment
    | recoveredValue0 |
    recoveredValue0 := alignment.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076bb4; bytecode file offset 0x9757c8"
!ETASAlignment methodsFor: 'recovered'!
isAlignment
    ^true
! !

"ASDBase.ic method 0x200be1ac; bytecode file offset 0x9bb178"
!ETASAlignment methodsFor: 'recovered'!
alignment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    alignment := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20155e28; bytecode file offset 0xa526f4"
!ETASAlignment methodsFor: 'recovered'!
= recoveredArg1
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) alignment.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignment.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20185c84; bytecode file offset 0xa82544"
!ETASAlignment methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPut: ($ ).
    recoveredValue2 := alignment.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    ^self
! !

