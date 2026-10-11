"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002665c; bytecode file offset 0x923928"
!SGIlGetCurrentSizeDistributionSpecialCall methodsFor: 'recovered'!
label
    ^'getCurrentSizeDistribution'
! !

"ASDBase.ic method 0x200557b8; bytecode file offset 0x952a9c"
!SGIlGetCurrentSizeDistributionSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getCurrentSizeDistributionSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200880a8; bytecode file offset 0x984bc0"
!SGIlGetCurrentSizeDistributionSpecialCall methodsFor: 'recovered'!
serviceFullKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('getCurrentSizeDistrib').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c8390; bytecode file offset 0x9c4d2c"
!SGIlGetCurrentSizeDistributionSpecialCall methodsFor: 'recovered'!
expandSpecialCall: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) receiver.
    recoveredValue3 := (recoveredValue2) type.
    (recoveredValue0) getCurrentSizeDistributionServices: (recoveredValue1) type: (recoveredValue3).
    ^self
! !

