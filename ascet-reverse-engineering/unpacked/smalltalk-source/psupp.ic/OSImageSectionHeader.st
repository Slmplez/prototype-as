"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004b24; bytecode file offset 0x1589a4"
!OSImageSectionHeader methodsFor: 'recovered'!
VirtualAddress
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000599c; bytecode file offset 0x159294"
!OSImageSectionHeader methodsFor: 'recovered'!
SizeOfRawData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20006040; bytecode file offset 0x159974"
!OSImageSectionHeader methodsFor: 'recovered'!
PointerToRawData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200063d8; bytecode file offset 0x159f34"
!OSImageSectionHeader methodsFor: 'recovered'!
PointerToRelocations
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006998; bytecode file offset 0x15a428"
!OSImageSectionHeader methodsFor: 'recovered'!
PointerToLinenumbers
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006cd8; bytecode file offset 0x15a780"
!OSImageSectionHeader methodsFor: 'recovered'!
NumberOfRelocations
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20006efc; bytecode file offset 0x15a7d0"
!OSImageSectionHeader methodsFor: 'recovered'!
NumberOfLinenumbers
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (34).
    ^recoveredValue0
! !

"psupp.ic method 0x200070f8; bytecode file offset 0x15aa74"
!OSImageSectionHeader methodsFor: 'recovered'!
Characteristics
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dad8; bytecode file offset 0x161514"
!OSImageSectionHeader methodsFor: 'recovered'!
Misc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSImageSectionHeaderAnon2.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200139a0; bytecode file offset 0x1683c0"
!OSImageSectionHeader methodsFor: 'recovered'!
Misc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200153bc; bytecode file offset 0x169290"
!OSImageSectionHeader methodsFor: 'recovered'!
VirtualAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015db8; bytecode file offset 0x169eb4"
!OSImageSectionHeader methodsFor: 'recovered'!
SizeOfRawData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016aa8; bytecode file offset 0x16a7b4"
!OSImageSectionHeader methodsFor: 'recovered'!
PointerToRawData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017294; bytecode file offset 0x16afe8"
!OSImageSectionHeader methodsFor: 'recovered'!
PointerToRelocations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017d98; bytecode file offset 0x16b690"
!OSImageSectionHeader methodsFor: 'recovered'!
PointerToLinenumbers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200181b8; bytecode file offset 0x16bb70"
!OSImageSectionHeader methodsFor: 'recovered'!
NumberOfRelocations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200182fc; bytecode file offset 0x16bbd0"
!OSImageSectionHeader methodsFor: 'recovered'!
NumberOfLinenumbers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (34) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018644; bytecode file offset 0x16bff0"
!OSImageSectionHeader methodsFor: 'recovered'!
Characteristics: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20021f88; bytecode file offset 0x175834"
!OSImageSectionHeader methodsFor: 'recovered'!
Name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (0) size: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023828; bytecode file offset 0x1770cc"
!OSImageSectionHeader methodsFor: 'recovered'!
Name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (0) put: (recoveredValue0) size: (8).
    ^self
! !

