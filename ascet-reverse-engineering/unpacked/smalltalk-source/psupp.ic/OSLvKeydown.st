"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004df4; bytecode file offset 0x1589a4"
!OSLvKeydown methodsFor: 'recovered'!
wVKey
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005158; bytecode file offset 0x158aa4"
!OSLvKeydown methodsFor: 'recovered'!
flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (14).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cfd0; bytecode file offset 0x160b8c"
!OSLvKeydown methodsFor: 'recovered'!
hdr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSNmhdr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001001c; bytecode file offset 0x165330"
!OSLvKeydown methodsFor: 'recovered'!
hdr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014f6c; bytecode file offset 0x169290"
!OSLvKeydown methodsFor: 'recovered'!
wVKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015a7c; bytecode file offset 0x169398"
!OSLvKeydown methodsFor: 'recovered'!
flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (14) put: (recoveredValue0).
    ^self
! !

