"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20317178; bytecode file offset 0xc13a5c"
!SGSwitchGODB class methodsFor: 'recovered'!
typeClassDict
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SGSwitchBlockGO.
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
    recoveredValue7 := SGMuxGOFashionInt.
    (recoveredValue6) at: ('SGElseIfGOFashionInt') put: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    recoveredValue9 := SGMuxGOFashionInt.
    (recoveredValue8) at: ('SGElseIfGOOldFashion') put: (recoveredValue9).
    recoveredValue10 := recoveredValue5.
    recoveredValue11 := SGMuxGO.
    (recoveredValue10) at: ('SGElseIfGO') put: (recoveredValue11).
    ^recoveredValue5
! !

