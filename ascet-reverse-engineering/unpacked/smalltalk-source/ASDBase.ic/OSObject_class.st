"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200922d8; bytecode file offset 0x98ebfc"
!OSObject class methodsFor: 'recovered'!
abtSegmentedAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtCLDTAdditions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) abtSegmentedToLinear: (recoveredValue1).
    recoveredValue3 := (self) address: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201320d8; bytecode file offset 0xa2e998"
!OSObject class methodsFor: 'recovered'!
copyFromOSMemory: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fixedSize.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (self) new.
    recoveredValue4 := (recoveredValue0) memcpyFrom: (0) to: (recoveredValue2) into: (recoveredValue3) startingAt: (0).
    ^recoveredValue4
! !

