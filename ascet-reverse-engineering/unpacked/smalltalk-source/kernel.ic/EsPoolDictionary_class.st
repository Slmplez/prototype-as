"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20004500; bytecode file offset 0x4f414"
!EsPoolDictionary class methodsFor: 'recovered'!
minimumSize
    ^7
! !

"kernel.ic method 0x2000be24; bytecode file offset 0x56d40"
!EsPoolDictionary class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (1).
    recoveredValue3 := (recoveredValue2) * (8).
    recoveredValue4 := (recoveredValue3) // (5).
    recoveredValue5 := (self) minimumSize.
    recoveredValue6 := (recoveredValue4) max: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) initialize: (recoveredValue6).
    ^recoveredValue7
! !

