"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001dc4; bytecode file offset 0x155d58"
!OSQueryServiceConfig methodsFor: 'recovered'!
dwServiceType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003338; bytecode file offset 0x157170"
!OSQueryServiceConfig methodsFor: 'recovered'!
dwStartType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004510; bytecode file offset 0x157f64"
!OSQueryServiceConfig methodsFor: 'recovered'!
dwErrorControl
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20005efc; bytecode file offset 0x159974"
!OSQueryServiceConfig methodsFor: 'recovered'!
dwTagId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20011810; bytecode file offset 0x165330"
!OSQueryServiceConfig methodsFor: 'recovered'!
dwServiceType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012410; bytecode file offset 0x166e00"
!OSQueryServiceConfig methodsFor: 'recovered'!
dwStartType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014624; bytecode file offset 0x1683c0"
!OSQueryServiceConfig methodsFor: 'recovered'!
dwErrorControl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014ea0; bytecode file offset 0x169290"
!OSQueryServiceConfig methodsFor: 'recovered'!
lpBinaryPathName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015b78; bytecode file offset 0x169eb4"
!OSQueryServiceConfig methodsFor: 'recovered'!
lpLoadOrderGroup: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016850; bytecode file offset 0x16a7b4"
!OSQueryServiceConfig methodsFor: 'recovered'!
dwTagId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017090; bytecode file offset 0x16afe8"
!OSQueryServiceConfig methodsFor: 'recovered'!
lpDependencies: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017d2c; bytecode file offset 0x16b690"
!OSQueryServiceConfig methodsFor: 'recovered'!
lpServiceStartName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017ec4; bytecode file offset 0x16bb70"
!OSQueryServiceConfig methodsFor: 'recovered'!
lpDisplayName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c554; bytecode file offset 0x16fe44"
!OSQueryServiceConfig methodsFor: 'recovered'!
lpBinaryPathName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c8a8; bytecode file offset 0x170238"
!OSQueryServiceConfig methodsFor: 'recovered'!
lpLoadOrderGroup
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cd70; bytecode file offset 0x170728"
!OSQueryServiceConfig methodsFor: 'recovered'!
lpDependencies
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cf68; bytecode file offset 0x170948"
!OSQueryServiceConfig methodsFor: 'recovered'!
lpServiceStartName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (28).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d190; bytecode file offset 0x170b20"
!OSQueryServiceConfig methodsFor: 'recovered'!
lpDisplayName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (32).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

