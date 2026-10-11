"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001698; bytecode file offset 0x155d58"
!OSImageDebugMisc methodsFor: 'recovered'!
DataType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000359c; bytecode file offset 0x157170"
!OSImageDebugMisc methodsFor: 'recovered'!
Length
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dd24; bytecode file offset 0x1615c8"
!OSImageDebugMisc methodsFor: 'recovered'!
Unicode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (8).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000de9c; bytecode file offset 0x1617e8"
!OSImageDebugMisc methodsFor: 'recovered'!
Data
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011840; bytecode file offset 0x165330"
!OSImageDebugMisc methodsFor: 'recovered'!
DataType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012800; bytecode file offset 0x166e00"
!OSImageDebugMisc methodsFor: 'recovered'!
Length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200146f0; bytecode file offset 0x1683c0"
!OSImageDebugMisc methodsFor: 'recovered'!
Unicode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20022168; bytecode file offset 0x175a04"
!OSImageDebugMisc methodsFor: 'recovered'!
Reserved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (9) size: (3) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023a5c; bytecode file offset 0x1772f4"
!OSImageDebugMisc methodsFor: 'recovered'!
Reserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (9) put: (recoveredValue0) size: (3).
    ^self
! !

