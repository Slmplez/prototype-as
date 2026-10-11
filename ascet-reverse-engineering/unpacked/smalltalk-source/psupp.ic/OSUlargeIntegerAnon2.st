"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001e48; bytecode file offset 0x155d58"
!OSUlargeIntegerAnon2 methodsFor: 'recovered'!
LowPart
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000338c; bytecode file offset 0x157170"
!OSUlargeIntegerAnon2 methodsFor: 'recovered'!
HighPart
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20011a14; bytecode file offset 0x165330"
!OSUlargeIntegerAnon2 methodsFor: 'recovered'!
LowPart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200132d4; bytecode file offset 0x166e00"
!OSUlargeIntegerAnon2 methodsFor: 'recovered'!
HighPart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

