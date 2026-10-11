"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002090; bytecode file offset 0x8ffcfc"
!TobTBInputWidget methodsFor: 'recovered'!
activity
    ^self
! !

"ASDBase.ic method 0x200061c4; bytecode file offset 0x902de8"
!TobTBInputWidget methodsFor: 'recovered'!
buttonReleased: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x200063a4; bytecode file offset 0x902de8"
!TobTBInputWidget methodsFor: 'recovered'!
buttonPressed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20008cc0; bytecode file offset 0x908be4"
!TobTBInputWidget methodsFor: 'recovered'!
getWidget
    | recoveredValue0 |
    recoveredValue0 := (self) getInputField.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070dc0; bytecode file offset 0x96d6a4"
!TobTBInputWidget methodsFor: 'recovered'!
getInputField
    | recoveredValue0 |
    recoveredValue0 := inputField.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c7398; bytecode file offset 0x9c3d64"
!TobTBInputWidget methodsFor: 'recovered'!
inputField: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    inputField := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2015df20; bytecode file offset 0xa5a7fc"
!TobTBInputWidget methodsFor: 'recovered'!
children
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := inputField.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := inputField.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := super children.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20259e94; bytecode file offset 0xb56768"
!TobTBInputWidget methodsFor: 'recovered'!
basicCalculateSizes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := super basicCalculateSizes.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) x.
    recoveredValue4 := (recoveredValue3) max: (100).
    (recoveredValue1) x: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) y.
    recoveredValue8 := (self) yGutter.
    recoveredValue9 := (self) yGutter.
    recoveredValue10 := (recoveredValue8) + (recoveredValue9).
    recoveredValue11 := (recoveredValue10) + (16).
    recoveredValue12 := (recoveredValue7) max: (recoveredValue11).
    (recoveredValue5) y: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

