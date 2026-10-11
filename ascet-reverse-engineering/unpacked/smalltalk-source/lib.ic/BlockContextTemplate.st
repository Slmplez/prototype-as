"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200077c4; bytecode file offset 0x437ec"
!BlockContextTemplate methodsFor: 'recovered'!
emWriteLiteralOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) writeLiteralTypeFor: (self).
    recoveredValue1 := startPC.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) emWriteLiteralOn: (recoveredValue2).
    recoveredValue3 := argsAndTemps.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) emWriteLiteralOn: (recoveredValue4).
    ^self
! !

