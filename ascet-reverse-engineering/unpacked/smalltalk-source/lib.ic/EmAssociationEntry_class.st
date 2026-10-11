"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200028bc; bytecode file offset 0x3e8e4"
!EmAssociationEntry class methodsFor: 'recovered'!
defaultLength
    ^9
! !

"lib.ic method 0x2000adb0; bytecode file offset 0x46de8"
!EmAssociationEntry class methodsFor: 'recovered'!
key: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) spaceFor: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) spaceFor: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := (self) new: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredValue5.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) allocatedLength.
    (recoveredValue7) usedLength: (recoveredValue9).
    recoveredValue10 := recoveredValue5.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) key: (recoveredValue11).
    recoveredValue12 := recoveredValue5.
    recoveredValue13 := recoveredArg2.
    (recoveredValue12) value: (recoveredValue13).
    ^recoveredValue5
! !

