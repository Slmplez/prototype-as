"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001560; bytecode file offset 0x155d58"
!OSTokenPrivileges methodsFor: 'recovered'!
PrivilegeCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d6f4; bytecode file offset 0x160f90"
!OSTokenPrivileges methodsFor: 'recovered'!
Privileges
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLuidAndAttributes.
    recoveredValue1 := (self) arrayAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001196c; bytecode file offset 0x165330"
!OSTokenPrivileges methodsFor: 'recovered'!
PrivilegeCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

