"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003758; bytecode file offset 0x157170"
!OSParamdata methodsFor: 'recovered'!
vt
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200107b4; bytecode file offset 0x165330"
!OSParamdata methodsFor: 'recovered'!
szName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200129c8; bytecode file offset 0x166e00"
!OSParamdata methodsFor: 'recovered'!
vt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b054; bytecode file offset 0x16ea70"
!OSParamdata methodsFor: 'recovered'!
szName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSChar16.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

