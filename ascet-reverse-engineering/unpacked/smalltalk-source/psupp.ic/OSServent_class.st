"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2001e448; bytecode file offset 0x171d88"
!OSServent class methodsFor: 'recovered'!
getservbyport: recoveredArg1 proto: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Getservbyport.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) address: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x2001e45c; bytecode file offset 0x171d88"
!OSServent class methodsFor: 'recovered'!
getservbyname: recoveredArg1 proto: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Getservbyname.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) address: (recoveredValue3).
    ^recoveredValue4
! !

