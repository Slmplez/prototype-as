"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001320; bytecode file offset 0x155d58"
!OSLinksrcdescriptor methodsFor: 'recovered'!
cbSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20005f08; bytecode file offset 0x159974"
!OSLinksrcdescriptor methodsFor: 'recovered'!
dwDrawAspect
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200072b8; bytecode file offset 0x15ad48"
!OSLinksrcdescriptor methodsFor: 'recovered'!
dwStatus
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x200076cc; bytecode file offset 0x15b000"
!OSLinksrcdescriptor methodsFor: 'recovered'!
dwFullUserTypeName
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x20007908; bytecode file offset 0x15b29c"
!OSLinksrcdescriptor methodsFor: 'recovered'!
dwSrcOfCopy
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d5f4; bytecode file offset 0x160f90"
!OSLinksrcdescriptor methodsFor: 'recovered'!
clsid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSClsid.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e284; bytecode file offset 0x161c00"
!OSLinksrcdescriptor methodsFor: 'recovered'!
sizel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSizel.
    recoveredValue1 := (self) structAt: (24) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e530; bytecode file offset 0x161e0c"
!OSLinksrcdescriptor methodsFor: 'recovered'!
pointl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPointl.
    recoveredValue1 := (self) structAt: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200104fc; bytecode file offset 0x165330"
!OSLinksrcdescriptor methodsFor: 'recovered'!
cbSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001208c; bytecode file offset 0x166e00"
!OSLinksrcdescriptor methodsFor: 'recovered'!
clsid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016bd4; bytecode file offset 0x16a7b4"
!OSLinksrcdescriptor methodsFor: 'recovered'!
dwDrawAspect: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200174bc; bytecode file offset 0x16afe8"
!OSLinksrcdescriptor methodsFor: 'recovered'!
sizel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200181e8; bytecode file offset 0x16bb70"
!OSLinksrcdescriptor methodsFor: 'recovered'!
pointl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200189c8; bytecode file offset 0x16c368"
!OSLinksrcdescriptor methodsFor: 'recovered'!
dwStatus: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018be4; bytecode file offset 0x16c6bc"
!OSLinksrcdescriptor methodsFor: 'recovered'!
dwFullUserTypeName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200190d0; bytecode file offset 0x16c9d4"
!OSLinksrcdescriptor methodsFor: 'recovered'!
dwSrcOfCopy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (48) put: (recoveredValue0).
    ^self
! !

