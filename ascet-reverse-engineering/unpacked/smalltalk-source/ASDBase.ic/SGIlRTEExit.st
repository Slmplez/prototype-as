"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200239f0; bytecode file offset 0x92209c"
!SGIlRTEExit methodsFor: 'recovered'!
args
    ^#()
! !

"ASDBase.ic method 0x20055c14; bytecode file offset 0x952a9c"
!SGIlRTEExit methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rteExit: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201a7278; bytecode file offset 0xaa3b44"
!SGIlRTEExit methodsFor: 'recovered'!
createWithArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := (self) port.
    recoveredBlock7Value2 := (self) type.
    recoveredBlock7Value3 := (recoveredBlock7Value0) rteExit: (recoveredBlock7Value1) type: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

