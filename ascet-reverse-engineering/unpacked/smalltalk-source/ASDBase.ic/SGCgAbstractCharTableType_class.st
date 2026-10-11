"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003c6d0; bytecode file offset 0x939180"
!SGCgAbstractCharTableType class methodsFor: 'recovered'!
isAbstract
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgAbstractCharTableType.
    recoveredValue1 := (self) = (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201666d0; bytecode file offset 0xa62fdc"
!SGCgAbstractCharTableType class methodsFor: 'recovered'!
createCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createCopy: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) valueElementType.
    (recoveredValue2) valueElementType: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) isCgFixedCharTableInModel.
    (recoveredValue5) fixedCharTableInModel: (recoveredValue7).
    ^recoveredValue1
! !

