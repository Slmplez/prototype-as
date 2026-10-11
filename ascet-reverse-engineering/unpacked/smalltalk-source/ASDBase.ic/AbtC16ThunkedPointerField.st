"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20087060; bytecode file offset 0x98396c"
!AbtC16ThunkedPointerField methodsFor: 'recovered'!
valueInRecord: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) abtThunkedPointerAt: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aeed0; bytecode file offset 0x9ab7bc"
!AbtC16ThunkedPointerField methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 atOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    (recoveredValue1) abtThunkedPointerAt: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

