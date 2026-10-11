"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002f84; bytecode file offset 0x157170"
!OSMidihdr methodsFor: 'recovered'!
dwBufferLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004660; bytecode file offset 0x157f64"
!OSMidihdr methodsFor: 'recovered'!
dwBytesRecorded
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004fa4; bytecode file offset 0x1589a4"
!OSMidihdr methodsFor: 'recovered'!
dwUser
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005738; bytecode file offset 0x159294"
!OSMidihdr methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20006240; bytecode file offset 0x159f34"
!OSMidihdr methodsFor: 'recovered'!
reserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x200068c0; bytecode file offset 0x15a428"
!OSMidihdr methodsFor: 'recovered'!
dwOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20011900; bytecode file offset 0x165330"
!OSMidihdr methodsFor: 'recovered'!
lpData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012c5c; bytecode file offset 0x166e00"
!OSMidihdr methodsFor: 'recovered'!
dwBufferLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014870; bytecode file offset 0x1683c0"
!OSMidihdr methodsFor: 'recovered'!
dwBytesRecorded: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014fe4; bytecode file offset 0x169290"
!OSMidihdr methodsFor: 'recovered'!
dwUser: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016244; bytecode file offset 0x169eb4"
!OSMidihdr methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016904; bytecode file offset 0x16a7b4"
!OSMidihdr methodsFor: 'recovered'!
lpNext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001715c; bytecode file offset 0x16afe8"
!OSMidihdr methodsFor: 'recovered'!
reserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017ab0; bytecode file offset 0x16b690"
!OSMidihdr methodsFor: 'recovered'!
dwOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001aff0; bytecode file offset 0x16ea70"
!OSMidihdr methodsFor: 'recovered'!
lpData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cbc0; bytecode file offset 0x17049c"
!OSMidihdr methodsFor: 'recovered'!
lpNext
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSMidihdr.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200223d8; bytecode file offset 0x175c74"
!OSMidihdr methodsFor: 'recovered'!
dwReserved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (32) size: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023cd0; bytecode file offset 0x177568"
!OSMidihdr methodsFor: 'recovered'!
dwReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (32) put: (recoveredValue0) size: (8).
    ^self
! !

