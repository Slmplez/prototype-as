"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002418; bytecode file offset 0x155d58"
!OSUlargeInteger methodsFor: 'recovered'!
LowPart
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200024b4; bytecode file offset 0x155d58"
!OSUlargeInteger methodsFor: 'recovered'!
QuadPart
    | recoveredValue0 |
    recoveredValue0 := (self) uint64At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200037d0; bytecode file offset 0x157170"
!OSUlargeInteger methodsFor: 'recovered'!
HighPart
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d220; bytecode file offset 0x160b8c"
!OSUlargeInteger methodsFor: 'recovered'!
u
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUlargeIntegerAnon2.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fef0; bytecode file offset 0x165330"
!OSUlargeInteger methodsFor: 'recovered'!
u: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200105b0; bytecode file offset 0x165330"
!OSUlargeInteger methodsFor: 'recovered'!
QuadPart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint64At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200109dc; bytecode file offset 0x165330"
!OSUlargeInteger methodsFor: 'recovered'!
LowPart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012fb0; bytecode file offset 0x166e00"
!OSUlargeInteger methodsFor: 'recovered'!
HighPart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

