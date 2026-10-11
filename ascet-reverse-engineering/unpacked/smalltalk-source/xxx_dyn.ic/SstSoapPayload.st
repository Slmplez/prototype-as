"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000423c; bytecode file offset 0x65328"
!SstSoapPayload methodsFor: 'recovered'!
encoded
    | recoveredValue0 |
    recoveredValue0 := encoded.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20008734; bytecode file offset 0x69858"
!SstSoapPayload methodsFor: 'recovered'!
encoded: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    encoded := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20009998; bytecode file offset 0x6aa68"
!SstSoapPayload methodsFor: 'recovered'!
initialize
    super initialize.
    (self) encoded: (true).
    ^self
! !

"xxx_dyn.ic method 0x20009a90; bytecode file offset 0x6ab5c"
!SstSoapPayload methodsFor: 'recovered'!
shouldPrintTypes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) encoded.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) printTypes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

