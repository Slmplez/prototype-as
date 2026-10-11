"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001b48; bytecode file offset 0x155d58"
!OSRpcImportContextP methodsFor: 'recovered'!
LookupContext
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2001091c; bytecode file offset 0x165330"
!OSRpcImportContextP methodsFor: 'recovered'!
LookupContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001202c; bytecode file offset 0x166e00"
!OSRpcImportContextP methodsFor: 'recovered'!
ProposedHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013784; bytecode file offset 0x1683c0"
!OSRpcImportContextP methodsFor: 'recovered'!
Bindings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b5ec; bytecode file offset 0x16f1fc"
!OSRpcImportContextP methodsFor: 'recovered'!
ProposedHandle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSRpcBindingHandle.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c034; bytecode file offset 0x16f8e8"
!OSRpcImportContextP methodsFor: 'recovered'!
Bindings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSRpcBindingVector.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

