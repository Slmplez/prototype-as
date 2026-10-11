"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006914; bytecode file offset 0x908be4"
!SGCgComponentInfo class methodsFor: 'recovered'!
validFilenameTemplateParameter
    | recoveredValue0 |
    recoveredValue0 := (self) validNamingTemplateParameter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016274; bytecode file offset 0x92209c"
!SGCgComponentInfo class methodsFor: 'recovered'!
componentDatasetKey
    ^'COMPONENT.DATASET'
! !

"ASDBase.ic method 0x2001628c; bytecode file offset 0x92209c"
!SGCgComponentInfo class methodsFor: 'recovered'!
componentLibraryPathARPackageStyleKey
    ^'COMPONENT.LIBRARYPATH.ARPACKAGESTYLE'
! !

"ASDBase.ic method 0x20019e2c; bytecode file offset 0x92209c"
!SGCgComponentInfo class methodsFor: 'recovered'!
componentImplementationKey
    ^'COMPONENT.IMPLEMENTATION'
! !

"ASDBase.ic method 0x2001b608; bytecode file offset 0x92209c"
!SGCgComponentInfo class methodsFor: 'recovered'!
componentImplNameKey
    ^'COMPONENT.IMPL.NAME'
! !

"ASDBase.ic method 0x2001e5fc; bytecode file offset 0x92209c"
!SGCgComponentInfo class methodsFor: 'recovered'!
componentIdKey
    ^'COMPONENT.ID'
! !

"ASDBase.ic method 0x2001f544; bytecode file offset 0x92209c"
!SGCgComponentInfo class methodsFor: 'recovered'!
componentImplIdKey
    ^'COMPONENT.IMPL.ID'
! !

"ASDBase.ic method 0x20021b3c; bytecode file offset 0x92209c"
!SGCgComponentInfo class methodsFor: 'recovered'!
componentNameKey
    ^'COMPONENT.NAME'
! !

"ASDBase.ic method 0x20022274; bytecode file offset 0x92209c"
!SGCgComponentInfo class methodsFor: 'recovered'!
swComponentLibraryPathARPackageStyleKey
    ^'SWCOMPONENT.LIBRARYPATH.ARPACKAGESTYLE'
! !

"ASDBase.ic method 0x2002333c; bytecode file offset 0x92209c"
!SGCgComponentInfo class methodsFor: 'recovered'!
componentLibraryPathKey
    ^'COMPONENT.LIBRARYPATH'
! !

"ASDBase.ic method 0x2016e4e4; bytecode file offset 0xa6adfc"
!SGCgComponentInfo class methodsFor: 'recovered'!
validNamingTemplateParameter
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) componentNameKey.
    recoveredValue2 := (self) componentImplementationKey.
    recoveredValue3 := (self) componentImplIdKey.
    recoveredValue4 := (self) componentImplNameKey.
    recoveredValue5 := (self) componentDatasetKey.
    recoveredValue6 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

