"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201e455c; bytecode file offset 0xae0e30"
!ASDExportCodeOperation methodsFor: 'recovered'!
execute
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sources.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 |
    recoveredBlock5Value0 := (self) hostAccess.
    recoveredBlock5Value1 := (self) destinationPath.
    recoveredBlock5Value2 := recoveredBlock5Arg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) fileName.
    recoveredBlock5Value4 := (recoveredBlock5Value1) , (recoveredBlock5Value3).
    recoveredBlock5Value5 := recoveredBlock5Arg1.
    recoveredBlock5Value6 := (recoveredBlock5Value5) oilSource.
    recoveredBlock5Value7 := (recoveredBlock5Value0) writeFile: (recoveredBlock5Value4) contents: (recoveredBlock5Value6).
    recoveredBlock5Value7
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

