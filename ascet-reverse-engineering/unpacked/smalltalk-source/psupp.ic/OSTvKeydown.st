"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004b48; bytecode file offset 0x1589a4"
!OSTvKeydown methodsFor: 'recovered'!
wVKey
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200051b8; bytecode file offset 0x158aa4"
!OSTvKeydown methodsFor: 'recovered'!
flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (14).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cf50; bytecode file offset 0x160b8c"
!OSTvKeydown methodsFor: 'recovered'!
hdr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSNmhdr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fc8c; bytecode file offset 0x165330"
!OSTvKeydown methodsFor: 'recovered'!
hdr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014e94; bytecode file offset 0x169290"
!OSTvKeydown methodsFor: 'recovered'!
wVKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015a28; bytecode file offset 0x169398"
!OSTvKeydown methodsFor: 'recovered'!
flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (14) put: (recoveredValue0).
    ^self
! !

