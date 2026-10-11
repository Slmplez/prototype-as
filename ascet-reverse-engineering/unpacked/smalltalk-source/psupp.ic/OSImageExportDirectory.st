"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001284; bytecode file offset 0x155d58"
!OSImageExportDirectory methodsFor: 'recovered'!
Characteristics
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200035b4; bytecode file offset 0x157170"
!OSImageExportDirectory methodsFor: 'recovered'!
TimeDateStamp
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003c10; bytecode file offset 0x157f64"
!OSImageExportDirectory methodsFor: 'recovered'!
MajorVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004808; bytecode file offset 0x1580a0"
!OSImageExportDirectory methodsFor: 'recovered'!
MinorVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (10).
    ^recoveredValue0
! !

"psupp.ic method 0x20004ee4; bytecode file offset 0x1589a4"
!OSImageExportDirectory methodsFor: 'recovered'!
Name
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200057a4; bytecode file offset 0x159294"
!OSImageExportDirectory methodsFor: 'recovered'!
Base
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005d94; bytecode file offset 0x159974"
!OSImageExportDirectory methodsFor: 'recovered'!
NumberOfFunctions
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000645c; bytecode file offset 0x159f34"
!OSImageExportDirectory methodsFor: 'recovered'!
NumberOfNames
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20010ec8; bytecode file offset 0x165330"
!OSImageExportDirectory methodsFor: 'recovered'!
Characteristics: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012884; bytecode file offset 0x166e00"
!OSImageExportDirectory methodsFor: 'recovered'!
TimeDateStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014198; bytecode file offset 0x1683c0"
!OSImageExportDirectory methodsFor: 'recovered'!
MajorVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014c6c; bytecode file offset 0x168528"
!OSImageExportDirectory methodsFor: 'recovered'!
MinorVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (10) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015638; bytecode file offset 0x169290"
!OSImageExportDirectory methodsFor: 'recovered'!
Name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015e3c; bytecode file offset 0x169eb4"
!OSImageExportDirectory methodsFor: 'recovered'!
Base: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016a0c; bytecode file offset 0x16a7b4"
!OSImageExportDirectory methodsFor: 'recovered'!
NumberOfFunctions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001712c; bytecode file offset 0x16afe8"
!OSImageExportDirectory methodsFor: 'recovered'!
NumberOfNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017ac8; bytecode file offset 0x16b690"
!OSImageExportDirectory methodsFor: 'recovered'!
AddressOfFunctions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200182a8; bytecode file offset 0x16bb70"
!OSImageExportDirectory methodsFor: 'recovered'!
AddressOfNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001865c; bytecode file offset 0x16bff0"
!OSImageExportDirectory methodsFor: 'recovered'!
AddressOfNameOrdinals: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2002a01c; bytecode file offset 0x17d8c0"
!OSImageExportDirectory methodsFor: 'recovered'!
AddressOfFunctions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (28).
    recoveredValue2 := OSUInt32.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

"psupp.ic method 0x2002a048; bytecode file offset 0x17d904"
!OSImageExportDirectory methodsFor: 'recovered'!
AddressOfNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (32).
    recoveredValue2 := OSUInt32.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

"psupp.ic method 0x2002a08c; bytecode file offset 0x17d930"
!OSImageExportDirectory methodsFor: 'recovered'!
AddressOfNameOrdinals
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (36).
    recoveredValue2 := OSUInt16.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

