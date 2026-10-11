"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d3a8; bytecode file offset 0x92209c"
!SGIlOptionalServiceCastingTransformation class methodsFor: 'recovered'!
label
    ^'OptionalServices'
! !

"ASDBase.ic method 0x200ec124; bytecode file offset 0x9e8afc"
!SGIlOptionalServiceCastingTransformation class methodsFor: 'recovered'!
createWithContext: recoveredArg1 exprCasting: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) genContext: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) castExprTransformation: (recoveredValue4).
    ^recoveredValue0
! !

