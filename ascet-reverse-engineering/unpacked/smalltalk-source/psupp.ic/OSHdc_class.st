"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000f860; bytecode file offset 0x163194"
!OSHdc class methodsFor: 'recovered'!
createMetaFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CreateMetaFile.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (recoveredValue0) callWith: (recoveredValue2).
    recoveredValue4 := (self) immediate: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x2002a8c8; bytecode file offset 0x17e184"
!OSHdc class methodsFor: 'recovered'!
createIC: recoveredArg1 lpszDevice: recoveredArg2 lpszOutput: recoveredArg3 lpvInitData: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := CreateIC.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue5) asPSZ.
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue4) with: (recoveredValue6) with: (recoveredValue7).
    recoveredValue9 := (self) immediate: (recoveredValue8).
    ^recoveredValue9
! !

"psupp.ic method 0x2002a8e0; bytecode file offset 0x17e184"
!OSHdc class methodsFor: 'recovered'!
createDC: recoveredArg1 lpszDevice: recoveredArg2 lpszOutput: recoveredArg3 lpvInitData: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := CreateDC.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue5) asPSZ.
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue4) with: (recoveredValue6) with: (recoveredValue7).
    recoveredValue9 := (self) immediate: (recoveredValue8).
    ^recoveredValue9
! !

