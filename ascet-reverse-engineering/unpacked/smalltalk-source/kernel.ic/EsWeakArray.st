"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20007624; bytecode file offset 0x52538"
!EsWeakArray methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000a13c; bytecode file offset 0x55054"
!EsWeakArray methodsFor: 'recovered'!
finalizedSlot: recoveredArg1 removedObject: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := owner.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) instSize.
    recoveredValue4 := (recoveredValue1) - (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue0) finalizedSlot: (recoveredValue4) removedObject: (recoveredValue5).
    ^recoveredValue6
! !

