"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200aa7e4; bytecode file offset 0x9a70a4"
!AbtXmlSchemaLength methodsFor: 'recovered'!
isValid: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abrAsString.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (self) value.
    recoveredValue4 := (recoveredValue2) == (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d7d78; bytecode file offset 0x9d4660"
!AbtXmlSchemaLength methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) convertToInteger: (recoveredValue0).
    super value: (recoveredValue1).
    ^self
! !

