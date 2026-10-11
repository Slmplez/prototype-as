"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200040c0; bytecode file offset 0x157f64"
!OSRpcClientInformation1 methodsFor: 'recovered'!
Privilege
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004bb4; bytecode file offset 0x1589a4"
!OSRpcClientInformation1 methodsFor: 'recovered'!
AuthFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200106b8; bytecode file offset 0x165330"
!OSRpcClientInformation1 methodsFor: 'recovered'!
UserName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012e54; bytecode file offset 0x166e00"
!OSRpcClientInformation1 methodsFor: 'recovered'!
ComputerName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200140c0; bytecode file offset 0x1683c0"
!OSRpcClientInformation1 methodsFor: 'recovered'!
Privilege: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014e88; bytecode file offset 0x169290"
!OSRpcClientInformation1 methodsFor: 'recovered'!
AuthFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b180; bytecode file offset 0x16ea70"
!OSRpcClientInformation1 methodsFor: 'recovered'!
UserName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b63c; bytecode file offset 0x16f1fc"
!OSRpcClientInformation1 methodsFor: 'recovered'!
ComputerName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

