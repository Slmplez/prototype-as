"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001014; bytecode file offset 0x155d58"
!OSExtlogpen methodsFor: 'recovered'!
elpPenStyle
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002a98; bytecode file offset 0x157170"
!OSExtlogpen methodsFor: 'recovered'!
elpWidth
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004438; bytecode file offset 0x157f64"
!OSExtlogpen methodsFor: 'recovered'!
elpBrushStyle
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200050c4; bytecode file offset 0x1589a4"
!OSExtlogpen methodsFor: 'recovered'!
elpColor
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005690; bytecode file offset 0x159294"
!OSExtlogpen methodsFor: 'recovered'!
elpHatch
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20006004; bytecode file offset 0x159974"
!OSExtlogpen methodsFor: 'recovered'!
elpNumEntries
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000bf48; bytecode file offset 0x15fa24"
!OSExtlogpen methodsFor: 'recovered'!
elpStyleEntry: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000e344; bytecode file offset 0x161c00"
!OSExtlogpen methodsFor: 'recovered'!
elpStyleEntry
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (24) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011870; bytecode file offset 0x165330"
!OSExtlogpen methodsFor: 'recovered'!
elpPenStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013178; bytecode file offset 0x166e00"
!OSExtlogpen methodsFor: 'recovered'!
elpWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001463c; bytecode file offset 0x1683c0"
!OSExtlogpen methodsFor: 'recovered'!
elpBrushStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014d08; bytecode file offset 0x169290"
!OSExtlogpen methodsFor: 'recovered'!
elpColor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016040; bytecode file offset 0x169eb4"
!OSExtlogpen methodsFor: 'recovered'!
elpHatch: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016a24; bytecode file offset 0x16a7b4"
!OSExtlogpen methodsFor: 'recovered'!
elpNumEntries: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

