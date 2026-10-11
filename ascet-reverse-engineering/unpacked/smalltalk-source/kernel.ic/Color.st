"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20003b98; bytecode file offset 0x4ec04"
!Color methodsFor: 'recovered'!
red
    | recoveredValue0 |
    recoveredValue0 := red.
    ^recoveredValue0
! !

"kernel.ic method 0x20003e54; bytecode file offset 0x4ed88"
!Color methodsFor: 'recovered'!
green
    | recoveredValue0 |
    recoveredValue0 := green.
    ^recoveredValue0
! !

"kernel.ic method 0x20003f20; bytecode file offset 0x4eebc"
!Color methodsFor: 'recovered'!
blue
    | recoveredValue0 |
    recoveredValue0 := blue.
    ^recoveredValue0
! !

"kernel.ic method 0x2000762c; bytecode file offset 0x52538"
!Color methodsFor: 'recovered'!
red: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    red := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007690; bytecode file offset 0x52654"
!Color methodsFor: 'recovered'!
green: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    green := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000783c; bytecode file offset 0x52760"
!Color methodsFor: 'recovered'!
blue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    blue := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000b700; bytecode file offset 0x5662c"
!Color methodsFor: 'recovered'!
initialize: recoveredArg1 green: recoveredArg2 blue: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) red: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) green: (recoveredValue1).
    recoveredValue2 := recoveredArg3.
    (self) blue: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x200104a8; bytecode file offset 0x5b3c4"
!Color methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := red.
    recoveredValue1 := (recoveredValue0) bitShift: (-8).
    recoveredValue2 := green.
    recoveredValue3 := (recoveredValue2) bitAnd: (65280).
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := blue.
    recoveredValue6 := (recoveredValue5) // (256).
    recoveredValue7 := (recoveredValue6) * (65536).
    recoveredValue8 := (recoveredValue4) + (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x200194ac; bytecode file offset 0x643c8"
!Color methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := red.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) red.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := green.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) green.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := blue.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) blue.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2001d234; bytecode file offset 0x6815c"
!Color methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPut: ($().
    recoveredValue2 := (self) red.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3) base: (16).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) nextPut: ($,).
    recoveredValue5 := (self) green.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printOn: (recoveredValue6) base: (16).
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) nextPut: ($,).
    recoveredValue8 := (self) blue.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) printOn: (recoveredValue9) base: (16).
    recoveredValue10 := recoveredArg1.
    (recoveredValue10) nextPut: ($)).
    ^self
! !

