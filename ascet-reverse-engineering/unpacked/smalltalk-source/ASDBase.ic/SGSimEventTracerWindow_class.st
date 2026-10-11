"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016064; bytecode file offset 0x92209c"
!SGSimEventTracerWindow class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('activateClearList' 'activateStartTracer' 'activateStopTracer')
! !

"ASDBase.ic method 0x20127054; bytecode file offset 0xa23948"
!SGSimEventTracerWindow class methodsFor: 'recovered'!
createForSimulator: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := SGSimEventTracerCtrl.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue2) create: (recoveredValue3) simulator: (recoveredValue4).
    (recoveredValue1) uiController: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

