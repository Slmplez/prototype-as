"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200016bc; bytecode file offset 0x155d58"
!OSSerialkeys methodsFor: 'recovered'!
cbSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200031c4; bytecode file offset 0x157170"
!OSSerialkeys methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20005798; bytecode file offset 0x159294"
!OSSerialkeys methodsFor: 'recovered'!
iBaudRate
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005bb4; bytecode file offset 0x159974"
!OSSerialkeys methodsFor: 'recovered'!
iPortState
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006444; bytecode file offset 0x159f34"
!OSSerialkeys methodsFor: 'recovered'!
iActive
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x200108bc; bytecode file offset 0x165330"
!OSSerialkeys methodsFor: 'recovered'!
cbSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001244c; bytecode file offset 0x166e00"
!OSSerialkeys methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013a48; bytecode file offset 0x1683c0"
!OSSerialkeys methodsFor: 'recovered'!
lpszActivePort: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200156d4; bytecode file offset 0x169290"
!OSSerialkeys methodsFor: 'recovered'!
lpszPort: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015b3c; bytecode file offset 0x169eb4"
!OSSerialkeys methodsFor: 'recovered'!
iBaudRate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016afc; bytecode file offset 0x16a7b4"
!OSSerialkeys methodsFor: 'recovered'!
iPortState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200176c0; bytecode file offset 0x16afe8"
!OSSerialkeys methodsFor: 'recovered'!
iActive: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b9cc; bytecode file offset 0x16f8e8"
!OSSerialkeys methodsFor: 'recovered'!
lpszActivePort
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c43c; bytecode file offset 0x16fe44"
!OSSerialkeys methodsFor: 'recovered'!
lpszPort
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

