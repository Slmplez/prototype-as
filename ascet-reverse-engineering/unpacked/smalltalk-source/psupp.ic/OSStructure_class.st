"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2002a5ac; bytecode file offset 0x17de4c"
!OSStructure class methodsFor: 'recovered'!
copyFromOSMemory: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fixedSize.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (self) new.
    recoveredValue4 := (recoveredValue0) memcpyFrom: (0) to: (recoveredValue2) into: (recoveredValue3) startingAt: (0).
    ^recoveredValue4
! !

