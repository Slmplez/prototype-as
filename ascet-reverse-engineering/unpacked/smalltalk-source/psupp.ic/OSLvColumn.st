"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001d64; bytecode file offset 0x155d58"
!OSLvColumn methodsFor: 'recovered'!
mask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002f00; bytecode file offset 0x157170"
!OSLvColumn methodsFor: 'recovered'!
fmt
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004648; bytecode file offset 0x157f64"
!OSLvColumn methodsFor: 'recovered'!
cx
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200053a8; bytecode file offset 0x159294"
!OSLvColumn methodsFor: 'recovered'!
cchTextMax
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005e60; bytecode file offset 0x159974"
!OSLvColumn methodsFor: 'recovered'!
iSubItem
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fee4; bytecode file offset 0x165330"
!OSLvColumn methodsFor: 'recovered'!
mask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012494; bytecode file offset 0x166e00"
!OSLvColumn methodsFor: 'recovered'!
fmt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013718; bytecode file offset 0x1683c0"
!OSLvColumn methodsFor: 'recovered'!
cx: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015020; bytecode file offset 0x169290"
!OSLvColumn methodsFor: 'recovered'!
pszText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016100; bytecode file offset 0x169eb4"
!OSLvColumn methodsFor: 'recovered'!
cchTextMax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016a90; bytecode file offset 0x16a7b4"
!OSLvColumn methodsFor: 'recovered'!
iSubItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c310; bytecode file offset 0x16fe44"
!OSLvColumn methodsFor: 'recovered'!
pszText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

