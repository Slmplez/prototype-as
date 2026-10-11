"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"drgdrp.ic method 0x20000b60; bytecode file offset 0x5fd8"
!CwTransferProcCallbackData class methodsFor: 'recovered'!
transferClientData: recoveredArg1 target: recoveredArg2 value: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := XmCRTRANSFERMESSAGE.
    (recoveredValue1) reason: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) transferClientData: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) target: (recoveredValue6).
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue0) value: (recoveredValue7).
    ^recoveredValue8
! !

