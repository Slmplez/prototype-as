"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200017c4; bytecode file offset 0x155d58"
!OSSidAndAttributes methodsFor: 'recovered'!
Sid
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200037a0; bytecode file offset 0x157170"
!OSSidAndAttributes methodsFor: 'recovered'!
Attributes
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200104b4; bytecode file offset 0x165330"
!OSSidAndAttributes methodsFor: 'recovered'!
Sid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012170; bytecode file offset 0x166e00"
!OSSidAndAttributes methodsFor: 'recovered'!
Attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

