"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001500; bytecode file offset 0x155d58"
!OSPrivilegeSet methodsFor: 'recovered'!
PrivilegeCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002f18; bytecode file offset 0x157170"
!OSPrivilegeSet methodsFor: 'recovered'!
Control
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dc48; bytecode file offset 0x161514"
!OSPrivilegeSet methodsFor: 'recovered'!
Privilege
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLuidAndAttributes.
    recoveredValue1 := (self) arrayAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fa28; bytecode file offset 0x165330"
!OSPrivilegeSet methodsFor: 'recovered'!
PrivilegeCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200131c0; bytecode file offset 0x166e00"
!OSPrivilegeSet methodsFor: 'recovered'!
Control: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

