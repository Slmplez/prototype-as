"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000bd28; bytecode file offset 0x15f71c"
!OSHglobal class methodsFor: 'recovered'!
globalHandle: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GlobalHandle.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (recoveredValue1).
    recoveredValue3 := (self) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2001e484; bytecode file offset 0x171d88"
!OSHglobal class methodsFor: 'recovered'!
globalAlloc: recoveredArg1 cbAlloc: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := GlobalAlloc.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) immediate: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20021594; bytecode file offset 0x174eb0"
!OSHglobal class methodsFor: 'recovered'!
oleGetIconOfFile: recoveredArg1 fUseFileAsLabel: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OleGetIconOfFile.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) immediate: (recoveredValue4).
    ^recoveredValue5
! !

