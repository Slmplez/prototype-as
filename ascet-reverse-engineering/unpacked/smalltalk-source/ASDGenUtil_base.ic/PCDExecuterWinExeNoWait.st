"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x20000f6c; bytecode file offset 0xf11c"
!PCDExecuterWinExeNoWait methodsFor: 'recovered'!
executeInScope: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super executeInScope: (recoveredValue0).
    recoveredValue1 := ETASWinExec.
    recoveredValue2 := executable.
    recoveredValue3 := (recoveredValue2) trimBlanks.
    (recoveredValue1) startOnWindows: (recoveredValue3) showWindow: (true).
    ^self
! !

