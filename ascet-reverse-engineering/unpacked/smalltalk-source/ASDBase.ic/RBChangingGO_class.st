"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20169150; bytecode file offset 0xa65a1c"
!RBChangingGO class methodsFor: 'recovered'!
createWith: recoveredArg1 deltaFromPosition: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) graphObject: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) getPosition.
    (recoveredValue4) originalPosition: (recoveredValue6).
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue0) deltaFromPosition: (recoveredValue7).
    ^recoveredValue8
! !

