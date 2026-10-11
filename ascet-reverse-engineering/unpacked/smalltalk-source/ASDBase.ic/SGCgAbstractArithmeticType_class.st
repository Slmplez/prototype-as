"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20023810; bytecode file offset 0x92209c"
!SGCgAbstractArithmeticType class methodsFor: 'recovered'!
basicTemplate
    ^'%TYPE.NAME%_%FORMULA.NAME%_%INTERVAL.LEFT%%INTERVAL.RIGHT%%ZERONOTINCLUDED%'
! !

"ASDBase.ic method 0x2003c76c; bytecode file offset 0x939180"
!SGCgAbstractArithmeticType class methodsFor: 'recovered'!
isAbstract
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgAbstractArithmeticType.
    recoveredValue1 := (self) = (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fe660; bytecode file offset 0x9faf6c"
!SGCgAbstractArithmeticType class methodsFor: 'recovered'!
createCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createCopy: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) physicalUnit.
    (recoveredValue2) physicalUnit: (recoveredValue4).
    ^recoveredValue1
! !

