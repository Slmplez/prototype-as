"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015e84; bytecode file offset 0x92209c"
!EtasHTMLPopupStruct class methodsFor: 'recovered'!
members
    ^#('cbStruct' 'hinst' 'idString' 'pszText' 'pt' 'clrForeground' 'clrBackground' 'rcMargins' 'pszFont')
! !

"ASDBase.ic method 0x20080348; bytecode file offset 0x97cc04"
!EtasHTMLPopupStruct class methodsFor: 'recovered'!
fixedSize
    ^52
! !

"ASDBase.ic method 0x2008da2c; bytecode file offset 0x98a2e4"
!EtasHTMLPopupStruct class methodsFor: 'recovered'!
initializeAfterLoad
    (self) fixedSize: (52).
    ^self
! !

"ASDBase.ic method 0x20147420; bytecode file offset 0xa43ce4"
!EtasHTMLPopupStruct class methodsFor: 'recovered'!
createForText: recoveredArg1 at: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new: (1).
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) pszText: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) pt: (recoveredValue5).
    ^recoveredValue0
! !

