"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20028724; bytecode file offset 0x934580"
!EtasASAP2TransferManager class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20133c90; bytecode file offset 0xa305e4"
!EtasASAP2TransferManager class methodsFor: 'recovered'!
progressStringIndex: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressMessages.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    'no info'
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b3d14; bytecode file offset 0xcb05fc"
!EtasASAP2TransferManager class methodsFor: 'recovered'!
progressMessages
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (10).
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: (1) put: ('Create project...').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: (2) put: ('Create record layouts...').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) at: (3) put: ('Create formulas...').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) at: (4) put: ('Create axisPoints...').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) at: (5) put: ('Create characteristics...').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) at: (6) put: ('Create measurements...').
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) at: (7) put: ('Create modules...').
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) at: (8) put: ('Update project...').
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) at: (9) put: ('Update group relations...').
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) at: (10) put: ('Committing...').
    ^recoveredValue1
! !

