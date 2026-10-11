"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001a40; bytecode file offset 0x155d58"
!OSRipInfo methodsFor: 'recovered'!
dwError
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002e28; bytecode file offset 0x157170"
!OSRipInfo methodsFor: 'recovered'!
dwType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20010238; bytecode file offset 0x165330"
!OSRipInfo methodsFor: 'recovered'!
dwError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012644; bytecode file offset 0x166e00"
!OSRipInfo methodsFor: 'recovered'!
dwType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

