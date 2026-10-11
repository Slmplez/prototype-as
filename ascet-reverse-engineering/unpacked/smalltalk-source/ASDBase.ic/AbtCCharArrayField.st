"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200129cc; bytecode file offset 0x912098"
!AbtCCharArrayField methodsFor: 'recovered'!
padChar
    | recoveredValue0 |
    recoveredValue0 := Nul.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013cc8; bytecode file offset 0x912098"
!AbtCCharArrayField methodsFor: 'recovered'!
arrayType
    | recoveredValue0 |
    recoveredValue0 := AbtCCharField.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015690; bytecode file offset 0x912098"
!AbtCCharArrayField methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := String.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20100ea8; bytecode file offset 0x9fd768"
!AbtCCharArrayField methodsFor: 'recovered'!
valueInRecord: recoveredArg1 parentOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := (self) length.
    recoveredValue6 := (recoveredValue1) abtCharArrayAt: (recoveredValue4) length: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20148544; bytecode file offset 0xa44e08"
!AbtCCharArrayField methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 parentOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) length.
    recoveredValue7 := (self) padChar.
    (recoveredValue1) abtCharArrayAt: (recoveredValue4) put: (recoveredValue5) length: (recoveredValue6) pad: (recoveredValue7).
    ^self
! !

