"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001074; bytecode file offset 0x155d58"
!OSMessageResourceData methodsFor: 'recovered'!
NumberOfBlocks
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d644; bytecode file offset 0x160f90"
!OSMessageResourceData methodsFor: 'recovered'!
Blocks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSMessageResourceBlock.
    recoveredValue1 := (self) arrayAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200119e4; bytecode file offset 0x165330"
!OSMessageResourceData methodsFor: 'recovered'!
NumberOfBlocks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

