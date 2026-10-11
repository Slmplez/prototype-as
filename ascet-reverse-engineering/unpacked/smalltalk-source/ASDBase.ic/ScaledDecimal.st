"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200c8708; bytecode file offset 0x9c4fc0"
!ScaledDecimal methodsFor: 'recovered'!
abtXmlPrintOn: recoveredArg1 context: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printOn: (recoveredValue0) showDigits: (false) pad: (false).
    ^self
! !

"ASDBase.ic method 0x2017566c; bytecode file offset 0xa71f58"
!ScaledDecimal methodsFor: 'recovered'!
abtPrintAsXmlAttributeOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPut: ($").
    recoveredValue1 := recoveredArg1.
    (self) abtXmlPrintOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) nextPut: ($").
    ^self
! !

