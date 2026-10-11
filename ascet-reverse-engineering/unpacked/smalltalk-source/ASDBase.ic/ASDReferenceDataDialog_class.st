"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001554c; bytecode file offset 0x912098"
!ASDReferenceDataDialog class methodsFor: 'recovered'!
controllerClass
    | recoveredValue0 |
    recoveredValue0 := ASDReferenceDataDialogController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e2ef8; bytecode file offset 0x9df7b0"
!ASDReferenceDataDialog class methodsFor: 'recovered'!
minSize
    | recoveredValue0 |
    recoveredValue0 := (300) @ (180).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2016daa4; bytecode file offset 0xa6a368"
!ASDReferenceDataDialog class methodsFor: 'recovered'!
createForForReference: recoveredArg1 config: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) create.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (self) controllerClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue1) createForReference: (recoveredValue2) config: (recoveredValue3) ui: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) uiController: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

