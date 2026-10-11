"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001cbc; bytecode file offset 0x155d58"
!OSPolytext methodsFor: 'recovered'!
x
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002a2c; bytecode file offset 0x157170"
!OSPolytext methodsFor: 'recovered'!
y
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004570; bytecode file offset 0x157f64"
!OSPolytext methodsFor: 'recovered'!
n
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20005870; bytecode file offset 0x159294"
!OSPolytext methodsFor: 'recovered'!
uiFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e1c8; bytecode file offset 0x161aa4"
!OSPolytext methodsFor: 'recovered'!
rcl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (self) structAt: (20) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001034c; bytecode file offset 0x165330"
!OSPolytext methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012b00; bytecode file offset 0x166e00"
!OSPolytext methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200146d8; bytecode file offset 0x1683c0"
!OSPolytext methodsFor: 'recovered'!
n: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001568c; bytecode file offset 0x169290"
!OSPolytext methodsFor: 'recovered'!
lpstr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015ef0; bytecode file offset 0x169eb4"
!OSPolytext methodsFor: 'recovered'!
uiFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016d78; bytecode file offset 0x16a7b4"
!OSPolytext methodsFor: 'recovered'!
rcl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018734; bytecode file offset 0x16bff0"
!OSPolytext methodsFor: 'recovered'!
pdx: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c478; bytecode file offset 0x16fe44"
!OSPolytext methodsFor: 'recovered'!
lpstr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d478; bytecode file offset 0x170d40"
!OSPolytext methodsFor: 'recovered'!
pdx
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSInt32.
    recoveredValue1 := (self) uint32At: (36).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

