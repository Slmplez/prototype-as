"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001098; bytecode file offset 0x155d58"
!OSImageTlsDirectory methodsFor: 'recovered'!
StartAddressOfRawData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003650; bytecode file offset 0x157170"
!OSImageTlsDirectory methodsFor: 'recovered'!
EndAddressOfRawData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004938; bytecode file offset 0x1589a4"
!OSImageTlsDirectory methodsFor: 'recovered'!
AddressOfCallBacks
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005978; bytecode file offset 0x159294"
!OSImageTlsDirectory methodsFor: 'recovered'!
SizeOfZeroFill
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005ddc; bytecode file offset 0x159974"
!OSImageTlsDirectory methodsFor: 'recovered'!
Characteristics
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20010778; bytecode file offset 0x165330"
!OSImageTlsDirectory methodsFor: 'recovered'!
StartAddressOfRawData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012038; bytecode file offset 0x166e00"
!OSImageTlsDirectory methodsFor: 'recovered'!
EndAddressOfRawData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013cc4; bytecode file offset 0x1683c0"
!OSImageTlsDirectory methodsFor: 'recovered'!
AddressOfIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200157f4; bytecode file offset 0x169290"
!OSImageTlsDirectory methodsFor: 'recovered'!
AddressOfCallBacks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001601c; bytecode file offset 0x169eb4"
!OSImageTlsDirectory methodsFor: 'recovered'!
SizeOfZeroFill: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016b68; bytecode file offset 0x16a7b4"
!OSImageTlsDirectory methodsFor: 'recovered'!
Characteristics: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001bfa8; bytecode file offset 0x16f8e8"
!OSImageTlsDirectory methodsFor: 'recovered'!
AddressOfIndex
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

