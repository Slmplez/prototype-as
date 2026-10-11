"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200aa2c4; bytecode file offset 0x9a6b7c"
!EtasExpProjectTransferError class methodsFor: 'recovered'!
monitorMessage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) monitorMessage: (recoveredValue0) backUp: (1).
    ^self
! !

"ASDBase.ic method 0x2011fac8; bytecode file offset 0xa1c38c"
!EtasExpProjectTransferError class methodsFor: 'recovered'!
errorMessagePrompt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) monitorMessage: (recoveredValue0) backUp: (1).
    recoveredValue1 := RBUserInfo.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) errorMessage: (recoveredValue2).
    (recoveredValue3) prompt.
    ^self
! !

"ASDBase.ic method 0x201874c0; bytecode file offset 0xa83d90"
!EtasExpProjectTransferError class methodsFor: 'recovered'!
monitorMessage: recoveredArg1 backUp: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := Processor.
    recoveredValue4 := (recoveredValue3) activeProcess.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) + (1).
    recoveredValue7 := (recoveredValue4) methodAtFrame: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) printString.
    (recoveredValue2) addText: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue1) addText: (recoveredValue9).
    ^self
! !

