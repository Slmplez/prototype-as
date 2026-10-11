"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000264; bytecode file offset 0x153b50"
!EsLeadEncodedBytes methodsFor: 'recovered'!
asParameter
    | recoveredValue0 |
    recoveredValue0 := (self) asPSZ.
    ^recoveredValue0
! !

"psupp.ic method 0x2002d044; bytecode file offset 0x180900"
!EsLeadEncodedBytes methodsFor: 'recovered'!
copyToOSMemory
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) size.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (recoveredValue0) + (-1).
    recoveredValue3 := OSUInt8.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) + (1).
    recoveredValue6 := (recoveredValue3) calloc: (recoveredValue5).
    recoveredValue7 := (self) memcpyFrom: (0) to: (recoveredValue2) into: (recoveredValue6) startingAt: (0).
    ^recoveredValue7
! !

