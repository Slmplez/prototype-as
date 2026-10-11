"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000c0b8; bytecode file offset 0x15fa24"
!OSBitmapcoreinfo methodsFor: 'recovered'!
bmciColors: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000cc10; bytecode file offset 0x160b8c"
!OSBitmapcoreinfo methodsFor: 'recovered'!
bmciHeader
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSBitmapcoreheader.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000deec; bytecode file offset 0x1617e8"
!OSBitmapcoreinfo methodsFor: 'recovered'!
bmciColors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRgbtriple.
    recoveredValue1 := (self) arrayAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ff5c; bytecode file offset 0x165330"
!OSBitmapcoreinfo methodsFor: 'recovered'!
bmciHeader: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

