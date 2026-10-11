"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200549a8; bytecode file offset 0x952a9c"
!SGIlRTEIWriteRef methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rteIWriteRefCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2020e938; bytecode file offset 0xb0b25c"
!SGIlRTEIWriteRef methodsFor: 'recovered'!
createWithArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := (self) port.
    recoveredBlock7Value2 := (self) runnableEntity.
    recoveredBlock7Value3 := (self) dataElement.
    recoveredBlock7Value4 := (self) type.
    recoveredBlock7Value5 := (recoveredBlock7Value0) rteIWriteRef: (recoveredBlock7Value1) runnable: (recoveredBlock7Value2) dataElement: (recoveredBlock7Value3) type: (recoveredBlock7Value4).
    recoveredBlock7Value5
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

