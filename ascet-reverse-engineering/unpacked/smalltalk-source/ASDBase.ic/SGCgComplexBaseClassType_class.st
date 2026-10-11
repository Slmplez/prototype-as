"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022c4c; bytecode file offset 0x92209c"
!SGCgComplexBaseClassType class methodsFor: 'recovered'!
typeBaseTypeNameKey
    ^'TYPE.BASETYPE.NAME'
! !

"ASDBase.ic method 0x2003c694; bytecode file offset 0x939180"
!SGCgComplexBaseClassType class methodsFor: 'recovered'!
isAbstract
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgComplexBaseClassType.
    recoveredValue1 := (self) = (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201cd190; bytecode file offset 0xac9a8c"
!SGCgComplexBaseClassType class methodsFor: 'recovered'!
createCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createCopy: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) componentType.
    (recoveredValue2) componentType: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) arrayReferencePassing.
    (recoveredValue5) arrayReferencePassing: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) originalImplementationIsNil.
    (recoveredValue8) originalImplementationIsNil: (recoveredValue10).
    ^recoveredValue1
! !

