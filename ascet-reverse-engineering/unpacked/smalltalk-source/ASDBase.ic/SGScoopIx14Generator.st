"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019f88; bytecode file offset 0x92209c"
!SGScoopIx14Generator methodsFor: 'recovered'!
minusInfinityValue
    ^'-INF'
! !

"ASDBase.ic method 0x20024db8; bytecode file offset 0x92209c"
!SGScoopIx14Generator methodsFor: 'recovered'!
positiveInfinityValue
    ^'INF'
! !

"ASDBase.ic method 0x204c070c; bytecode file offset 0xdbd008"
!SGScoopIx14Generator methodsFor: 'recovered'!
putSixElementUsageAttributes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('measurement') ifAbsent: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := (self) expander.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) asString.
    recoveredBlock11Value3 := (recoveredBlock11Value0) attribute: ('measurement') with: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [].
    recoveredValue6 := (recoveredValue4) at: ('calibration') ifAbsent: (recoveredValue5).
    recoveredValue7 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 |
    recoveredBlock36Value0 := (self) expander.
    recoveredBlock36Value1 := recoveredBlock36Arg1.
    recoveredBlock36Value2 := (recoveredBlock36Value1) asString.
    recoveredBlock36Value3 := (recoveredBlock36Value0) attribute: ('calibration') with: (recoveredBlock36Value2).
    recoveredBlock36Value3
].
    (recoveredValue6) ifNotNil: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := [].
    recoveredValue10 := (recoveredValue8) at: ('virtual') ifAbsent: (recoveredValue9).
    recoveredValue11 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 |
    recoveredBlock60Value0 := (self) expander.
    recoveredBlock60Value1 := recoveredBlock60Arg1.
    recoveredBlock60Value2 := (recoveredBlock60Value1) asString.
    recoveredBlock60Value3 := (recoveredBlock60Value0) attribute: ('virtual') with: (recoveredBlock60Value2).
    recoveredBlock60Value3
].
    (recoveredValue10) ifNotNil: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := [].
    recoveredValue14 := (recoveredValue12) at: ('variant') ifAbsent: (recoveredValue13).
    recoveredValue15 := [:recoveredBlock84Arg1 | 
    | recoveredBlock84Value0 recoveredBlock84Value1 recoveredBlock84Value2 recoveredBlock84Value3 |
    recoveredBlock84Value0 := (self) expander.
    recoveredBlock84Value1 := recoveredBlock84Arg1.
    recoveredBlock84Value2 := (recoveredBlock84Value1) asString.
    recoveredBlock84Value3 := (recoveredBlock84Value0) attribute: ('variant') with: (recoveredBlock84Value2).
    recoveredBlock84Value3
].
    (recoveredValue14) ifNotNil: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := [].
    recoveredValue18 := (recoveredValue16) at: ('nonVolatile') ifAbsent: (recoveredValue17).
    recoveredValue19 := [:recoveredBlock108Arg1 | 
    | recoveredBlock108Value0 recoveredBlock108Value1 recoveredBlock108Value2 recoveredBlock108Value3 |
    recoveredBlock108Value0 := (self) expander.
    recoveredBlock108Value1 := recoveredBlock108Arg1.
    recoveredBlock108Value2 := (recoveredBlock108Value1) asString.
    recoveredBlock108Value3 := (recoveredBlock108Value0) attribute: ('nonVolatile') with: (recoveredBlock108Value2).
    recoveredBlock108Value3
].
    (recoveredValue18) ifNotNil: (recoveredValue19).
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := [].
    recoveredValue22 := (recoveredValue20) at: ('layoutFamily') ifAbsent: (recoveredValue21).
    recoveredValue23 := [:recoveredBlock132Arg1 | 
    | recoveredBlock132Value0 recoveredBlock132Value1 recoveredBlock132Value2 recoveredBlock132Value3 |
    recoveredBlock132Value0 := (self) expander.
    recoveredBlock132Value1 := recoveredBlock132Arg1.
    recoveredBlock132Value2 := (recoveredBlock132Value1) asString.
    recoveredBlock132Value3 := (recoveredBlock132Value0) attribute: ('layoutFamily') with: (recoveredBlock132Value2).
    recoveredBlock132Value3
].
    (recoveredValue22) ifNotNil: (recoveredValue23).
    ^self
! !

