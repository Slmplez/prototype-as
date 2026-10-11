"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000150c; bytecode file offset 0x155d58"
!OSActionHeader methodsFor: 'recovered'!
transportId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200030bc; bytecode file offset 0x157170"
!OSActionHeader methodsFor: 'recovered'!
actionCode
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003948; bytecode file offset 0x1572b8"
!OSActionHeader methodsFor: 'recovered'!
reserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"psupp.ic method 0x20011768; bytecode file offset 0x165330"
!OSActionHeader methodsFor: 'recovered'!
transportId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012bcc; bytecode file offset 0x166e00"
!OSActionHeader methodsFor: 'recovered'!
actionCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001367c; bytecode file offset 0x166f5c"
!OSActionHeader methodsFor: 'recovered'!
reserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

