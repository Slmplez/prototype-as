"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200020f4; bytecode file offset 0x155d58"
!OSOleuilinkprops methodsFor: 'recovered'!
cbStruct
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003530; bytecode file offset 0x157170"
!OSOleuilinkprops methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200056cc; bytecode file offset 0x159294"
!OSOleuilinkprops methodsFor: 'recovered'!
lpfnHook
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005d10; bytecode file offset 0x159974"
!OSOleuilinkprops methodsFor: 'recovered'!
lCustData
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20010be0; bytecode file offset 0x165330"
!OSOleuilinkprops methodsFor: 'recovered'!
cbStruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012998; bytecode file offset 0x166e00"
!OSOleuilinkprops methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015b54; bytecode file offset 0x169eb4"
!OSOleuilinkprops methodsFor: 'recovered'!
lpfnHook: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016bf8; bytecode file offset 0x16a7b4"
!OSOleuilinkprops methodsFor: 'recovered'!
lCustData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018368; bytecode file offset 0x16bff0"
!OSOleuilinkprops methodsFor: 'recovered'!
lpOP: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001d324; bytecode file offset 0x170d40"
!OSOleuilinkprops methodsFor: 'recovered'!
lpOP
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSOleuiobjectprops.
    recoveredValue1 := (self) uint32At: (36).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20022108; bytecode file offset 0x1759c4"
!OSOleuilinkprops methodsFor: 'recovered'!
dwReserved1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (8) size: (2) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20022338; bytecode file offset 0x175bd4"
!OSOleuilinkprops methodsFor: 'recovered'!
dwReserved2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (24) size: (3) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200239c0; bytecode file offset 0x177258"
!OSOleuilinkprops methodsFor: 'recovered'!
dwReserved1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (8) put: (recoveredValue0) size: (2).
    ^self
! !

"psupp.ic method 0x20023c20; bytecode file offset 0x1774d0"
!OSOleuilinkprops methodsFor: 'recovered'!
dwReserved2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (24) put: (recoveredValue0) size: (3).
    ^self
! !

