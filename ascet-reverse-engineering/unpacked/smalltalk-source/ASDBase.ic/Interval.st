"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000e184; bytecode file offset 0x90ab8c"
!Interval methodsFor: 'recovered'!
abtPrimitiveCloneWithRecursionSet: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) deepCopy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202a5738; bytecode file offset 0xba1ff8"
!Interval methodsFor: 'recovered'!
abtReverseDoWithIndex: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := from.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) size.
    recoveredValue2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := recoveredLocal1.
    recoveredBlock14Value2 := recoveredBlock14Arg1.
    (recoveredBlock14Value0) value: (recoveredBlock14Value1) value: (recoveredBlock14Value2).
    recoveredBlock14Value3 := recoveredLocal1.
    recoveredBlock14Value4 := by.
    recoveredBlock14Value5 := (recoveredBlock14Value3) + (recoveredBlock14Value4).
    recoveredBlock14Value6 := recoveredBlock14Value5.
    recoveredLocal1 := recoveredBlock14Value6.
    recoveredBlock14Value5
].
    (recoveredValue1) to: (1) by: (-1) do: (recoveredValue2).
    ^self
! !

