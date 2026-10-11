"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018980; bytecode file offset 0x92209c"
!SGProjectOptionSource methodsFor: 'recovered'!
targetSpecificOptionKey
    ^'TARGETSPECIFIC'
! !

"ASDBase.ic method 0x20018adc; bytecode file offset 0x92209c"
!SGProjectOptionSource methodsFor: 'recovered'!
arXmlConfigOptionKey
    ^'ARXMLCONFIG'
! !

"ASDBase.ic method 0x200256c4; bytecode file offset 0x92209c"
!SGProjectOptionSource methodsFor: 'recovered'!
stationOptionKey
    ^'STATION'
! !

"ASDBase.ic method 0x20054c6c; bytecode file offset 0x952a9c"
!SGProjectOptionSource methodsFor: 'recovered'!
visibleErrorInCtrl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) visibleOptionError: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200606fc; bytecode file offset 0x95cfd8"
!SGProjectOptionSource methodsFor: 'recovered'!
setARXmlConfigOptionSource
    | recoveredValue0 |
    recoveredValue0 := (self) arXmlConfigOptionKey.
    optionDialogKind := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20060708; bytecode file offset 0x95cfd8"
!SGProjectOptionSource methodsFor: 'recovered'!
setTargetSpecificOptionSource
    | recoveredValue0 |
    recoveredValue0 := (self) targetSpecificOptionKey.
    optionDialogKind := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20060714; bytecode file offset 0x95cfd8"
!SGProjectOptionSource methodsFor: 'recovered'!
setStationOptionSource
    | recoveredValue0 |
    recoveredValue0 := (self) stationOptionKey.
    optionDialogKind := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2006c194; bytecode file offset 0x9692b0"
!SGProjectOptionSource methodsFor: 'recovered'!
optionGroup
    | recoveredValue0 |
    recoveredValue0 := optionGroup.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008b6fc; bytecode file offset 0x987fcc"
!SGProjectOptionSource methodsFor: 'recovered'!
openStationOptionDialog
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := optionDialogKind.
    recoveredValue1 := (self) stationOptionKey.
    recoveredValue2 := (recoveredValue0) == (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008b708; bytecode file offset 0x987fcc"
!SGProjectOptionSource methodsFor: 'recovered'!
openARXmlConfigOptionDialog
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := optionDialogKind.
    recoveredValue1 := (self) arXmlConfigOptionKey.
    recoveredValue2 := (recoveredValue0) == (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008b714; bytecode file offset 0x987fcc"
!SGProjectOptionSource methodsFor: 'recovered'!
openTargetSpecificOptionsDialog
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := optionDialogKind.
    recoveredValue1 := (self) targetSpecificOptionKey.
    recoveredValue2 := (recoveredValue0) == (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c2f3c; bytecode file offset 0x9bfde0"
!SGProjectOptionSource methodsFor: 'recovered'!
optionGroup: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    optionGroup := recoveredValue0.
    ^self
! !

