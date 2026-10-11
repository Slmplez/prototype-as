"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20111248; bytecode file offset 0xa0db08"
!OSHwnd methodsFor: 'recovered'!
sendMessage16: recoveredArg1 wParam: recoveredArg2 lParam: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SendMessage16.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) asParameter.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) asParameter.
    recoveredValue6 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue3) with: (recoveredValue5).
    ^recoveredValue6
! !

