"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x20001078; bytecode file offset 0xf220"
!PCDExecuterPostMessage methodsFor: 'recovered'!
message: recoveredArg1 forClass: recoveredArg2 window: recoveredArg3 lparam: recoveredArg4 wparam: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue0) findWindow: (recoveredValue1) lpszWindow: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg4.
    (recoveredValue3) postMessage: (recoveredValue5) wParam: (recoveredValue6) lParam: (recoveredValue7).
    ^nil
! !

