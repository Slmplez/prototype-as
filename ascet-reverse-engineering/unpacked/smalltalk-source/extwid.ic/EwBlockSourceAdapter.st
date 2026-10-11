"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20002fcc; bytecode file offset 0x53da8"
!EwBlockSourceAdapter methodsFor: 'recovered'!
sourceItemsBlock
    | recoveredValue0 |
    recoveredValue0 := sourceItemsBlock.
    ^recoveredValue0
! !

"extwid.ic method 0x20006a68; bytecode file offset 0x578dc"
!EwBlockSourceAdapter methodsFor: 'recovered'!
sourceItemsBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceItemsBlock := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20027cb4; bytecode file offset 0x78a9c"
!EwBlockSourceAdapter methodsFor: 'recovered'!
setSourceInfoOn: recoveredArg1 atX: recoveredArg2 y: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) sourceItemsBlock.
    recoveredValue1 := (recoveredValue0) value.
    recoveredLocal4 := recoveredValue1.
    recoveredLocal2 := -10.
    recoveredLocal1 := 0.
    recoveredValue2 := recoveredLocal4.
    recoveredValue3 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 recoveredBlock22Value6 recoveredBlock22Value7 recoveredBlock22Value8 recoveredBlock22Value9 |
    recoveredBlock22Value0 := recoveredLocal1.
    recoveredBlock22Value1 := recoveredBlock22Arg1.
    recoveredBlock22Value2 := (self) rc.
    recoveredBlock22Value3 := (recoveredBlock22Value1) ewHeightUsing: (recoveredBlock22Value2).
    recoveredBlock22Value4 := (recoveredBlock22Value0) - (recoveredBlock22Value3).
    recoveredLocal1 := recoveredBlock22Value4.
    recoveredBlock22Value5 := recoveredLocal2.
    recoveredBlock22Value6 := (recoveredBlock22Value5) + (10).
    recoveredLocal2 := recoveredBlock22Value6.
    recoveredBlock22Value7 := recoveredLocal2.
    recoveredBlock22Value8 := recoveredLocal1.
    recoveredBlock22Value9 := (recoveredBlock22Value7) @ (recoveredBlock22Value8).
    recoveredBlock22Value9
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredLocal4.
    (recoveredValue6) sourceItems: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    recoveredValue9 := recoveredLocal4.
    (recoveredValue8) images: (recoveredValue9).
    recoveredValue10 := recoveredLocal3.
    (recoveredValue5) offsets: (recoveredValue10).
    ^self
! !

