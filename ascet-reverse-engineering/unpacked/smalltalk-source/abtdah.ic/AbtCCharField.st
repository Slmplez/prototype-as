"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x2000060c; bytecode file offset 0x1068c"
!AbtCCharField methodsFor: 'recovered'!
arrayOf
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtCCharArrayField.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"abtdah.ic method 0x20000824; bytecode file offset 0x10854"
!AbtCCharField methodsFor: 'recovered'!
valueAtAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := (recoveredValue1) abrAsString.
    ^recoveredValue2
! !

"abtdah.ic method 0x200027f8; bytecode file offset 0x12830"
!AbtCCharField methodsFor: 'recovered'!
valueAtAddress: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) abrAsString.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) abtByteSize.
    recoveredValue6 := (recoveredValue5) + (1).
    recoveredValue7 := (recoveredValue1) abtCharArrayAt: (0) put: (recoveredValue3) length: (recoveredValue6).
    ^recoveredValue7
! !

