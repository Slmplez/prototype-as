"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000be68; bytecode file offset 0x15f71c"
!OSHostent class methodsFor: 'recovered'!
gethostbyname: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Gethostbyname.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (recoveredValue1).
    recoveredValue3 := (self) address: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20024928; bytecode file offset 0x178268"
!OSHostent class methodsFor: 'recovered'!
gethostbyaddr: recoveredArg1 len: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Gethostbyaddr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) address: (recoveredValue4).
    ^recoveredValue5
! !

