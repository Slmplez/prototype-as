"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003c718; bytecode file offset 0x939180"
!SGCgAbstract2DCharTableType class methodsFor: 'recovered'!
isAbstract
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgAbstract2DCharTableType.
    recoveredValue1 := (self) = (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201cd1b8; bytecode file offset 0xac9a8c"
!SGCgAbstract2DCharTableType class methodsFor: 'recovered'!
createCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createCopy: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) maxSize.
    (recoveredValue2) maxSize: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) xDistributionType.
    (recoveredValue5) xDistributionType: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) yDistributionType.
    (recoveredValue8) yDistributionType: (recoveredValue10).
    ^recoveredValue1
! !

