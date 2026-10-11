"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055140; bytecode file offset 0x952a9c"
!SGIlRTEIWrite methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rteIWriteCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202295d4; bytecode file offset 0xb25ea8"
!SGIlRTEIWrite methodsFor: 'recovered'!
createWithArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := (self) port.
    recoveredBlock7Value2 := (self) runnableEntity.
    recoveredBlock7Value3 := (self) dataElement.
    recoveredBlock7Value4 := recoveredArg1.
    recoveredBlock7Value5 := (recoveredBlock7Value4) first.
    recoveredBlock7Value6 := (recoveredBlock7Value0) rteIWrite: (recoveredBlock7Value1) runnable: (recoveredBlock7Value2) dataElement: (recoveredBlock7Value3) arg: (recoveredBlock7Value5).
    recoveredBlock7Value6
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

