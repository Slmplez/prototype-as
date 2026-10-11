"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000cbc0; bytecode file offset 0x160b8c"
!OSImageRomHeaders methodsFor: 'recovered'!
FileHeader
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSImageFileHeader.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e158; bytecode file offset 0x161aa4"
!OSImageRomHeaders methodsFor: 'recovered'!
OptionalHeader
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSImageRomOptionalHeader.
    recoveredValue1 := (self) structAt: (20) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011000; bytecode file offset 0x165330"
!OSImageRomHeaders methodsFor: 'recovered'!
FileHeader: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200169c4; bytecode file offset 0x16a7b4"
!OSImageRomHeaders methodsFor: 'recovered'!
OptionalHeader: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (20) put: (recoveredValue0).
    ^self
! !

