"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000198c; bytecode file offset 0x155d58"
!OSImageNtHeaders methodsFor: 'recovered'!
Signature
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d4a4; bytecode file offset 0x160f90"
!OSImageNtHeaders methodsFor: 'recovered'!
FileHeader
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSImageFileHeader.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e294; bytecode file offset 0x161c00"
!OSImageNtHeaders methodsFor: 'recovered'!
OptionalHeader
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSImageOptionalHeader.
    recoveredValue1 := (self) structAt: (24) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001112c; bytecode file offset 0x165330"
!OSImageNtHeaders methodsFor: 'recovered'!
Signature: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012aa0; bytecode file offset 0x166e00"
!OSImageNtHeaders methodsFor: 'recovered'!
FileHeader: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200170c0; bytecode file offset 0x16afe8"
!OSImageNtHeaders methodsFor: 'recovered'!
OptionalHeader: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (24) put: (recoveredValue0).
    ^self
! !

