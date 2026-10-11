"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d660; bytecode file offset 0x92209c"
!SGIlSetCurrentSizeDistributionSpecialCall methodsFor: 'recovered'!
label
    ^'setCurrentSizeDistribution'
! !

"ASDBase.ic method 0x20055614; bytecode file offset 0x952a9c"
!SGIlSetCurrentSizeDistributionSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) setCurrentSizeDistributionSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200881fc; bytecode file offset 0x984bc0"
!SGIlSetCurrentSizeDistributionSpecialCall methodsFor: 'recovered'!
serviceFullKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('setCurrentSizeDistrib').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c83a4; bytecode file offset 0x9c4d2c"
!SGIlSetCurrentSizeDistributionSpecialCall methodsFor: 'recovered'!
expandSpecialCall: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) receiver.
    recoveredValue3 := (recoveredValue2) type.
    (recoveredValue0) setCurrentSizeDistributionServices: (recoveredValue1) type: (recoveredValue3).
    ^self
! !

