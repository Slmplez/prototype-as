"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200010e0; bytecode file offset 0x155d58"
!OSLogpalette methodsFor: 'recovered'!
palVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002770; bytecode file offset 0x1561c4"
!OSLogpalette methodsFor: 'recovered'!
palNumEntries
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c138; bytecode file offset 0x15fa24"
!OSLogpalette methodsFor: 'recovered'!
palPalEntry: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000d654; bytecode file offset 0x160f90"
!OSLogpalette methodsFor: 'recovered'!
palPalEntry
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPaletteentry.
    recoveredValue1 := (self) arrayAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010460; bytecode file offset 0x165330"
!OSLogpalette methodsFor: 'recovered'!
palVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011c3c; bytecode file offset 0x1657d4"
!OSLogpalette methodsFor: 'recovered'!
palNumEntries: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001a990; bytecode file offset 0x16e2c4"
!OSLogpalette methodsFor: 'recovered'!
createPalette
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHpalette.
    recoveredValue1 := CreatePalette.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

