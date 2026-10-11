"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2001474c; bytecode file offset 0x90928"
!CgPrinterWindow class methodsFor: 'recovered'!
screen: recoveredArg1 jobAttributes: recoveredArg2 osGC: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) screen: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) defaultDepth.
    (recoveredValue2) depth: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) jobAttributes: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg3.
    (recoveredValue7) osGC: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) privateSetDefaultPalette.
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) addReference.
    ^recoveredValue1
! !

