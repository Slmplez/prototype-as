"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008858; bytecode file offset 0x15caa4"
!OSHhook methodsFor: 'recovered'!
unhookWindowsHookEx
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := UnhookWindowsHookEx.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200242e8; bytecode file offset 0x1781a4"
!OSHhook methodsFor: 'recovered'!
callNextHookEx: recoveredArg1 wParam: recoveredArg2 lParam: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CallNextHookEx.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

