"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200028fc; bytecode file offset 0x1561c4"
!OSCharInfo methodsFor: 'recovered'!
Attributes
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cb50; bytecode file offset 0x160b8c"
!OSCharInfo methodsFor: 'recovered'!
Char
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSCharInfoAnon1.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010cc4; bytecode file offset 0x165330"
!OSCharInfo methodsFor: 'recovered'!
Char: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011d14; bytecode file offset 0x1657d4"
!OSCharInfo methodsFor: 'recovered'!
Attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

