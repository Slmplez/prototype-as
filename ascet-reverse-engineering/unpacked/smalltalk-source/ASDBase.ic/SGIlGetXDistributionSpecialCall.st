"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001db34; bytecode file offset 0x92209c"
!SGIlGetXDistributionSpecialCall methodsFor: 'recovered'!
label
    ^'getXDistribution'
! !

"ASDBase.ic method 0x20054948; bytecode file offset 0x952a9c"
!SGIlGetXDistributionSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getXDistributionSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c83f4; bytecode file offset 0x9c4d2c"
!SGIlGetXDistributionSpecialCall methodsFor: 'recovered'!
expandSpecialCall: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) receiver.
    recoveredValue3 := (recoveredValue2) type.
    (recoveredValue0) getXDistributionServices: (recoveredValue1) type: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20127fdc; bytecode file offset 0xa248f4"
!SGIlGetXDistributionSpecialCall methodsFor: 'recovered'!
serviceFullKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) receiver.
    recoveredValue2 := (recoveredValue1) type.
    recoveredValue3 := (recoveredValue2) getImplType.
    recoveredValue4 := (recoveredValue3) asShortCType.
    recoveredValue5 := (recoveredValue0) with: ('getXDistrib') with: (recoveredValue4).
    ^recoveredValue5
! !

