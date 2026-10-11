"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200029e8; bytecode file offset 0x7ed00"
!CwAnyCallbackData methodsFor: 'recovered'!
reason
    | recoveredValue0 |
    recoveredValue0 := reason.
    ^recoveredValue0
! !

"winsys.ic method 0x2000719c; bytecode file offset 0x8346c"
!CwAnyCallbackData methodsFor: 'recovered'!
reason: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    reason := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20026a3c; bytecode file offset 0xa2c2c"
!CwAnyCallbackData methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := (recoveredValue3) , ('(').
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) allInstVarNames.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := [:recoveredBlock27Arg1 :recoveredBlock27Arg2 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 recoveredBlock27Value7 recoveredBlock27Value8 recoveredBlock27Value9 |
    recoveredBlock27Value0 := recoveredArg1.
    recoveredBlock27Value1 := recoveredBlock27Value0.
    recoveredBlock27Value2 := recoveredBlock27Arg1.
    recoveredBlock27Value3 := ('    ') , (recoveredBlock27Value2).
    recoveredBlock27Value4 := (recoveredBlock27Value3) , (' -> ').
    recoveredBlock27Value5 := recoveredBlock27Arg2.
    recoveredBlock27Value6 := (self) instVarAt: (recoveredBlock27Value5).
    recoveredBlock27Value7 := (recoveredBlock27Value6) printString.
    recoveredBlock27Value8 := (recoveredBlock27Value4) , (recoveredBlock27Value7).
    (recoveredBlock27Value1) nextPutAll: (recoveredBlock27Value8).
    recoveredBlock27Value9 := (recoveredBlock27Value0) cr.
    recoveredBlock27Value9
].
    (recoveredValue7) doWithIndex: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) nextPutAll: (')').
    ^self
! !

