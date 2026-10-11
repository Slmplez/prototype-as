"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201666f0; bytecode file offset 0xa62fdc"
!SGCg2DGroupCharTableType class methodsFor: 'recovered'!
createCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createCopy: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) xDistributionAlias.
    (recoveredValue2) xDistributionAlias: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) yDistributionAlias.
    (recoveredValue5) yDistributionAlias: (recoveredValue7).
    ^recoveredValue1
! !

