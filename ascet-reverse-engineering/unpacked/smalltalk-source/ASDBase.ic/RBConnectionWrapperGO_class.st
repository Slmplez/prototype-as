"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2021e4d0; bytecode file offset 0xb1ada0"
!RBConnectionWrapperGO class methodsFor: 'recovered'!
createWith: recoveredArg1 startPoint: recoveredArg2 endPoint: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) position.
    recoveredValue4 := (recoveredValue3) copy.
    (recoveredValue1) rememberLinkPoint: (recoveredValue4).
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue5) position.
    recoveredValue7 := (recoveredValue6) copy.
    (recoveredValue0) rememberLinkPoint: (recoveredValue7).
    recoveredValue8 := (self) new.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) graphObject: (recoveredValue10).
    recoveredValue11 := recoveredValue8.
    (recoveredValue11) initialize.
    recoveredValue12 := recoveredValue8.
    recoveredValue13 := recoveredArg2.
    (recoveredValue12) addConnectionPoint: (recoveredValue13).
    recoveredValue14 := recoveredValue8.
    recoveredValue15 := recoveredArg3.
    (recoveredValue14) addConnectionPoint: (recoveredValue15).
    ^recoveredValue8
! !

