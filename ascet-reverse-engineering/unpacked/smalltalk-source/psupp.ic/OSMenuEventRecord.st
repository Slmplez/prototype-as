"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001188; bytecode file offset 0x155d58"
!OSMenuEventRecord methodsFor: 'recovered'!
dwCommandId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2001106c; bytecode file offset 0x165330"
!OSMenuEventRecord methodsFor: 'recovered'!
dwCommandId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

