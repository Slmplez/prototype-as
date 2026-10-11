"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008a48; bytecode file offset 0x15caa4"
!OSHicon methodsFor: 'recovered'!
destroyIcon
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DestroyIcon.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ecfc; bytecode file offset 0x163098"
!OSHicon methodsFor: 'recovered'!
getIconInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetIconInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001a888; bytecode file offset 0x16e2c4"
!OSHicon methodsFor: 'recovered'!
copyIcon
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHicon.
    recoveredValue1 := CopyIcon.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2002b9e0; bytecode file offset 0x17f288"
!OSHicon methodsFor: 'recovered'!
oleMetafilePictFromIconAndLabel: recoveredArg1 lpszSourceFile: recoveredArg2 iIconIndex: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OSHglobal.
    recoveredValue1 := OleMetafilePictFromIconAndLabel.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asOlePSZ.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) asOlePSZ.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue1) callWith: (self) with: (recoveredValue3) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := (recoveredValue0) immediate: (recoveredValue7).
    ^recoveredValue8
! !

