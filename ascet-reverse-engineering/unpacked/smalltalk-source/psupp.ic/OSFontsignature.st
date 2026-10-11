"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20021ed8; bytecode file offset 0x175784"
!OSFontsignature methodsFor: 'recovered'!
fsUsb
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (0) size: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20022228; bytecode file offset 0x175ad4"
!OSFontsignature methodsFor: 'recovered'!
fsCsb
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (16) size: (2) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023784; bytecode file offset 0x177034"
!OSFontsignature methodsFor: 'recovered'!
fsUsb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (0) put: (recoveredValue0) size: (4).
    ^self
! !

"psupp.ic method 0x20023b04; bytecode file offset 0x1773a8"
!OSFontsignature methodsFor: 'recovered'!
fsCsb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (16) put: (recoveredValue0) size: (2).
    ^self
! !

