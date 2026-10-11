"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200032d8; bytecode file offset 0x157170"
!OSAccessAllowedAce methodsFor: 'recovered'!
Mask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004324; bytecode file offset 0x157f64"
!OSAccessAllowedAce methodsFor: 'recovered'!
SidStart
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ccd0; bytecode file offset 0x160b8c"
!OSAccessAllowedAce methodsFor: 'recovered'!
Header
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSAceHeader.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010d90; bytecode file offset 0x165330"
!OSAccessAllowedAce methodsFor: 'recovered'!
Header: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200128fc; bytecode file offset 0x166e00"
!OSAccessAllowedAce methodsFor: 'recovered'!
Mask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014738; bytecode file offset 0x1683c0"
!OSAccessAllowedAce methodsFor: 'recovered'!
SidStart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

