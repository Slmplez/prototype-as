"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001584; bytecode file offset 0x155d58"
!OSLinger methodsFor: 'recovered'!
lOnoff
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000286c; bytecode file offset 0x1561c4"
!OSLinger methodsFor: 'recovered'!
lLinger
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x200114ec; bytecode file offset 0x165330"
!OSLinger methodsFor: 'recovered'!
lOnoff: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011c54; bytecode file offset 0x1657d4"
!OSLinger methodsFor: 'recovered'!
lLinger: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

