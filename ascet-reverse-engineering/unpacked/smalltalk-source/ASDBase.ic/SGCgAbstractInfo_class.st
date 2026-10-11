"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015fbc; bytecode file offset 0x92209c"
!SGCgAbstractInfo class methodsFor: 'recovered'!
projectNameKey
    ^'PROJECT.NAME'
! !

"ASDBase.ic method 0x20018548; bytecode file offset 0x92209c"
!SGCgAbstractInfo class methodsFor: 'recovered'!
projectImplNameKey
    ^'PROJECT.IMPL.NAME'
! !

"ASDBase.ic method 0x20019b20; bytecode file offset 0x92209c"
!SGCgAbstractInfo class methodsFor: 'recovered'!
swComponentLibraryPathKey
    ^'SWCOMPONENT.LIBRARYPATH'
! !

"ASDBase.ic method 0x2001a00c; bytecode file offset 0x92209c"
!SGCgAbstractInfo class methodsFor: 'recovered'!
swComponentImplIdKey
    ^'SWCOMPONENT.IMPL.ID'
! !

"ASDBase.ic method 0x2001f334; bytecode file offset 0x92209c"
!SGCgAbstractInfo class methodsFor: 'recovered'!
projectLibraryPathKey
    ^'PROJECT.LIBRARYPATH'
! !

"ASDBase.ic method 0x2001f88c; bytecode file offset 0x92209c"
!SGCgAbstractInfo class methodsFor: 'recovered'!
projectIdKey
    ^'PROJECT.ID'
! !

"ASDBase.ic method 0x200200cc; bytecode file offset 0x92209c"
!SGCgAbstractInfo class methodsFor: 'recovered'!
swComponentIdKey
    ^'SWCOMPONENT.ID'
! !

"ASDBase.ic method 0x20021f74; bytecode file offset 0x92209c"
!SGCgAbstractInfo class methodsFor: 'recovered'!
swComponentImplNameKey
    ^'SWCOMPONENT.IMPL.NAME'
! !

"ASDBase.ic method 0x200250e8; bytecode file offset 0x92209c"
!SGCgAbstractInfo class methodsFor: 'recovered'!
swComponentNameKey
    ^'SWCOMPONENT.NAME'
! !

"ASDBase.ic method 0x200253e8; bytecode file offset 0x92209c"
!SGCgAbstractInfo class methodsFor: 'recovered'!
projectImplIdKey
    ^'PROJECT.IMPL.ID'
! !

"ASDBase.ic method 0x2002fc04; bytecode file offset 0x934580"
!SGCgAbstractInfo class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20304518; bytecode file offset 0xc00e60"
!SGCgAbstractInfo class methodsFor: 'recovered'!
validFilenameTemplateParameter
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) projectIdKey.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) projectNameKey.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) projectImplIdKey.
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) projectImplNameKey.
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) swComponentIdKey.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) swComponentNameKey.
    (recoveredValue12) add: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) swComponentImplIdKey.
    (recoveredValue14) add: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) swComponentImplNameKey.
    (recoveredValue16) add: (recoveredValue17).
    ^recoveredValue1
! !

