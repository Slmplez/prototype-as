"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200012e4; bytecode file offset 0x155d58"
!OSRpcClientInterface methodsFor: 'recovered'!
Length
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20007854; bytecode file offset 0x15b29c"
!OSRpcClientInterface methodsFor: 'recovered'!
RpcProtseqEndpointCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x20007d74; bytecode file offset 0x15b654"
!OSRpcClientInterface methodsFor: 'recovered'!
Reserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (56).
    ^recoveredValue0
! !

"psupp.ic method 0x20007ec4; bytecode file offset 0x15b7d4"
!OSRpcClientInterface methodsFor: 'recovered'!
InterpreterInfo
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (60).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d5e4; bytecode file offset 0x160f90"
!OSRpcClientInterface methodsFor: 'recovered'!
InterfaceId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRpcSyntaxIdentifier.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e2e4; bytecode file offset 0x161c00"
!OSRpcClientInterface methodsFor: 'recovered'!
TransferSyntax
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRpcSyntaxIdentifier.
    recoveredValue1 := (self) structAt: (24) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fca4; bytecode file offset 0x165330"
!OSRpcClientInterface methodsFor: 'recovered'!
Length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001235c; bytecode file offset 0x166e00"
!OSRpcClientInterface methodsFor: 'recovered'!
InterfaceId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200176cc; bytecode file offset 0x16afe8"
!OSRpcClientInterface methodsFor: 'recovered'!
TransferSyntax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018ca4; bytecode file offset 0x16c6bc"
!OSRpcClientInterface methodsFor: 'recovered'!
DispatchTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018f8c; bytecode file offset 0x16c9d4"
!OSRpcClientInterface methodsFor: 'recovered'!
RpcProtseqEndpointCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019244; bytecode file offset 0x16cc74"
!OSRpcClientInterface methodsFor: 'recovered'!
RpcProtseqEndpoint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019544; bytecode file offset 0x16ce9c"
!OSRpcClientInterface methodsFor: 'recovered'!
Reserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200196dc; bytecode file offset 0x16d088"
!OSRpcClientInterface methodsFor: 'recovered'!
InterpreterInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (60) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001d60c; bytecode file offset 0x170f10"
!OSRpcClientInterface methodsFor: 'recovered'!
DispatchTable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSRpcDispatchTable.
    recoveredValue1 := (self) uint32At: (44).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d720; bytecode file offset 0x171024"
!OSRpcClientInterface methodsFor: 'recovered'!
RpcProtseqEndpoint
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSRpcProtseqEndpoint.
    recoveredValue1 := (self) uint32At: (52).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

