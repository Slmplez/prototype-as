"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008d50; bytecode file offset 0x908be4"
!AbtCByteArrayField methodsFor: 'recovered'!
length
    | recoveredValue0 |
    recoveredValue0 := (self) count.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012984; bytecode file offset 0x912098"
!AbtCByteArrayField methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := ByteArray.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014628; bytecode file offset 0x912098"
!AbtCByteArrayField methodsFor: 'recovered'!
arrayType
    | recoveredValue0 |
    recoveredValue0 := AbtCByteField.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bb40; bytecode file offset 0x96873c"
!AbtCByteArrayField methodsFor: 'recovered'!
initialValue
    | recoveredValue0 |
    recoveredValue0 := initialValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084504; bytecode file offset 0x981ca4"
!AbtCByteArrayField methodsFor: 'recovered'!
length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) count: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20100e68; bytecode file offset 0x9fd724"
!AbtCByteArrayField methodsFor: 'recovered'!
valueInRecord: recoveredArg1 parentOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := count.
    recoveredValue6 := (recoveredValue1) abtByteArrayAt: (recoveredValue4) length: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201239f0; bytecode file offset 0xa202ac"
!AbtCByteArrayField methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 parentOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := count.
    (recoveredValue1) abtByteArrayAt: (recoveredValue4) put: (recoveredValue5) length: (recoveredValue6).
    ^self
! !

