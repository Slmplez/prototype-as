"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001d4c; bytecode file offset 0x155d58"
!OSAceHeader methodsFor: 'recovered'!
AceType
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002504; bytecode file offset 0x155e38"
!OSAceHeader methodsFor: 'recovered'!
AceFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (1).
    ^recoveredValue0
! !

"psupp.ic method 0x20002680; bytecode file offset 0x1561c4"
!OSAceHeader methodsFor: 'recovered'!
AceSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2001190c; bytecode file offset 0x165330"
!OSAceHeader methodsFor: 'recovered'!
AceType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011b28; bytecode file offset 0x16542c"
!OSAceHeader methodsFor: 'recovered'!
AceFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (1) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011e04; bytecode file offset 0x1657d4"
!OSAceHeader methodsFor: 'recovered'!
AceSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

