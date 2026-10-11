"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200022ec; bytecode file offset 0x155d58"
!OSImageDataDirectory methodsFor: 'recovered'!
VirtualAddress
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000344c; bytecode file offset 0x157170"
!OSImageDataDirectory methodsFor: 'recovered'!
Size
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200116b4; bytecode file offset 0x165330"
!OSImageDataDirectory methodsFor: 'recovered'!
VirtualAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200122c0; bytecode file offset 0x166e00"
!OSImageDataDirectory methodsFor: 'recovered'!
Size: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

