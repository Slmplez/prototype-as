"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001371c; bytecode file offset 0x912098"
!RBArithmeticElement class methodsFor: 'recovered'!
typeName
    | recoveredValue0 |
    recoveredValue0 := SCArithElement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001410c; bytecode file offset 0x912098"
!RBArithmeticElement class methodsFor: 'recovered'!
dataGeneratorChannelClass
    | recoveredValue0 |
    recoveredValue0 := SGDataGeneratorChannel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20139800; bytecode file offset 0xa360b8"
!RBArithmeticElement class methodsFor: 'recovered'!
emBehaviorId
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBArithmeticElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 80.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

