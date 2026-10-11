"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015030; bytecode file offset 0x912098"
!SGFormulaParamDialog class methodsFor: 'recovered'!
controllerClass
    | recoveredValue0 |
    recoveredValue0 := SGFormulaParamCtrl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e2d54; bytecode file offset 0x9df60c"
!SGFormulaParamDialog class methodsFor: 'recovered'!
minSize
    | recoveredValue0 |
    recoveredValue0 := (390) @ (460).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201233b4; bytecode file offset 0xa1fc7c"
!SGFormulaParamDialog class methodsFor: 'recovered'!
create: recoveredArg1 owner: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super create.
    recoveredValue1 := (self) controllerClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) create: (recoveredValue2) owner: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) uiController: (recoveredValue4).
    ^recoveredValue5
! !

