"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20009488; bytecode file offset 0x15cd2c"
!OSStructure methodsFor: 'recovered'!
fix
    | recoveredValue0 |
    recoveredValue0 := reference.
    (recoveredValue0) makeFixed.
    ^self
! !

"psupp.ic method 0x2002ae3c; bytecode file offset 0x17e6e0"
!OSStructure methodsFor: 'recovered'!
copyToOSMemory
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fixedSize.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) calloc.
    recoveredValue5 := (self) memcpyFrom: (0) to: (recoveredValue2) into: (recoveredValue4) startingAt: (0).
    ^recoveredValue5
! !

