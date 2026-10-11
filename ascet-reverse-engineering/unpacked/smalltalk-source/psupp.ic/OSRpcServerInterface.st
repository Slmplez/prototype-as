"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000219c; bytecode file offset 0x155d58"
!OSRpcServerInterface methodsFor: 'recovered'!
Length
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20007884; bytecode file offset 0x15b29c"
!OSRpcServerInterface methodsFor: 'recovered'!
RpcProtseqEndpointCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x20007d20; bytecode file offset 0x15b654"
!OSRpcServerInterface methodsFor: 'recovered'!
DefaultManagerEpv
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (56).
    ^recoveredValue0
! !

"psupp.ic method 0x20007e70; bytecode file offset 0x15b7d4"
!OSRpcServerInterface methodsFor: 'recovered'!
InterpreterInfo
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (60).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d6d4; bytecode file offset 0x160f90"
!OSRpcServerInterface methodsFor: 'recovered'!
InterfaceId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRpcSyntaxIdentifier.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e354; bytecode file offset 0x161c00"
!OSRpcServerInterface methodsFor: 'recovered'!
TransferSyntax
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRpcSyntaxIdentifier.
    recoveredValue1 := (self) structAt: (24) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010a78; bytecode file offset 0x165330"
!OSRpcServerInterface methodsFor: 'recovered'!
Length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001220c; bytecode file offset 0x166e00"
!OSRpcServerInterface methodsFor: 'recovered'!
InterfaceId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200172dc; bytecode file offset 0x16afe8"
!OSRpcServerInterface methodsFor: 'recovered'!
TransferSyntax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018ce0; bytecode file offset 0x16c6bc"
!OSRpcServerInterface methodsFor: 'recovered'!
DispatchTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018fd4; bytecode file offset 0x16c9d4"
!OSRpcServerInterface methodsFor: 'recovered'!
RpcProtseqEndpointCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200192ec; bytecode file offset 0x16cc74"
!OSRpcServerInterface methodsFor: 'recovered'!
RpcProtseqEndpoint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019538; bytecode file offset 0x16ce9c"
!OSRpcServerInterface methodsFor: 'recovered'!
DefaultManagerEpv: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200197d8; bytecode file offset 0x16d088"
!OSRpcServerInterface methodsFor: 'recovered'!
InterpreterInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (60) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001d5bc; bytecode file offset 0x170f10"
!OSRpcServerInterface methodsFor: 'recovered'!
DispatchTable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSRpcDispatchTable.
    recoveredValue1 := (self) uint32At: (44).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d75c; bytecode file offset 0x171024"
!OSRpcServerInterface methodsFor: 'recovered'!
RpcProtseqEndpoint
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSRpcProtseqEndpoint.
    recoveredValue1 := (self) uint32At: (52).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

