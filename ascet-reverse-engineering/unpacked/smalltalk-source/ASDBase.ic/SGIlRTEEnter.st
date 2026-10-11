"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021d4c; bytecode file offset 0x92209c"
!SGIlRTEEnter methodsFor: 'recovered'!
args
    ^#()
! !

"ASDBase.ic method 0x20055110; bytecode file offset 0x952a9c"
!SGIlRTEEnter methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rteEnter: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201a7258; bytecode file offset 0xaa3b44"
!SGIlRTEEnter methodsFor: 'recovered'!
createWithArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := (self) port.
    recoveredBlock7Value2 := (self) type.
    recoveredBlock7Value3 := (recoveredBlock7Value0) rteEnter: (recoveredBlock7Value1) type: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

