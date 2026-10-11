"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001308; bytecode file offset 0x155d58"
!OSFindNameHeader methodsFor: 'recovered'!
nodeCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002878; bytecode file offset 0x1561c4"
!OSFindNameHeader methodsFor: 'recovered'!
reserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x200029a0; bytecode file offset 0x156280"
!OSFindNameHeader methodsFor: 'recovered'!
uniqueGroup
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (3).
    ^recoveredValue0
! !

"psupp.ic method 0x20010154; bytecode file offset 0x165330"
!OSFindNameHeader methodsFor: 'recovered'!
nodeCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011bd0; bytecode file offset 0x1657d4"
!OSFindNameHeader methodsFor: 'recovered'!
reserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011fd8; bytecode file offset 0x1658ac"
!OSFindNameHeader methodsFor: 'recovered'!
uniqueGroup: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (3) put: (recoveredValue0).
    ^self
! !

