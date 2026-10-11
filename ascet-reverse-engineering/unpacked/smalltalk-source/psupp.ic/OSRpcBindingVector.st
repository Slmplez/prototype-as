"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001ec0; bytecode file offset 0x155d58"
!OSRpcBindingVector methodsFor: 'recovered'!
Count
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d614; bytecode file offset 0x160f90"
!OSRpcBindingVector methodsFor: 'recovered'!
BindingH
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRpcBindingHandle.
    recoveredValue1 := (self) arrayAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000eedc; bytecode file offset 0x163098"
!OSRpcBindingVector methodsFor: 'recovered'!
rpcNsBindingSelect: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RpcNsBindingSelect.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200118a0; bytecode file offset 0x165330"
!OSRpcBindingVector methodsFor: 'recovered'!
Count: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

