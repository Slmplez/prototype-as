"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003008; bytecode file offset 0x157170"
!OSTapeSetDriveParameters methodsFor: 'recovered'!
EOTWarningZoneSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d354; bytecode file offset 0x160c04"
!OSTapeSetDriveParameters methodsFor: 'recovered'!
ECC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (0).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d390; bytecode file offset 0x160c28"
!OSTapeSetDriveParameters methodsFor: 'recovered'!
Compression
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (1).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d428; bytecode file offset 0x160cc0"
!OSTapeSetDriveParameters methodsFor: 'recovered'!
DataPadding
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (2).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d440; bytecode file offset 0x160ce4"
!OSTapeSetDriveParameters methodsFor: 'recovered'!
ReportSetmarks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (3).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x200105a4; bytecode file offset 0x165330"
!OSTapeSetDriveParameters methodsFor: 'recovered'!
ECC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011b94; bytecode file offset 0x16542c"
!OSTapeSetDriveParameters methodsFor: 'recovered'!
Compression: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (1) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011bf4; bytecode file offset 0x1657d4"
!OSTapeSetDriveParameters methodsFor: 'recovered'!
DataPadding: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011fe4; bytecode file offset 0x1658ac"
!OSTapeSetDriveParameters methodsFor: 'recovered'!
ReportSetmarks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (3) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013070; bytecode file offset 0x166e00"
!OSTapeSetDriveParameters methodsFor: 'recovered'!
EOTWarningZoneSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

