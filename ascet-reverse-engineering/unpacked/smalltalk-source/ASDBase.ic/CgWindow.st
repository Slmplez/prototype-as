"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20212a74; bytecode file offset 0xb0f34c"
!CgWindow methodsFor: 'recovered'!
screenToClient: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) x.
    (recoveredValue3) x: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) y.
    (recoveredValue1) y: (recoveredValue7).
    recoveredValue8 := (self) handle.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) screenToClient: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) x.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) y.
    recoveredValue14 := (recoveredValue11) @ (recoveredValue13).
    ^recoveredValue14
! !

