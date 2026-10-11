"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003e98; bytecode file offset 0x157f64"
!OSEmrextcreatefontindirectw methodsFor: 'recovered'!
ihFont
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cde0; bytecode file offset 0x160b8c"
!OSEmrextcreatefontindirectw methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ddec; bytecode file offset 0x1617e8"
!OSEmrextcreatefontindirectw methodsFor: 'recovered'!
elfw
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSExtlogfontw.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010370; bytecode file offset 0x165330"
!OSEmrextcreatefontindirectw methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013f70; bytecode file offset 0x1683c0"
!OSEmrextcreatefontindirectw methodsFor: 'recovered'!
ihFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015290; bytecode file offset 0x169290"
!OSEmrextcreatefontindirectw methodsFor: 'recovered'!
elfw: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

