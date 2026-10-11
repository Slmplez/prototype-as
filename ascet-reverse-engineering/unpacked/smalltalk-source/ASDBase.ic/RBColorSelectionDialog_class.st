"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20148018; bytecode file offset 0xa448e0"
!RBColorSelectionDialog class methodsFor: 'recovered'!
createForColor: recoveredArg1 palette: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := super create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) palette: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) nearestColor: (recoveredValue5).
    (recoveredValue3) result: (recoveredValue6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2019826c; bytecode file offset 0xa94b38"
!RBColorSelectionDialog class methodsFor: 'recovered'!
createAt: recoveredArg1 color: recoveredArg2 palette: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := super create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) leftTop: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg3.
    (recoveredValue3) palette: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue6) nearestColor: (recoveredValue7).
    (recoveredValue5) result: (recoveredValue8).
    ^recoveredValue0
! !

