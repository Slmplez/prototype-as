"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002cf0; bytecode file offset 0x157170"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
DefaultBlockSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003d60; bytecode file offset 0x157f64"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
MaximumBlockSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004a4c; bytecode file offset 0x1589a4"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
MinimumBlockSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200053cc; bytecode file offset 0x159294"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
MaximumPartitionCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005bd8; bytecode file offset 0x159974"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
FeaturesLow
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006654; bytecode file offset 0x159f34"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
FeaturesHigh
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x200069d4; bytecode file offset 0x15a428"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
EOTWarningZoneSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d330; bytecode file offset 0x160c04"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
ECC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (0).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d384; bytecode file offset 0x160c28"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
Compression
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (1).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d41c; bytecode file offset 0x160cc0"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
DataPadding
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (2).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d44c; bytecode file offset 0x160ce4"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
ReportSetmarks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (3).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x200104e4; bytecode file offset 0x165330"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
ECC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011b34; bytecode file offset 0x16542c"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
Compression: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (1) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011d2c; bytecode file offset 0x1657d4"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
DataPadding: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011ffc; bytecode file offset 0x1658ac"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
ReportSetmarks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (3) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200125c0; bytecode file offset 0x166e00"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
DefaultBlockSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013958; bytecode file offset 0x1683c0"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
MaximumBlockSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015698; bytecode file offset 0x169290"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
MinimumBlockSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200162ec; bytecode file offset 0x169eb4"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
MaximumPartitionCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016a48; bytecode file offset 0x16a7b4"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
FeaturesLow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200175a0; bytecode file offset 0x16afe8"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
FeaturesHigh: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017de0; bytecode file offset 0x16b690"
!OSTapeGetDriveParameters methodsFor: 'recovered'!
EOTWarningZoneSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

