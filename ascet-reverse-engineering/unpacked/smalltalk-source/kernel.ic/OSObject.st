"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200004c8; bytecode file offset 0x4b474"
!OSObject methodsFor: 'recovered'!
size
    | recoveredValue0 |
    recoveredValue0 := (self) shouldNotImplement.
    ^recoveredValue0
! !

"kernel.ic method 0x20002498; bytecode file offset 0x4d3a4"
!OSObject methodsFor: 'recovered'!
isUndefined
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := reference.
    recoveredValue1 := (recoveredValue0) isNil.
    ^recoveredValue1
! !

"kernel.ic method 0x200026c4; bytecode file offset 0x4d5d0"
!OSObject methodsFor: 'recovered'!
makeUndefined
    reference := nil.
    ^self
! !

"kernel.ic method 0x20003c20; bytecode file offset 0x4ec04"
!OSObject methodsFor: 'recovered'!
reference
    | recoveredValue0 |
    recoveredValue0 := reference.
    ^recoveredValue0
! !

"kernel.ic method 0x20004660; bytecode file offset 0x4f5c4"
!OSObject methodsFor: 'recovered'!
isOSObject
    ^true
! !

"kernel.ic method 0x20005370; bytecode file offset 0x50280"
!OSObject methodsFor: 'recovered'!
offset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := offsetAndReftype.
    recoveredValue1 := (recoveredValue0) bitShift: (-8).
    ^recoveredValue1
! !

"kernel.ic method 0x20006c48; bytecode file offset 0x51b58"
!OSObject methodsFor: 'recovered'!
reftype
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := offsetAndReftype.
    recoveredValue1 := (recoveredValue0) bitAnd: (255).
    ^recoveredValue1
! !

"kernel.ic method 0x20006f2c; bytecode file offset 0x51e44"
!OSObject methodsFor: 'recovered'!
shallowCopy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super shallowCopy.
    recoveredValue1 := (recoveredValue0) basicHash: (0).
    ^recoveredValue1
! !

"kernel.ic method 0x20007534; bytecode file offset 0x52538"
!OSObject methodsFor: 'recovered'!
reference: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    reference := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000a9cc; bytecode file offset 0x558e0"
!OSObject methodsFor: 'recovered'!
castTo: recoveredArg1
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
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) castFrom: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000aa30; bytecode file offset 0x55940"
!OSObject methodsFor: 'recovered'!
reference: recoveredArg1 reftype: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    (self) basicHash: (0).
    recoveredValue0 := recoveredArg1.
    reference := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    offsetAndReftype := recoveredValue1.
    ^self
! !

"kernel.ic method 0x2000c7c0; bytecode file offset 0x576d8"
!OSObject methodsFor: 'recovered'!
offset: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) bitShift: (8).
    recoveredValue2 := offsetAndReftype.
    recoveredValue3 := (recoveredValue2) bitAnd: (255).
    recoveredValue4 := (recoveredValue1) bitOr: (recoveredValue3).
    offsetAndReftype := recoveredValue4.
    ^self
! !

"kernel.ic method 0x2000dfdc; bytecode file offset 0x58ef4"
!OSObject methodsFor: 'recovered'!
reference: recoveredArg1 reftype: recoveredArg2 offset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) basicHash: (0).
    recoveredValue0 := recoveredArg1.
    reference := recoveredValue0.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) bitShift: (8).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) bitOr: (recoveredValue3).
    offsetAndReftype := recoveredValue4.
    ^self
! !

"kernel.ic method 0x20010e34; bytecode file offset 0x5bd58"
!OSObject methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndefined.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ' {UNDEFINED}'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) printObjectOn: (recoveredStack1).
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

"kernel.ic method 0x20018230; bytecode file offset 0x63150"
!OSObject methodsFor: 'recovered'!
reftype: recoveredArg1
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
            recoveredStack3 := 255.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ExCLDTValueOutOfRange.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) signal.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := offsetAndReftype.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            offsetAndReftype := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := offsetAndReftype.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 255.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitInvert.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            offsetAndReftype := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

