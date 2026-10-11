"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002490; bytecode file offset 0x155d58"
!OSCauuid methodsFor: 'recovered'!
cElems
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20010ff4; bytecode file offset 0x165330"
!OSCauuid methodsFor: 'recovered'!
cElems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013064; bytecode file offset 0x166e00"
!OSCauuid methodsFor: 'recovered'!
pElems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b574; bytecode file offset 0x16f1fc"
!OSCauuid methodsFor: 'recovered'!
pElems
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSGuid.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

