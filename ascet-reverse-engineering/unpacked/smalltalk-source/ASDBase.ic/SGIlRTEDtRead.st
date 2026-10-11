"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017ef4; bytecode file offset 0x92209c"
!SGIlRTEDtRead methodsFor: 'recovered'!
args
    ^#()
! !

"ASDBase.ic method 0x200558e4; bytecode file offset 0x952a9c"
!SGIlRTEDtRead methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rteDtRead: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201e8334; bytecode file offset 0xae4c4c"
!SGIlRTEDtRead methodsFor: 'recovered'!
createWithArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := (self) port.
    recoveredBlock7Value2 := (self) runnableEntity.
    recoveredBlock7Value3 := (self) type.
    recoveredBlock7Value4 := (recoveredBlock7Value0) rteDtRead: (recoveredBlock7Value1) runnable: (recoveredBlock7Value2) type: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

