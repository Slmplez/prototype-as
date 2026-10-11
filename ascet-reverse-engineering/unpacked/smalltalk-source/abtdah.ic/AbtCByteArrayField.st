"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200001c8; bytecode file offset 0x10284"
!AbtCByteArrayField methodsFor: 'recovered'!
length
    | recoveredValue0 |
    recoveredValue0 := (self) count.
    ^recoveredValue0
! !

"abtdah.ic method 0x2000030c; bytecode file offset 0x10494"
!AbtCByteArrayField methodsFor: 'recovered'!
arrayType
    | recoveredValue0 |
    recoveredValue0 := AbtCByteField.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000438; bytecode file offset 0x10494"
!AbtCByteArrayField methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := NlsGlobals.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000b08; bytecode file offset 0x10b38"
!AbtCByteArrayField methodsFor: 'recovered'!
initialValue
    | recoveredValue0 |
    recoveredValue0 := initialValue.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000f1c; bytecode file offset 0x10f60"
!AbtCByteArrayField methodsFor: 'recovered'!
length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) count: (recoveredValue0).
    ^self
! !

"abtdah.ic method 0x20002344; bytecode file offset 0x12374"
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

"abtdah.ic method 0x20002850; bytecode file offset 0x12880"
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

