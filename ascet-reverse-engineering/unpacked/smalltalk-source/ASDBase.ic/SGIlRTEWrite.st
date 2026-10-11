"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200555f0; bytecode file offset 0x952a9c"
!SGIlRTEWrite methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rteWriteCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20229560; bytecode file offset 0xb25e5c"
!SGIlRTEWrite methodsFor: 'recovered'!
createWithArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := (self) port.
    recoveredBlock7Value2 := (self) dataElement.
    recoveredBlock7Value3 := recoveredArg1.
    recoveredBlock7Value4 := (recoveredBlock7Value3) first.
    recoveredBlock7Value5 := (self) type.
    recoveredBlock7Value6 := (recoveredBlock7Value0) rteWrite: (recoveredBlock7Value1) dataElement: (recoveredBlock7Value2) argument: (recoveredBlock7Value4) type: (recoveredBlock7Value5).
    recoveredBlock7Value6
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

