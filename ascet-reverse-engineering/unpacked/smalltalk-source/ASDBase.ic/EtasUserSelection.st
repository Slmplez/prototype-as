"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007036c; bytecode file offset 0x96ce40"
!EtasUserSelection methodsFor: 'recovered'!
visualCallbackStringBlock
    | recoveredValue0 |
    recoveredValue0 := visualCallbackStringBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070728; bytecode file offset 0x96d06c"
!EtasUserSelection methodsFor: 'recovered'!
visualCallbackIconBlock
    | recoveredValue0 |
    recoveredValue0 := visualCallbackIconBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c6a0c; bytecode file offset 0x9c3470"
!EtasUserSelection methodsFor: 'recovered'!
visualCallbackStringBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visualCallbackStringBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6db8; bytecode file offset 0x9c36ec"
!EtasUserSelection methodsFor: 'recovered'!
visualCallbackIconBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visualCallbackIconBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2016b9b4; bytecode file offset 0xa68280"
!EtasUserSelection methodsFor: 'recovered'!
getPrompter
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super getPrompter.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) visualCallbackStringBlock.
    (recoveredValue2) visualCallbackStringBlock: (recoveredValue3).
    recoveredValue4 := (self) visualCallbackIconBlock.
    recoveredValue5 := (recoveredValue1) visualCallbackIconBlock: (recoveredValue4).
    ^recoveredValue5
! !

