"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004be4; bytecode file offset 0x1589a4"
!OSPshnotify methodsFor: 'recovered'!
lParam
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ca50; bytecode file offset 0x160b8c"
!OSPshnotify methodsFor: 'recovered'!
hdr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSNmhdr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010ca0; bytecode file offset 0x165330"
!OSPshnotify methodsFor: 'recovered'!
hdr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200159b0; bytecode file offset 0x169290"
!OSPshnotify methodsFor: 'recovered'!
lParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

