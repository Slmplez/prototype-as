"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x2000102c; bytecode file offset 0x12b30"
!OSObject class methodsFor: 'recovered'!
abtSegmentedAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtCLDTAdditions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) abtSegmentedToLinear: (recoveredValue1).
    recoveredValue3 := (self) address: (recoveredValue2).
    ^recoveredValue3
! !

