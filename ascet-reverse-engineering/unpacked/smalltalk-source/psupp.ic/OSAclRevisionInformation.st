"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000144c; bytecode file offset 0x155d58"
!OSAclRevisionInformation methodsFor: 'recovered'!
AclRevision
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fefc; bytecode file offset 0x165330"
!OSAclRevisionInformation methodsFor: 'recovered'!
AclRevision: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

