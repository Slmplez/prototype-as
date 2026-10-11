"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20179cf8; bytecode file offset 0xa765c0"
!AbtEventToActionConnection class methodsFor: 'recovered'!
connectEvent: recoveredArg1 of: recoveredArg2 toAction: recoveredArg3 of: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) source: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) eventName: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg3.
    (recoveredValue5) actionProvider: (recoveredValue6) actionName: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) connect.
    ^recoveredValue0
! !

