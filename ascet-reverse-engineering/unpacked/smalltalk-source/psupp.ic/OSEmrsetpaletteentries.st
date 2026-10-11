"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003d30; bytecode file offset 0x157f64"
!OSEmrsetpaletteentries methodsFor: 'recovered'!
ihPal
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004adc; bytecode file offset 0x1589a4"
!OSEmrsetpaletteentries methodsFor: 'recovered'!
iStart
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005654; bytecode file offset 0x159294"
!OSEmrsetpaletteentries methodsFor: 'recovered'!
cEntries
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c058; bytecode file offset 0x15fa24"
!OSEmrsetpaletteentries methodsFor: 'recovered'!
aPalEntries: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000cc80; bytecode file offset 0x160b8c"
!OSEmrsetpaletteentries methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e1b8; bytecode file offset 0x161aa4"
!OSEmrsetpaletteentries methodsFor: 'recovered'!
aPalEntries
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPaletteentry.
    recoveredValue1 := (self) arrayAt: (20) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010ea4; bytecode file offset 0x165330"
!OSEmrsetpaletteentries methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013c88; bytecode file offset 0x1683c0"
!OSEmrsetpaletteentries methodsFor: 'recovered'!
ihPal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014e28; bytecode file offset 0x169290"
!OSEmrsetpaletteentries methodsFor: 'recovered'!
iStart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200163e8; bytecode file offset 0x169eb4"
!OSEmrsetpaletteentries methodsFor: 'recovered'!
cEntries: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

