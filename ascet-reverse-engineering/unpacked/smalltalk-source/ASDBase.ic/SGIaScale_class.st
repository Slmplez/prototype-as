"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20099728; bytecode file offset 0x995fe4"
!SGIaScale class methodsFor: 'recovered'!
fraction: recoveredArg1 exponent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) basicFraction: (recoveredValue0) exponent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) normalize.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ec188; bytecode file offset 0x9e8afc"
!SGIaScale class methodsFor: 'recovered'!
basicFraction: recoveredArg1 exponent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) fraction: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) exponent: (recoveredValue4).
    ^recoveredValue0
! !

