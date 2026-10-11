"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054f3c; bytecode file offset 0x952a9c"
!SGIlRTEMode methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rteModeCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201e837c; bytecode file offset 0xae4c4c"
!SGIlRTEMode methodsFor: 'recovered'!
createWithArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := (self) port.
    recoveredBlock7Value2 := (self) dataElement.
    recoveredBlock7Value3 := (self) type.
    recoveredBlock7Value4 := (recoveredBlock7Value0) rteMode: (recoveredBlock7Value1) dataElement: (recoveredBlock7Value2) type: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

