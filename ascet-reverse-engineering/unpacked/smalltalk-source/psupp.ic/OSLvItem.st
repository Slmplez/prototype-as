"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001e60; bytecode file offset 0x155d58"
!OSLvItem methodsFor: 'recovered'!
mask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002ffc; bytecode file offset 0x157170"
!OSLvItem methodsFor: 'recovered'!
iItem
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003d00; bytecode file offset 0x157f64"
!OSLvItem methodsFor: 'recovered'!
iSubItem
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004bfc; bytecode file offset 0x1589a4"
!OSLvItem methodsFor: 'recovered'!
state
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005420; bytecode file offset 0x159294"
!OSLvItem methodsFor: 'recovered'!
stateMask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20006294; bytecode file offset 0x159f34"
!OSLvItem methodsFor: 'recovered'!
cchTextMax
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006b3c; bytecode file offset 0x15a428"
!OSLvItem methodsFor: 'recovered'!
iImage
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006c54; bytecode file offset 0x15a780"
!OSLvItem methodsFor: 'recovered'!
lParam
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20010f28; bytecode file offset 0x165330"
!OSLvItem methodsFor: 'recovered'!
mask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200133b8; bytecode file offset 0x166e00"
!OSLvItem methodsFor: 'recovered'!
iItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013f04; bytecode file offset 0x1683c0"
!OSLvItem methodsFor: 'recovered'!
iSubItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014e34; bytecode file offset 0x169290"
!OSLvItem methodsFor: 'recovered'!
state: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200160e8; bytecode file offset 0x169eb4"
!OSLvItem methodsFor: 'recovered'!
stateMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016ed4; bytecode file offset 0x16a7b4"
!OSLvItem methodsFor: 'recovered'!
pszText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200171f8; bytecode file offset 0x16afe8"
!OSLvItem methodsFor: 'recovered'!
cchTextMax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200178dc; bytecode file offset 0x16b690"
!OSLvItem methodsFor: 'recovered'!
iImage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200182b4; bytecode file offset 0x16bb70"
!OSLvItem methodsFor: 'recovered'!
lParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c9b8; bytecode file offset 0x17049c"
!OSLvItem methodsFor: 'recovered'!
pszText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

