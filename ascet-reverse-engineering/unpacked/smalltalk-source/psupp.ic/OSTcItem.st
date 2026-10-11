"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002340; bytecode file offset 0x155d58"
!OSTcItem methodsFor: 'recovered'!
mask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002d20; bytecode file offset 0x157170"
!OSTcItem methodsFor: 'recovered'!
lpReserved1
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004108; bytecode file offset 0x157f64"
!OSTcItem methodsFor: 'recovered'!
lpReserved2
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20005930; bytecode file offset 0x159294"
!OSTcItem methodsFor: 'recovered'!
cchTextMax
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20006058; bytecode file offset 0x159974"
!OSTcItem methodsFor: 'recovered'!
iImage
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006360; bytecode file offset 0x159f34"
!OSTcItem methodsFor: 'recovered'!
lParam
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20010ac0; bytecode file offset 0x165330"
!OSTcItem methodsFor: 'recovered'!
mask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200125a8; bytecode file offset 0x166e00"
!OSTcItem methodsFor: 'recovered'!
lpReserved1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013a78; bytecode file offset 0x1683c0"
!OSTcItem methodsFor: 'recovered'!
lpReserved2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014d20; bytecode file offset 0x169290"
!OSTcItem methodsFor: 'recovered'!
pszText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015c80; bytecode file offset 0x169eb4"
!OSTcItem methodsFor: 'recovered'!
cchTextMax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016cac; bytecode file offset 0x16a7b4"
!OSTcItem methodsFor: 'recovered'!
iImage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001745c; bytecode file offset 0x16afe8"
!OSTcItem methodsFor: 'recovered'!
lParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c0cc; bytecode file offset 0x16fe44"
!OSTcItem methodsFor: 'recovered'!
pszText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

