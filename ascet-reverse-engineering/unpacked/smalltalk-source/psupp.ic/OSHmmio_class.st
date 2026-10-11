"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200249b4; bytecode file offset 0x178268"
!OSHmmio class methodsFor: 'recovered'!
mmioOpen: recoveredArg1 pmmioinfo: recoveredArg2 fdwOpen: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := MmioOpen.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) immediate: (recoveredValue4).
    ^recoveredValue5
! !

