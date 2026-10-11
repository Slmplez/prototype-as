"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002190; bytecode file offset 0x155d58"
!OSWin32FindData methodsFor: 'recovered'!
dwFileAttributes
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200067e8; bytecode file offset 0x15a428"
!OSWin32FindData methodsFor: 'recovered'!
nFileSizeHigh
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006c0c; bytecode file offset 0x15a780"
!OSWin32FindData methodsFor: 'recovered'!
nFileSizeLow
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20006fa8; bytecode file offset 0x15aa74"
!OSWin32FindData methodsFor: 'recovered'!
dwReserved0
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x2000739c; bytecode file offset 0x15ad48"
!OSWin32FindData methodsFor: 'recovered'!
dwReserved1
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d4f4; bytecode file offset 0x160f90"
!OSWin32FindData methodsFor: 'recovered'!
ftCreationTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFiletime.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dddc; bytecode file offset 0x1617e8"
!OSWin32FindData methodsFor: 'recovered'!
ftLastAccessTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFiletime.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e1d8; bytecode file offset 0x161aa4"
!OSWin32FindData methodsFor: 'recovered'!
ftLastWriteTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFiletime.
    recoveredValue1 := (self) structAt: (20) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010250; bytecode file offset 0x165330"
!OSWin32FindData methodsFor: 'recovered'!
dwFileAttributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001304c; bytecode file offset 0x166e00"
!OSWin32FindData methodsFor: 'recovered'!
ftCreationTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200150ec; bytecode file offset 0x169290"
!OSWin32FindData methodsFor: 'recovered'!
ftLastAccessTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200167d8; bytecode file offset 0x16a7b4"
!OSWin32FindData methodsFor: 'recovered'!
ftLastWriteTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017aec; bytecode file offset 0x16b690"
!OSWin32FindData methodsFor: 'recovered'!
nFileSizeHigh: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018170; bytecode file offset 0x16bb70"
!OSWin32FindData methodsFor: 'recovered'!
nFileSizeLow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018470; bytecode file offset 0x16bff0"
!OSWin32FindData methodsFor: 'recovered'!
dwReserved0: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018a70; bytecode file offset 0x16c368"
!OSWin32FindData methodsFor: 'recovered'!
dwReserved1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f00c; bytecode file offset 0x1728a4"
!OSWin32FindData methodsFor: 'recovered'!
cFileName
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (44) size: (260).
    ^recoveredValue0
! !

"psupp.ic method 0x2001f140; bytecode file offset 0x1729d8"
!OSWin32FindData methodsFor: 'recovered'!
cAlternateFileName
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (304) size: (14).
    ^recoveredValue0
! !

"psupp.ic method 0x2002571c; bytecode file offset 0x178fb4"
!OSWin32FindData methodsFor: 'recovered'!
cFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (44) put: (recoveredValue0) size: (260).
    ^self
! !

"psupp.ic method 0x20027abc; bytecode file offset 0x17b354"
!OSWin32FindData methodsFor: 'recovered'!
cAlternateFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (304) put: (recoveredValue0) size: (14).
    ^self
! !

