"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20095de0; bytecode file offset 0x99269c"
!AbtXmlSchemaPrecision methodsFor: 'recovered'!
isValid: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) significantDigits.
    recoveredValue2 := (self) value.
    recoveredValue3 := (recoveredValue1) <= (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d7d64; bytecode file offset 0x9d4660"
!AbtXmlSchemaPrecision methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) convertToInteger: (recoveredValue0).
    super value: (recoveredValue1).
    ^self
! !

