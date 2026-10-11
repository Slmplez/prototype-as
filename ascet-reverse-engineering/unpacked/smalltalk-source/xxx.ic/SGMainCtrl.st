"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx.ic method 0x20000604; bytecode file offset 0x150e8"
!SGMainCtrl methodsFor: 'recovered'!
startObservingWebServiceActionsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AaaManagement.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addDependent: (recoveredValue2).
    ^self
! !

"xxx.ic method 0x20000618; bytecode file offset 0x150e8"
!SGMainCtrl methodsFor: 'recovered'!
stopObservingWebServiceActionsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AaaManagement.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) removeDependent: (recoveredValue2).
    ^self
! !

