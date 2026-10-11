"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20134f44; bytecode file offset 0xa31800"
!AbtCOBOLCOMP5Field methodsFor: 'recovered'!
valueInRecord: recoveredArg1 parentOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := sizeInBytes.
    recoveredValue6 := decimalLoc.
    recoveredValue7 := (recoveredValue1) abtCobolCOMP5FieldAt: (recoveredValue4) length: (recoveredValue5) decimalLocation: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20148510; bytecode file offset 0xa44ddc"
!AbtCOBOLCOMP5Field methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 parentOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := sizeInBytes.
    recoveredValue7 := decimalLoc.
    (recoveredValue1) abtCobolCOMP5FieldAt: (recoveredValue4) put: (recoveredValue5) length: (recoveredValue6) decimalLocation: (recoveredValue7).
    ^self
! !

