"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20028080; bytecode file offset 0x17b920"
!OSIErrorLog methodsFor: 'recovered'!
addError: recoveredArg1 pExcepInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AddError.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (3) with: (self) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

