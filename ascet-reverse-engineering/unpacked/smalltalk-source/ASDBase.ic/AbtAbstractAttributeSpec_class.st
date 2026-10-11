"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018a7c; bytecode file offset 0x92209c"
!AbtAbstractAttributeSpec class methodsFor: 'recovered'!
featureType
    ^'attribute'
! !

"ASDBase.ic method 0x20077504; bytecode file offset 0x9757c8"
!AbtAbstractAttributeSpec class methodsFor: 'recovered'!
isAttribute
    ^true
! !

"ASDBase.ic method 0x20078634; bytecode file offset 0x9757c8"
!AbtAbstractAttributeSpec class methodsFor: 'recovered'!
isPrimitiveAttribute
    ^true
! !

"ASDBase.ic method 0x20163e24; bytecode file offset 0xa606f4"
!AbtAbstractAttributeSpec class methodsFor: 'recovered'!
parametersWithDefaultClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Array.
    recoveredValue1 := AbtParameterSpec.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) parameterName: ('value').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) parameterClass: (recoveredValue5).
    recoveredValue6 := (recoveredValue0) with: (recoveredValue2).
    ^recoveredValue6
! !

