"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x202043f0; bytecode file offset 0xb00cc4"
!AbtXmlSerializationConfiguration class methodsFor: 'recovered'!
forKey: recoveredArg1 cache: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super forKey: (recoveredValue0) cache: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) schemaNamed: (recoveredValue5).
    (recoveredValue3) schema: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue8) dtdNamed: (recoveredValue9).
    (recoveredValue7) dtd: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue12) outputSerializerNamed: (recoveredValue13).
    (recoveredValue11) serializer: (recoveredValue14).
    ^recoveredValue2
! !

