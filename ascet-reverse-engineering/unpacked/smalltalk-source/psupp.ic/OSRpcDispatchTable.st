"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001c50; bytecode file offset 0x155d58"
!OSRpcDispatchTable methodsFor: 'recovered'!
DispatchTableCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002d14; bytecode file offset 0x157170"
!OSRpcDispatchTable methodsFor: 'recovered'!
DispatchTable
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004678; bytecode file offset 0x157f64"
!OSRpcDispatchTable methodsFor: 'recovered'!
Reserved
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20010328; bytecode file offset 0x165330"
!OSRpcDispatchTable methodsFor: 'recovered'!
DispatchTableCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013034; bytecode file offset 0x166e00"
!OSRpcDispatchTable methodsFor: 'recovered'!
DispatchTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013ee0; bytecode file offset 0x1683c0"
!OSRpcDispatchTable methodsFor: 'recovered'!
Reserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

