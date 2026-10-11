"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20011774; bytecode file offset 0x165330"
!OSTbsaveparams methodsFor: 'recovered'!
hkr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200127f4; bytecode file offset 0x166e00"
!OSTbsaveparams methodsFor: 'recovered'!
pszSubKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014348; bytecode file offset 0x1683c0"
!OSTbsaveparams methodsFor: 'recovered'!
pszValueName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b158; bytecode file offset 0x16ea70"
!OSTbsaveparams methodsFor: 'recovered'!
hkr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHkey.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b240; bytecode file offset 0x16f1fc"
!OSTbsaveparams methodsFor: 'recovered'!
pszSubKey
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bbac; bytecode file offset 0x16f8e8"
!OSTbsaveparams methodsFor: 'recovered'!
pszValueName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

