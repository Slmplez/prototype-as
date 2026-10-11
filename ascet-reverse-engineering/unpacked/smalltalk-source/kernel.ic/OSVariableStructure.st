"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20002a20; bytecode file offset 0x4d99c"
!OSVariableStructure methodsFor: 'recovered'!
increment
    (self) shouldNotImplement.
    ^self
! !

"kernel.ic method 0x20002a2c; bytecode file offset 0x4d99c"
!OSVariableStructure methodsFor: 'recovered'!
decrement
    (self) shouldNotImplement.
    ^self
! !

"kernel.ic method 0x20002b00; bytecode file offset 0x4db00"
!OSVariableStructure methodsFor: 'recovered'!
- recoveredArg1
    (self) shouldNotImplement.
    ^self
! !

"kernel.ic method 0x20002b0c; bytecode file offset 0x4db00"
!OSVariableStructure methodsFor: 'recovered'!
+ recoveredArg1
    (self) shouldNotImplement.
    ^self
! !

"kernel.ic method 0x20002bb4; bytecode file offset 0x4db00"
!OSVariableStructure methodsFor: 'recovered'!
at: recoveredArg1
    (self) shouldNotImplement.
    ^self
! !

"kernel.ic method 0x20002bc0; bytecode file offset 0x4db00"
!OSVariableStructure methodsFor: 'recovered'!
incrementBy: recoveredArg1
    (self) shouldNotImplement.
    ^self
! !

"kernel.ic method 0x20002bf0; bytecode file offset 0x4db00"
!OSVariableStructure methodsFor: 'recovered'!
decrementBy: recoveredArg1
    (self) shouldNotImplement.
    ^self
! !

"kernel.ic method 0x20003114; bytecode file offset 0x4e0b4"
!OSVariableStructure methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    (self) shouldNotImplement.
    ^self
! !

"kernel.ic method 0x20011e38; bytecode file offset 0x5cd5c"
!OSVariableStructure methodsFor: 'recovered'!
printObjectOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAddress.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
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
            recoveredStack0 := (recoveredStack0) printAddressOn: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isUnion.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) printUnionOn: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) printReferenceOn: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

