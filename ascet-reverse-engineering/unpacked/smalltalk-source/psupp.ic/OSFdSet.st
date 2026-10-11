"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001bfc; bytecode file offset 0x155d58"
!OSFdSet methodsFor: 'recovered'!
fdCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200117e0; bytecode file offset 0x165330"
!OSFdSet methodsFor: 'recovered'!
fdCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2002563c; bytecode file offset 0x178ed4"
!OSFdSet methodsFor: 'recovered'!
fdArray: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (4) put: (recoveredValue0) size: (64).
    ^self
! !

"psupp.ic method 0x20027534; bytecode file offset 0x17add0"
!OSFdSet methodsFor: 'recovered'!
fdArray
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (4) size: (64) type: (recoveredValue0).
    ^recoveredValue1
! !

