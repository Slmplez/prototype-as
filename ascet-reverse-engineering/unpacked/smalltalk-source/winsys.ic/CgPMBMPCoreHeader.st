"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200017c8; bytecode file offset 0x7d9bc"
!CgPMBMPCoreHeader methodsFor: 'recovered'!
headerSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"winsys.ic method 0x200018c0; bytecode file offset 0x7daa8"
!CgPMBMPCoreHeader methodsFor: 'recovered'!
width
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"winsys.ic method 0x200018f8; bytecode file offset 0x7dae0"
!CgPMBMPCoreHeader methodsFor: 'recovered'!
height
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"winsys.ic method 0x20001954; bytecode file offset 0x7db30"
!CgPMBMPCoreHeader methodsFor: 'recovered'!
planes
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"winsys.ic method 0x200019a0; bytecode file offset 0x7db88"
!CgPMBMPCoreHeader methodsFor: 'recovered'!
bitCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (10).
    ^recoveredValue0
! !

"winsys.ic method 0x20004710; bytecode file offset 0x808e8"
!CgPMBMPCoreHeader methodsFor: 'recovered'!
compression
    ^0
! !

"winsys.ic method 0x20006484; bytecode file offset 0x82690"
!CgPMBMPCoreHeader methodsFor: 'recovered'!
headerSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x200065a4; bytecode file offset 0x8278c"
!CgPMBMPCoreHeader methodsFor: 'recovered'!
width: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x200065e0; bytecode file offset 0x827c8"
!CgPMBMPCoreHeader methodsFor: 'recovered'!
height: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x2000664c; bytecode file offset 0x8281c"
!CgPMBMPCoreHeader methodsFor: 'recovered'!
planes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006694; bytecode file offset 0x82864"
!CgPMBMPCoreHeader methodsFor: 'recovered'!
bitCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (10) put: (recoveredValue0).
    ^self
! !

