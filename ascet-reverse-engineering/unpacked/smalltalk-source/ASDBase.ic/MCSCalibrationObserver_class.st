"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200cb98c; bytecode file offset 0x9c8250"
!MCSCalibrationObserver class methodsFor: 'recovered'!
enableCalibObserve
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := RBBasicDataElement.
    recoveredValue2 := (recoveredValue1) calibObserveString.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2) put: (false).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cb9f4; bytecode file offset 0x9c82b8"
!MCSCalibrationObserver class methodsFor: 'recovered'!
disableCalibObserve
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := RBBasicDataElement.
    recoveredValue2 := (recoveredValue1) calibObserveString.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2) put: (true).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201cb3f4; bytecode file offset 0xac7cc0"
!MCSCalibrationObserver class methodsFor: 'recovered'!
calibObserve: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := RBBasicDataElement.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) calibObserveString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) changed: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

