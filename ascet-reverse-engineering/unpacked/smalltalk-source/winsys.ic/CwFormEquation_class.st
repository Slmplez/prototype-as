"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200055c4; bytecode file offset 0x81844"
!CwFormEquation class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"winsys.ic method 0x20008974; bytecode file offset 0x84b38"
!CwFormEquation class methodsFor: 'recovered'!
aX: recoveredArg1 minusB: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) * (-1).
    recoveredValue3 := (self) aX: (recoveredValue0) plusB: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x200089c8; bytecode file offset 0x84ba8"
!CwFormEquation class methodsFor: 'recovered'!
aX: recoveredArg1 plusB: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) aX: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) b: (recoveredValue3).
    ^recoveredValue4
! !

