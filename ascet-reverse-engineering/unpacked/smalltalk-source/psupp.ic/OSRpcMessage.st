"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002da4; bytecode file offset 0x157170"
!OSRpcMessage methodsFor: 'recovered'!
DataRepresentation
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003ab4; bytecode file offset 0x157f64"
!OSRpcMessage methodsFor: 'recovered'!
Buffer
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200050ac; bytecode file offset 0x1589a4"
!OSRpcMessage methodsFor: 'recovered'!
BufferLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005660; bytecode file offset 0x159294"
!OSRpcMessage methodsFor: 'recovered'!
ProcNum
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20006558; bytecode file offset 0x159f34"
!OSRpcMessage methodsFor: 'recovered'!
RpcInterfaceInformation
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x200067c4; bytecode file offset 0x15a428"
!OSRpcMessage methodsFor: 'recovered'!
ReservedForRuntime
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006e28; bytecode file offset 0x15a780"
!OSRpcMessage methodsFor: 'recovered'!
ManagerEpv
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20007134; bytecode file offset 0x15aa74"
!OSRpcMessage methodsFor: 'recovered'!
ImportContext
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x20007468; bytecode file offset 0x15ad48"
!OSRpcMessage methodsFor: 'recovered'!
RpcFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x20008678; bytecode file offset 0x15caa4"
!OSRpcMessage methodsFor: 'recovered'!
ndrServerCall
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NdrServerCall.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008768; bytecode file offset 0x15caa4"
!OSRpcMessage methodsFor: 'recovered'!
iRpcReBindBuffer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := IRpcReBindBuffer.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008828; bytecode file offset 0x15caa4"
!OSRpcMessage methodsFor: 'recovered'!
iRpcGetBuffer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := IRpcGetBuffer.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008ab8; bytecode file offset 0x15caa4"
!OSRpcMessage methodsFor: 'recovered'!
iRpcSendReceive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := IRpcSendReceive.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20009038; bytecode file offset 0x15caa4"
!OSRpcMessage methodsFor: 'recovered'!
iRpcFreeBuffer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := IRpcFreeBuffer.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20009048; bytecode file offset 0x15caa4"
!OSRpcMessage methodsFor: 'recovered'!
iRpcNsGetBuffer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := IRpcNsGetBuffer.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e89c; bytecode file offset 0x163098"
!OSRpcMessage methodsFor: 'recovered'!
shortFromNdr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ShortFromNdr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000e95c; bytecode file offset 0x163098"
!OSRpcMessage methodsFor: 'recovered'!
iRpcNsRaiseException: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := IRpcNsRaiseException.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000eddc; bytecode file offset 0x163098"
!OSRpcMessage methodsFor: 'recovered'!
doubleFromNdr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DoubleFromNdr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000ef0c; bytecode file offset 0x163098"
!OSRpcMessage methodsFor: 'recovered'!
longFromNdr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := LongFromNdr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000ef9c; bytecode file offset 0x163098"
!OSRpcMessage methodsFor: 'recovered'!
floatFromNdr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := FloatFromNdr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000f1fc; bytecode file offset 0x163098"
!OSRpcMessage methodsFor: 'recovered'!
charFromNdr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CharFromNdr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000f2ec; bytecode file offset 0x163098"
!OSRpcMessage methodsFor: 'recovered'!
enumFromNdr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EnumFromNdr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000f3fc; bytecode file offset 0x163098"
!OSRpcMessage methodsFor: 'recovered'!
iRpcNsSendReceive: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := IRpcNsSendReceive.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000f63c; bytecode file offset 0x163098"
!OSRpcMessage methodsFor: 'recovered'!
ndrServerInitializeMarshall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := NdrServerInitializeMarshall.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20011a2c; bytecode file offset 0x165330"
!OSRpcMessage methodsFor: 'recovered'!
Handle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013088; bytecode file offset 0x166e00"
!OSRpcMessage methodsFor: 'recovered'!
DataRepresentation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014408; bytecode file offset 0x1683c0"
!OSRpcMessage methodsFor: 'recovered'!
Buffer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014d44; bytecode file offset 0x169290"
!OSRpcMessage methodsFor: 'recovered'!
BufferLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015b90; bytecode file offset 0x169eb4"
!OSRpcMessage methodsFor: 'recovered'!
ProcNum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016b74; bytecode file offset 0x16a7b4"
!OSRpcMessage methodsFor: 'recovered'!
TransferSyntax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001769c; bytecode file offset 0x16afe8"
!OSRpcMessage methodsFor: 'recovered'!
RpcInterfaceInformation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017bf4; bytecode file offset 0x16b690"
!OSRpcMessage methodsFor: 'recovered'!
ReservedForRuntime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018104; bytecode file offset 0x16bb70"
!OSRpcMessage methodsFor: 'recovered'!
ManagerEpv: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200185cc; bytecode file offset 0x16bff0"
!OSRpcMessage methodsFor: 'recovered'!
ImportContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200188e4; bytecode file offset 0x16c368"
!OSRpcMessage methodsFor: 'recovered'!
RpcFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ab54; bytecode file offset 0x16ea70"
!OSRpcMessage methodsFor: 'recovered'!
Handle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSRpcBindingHandle.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cb98; bytecode file offset 0x17049c"
!OSRpcMessage methodsFor: 'recovered'!
TransferSyntax
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSRpcSyntaxIdentifier.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200241c8; bytecode file offset 0x1781a4"
!OSRpcMessage methodsFor: 'recovered'!
dataFromNdr: recoveredArg1 format: recoveredArg2 mscPak: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := DataFromNdr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200244a8; bytecode file offset 0x1781a4"
!OSRpcMessage methodsFor: 'recovered'!
shortArrayFromNdr: recoveredArg1 upperIndex: recoveredArg2 target: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ShortArrayFromNdr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20024578; bytecode file offset 0x1781a4"
!OSRpcMessage methodsFor: 'recovered'!
ndrClientInitializeNew: recoveredArg1 pStubDescriptor: recoveredArg2 procNum: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := NdrClientInitializeNew.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200245d8; bytecode file offset 0x1781a4"
!OSRpcMessage methodsFor: 'recovered'!
ndrClientInitialize: recoveredArg1 pStubDescriptor: recoveredArg2 procNum: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := NdrClientInitialize.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20024658; bytecode file offset 0x1781a4"
!OSRpcMessage methodsFor: 'recovered'!
floatArrayFromNdr: recoveredArg1 upperIndex: recoveredArg2 target: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := FloatArrayFromNdr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20024718; bytecode file offset 0x1781a4"
!OSRpcMessage methodsFor: 'recovered'!
longArrayFromNdr: recoveredArg1 upperIndex: recoveredArg2 target: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LongArrayFromNdr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200247f8; bytecode file offset 0x1781a4"
!OSRpcMessage methodsFor: 'recovered'!
treePeekNdr: recoveredArg1 format: recoveredArg2 mscPak: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := TreePeekNdr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20024888; bytecode file offset 0x1781a4"
!OSRpcMessage methodsFor: 'recovered'!
charArrayFromNdr: recoveredArg1 upperIndex: recoveredArg2 target: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CharArrayFromNdr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200248c8; bytecode file offset 0x1781a4"
!OSRpcMessage methodsFor: 'recovered'!
doubleArrayFromNdr: recoveredArg1 upperIndex: recoveredArg2 target: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := DoubleArrayFromNdr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20027eac; bytecode file offset 0x17b888"
!OSRpcMessage methodsFor: 'recovered'!
ndrServerInitialize: recoveredArg1 pStubDescriptor: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := NdrServerInitialize.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) address: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x20027fcc; bytecode file offset 0x17b888"
!OSRpcMessage methodsFor: 'recovered'!
ndrServerInitializeNew: recoveredArg1 pStubDescriptor: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := NdrServerInitializeNew.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) address: (recoveredValue4).
    ^recoveredValue5
! !

