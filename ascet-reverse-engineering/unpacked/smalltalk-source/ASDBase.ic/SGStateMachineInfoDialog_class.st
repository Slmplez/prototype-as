"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003f0e8; bytecode file offset 0x93bf94"
!SGStateMachineInfoDialog class methodsFor: 'recovered'!
asdlString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGSmSpecification.
    recoveredValue1 := (recoveredValue0) esdlString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20070000; bytecode file offset 0x96cb7c"
!SGStateMachineInfoDialog class methodsFor: 'recovered'!
lastWindowConfiguration
    | recoveredValue0 |
    recoveredValue0 := lastWindowConfiguration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c65f0; bytecode file offset 0x9c3164"
!SGStateMachineInfoDialog class methodsFor: 'recovered'!
lastWindowConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastWindowConfiguration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012844c; bytecode file offset 0xa24eb0"
!SGStateMachineInfoDialog class methodsFor: 'recovered'!
textPrintingManager
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TextPrintingManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwTextPrintingManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            TextPrintingManager := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := TextPrintingManager.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016a260; bytecode file offset 0xa66b28"
!SGStateMachineInfoDialog class methodsFor: 'recovered'!
createFor: recoveredArg1 methodManager: recoveredArg2 graphicObject: recoveredArg3 readOnly: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) stateMachineInfo: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) methodManager: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) graphicObject: (recoveredValue6).
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := (recoveredValue0) readOnly: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201d0034; bytecode file offset 0xacc920"
!SGStateMachineInfoDialog class methodsFor: 'recovered'!
createFor: recoveredArg1 methodManager: recoveredArg2 graphicObject: recoveredArg3 errorObject: recoveredArg4 readOnly: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) stateMachineInfo: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) methodManager: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) graphicObject: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) errorObject: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) readOnly: (recoveredValue10).
    ^recoveredValue0
! !

