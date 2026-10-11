"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x202b7160; bytecode file offset 0xbb3a34"
!Signal methodsFor: 'recovered'!
createETASFormulaError
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredLocal1 := 'CompilerError: ('.
    recoveredValue0 := (self) arguments.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := ('(') , (recoveredBlock10Value0).
    recoveredBlock10Value2 := (recoveredBlock10Value1) , (')').
    recoveredBlock10Value3 := recoveredBlock10Value2.
    recoveredLocal1 := recoveredBlock10Value3.
    recoveredBlock10Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) , (')').
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := ETASFormulaError.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue4) create: (recoveredValue5).
    ^recoveredValue6
! !

