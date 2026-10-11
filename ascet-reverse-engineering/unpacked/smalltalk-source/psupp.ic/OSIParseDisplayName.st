"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2002a828; bytecode file offset 0x17e0c8"
!OSIParseDisplayName methodsFor: 'recovered'!
parseDisplayName: recoveredArg1 pszDisplayName: recoveredArg2 pchEaten: recoveredArg3 ppmkOut: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ParseDisplayName.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) asOlePSZ.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue0) callWith: (3) with: (self) with: (recoveredValue1) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

