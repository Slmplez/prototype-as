"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20011060; bytecode file offset 0x165330"
!OSRemoteNameInfo methodsFor: 'recovered'!
lpUniversalName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012c50; bytecode file offset 0x166e00"
!OSRemoteNameInfo methodsFor: 'recovered'!
lpConnectionName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001424c; bytecode file offset 0x1683c0"
!OSRemoteNameInfo methodsFor: 'recovered'!
lpRemainingPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ae24; bytecode file offset 0x16ea70"
!OSRemoteNameInfo methodsFor: 'recovered'!
lpUniversalName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b8a8; bytecode file offset 0x16f1fc"
!OSRemoteNameInfo methodsFor: 'recovered'!
lpConnectionName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bf94; bytecode file offset 0x16f8e8"
!OSRemoteNameInfo methodsFor: 'recovered'!
lpRemainingPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

