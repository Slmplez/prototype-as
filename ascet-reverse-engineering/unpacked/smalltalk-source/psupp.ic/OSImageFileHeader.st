"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200019ec; bytecode file offset 0x155d58"
!OSImageFileHeader methodsFor: 'recovered'!
Machine
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002740; bytecode file offset 0x1561c4"
!OSImageFileHeader methodsFor: 'recovered'!
NumberOfSections
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20002f54; bytecode file offset 0x157170"
!OSImageFileHeader methodsFor: 'recovered'!
TimeDateStamp
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004180; bytecode file offset 0x157f64"
!OSImageFileHeader methodsFor: 'recovered'!
PointerToSymbolTable
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004cc8; bytecode file offset 0x1589a4"
!OSImageFileHeader methodsFor: 'recovered'!
NumberOfSymbols
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200057f8; bytecode file offset 0x159294"
!OSImageFileHeader methodsFor: 'recovered'!
SizeOfOptionalHeader
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005a78; bytecode file offset 0x159358"
!OSImageFileHeader methodsFor: 'recovered'!
Characteristics
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (18).
    ^recoveredValue0
! !

"psupp.ic method 0x200101c0; bytecode file offset 0x165330"
!OSImageFileHeader methodsFor: 'recovered'!
Machine: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011c30; bytecode file offset 0x1657d4"
!OSImageFileHeader methodsFor: 'recovered'!
NumberOfSections: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001310c; bytecode file offset 0x166e00"
!OSImageFileHeader methodsFor: 'recovered'!
TimeDateStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013ce8; bytecode file offset 0x1683c0"
!OSImageFileHeader methodsFor: 'recovered'!
PointerToSymbolTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200151c4; bytecode file offset 0x169290"
!OSImageFileHeader methodsFor: 'recovered'!
NumberOfSymbols: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015ed8; bytecode file offset 0x169eb4"
!OSImageFileHeader methodsFor: 'recovered'!
SizeOfOptionalHeader: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200166dc; bytecode file offset 0x169f98"
!OSImageFileHeader methodsFor: 'recovered'!
Characteristics: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (18) put: (recoveredValue0).
    ^self
! !

