"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20003b0c; bytecode file offset 0x64d78"
!SstWSServiceOperationHandler methodsFor: 'recovered'!
inputHandler
    | recoveredValue0 |
    recoveredValue0 := inputHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003d70; bytecode file offset 0x64ed4"
!SstWSServiceOperationHandler methodsFor: 'recovered'!
outputHandler
    | recoveredValue0 |
    recoveredValue0 := outputHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003ed4; bytecode file offset 0x64fe8"
!SstWSServiceOperationHandler methodsFor: 'recovered'!
faultHandler
    | recoveredValue0 |
    recoveredValue0 := faultHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20006dc4; bytecode file offset 0x67e90"
!SstWSServiceOperationHandler methodsFor: 'recovered'!
invoke: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) currentServiceHandlerFrom: (self).
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) invoke: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x200080fc; bytecode file offset 0x692b8"
!SstWSServiceOperationHandler methodsFor: 'recovered'!
inputHandler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    inputHandler := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008248; bytecode file offset 0x69404"
!SstWSServiceOperationHandler methodsFor: 'recovered'!
outputHandler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    outputHandler := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000839c; bytecode file offset 0x69508"
!SstWSServiceOperationHandler methodsFor: 'recovered'!
faultHandler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    faultHandler := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000af6c; bytecode file offset 0x6c040"
!SstWSServiceOperationHandler methodsFor: 'recovered'!
handleException: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := WSSignal.
    (recoveredValue0) addProperty: (recoveredValue1) named: (recoveredValue2).
    recoveredValue3 := (self) faultHandler.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) invoke: (recoveredValue4).
    ^self
! !

