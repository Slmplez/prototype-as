"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20053e28; bytecode file offset 0x951190"
!SGCalibrationConfigManager class methodsFor: 'recovered'!
OpenForUnitTest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    OpenForUnitTest := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200efd60; bytecode file offset 0x9ec648"
!SGCalibrationConfigManager class methodsFor: 'recovered'!
OpenForUnitTest
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OpenForUnitTest.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := OpenForUnitTest.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

