"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008ee8; bytecode file offset 0x15caa4"
!OSHdwp methodsFor: 'recovered'!
endDeferWindowPos
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EndDeferWindowPos.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2002e8e8; bytecode file offset 0x18218c"
!OSHdwp methodsFor: 'recovered'!
deferWindowPos: recoveredArg1 hwndInsertAfter: recoveredArg2 x: recoveredArg3 y: recoveredArg4 cx: recoveredArg5 cy: recoveredArg6 flags: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OSHdwp.
    recoveredValue1 := DeferWindowPos.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    recoveredValue8 := recoveredArg7.
    recoveredValue9 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7) with: (recoveredValue8).
    recoveredValue10 := (recoveredValue0) immediate: (recoveredValue9).
    ^recoveredValue10
! !

