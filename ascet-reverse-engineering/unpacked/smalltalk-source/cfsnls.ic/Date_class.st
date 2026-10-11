"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x200062d8; bytecode file offset 0x29518"
!Date class methodsFor: 'recovered'!
mutateObjects: recoveredArg1 fromPlatform: recoveredArg2 named: recoveredArg3 withDefinition: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) instVarAt: (1).
    recoveredBlock5Value2 := (recoveredBlock5Value1) + (30300).
    recoveredBlock5Value3 := (self) fromDays: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    ^recoveredValue2
! !

