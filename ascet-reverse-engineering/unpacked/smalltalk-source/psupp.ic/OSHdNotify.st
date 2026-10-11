"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004ab8; bytecode file offset 0x1589a4"
!OSHdNotify methodsFor: 'recovered'!
iItem
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200055d0; bytecode file offset 0x159294"
!OSHdNotify methodsFor: 'recovered'!
iButton
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cea0; bytecode file offset 0x160b8c"
!OSHdNotify methodsFor: 'recovered'!
hdr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSNmhdr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001019c; bytecode file offset 0x165330"
!OSHdNotify methodsFor: 'recovered'!
hdr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015950; bytecode file offset 0x169290"
!OSHdNotify methodsFor: 'recovered'!
iItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016208; bytecode file offset 0x169eb4"
!OSHdNotify methodsFor: 'recovered'!
iButton: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016784; bytecode file offset 0x16a7b4"
!OSHdNotify methodsFor: 'recovered'!
pitem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001cad0; bytecode file offset 0x17049c"
!OSHdNotify methodsFor: 'recovered'!
pitem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHdItem.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

