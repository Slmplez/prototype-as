"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200011d0; bytecode file offset 0x155d58"
!OSClientCallReturn methodsFor: 'recovered'!
Pointer
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20001f74; bytecode file offset 0x155d58"
!OSClientCallReturn methodsFor: 'recovered'!
Simple
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fddc; bytecode file offset 0x165330"
!OSClientCallReturn methodsFor: 'recovered'!
Simple: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200114e0; bytecode file offset 0x165330"
!OSClientCallReturn methodsFor: 'recovered'!
Pointer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

