"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055fbc; bytecode file offset 0x952a9c"
!SGIlAbstractTwoDGroupSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractTwoDGroupSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2037ecdc; bytecode file offset 0xc7b5d8"
!SGIlAbstractTwoDGroupSpecialCall methodsFor: 'recovered'!
addServiceArgs: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) type.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super addServiceArgs: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) yDistribution.
    recoveredValue7 := (recoveredValue6) getImplType.
    recoveredValue8 := (recoveredValue7) asShortCType.
    (recoveredValue4) at: ('ty') put: (recoveredValue8).
    recoveredValue9 := recoveredValue3.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) yDistribution.
    recoveredValue12 := (recoveredValue11) getImplType.
    recoveredValue13 := (recoveredValue12) getDisplayLabel.
    (recoveredValue9) at: ('fty') put: (recoveredValue13).
    recoveredValue14 := recoveredValue3.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) yDistribution.
    recoveredValue17 := (recoveredValue16) maxSize.
    recoveredValue18 := (recoveredValue17) asString.
    (recoveredValue14) at: ('ylen') put: (recoveredValue18).
    recoveredValue19 := recoveredValue3.
    (recoveredValue19) at: ('ydind') put: ('').
    recoveredValue20 := recoveredValue3.
    (recoveredValue20) at: ('ydoff') put: ('').
    recoveredValue21 := recoveredValue3.
    (recoveredValue21) at: ('yddis') put: ('').
    ^recoveredValue3
! !

