"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013a7c; bytecode file offset 0x912098"
!SGDependencyParamDialog class methodsFor: 'recovered'!
controllerClass
    | recoveredValue0 |
    recoveredValue0 := SGDependencyParamCtrl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200dce90; bytecode file offset 0x9d9754"
!SGDependencyParamDialog class methodsFor: 'recovered'!
create: recoveredArg1 table: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredValue1 := (self) controllerClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) create: (recoveredValue2) table: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) uiController: (recoveredValue4).
    ^recoveredValue5
! !

