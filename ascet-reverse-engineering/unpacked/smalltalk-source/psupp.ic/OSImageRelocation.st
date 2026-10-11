"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000141c; bytecode file offset 0x155d58"
!OSImageRelocation methodsFor: 'recovered'!
RelocCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20001ac4; bytecode file offset 0x155d58"
!OSImageRelocation methodsFor: 'recovered'!
VirtualAddress
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003710; bytecode file offset 0x157170"
!OSImageRelocation methodsFor: 'recovered'!
SymbolTableIndex
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003aa8; bytecode file offset 0x157f64"
!OSImageRelocation methodsFor: 'recovered'!
Type
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200104cc; bytecode file offset 0x165330"
!OSImageRelocation methodsFor: 'recovered'!
RelocCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20010b20; bytecode file offset 0x165330"
!OSImageRelocation methodsFor: 'recovered'!
VirtualAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001217c; bytecode file offset 0x166e00"
!OSImageRelocation methodsFor: 'recovered'!
SymbolTableIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014aec; bytecode file offset 0x1683c0"
!OSImageRelocation methodsFor: 'recovered'!
Type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

