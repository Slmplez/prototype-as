"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200037bc; bytecode file offset 0x649e8"
!SstObjectHandle methodsFor: 'recovered'!
space
    | recoveredValue0 |
    recoveredValue0 := space.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200039b0; bytecode file offset 0x64bac"
!SstObjectHandle methodsFor: 'recovered'!
object
    | recoveredValue0 |
    recoveredValue0 := object.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004648; bytecode file offset 0x6592c"
!SstObjectHandle methodsFor: 'recovered'!
isValid
    ^true
! !

"xxx_dyn.ic method 0x200046d0; bytecode file offset 0x6592c"
!SstObjectHandle methodsFor: 'recovered'!
sstIsHandle
    ^true
! !

"xxx_dyn.ic method 0x20004700; bytecode file offset 0x6592c"
!SstObjectHandle methodsFor: 'recovered'!
sstIsImmutable
    ^true
! !

"xxx_dyn.ic method 0x200047b0; bytecode file offset 0x6592c"
!SstObjectHandle methodsFor: 'recovered'!
sstIsImportKey
    ^true
! !

"xxx_dyn.ic method 0x20004bd8; bytecode file offset 0x65ca0"
!SstObjectHandle methodsFor: 'recovered'!
transmit: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := space.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) transmit: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20006180; bytecode file offset 0x67248"
!SstObjectHandle methodsFor: 'recovered'!
resolveIn: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) resolve: (self) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20007220; bytecode file offset 0x682e4"
!SstObjectHandle methodsFor: 'recovered'!
for: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    space := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    object := recoveredValue1.
    ^self
! !

"xxx_dyn.ic method 0x20007544; bytecode file offset 0x68610"
!SstObjectHandle methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := space.
    recoveredValue1 := (recoveredValue0) basicHash.
    recoveredValue2 := object.
    recoveredValue3 := (recoveredValue2) hash.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20007dc4; bytecode file offset 0x68f50"
!SstObjectHandle methodsFor: 'recovered'!
space: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    space := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007fc0; bytecode file offset 0x69104"
!SstObjectHandle methodsFor: 'recovered'!
object: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    object := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008d74; bytecode file offset 0x69e40"
!SstObjectHandle methodsFor: 'recovered'!
asInvalidHandle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SstInvalidHandle.
    recoveredValue1 := object.
    recoveredValue2 := space.
    recoveredValue3 := (recoveredValue0) for: (recoveredValue1) in: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x2000c464; bytecode file offset 0x6d52c"
!SstObjectHandle methodsFor: 'recovered'!
resolveIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^self
].
    recoveredValue2 := (self) resolveIn: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000dffc; bytecode file offset 0x6f0d0"
!SstObjectHandle methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) space.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) nextPut: ($:).
    recoveredValue3 := (self) object.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    ^self
! !

"xxx_dyn.ic method 0x20012b9c; bytecode file offset 0x73c70"
!SstObjectHandle methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := space.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) space.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := object.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) object.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) sstEqualsHandle: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

