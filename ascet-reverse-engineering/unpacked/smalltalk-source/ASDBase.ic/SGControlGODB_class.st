"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x202dbf7c; bytecode file offset 0xbd885c"
!SGControlGODB class methodsFor: 'recovered'!
typeClassDict
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SGControlGO.
    recoveredValue3 := (recoveredValue2) allSubclasses.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) typeSymbol.
    recoveredBlock13Value3 := recoveredBlock13Arg1.
    recoveredBlock13Value4 := (recoveredBlock13Value0) at: (recoveredBlock13Value2) put: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := SGIfThenElseGO.
    (recoveredValue6) at: ('SGIfGO') put: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    recoveredValue9 := SGIfThenElseGOOldFashion.
    (recoveredValue8) at: ('SGIfGOOldFashion') put: (recoveredValue9).
    ^recoveredValue5
! !

