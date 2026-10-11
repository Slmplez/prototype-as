"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20041f6c; bytecode file offset 0x93e8fc"
!TGLoadObject methodsFor: 'recovered'!
loadable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loadables.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042020; bytecode file offset 0x93e8fc"
!TGLoadObject methodsFor: 'recovered'!
noOfTransputers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loadables.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006d61c; bytecode file offset 0x96a390"
!TGLoadObject methodsFor: 'recovered'!
loadables
    | recoveredValue0 |
    recoveredValue0 := loadables.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e050; bytecode file offset 0x96a9dc"
!TGLoadObject methodsFor: 'recovered'!
configurationCode
    | recoveredValue0 |
    recoveredValue0 := configurationCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e2c4; bytecode file offset 0x96af48"
!TGLoadObject methodsFor: 'recovered'!
linkSwitchCode
    | recoveredValue0 |
    recoveredValue0 := linkSwitchCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200824e8; bytecode file offset 0x97edc4"
!TGLoadObject methodsFor: 'recovered'!
addLoadable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := loadables.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) add: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008992c; bytecode file offset 0x9861e8"
!TGLoadObject methodsFor: 'recovered'!
resetLoadables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    loadables := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200c41ac; bytecode file offset 0x9c0bf0"
!TGLoadObject methodsFor: 'recovered'!
loadables: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    loadables := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4908; bytecode file offset 0x9c11bc"
!TGLoadObject methodsFor: 'recovered'!
configurationCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configurationCode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4b7c; bytecode file offset 0x9c16b0"
!TGLoadObject methodsFor: 'recovered'!
linkSwitchCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    linkSwitchCode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fa2cc; bytecode file offset 0x9f6ba8"
!TGLoadObject methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    loadables := recoveredValue1.
    ^self
! !

