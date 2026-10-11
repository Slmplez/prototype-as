"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002bb8; bytecode file offset 0x157170"
!OSStatstg methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20007318; bytecode file offset 0x15ad48"
!OSStatstg methodsFor: 'recovered'!
grfMode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x2000754c; bytecode file offset 0x15b000"
!OSStatstg methodsFor: 'recovered'!
grfLocksSupported
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b2b0; bytecode file offset 0x15eb84"
!OSStatstg methodsFor: 'recovered'!
grfStateBits
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (64).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b370; bytecode file offset 0x15ecb0"
!OSStatstg methodsFor: 'recovered'!
reserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (68).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d918; bytecode file offset 0x161514"
!OSStatstg methodsFor: 'recovered'!
cbSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUlargeInteger.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dfec; bytecode file offset 0x161938"
!OSStatstg methodsFor: 'recovered'!
mtime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFiletime.
    recoveredValue1 := (self) structAt: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e2f4; bytecode file offset 0x161c00"
!OSStatstg methodsFor: 'recovered'!
ctime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFiletime.
    recoveredValue1 := (self) structAt: (24) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e500; bytecode file offset 0x161e0c"
!OSStatstg methodsFor: 'recovered'!
atime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFiletime.
    recoveredValue1 := (self) structAt: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e6c0; bytecode file offset 0x161f9c"
!OSStatstg methodsFor: 'recovered'!
clsid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSClsid.
    recoveredValue1 := (self) structAt: (48) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001148c; bytecode file offset 0x165330"
!OSStatstg methodsFor: 'recovered'!
pwcsName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013418; bytecode file offset 0x166e00"
!OSStatstg methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200147e0; bytecode file offset 0x1683c0"
!OSStatstg methodsFor: 'recovered'!
cbSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015e18; bytecode file offset 0x169eb4"
!OSStatstg methodsFor: 'recovered'!
mtime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017618; bytecode file offset 0x16afe8"
!OSStatstg methodsFor: 'recovered'!
ctime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018050; bytecode file offset 0x16bb70"
!OSStatstg methodsFor: 'recovered'!
atime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018a64; bytecode file offset 0x16c368"
!OSStatstg methodsFor: 'recovered'!
grfMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018bd8; bytecode file offset 0x16c6bc"
!OSStatstg methodsFor: 'recovered'!
grfLocksSupported: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200190ac; bytecode file offset 0x16c9d4"
!OSStatstg methodsFor: 'recovered'!
clsid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b16c; bytecode file offset 0x16ea70"
!OSStatstg methodsFor: 'recovered'!
pwcsName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSOleStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001fa88; bytecode file offset 0x173428"
!OSStatstg methodsFor: 'recovered'!
grfStateBits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (64) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fca8; bytecode file offset 0x1735ac"
!OSStatstg methodsFor: 'recovered'!
reserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (68) put: (recoveredValue0).
    ^self
! !

