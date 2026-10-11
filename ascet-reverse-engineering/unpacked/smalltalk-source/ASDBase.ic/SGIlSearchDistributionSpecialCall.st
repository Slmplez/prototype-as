"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021908; bytecode file offset 0x92209c"
!SGIlSearchDistributionSpecialCall methodsFor: 'recovered'!
label
    ^'searchDistribution'
! !

"ASDBase.ic method 0x200559ec; bytecode file offset 0x952a9c"
!SGIlSearchDistributionSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) searchDistributionSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200758b4; bytecode file offset 0x9757c8"
!SGIlSearchDistributionSpecialCall methodsFor: 'recovered'!
isIleSearchDistributionSpecialCall
    ^true
! !

"ASDBase.ic method 0x20100670; bytecode file offset 0x9fcf34"
!SGIlSearchDistributionSpecialCall methodsFor: 'recovered'!
expandSpecialCall: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) receiver.
    recoveredValue3 := (recoveredValue2) type.
    recoveredValue4 := (self) hasCustomSearchResult.
    recoveredValue5 := (recoveredValue0) searchServices: (recoveredValue1) type: (recoveredValue3) hasCustomSearchResult: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20128024; bytecode file offset 0xa248f4"
!SGIlSearchDistributionSpecialCall methodsFor: 'recovered'!
serviceFullKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) receiver.
    recoveredValue2 := (recoveredValue1) type.
    recoveredValue3 := (recoveredValue2) getImplType.
    recoveredValue4 := (recoveredValue3) asShortCType.
    recoveredValue5 := (recoveredValue0) with: ('searchDistrib') with: (recoveredValue4).
    ^recoveredValue5
! !

