"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200041e4; bytecode file offset 0x1422c"
!Dictionary methodsFor: 'recovered'!
asPoolDictionary
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) species.
    recoveredValue1 := (self) size.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) key.
    recoveredBlock12Value3 := (recoveredBlock12Value2) asSmalltalkGlobalIdentifier.
    recoveredBlock12Value4 := recoveredBlock12Arg1.
    recoveredBlock12Value5 := (recoveredBlock12Value4) value.
    recoveredBlock12Value6 := (recoveredBlock12Value0) at: (recoveredBlock12Value3) put: (recoveredBlock12Value5).
    recoveredBlock12Value6
].
    (self) associationsDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

