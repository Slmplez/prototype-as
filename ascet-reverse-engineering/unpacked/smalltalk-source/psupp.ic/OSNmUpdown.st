"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004ad0; bytecode file offset 0x1589a4"
!OSNmUpdown methodsFor: 'recovered'!
iPos
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200057e0; bytecode file offset 0x159294"
!OSNmUpdown methodsFor: 'recovered'!
iDelta
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c9f0; bytecode file offset 0x160b8c"
!OSNmUpdown methodsFor: 'recovered'!
hdr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSNmhdr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011264; bytecode file offset 0x165330"
!OSNmUpdown methodsFor: 'recovered'!
hdr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015008; bytecode file offset 0x169290"
!OSNmUpdown methodsFor: 'recovered'!
iPos: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200161fc; bytecode file offset 0x169eb4"
!OSNmUpdown methodsFor: 'recovered'!
iDelta: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

