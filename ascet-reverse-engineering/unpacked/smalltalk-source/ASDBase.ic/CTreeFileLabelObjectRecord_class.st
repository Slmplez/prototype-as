"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003cba8; bytecode file offset 0x93bf94"
!CTreeFileLabelObjectRecord class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CTreeLabelObjectRecord.
    recoveredValue1 := (recoveredValue0) fixedSize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20110774; bytecode file offset 0xa0d034"
!CTreeFileLabelObjectRecord class methodsFor: 'recovered'!
create: recoveredArg1 offset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    Offset := recoveredValue0.
    recoveredValue1 := (self) fixedSize.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue3) + (recoveredValue4).
    recoveredValue6 := (recoveredValue5) + (1).
    recoveredValue7 := (self) new: (recoveredValue6).
    ^recoveredValue7
! !

