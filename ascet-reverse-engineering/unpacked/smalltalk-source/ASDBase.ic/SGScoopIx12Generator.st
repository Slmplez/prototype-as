"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200005a8; bytecode file offset 0x8ffcfc"
!SGScoopIx12Generator methodsFor: 'recovered'!
putSixUsageAxis
    ^self
! !

"ASDBase.ic method 0x20004840; bytecode file offset 0x90206c"
!SGScoopIx12Generator methodsFor: 'recovered'!
putSixUsageAxis: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200048e0; bytecode file offset 0x90206c"
!SGScoopIx12Generator methodsFor: 'recovered'!
genSixUsageCharacteristic: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200237ec; bytecode file offset 0x92209c"
!SGScoopIx12Generator methodsFor: 'recovered'!
valuesModelIdentifier
    ^'values'
! !

"ASDBase.ic method 0x200b9558; bytecode file offset 0x9b5e7c"
!SGScoopIx12Generator methodsFor: 'recovered'!
genSixModelOriginalIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('<') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('>').
    ^recoveredValue2
! !

"ASDBase.ic method 0x20421d94; bytecode file offset 0xd1e680"
!SGScoopIx12Generator methodsFor: 'recovered'!
putSixElementUsageAttributes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
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
    ^self
! !

