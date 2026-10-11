"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000486c; bytecode file offset 0x1589a4"
!OSTcKeydown methodsFor: 'recovered'!
wVKey
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005164; bytecode file offset 0x158aa4"
!OSTcKeydown methodsFor: 'recovered'!
flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (14).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cd70; bytecode file offset 0x160b8c"
!OSTcKeydown methodsFor: 'recovered'!
hdr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSNmhdr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010f40; bytecode file offset 0x165330"
!OSTcKeydown methodsFor: 'recovered'!
hdr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200158b4; bytecode file offset 0x169290"
!OSTcKeydown methodsFor: 'recovered'!
wVKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015a88; bytecode file offset 0x169398"
!OSTcKeydown methodsFor: 'recovered'!
flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (14) put: (recoveredValue0).
    ^self
! !

