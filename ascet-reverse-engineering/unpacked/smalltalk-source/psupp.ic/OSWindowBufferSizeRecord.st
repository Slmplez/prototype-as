"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000d200; bytecode file offset 0x160b8c"
!OSWindowBufferSizeRecord methodsFor: 'recovered'!
dwSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSCoord.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200101f0; bytecode file offset 0x165330"
!OSWindowBufferSizeRecord methodsFor: 'recovered'!
dwSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

