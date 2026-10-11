"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006b1f8; bytecode file offset 0x96873c"
!AbtXmlSchemaComplexContent methodsFor: 'recovered'!
mixed
    | recoveredValue0 |
    recoveredValue0 := mixed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077eec; bytecode file offset 0x9757c8"
!AbtXmlSchemaComplexContent methodsFor: 'recovered'!
isContentContainer
    ^true
! !

"ASDBase.ic method 0x200c2a48; bytecode file offset 0x9bf474"
!AbtXmlSchemaComplexContent methodsFor: 'recovered'!
mixed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mixed := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ecc9c; bytecode file offset 0x9e95c8"
!AbtXmlSchemaComplexContent methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) serializer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    (recoveredValue1) abtXmlPrint: (recoveredValue2) on: (recoveredValue3) complexContent: (self) context: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2020fa44; bytecode file offset 0xb0c308"
!AbtXmlSchemaComplexContent methodsFor: 'recovered'!
elementNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) content.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) elementNamed: (recoveredBlock5Value1).
    recoveredBlock5Value3 := [:recoveredBlock5Block17Arg1 | 
    | recoveredBlock5Block17Value0 |
    recoveredBlock5Block17Value0 := recoveredBlock5Block17Arg1.
    ^recoveredBlock5Block17Value0
].
    recoveredBlock5Value4 := (recoveredBlock5Value2) ifNotNil: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

