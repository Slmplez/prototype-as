"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20148d18; bytecode file offset 0xa455f4"
!AbtAttributeToCodeHookConnection class methodsFor: 'recovered'!
connectAttribute: recoveredArg1 of: recoveredArg2 toSelector: recoveredArg3 of: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg3.
    (recoveredValue1) source: (recoveredValue2) attribute: (recoveredValue3) with: (recoveredValue4) selector: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) connect.
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) initializeConnection.
    ^recoveredValue0
! !

