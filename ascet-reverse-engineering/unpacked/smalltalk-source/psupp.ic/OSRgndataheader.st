"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002028; bytecode file offset 0x155d58"
!OSRgndataheader methodsFor: 'recovered'!
dwSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200031b8; bytecode file offset 0x157170"
!OSRgndataheader methodsFor: 'recovered'!
iType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000463c; bytecode file offset 0x157f64"
!OSRgndataheader methodsFor: 'recovered'!
nCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200048d8; bytecode file offset 0x1589a4"
!OSRgndataheader methodsFor: 'recovered'!
nRgnSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dffc; bytecode file offset 0x161938"
!OSRgndataheader methodsFor: 'recovered'!
rcBound
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (self) structAt: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200102e0; bytecode file offset 0x165330"
!OSRgndataheader methodsFor: 'recovered'!
dwSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012860; bytecode file offset 0x166e00"
!OSRgndataheader methodsFor: 'recovered'!
iType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200141a4; bytecode file offset 0x1683c0"
!OSRgndataheader methodsFor: 'recovered'!
nCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200151f4; bytecode file offset 0x169290"
!OSRgndataheader methodsFor: 'recovered'!
nRgnSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001625c; bytecode file offset 0x169eb4"
!OSRgndataheader methodsFor: 'recovered'!
rcBound: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (16) put: (recoveredValue0).
    ^self
! !

