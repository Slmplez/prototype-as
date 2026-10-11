"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054b34; bytecode file offset 0x952a9c"
!SGIlAbstractDistributionSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractDistributionSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2022d08c; bytecode file offset 0xb29968"
!SGIlAbstractDistributionSpecialCall methodsFor: 'recovered'!
addServiceArgs: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) type.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super addServiceArgs: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) getImplType.
    recoveredValue7 := (recoveredValue6) asShortCType.
    (recoveredValue4) at: ('t1') put: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) getImplType.
    recoveredValue11 := (recoveredValue10) getDisplayLabel.
    (recoveredValue8) at: ('ft1') put: (recoveredValue11).
    ^recoveredValue3
! !

