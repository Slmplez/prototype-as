"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003f34; bytecode file offset 0x157f64"
!OSEmrcreatebrushindirect methodsFor: 'recovered'!
ihBrush
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cab0; bytecode file offset 0x160b8c"
!OSEmrcreatebrushindirect methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000df1c; bytecode file offset 0x1617e8"
!OSEmrcreatebrushindirect methodsFor: 'recovered'!
lb
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLogbrush.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fe3c; bytecode file offset 0x165330"
!OSEmrcreatebrushindirect methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013d9c; bytecode file offset 0x1683c0"
!OSEmrcreatebrushindirect methodsFor: 'recovered'!
ihBrush: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014ce4; bytecode file offset 0x169290"
!OSEmrcreatebrushindirect methodsFor: 'recovered'!
lb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

