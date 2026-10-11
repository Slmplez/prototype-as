"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200050f4; bytecode file offset 0x1589a4"
!OSTbnotify methodsFor: 'recovered'!
iItem
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20006fd8; bytecode file offset 0x15aa74"
!OSTbnotify methodsFor: 'recovered'!
cchText
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ca20; bytecode file offset 0x160b8c"
!OSTbnotify methodsFor: 'recovered'!
hdr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSNmhdr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e03c; bytecode file offset 0x161938"
!OSTbnotify methodsFor: 'recovered'!
tbButton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSTbbutton.
    recoveredValue1 := (self) structAt: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010bec; bytecode file offset 0x165330"
!OSTbnotify methodsFor: 'recovered'!
hdr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014f9c; bytecode file offset 0x169290"
!OSTbnotify methodsFor: 'recovered'!
iItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016124; bytecode file offset 0x169eb4"
!OSTbnotify methodsFor: 'recovered'!
tbButton: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001871c; bytecode file offset 0x16bff0"
!OSTbnotify methodsFor: 'recovered'!
cchText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018a94; bytecode file offset 0x16c368"
!OSTbnotify methodsFor: 'recovered'!
pszText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001d54c; bytecode file offset 0x170e28"
!OSTbnotify methodsFor: 'recovered'!
pszText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (40).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

