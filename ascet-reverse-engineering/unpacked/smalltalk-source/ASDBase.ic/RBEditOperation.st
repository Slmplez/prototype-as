"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200658fc; bytecode file offset 0x963428"
!RBEditOperation methodsFor: 'recovered'!
operationName
    | recoveredValue0 |
    recoveredValue0 := operationName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bda0c; bytecode file offset 0x9bb178"
!RBEditOperation methodsFor: 'recovered'!
operationName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    operationName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20117cd4; bytecode file offset 0xa14590"
!RBEditOperation methodsFor: 'recovered'!
isPasteAction
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
            recoveredStack2 := (recoveredStack2) operationName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) operationName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'Insert'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20166c24; bytecode file offset 0xa634f0"
!RBEditOperation methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := operationName.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := (' ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

