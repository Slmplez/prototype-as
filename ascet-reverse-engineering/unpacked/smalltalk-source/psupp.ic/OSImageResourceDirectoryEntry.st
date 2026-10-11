"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200019e0; bytecode file offset 0x155d58"
!OSImageResourceDirectoryEntry methodsFor: 'recovered'!
Name
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20001cf8; bytecode file offset 0x155d58"
!OSImageResourceDirectoryEntry methodsFor: 'recovered'!
Id
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002a14; bytecode file offset 0x157170"
!OSImageResourceDirectoryEntry methodsFor: 'recovered'!
OffsetToData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200101d8; bytecode file offset 0x165330"
!OSImageResourceDirectoryEntry methodsFor: 'recovered'!
Name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20010a60; bytecode file offset 0x165330"
!OSImageResourceDirectoryEntry methodsFor: 'recovered'!
Id: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012284; bytecode file offset 0x166e00"
!OSImageResourceDirectoryEntry methodsFor: 'recovered'!
OffsetToData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20026ea4; bytecode file offset 0x17a750"
!OSImageResourceDirectoryEntry methodsFor: 'recovered'!
OffsetToDirectory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (0) bitWidth: (31).
    ^recoveredValue1
! !

"psupp.ic method 0x20026eb4; bytecode file offset 0x17a750"
!OSImageResourceDirectoryEntry methodsFor: 'recovered'!
NameOffset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (0) bitWidth: (31).
    ^recoveredValue1
! !

"psupp.ic method 0x20027244; bytecode file offset 0x17aaf0"
!OSImageResourceDirectoryEntry methodsFor: 'recovered'!
NameIsString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (31) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20027254; bytecode file offset 0x17aaf0"
!OSImageResourceDirectoryEntry methodsFor: 'recovered'!
DataIsDirectory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (31) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x2002d6f0; bytecode file offset 0x180fa4"
!OSImageResourceDirectoryEntry methodsFor: 'recovered'!
NameOffset: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (0) bitWidth: (31).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d704; bytecode file offset 0x180fa4"
!OSImageResourceDirectoryEntry methodsFor: 'recovered'!
OffsetToDirectory: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (0) bitWidth: (31).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002dbd0; bytecode file offset 0x181484"
!OSImageResourceDirectoryEntry methodsFor: 'recovered'!
DataIsDirectory: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (31) bitWidth: (1).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002dbe4; bytecode file offset 0x181484"
!OSImageResourceDirectoryEntry methodsFor: 'recovered'!
NameIsString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (31) bitWidth: (1).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

