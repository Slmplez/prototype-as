"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x2000108c; bytecode file offset 0x12b74"
!Stream methodsFor: 'recovered'!
abtHash32: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) abs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) abtPrimHashInt: (recoveredValue0) seed: (recoveredValue1).
    ^recoveredValue2
! !

