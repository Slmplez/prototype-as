"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200c69cc; bytecode file offset 0x9c3470"
!EtasEnhancedDatabaseDialog class methodsFor: 'recovered'!
splitBarPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    splitBarPosition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20106a80; bytecode file offset 0xa03334"
!EtasEnhancedDatabaseDialog class methodsFor: 'recovered'!
splitBarPosition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := splitBarPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := splitBarPosition.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 50.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

