"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000374c; bytecode file offset 0x157170"
!OSSystemAuditAce methodsFor: 'recovered'!
Mask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004558; bytecode file offset 0x157f64"
!OSSystemAuditAce methodsFor: 'recovered'!
SidStart
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d020; bytecode file offset 0x160b8c"
!OSSystemAuditAce methodsFor: 'recovered'!
Header
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSAceHeader.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010844; bytecode file offset 0x165330"
!OSSystemAuditAce methodsFor: 'recovered'!
Header: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012fd4; bytecode file offset 0x166e00"
!OSSystemAuditAce methodsFor: 'recovered'!
Mask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001442c; bytecode file offset 0x1683c0"
!OSSystemAuditAce methodsFor: 'recovered'!
SidStart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

