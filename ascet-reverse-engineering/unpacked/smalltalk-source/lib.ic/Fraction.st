"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200077e8; bytecode file offset 0x43818"
!Fraction methodsFor: 'recovered'!
emWriteLiteralOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) writeLiteralTypeFor: (self).
    recoveredValue1 := (self) numerator.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) emWriteLiteralOn: (recoveredValue2).
    recoveredValue3 := (self) denominator.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) emWriteLiteralOn: (recoveredValue4).
    ^self
! !

