"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20005b14; bytecode file offset 0x50a24"
!OSFloat64 methodsFor: 'recovered'!
at: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) * (8).
    recoveredValue2 := (self) float64At: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20007d5c; bytecode file offset 0x52c6c"
!OSFloat64 methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) * (8).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) float64At: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

