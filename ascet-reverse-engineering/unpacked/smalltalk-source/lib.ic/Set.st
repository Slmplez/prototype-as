"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x2000f384; bytecode file offset 0x4b3ec"
!Set methodsFor: 'recovered'!
emWriteBinary: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := EmMarshaller.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue1) typeForClass: (recoveredValue2).
    (recoveredValue0) nextPut: (recoveredValue3).
    recoveredValue4 := (self) size.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) emWriteInteger: (recoveredValue5).
    recoveredValue6 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) emWriteBinary: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    (self) do: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    ^recoveredValue7
! !

