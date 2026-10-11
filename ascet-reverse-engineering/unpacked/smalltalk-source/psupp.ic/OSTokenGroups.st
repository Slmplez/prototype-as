"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001b0c; bytecode file offset 0x155d58"
!OSTokenGroups methodsFor: 'recovered'!
GroupCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d694; bytecode file offset 0x160f90"
!OSTokenGroups methodsFor: 'recovered'!
Groups
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSidAndAttributes.
    recoveredValue1 := (self) arrayAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200114f8; bytecode file offset 0x165330"
!OSTokenGroups methodsFor: 'recovered'!
GroupCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

