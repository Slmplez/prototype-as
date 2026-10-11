"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20025cb4; bytecode file offset 0x923928"
!SGIlSetXDistributionSpecialCall methodsFor: 'recovered'!
label
    ^'setXDistribution'
! !

"ASDBase.ic method 0x20055158; bytecode file offset 0x952a9c"
!SGIlSetXDistributionSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) setXDistributionSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c837c; bytecode file offset 0x9c4d2c"
!SGIlSetXDistributionSpecialCall methodsFor: 'recovered'!
expandSpecialCall: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) receiver.
    recoveredValue3 := (recoveredValue2) type.
    (recoveredValue0) setXDistributionServices: (recoveredValue1) type: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20128000; bytecode file offset 0xa248f4"
!SGIlSetXDistributionSpecialCall methodsFor: 'recovered'!
serviceFullKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) receiver.
    recoveredValue2 := (recoveredValue1) type.
    recoveredValue3 := (recoveredValue2) getImplType.
    recoveredValue4 := (recoveredValue3) asShortCType.
    recoveredValue5 := (recoveredValue0) with: ('setXDistrib') with: (recoveredValue4).
    ^recoveredValue5
! !

