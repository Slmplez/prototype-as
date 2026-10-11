"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003ee98; bytecode file offset 0x93bf94"
!AbtCCharField methodsFor: 'recovered'!
arrayOf
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtCCharArrayField.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200568a8; bytecode file offset 0x9531e4"
!AbtCCharField methodsFor: 'recovered'!
valueAtAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := (recoveredValue1) abrAsString.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20122ab4; bytecode file offset 0xa1f378"
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

