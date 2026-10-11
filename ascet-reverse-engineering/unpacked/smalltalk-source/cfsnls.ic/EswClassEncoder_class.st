"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20002ed0; bytecode file offset 0x26104"
!EswClassEncoder class methodsFor: 'recovered'!
forSwapper: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) forSwapper: (recoveredValue0) initialSize: (50).
    ^recoveredValue1
! !

"cfsnls.ic method 0x20004a64; bytecode file offset 0x27ca0"
!EswClassEncoder class methodsFor: 'recovered'!
forSwapper: recoveredArg1 initialSize: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super forSwapper: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) initialize: (recoveredValue3).
    ^recoveredValue1
! !

