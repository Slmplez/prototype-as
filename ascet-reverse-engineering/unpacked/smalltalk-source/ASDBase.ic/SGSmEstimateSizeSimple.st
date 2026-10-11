"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20057638; bytecode file offset 0x956284"
!SGSmEstimateSizeSimple methodsFor: 'recovered'!
cost: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) cost: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a49b8; bytecode file offset 0xaa1274"
!SGSmEstimateSizeSimple methodsFor: 'recovered'!
estimateSizeAll: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    totalSize := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock9Value1
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := totalSize.
    ^recoveredValue2
! !

