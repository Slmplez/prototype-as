"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200021d8; bytecode file offset 0x155d58"
!OSPictdesc methodsFor: 'recovered'!
cbSizeofstruct
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200037e8; bytecode file offset 0x157170"
!OSPictdesc methodsFor: 'recovered'!
picType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d858; bytecode file offset 0x161514"
!OSPictdesc methodsFor: 'recovered'!
wmf
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPictdescAnon3Anon2.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000daf8; bytecode file offset 0x161514"
!OSPictdesc methodsFor: 'recovered'!
bmp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPictdescAnon3Anon1.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dc18; bytecode file offset 0x161514"
!OSPictdesc methodsFor: 'recovered'!
icon
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPictdescAnon3Anon3.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dc78; bytecode file offset 0x161514"
!OSPictdesc methodsFor: 'recovered'!
emf
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPictdescAnon3Anon4.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011690; bytecode file offset 0x165330"
!OSPictdesc methodsFor: 'recovered'!
cbSizeofstruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012a04; bytecode file offset 0x166e00"
!OSPictdesc methodsFor: 'recovered'!
picType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013a3c; bytecode file offset 0x1683c0"
!OSPictdesc methodsFor: 'recovered'!
wmf: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013bc8; bytecode file offset 0x1683c0"
!OSPictdesc methodsFor: 'recovered'!
bmp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013bd4; bytecode file offset 0x1683c0"
!OSPictdesc methodsFor: 'recovered'!
emf: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014954; bytecode file offset 0x1683c0"
!OSPictdesc methodsFor: 'recovered'!
icon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

