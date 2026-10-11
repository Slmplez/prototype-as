"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000cbe0; bytecode file offset 0x160b8c"
!OSEmroffsetcliprgn methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d8e8; bytecode file offset 0x161514"
!OSEmroffsetcliprgn methodsFor: 'recovered'!
ptlOffset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPointl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011234; bytecode file offset 0x165330"
!OSEmroffsetcliprgn methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013eec; bytecode file offset 0x1683c0"
!OSEmroffsetcliprgn methodsFor: 'recovered'!
ptlOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

