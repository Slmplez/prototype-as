"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200013ec; bytecode file offset 0x155d58"
!OSHdItem methodsFor: 'recovered'!
mask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200031e8; bytecode file offset 0x157170"
!OSHdItem methodsFor: 'recovered'!
cxy
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000545c; bytecode file offset 0x159294"
!OSHdItem methodsFor: 'recovered'!
cchTextMax
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005f8c; bytecode file offset 0x159974"
!OSHdItem methodsFor: 'recovered'!
fmt
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200064b0; bytecode file offset 0x159f34"
!OSHdItem methodsFor: 'recovered'!
lParam
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20011120; bytecode file offset 0x165330"
!OSHdItem methodsFor: 'recovered'!
mask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012224; bytecode file offset 0x166e00"
!OSHdItem methodsFor: 'recovered'!
cxy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013b14; bytecode file offset 0x1683c0"
!OSHdItem methodsFor: 'recovered'!
pszText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015428; bytecode file offset 0x169290"
!OSHdItem methodsFor: 'recovered'!
hbm: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015bfc; bytecode file offset 0x169eb4"
!OSHdItem methodsFor: 'recovered'!
cchTextMax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200168f8; bytecode file offset 0x16a7b4"
!OSHdItem methodsFor: 'recovered'!
fmt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200172ac; bytecode file offset 0x16afe8"
!OSHdItem methodsFor: 'recovered'!
lParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001bf44; bytecode file offset 0x16f8e8"
!OSHdItem methodsFor: 'recovered'!
pszText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c464; bytecode file offset 0x16fe44"
!OSHdItem methodsFor: 'recovered'!
hbm
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHbitmap.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

