"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019c28; bytecode file offset 0x92209c"
!ARBdSpecification class methodsFor: 'recovered'!
label
    ^'Block Diagram'
! !

"ASDBase.ic method 0x2001e320; bytecode file offset 0x92209c"
!ARBdSpecification class methodsFor: 'recovered'!
specificationTypeLabel
    ^'AUTOSAR diagram'
! !

"ASDBase.ic method 0x20020678; bytecode file offset 0x92209c"
!ARBdSpecification class methodsFor: 'recovered'!
type
    ^'ARBd'
! !

"ASDBase.ic method 0x20153ac4; bytecode file offset 0xa50384"
!ARBdSpecification class methodsFor: 'recovered'!
compatibleWithSpecificationType: recoveredArg1
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
            recoveredStack2 := SGBdSpecification.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super compatibleWithSpecificationType: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

