"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000fea8; bytecode file offset 0x165330"
!OSPropsheetheaderwAnon5 methodsFor: 'recovered'!
pszIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200113d8; bytecode file offset 0x165330"
!OSPropsheetheaderwAnon5 methodsFor: 'recovered'!
hIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001aab4; bytecode file offset 0x16ea70"
!OSPropsheetheaderwAnon5 methodsFor: 'recovered'!
pszIcon
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001af14; bytecode file offset 0x16ea70"
!OSPropsheetheaderwAnon5 methodsFor: 'recovered'!
hIcon
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHicon.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

