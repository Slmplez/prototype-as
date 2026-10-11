"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200010a4; bytecode file offset 0x155d58"
!OSByHandleFileInformation methodsFor: 'recovered'!
dwFileAttributes
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20006920; bytecode file offset 0x15a428"
!OSByHandleFileInformation methodsFor: 'recovered'!
dwVolumeSerialNumber
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006c90; bytecode file offset 0x15a780"
!OSByHandleFileInformation methodsFor: 'recovered'!
nFileSizeHigh
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20006fcc; bytecode file offset 0x15aa74"
!OSByHandleFileInformation methodsFor: 'recovered'!
nFileSizeLow
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x20007258; bytecode file offset 0x15ad48"
!OSByHandleFileInformation methodsFor: 'recovered'!
nNumberOfLinks
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x20007558; bytecode file offset 0x15b000"
!OSByHandleFileInformation methodsFor: 'recovered'!
nFileIndexHigh
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x200079a4; bytecode file offset 0x15b29c"
!OSByHandleFileInformation methodsFor: 'recovered'!
nFileIndexLow
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d564; bytecode file offset 0x160f90"
!OSByHandleFileInformation methodsFor: 'recovered'!
ftCreationTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFiletime.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000de0c; bytecode file offset 0x1617e8"
!OSByHandleFileInformation methodsFor: 'recovered'!
ftLastAccessTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFiletime.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e188; bytecode file offset 0x161aa4"
!OSByHandleFileInformation methodsFor: 'recovered'!
ftLastWriteTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFiletime.
    recoveredValue1 := (self) structAt: (20) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010394; bytecode file offset 0x165330"
!OSByHandleFileInformation methodsFor: 'recovered'!
dwFileAttributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200123b0; bytecode file offset 0x166e00"
!OSByHandleFileInformation methodsFor: 'recovered'!
ftCreationTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200154d0; bytecode file offset 0x169290"
!OSByHandleFileInformation methodsFor: 'recovered'!
ftLastAccessTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016b38; bytecode file offset 0x16a7b4"
!OSByHandleFileInformation methodsFor: 'recovered'!
ftLastWriteTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017a8c; bytecode file offset 0x16b690"
!OSByHandleFileInformation methodsFor: 'recovered'!
dwVolumeSerialNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018140; bytecode file offset 0x16bb70"
!OSByHandleFileInformation methodsFor: 'recovered'!
nFileSizeHigh: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200186e0; bytecode file offset 0x16bff0"
!OSByHandleFileInformation methodsFor: 'recovered'!
nFileSizeLow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018a88; bytecode file offset 0x16c368"
!OSByHandleFileInformation methodsFor: 'recovered'!
nNumberOfLinks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018dc4; bytecode file offset 0x16c6bc"
!OSByHandleFileInformation methodsFor: 'recovered'!
nFileIndexHigh: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019130; bytecode file offset 0x16c9d4"
!OSByHandleFileInformation methodsFor: 'recovered'!
nFileIndexLow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (48) put: (recoveredValue0).
    ^self
! !

