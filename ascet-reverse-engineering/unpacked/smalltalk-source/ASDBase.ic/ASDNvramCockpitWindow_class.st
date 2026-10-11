"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20058198; bytecode file offset 0x956284"
!ASDNvramCockpitWindow class methodsFor: 'recovered'!
createFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) nvramManager: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e2dec; bytecode file offset 0x9df6a4"
!ASDNvramCockpitWindow class methodsFor: 'recovered'!
minSize
    | recoveredValue0 |
    recoveredValue0 := (400) @ (290).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2016d1f4; bytecode file offset 0xa69abc"
!ASDNvramCockpitWindow class methodsFor: 'recovered'!
createForManager: recoveredArg1 controller: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := ASDNvramCockpitCtrl.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue2) createFor: (recoveredValue3) measureCtrl: (recoveredValue4).
    (recoveredValue1) uiController: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) nvramManager: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

