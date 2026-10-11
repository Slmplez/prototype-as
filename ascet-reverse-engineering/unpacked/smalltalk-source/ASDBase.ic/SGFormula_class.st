"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200cb140; bytecode file offset 0x9c7b3c"
!SGFormula class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) owner: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20338bd0; bytecode file offset 0xc354c4"
!SGFormula class methodsFor: 'recovered'!
createUnvalidated: recoveredArg1 formula: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) create: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) getIDsAndIndizes: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredLocal2.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (recoveredBlock24Value1) at: (1).
    recoveredBlock24Value3 := (recoveredBlock24Value0) addIdentifierUnvalidated: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) formula: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue9) calculateEsFormula.
    recoveredLocal2 := recoveredValue10.
    recoveredValue11 := recoveredLocal2.
    ^recoveredValue11
! !

"ASDBase.ic method 0x20338bf4; bytecode file offset 0xc354c4"
!SGFormula class methodsFor: 'recovered'!
create: recoveredArg1 formula: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) create: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) getIDsAndIndizes: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredLocal2.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (recoveredBlock24Value1) at: (1).
    recoveredBlock24Value3 := (recoveredBlock24Value0) addIdentifier: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) formula: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue9) calculateEsFormula.
    recoveredLocal2 := recoveredValue10.
    recoveredValue11 := recoveredLocal2.
    ^recoveredValue11
! !

