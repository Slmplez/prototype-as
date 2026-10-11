"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001d94; bytecode file offset 0x155d58"
!OSCoord methodsFor: 'recovered'!
X
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002854; bytecode file offset 0x1561c4"
!OSCoord methodsFor: 'recovered'!
Y
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fd28; bytecode file offset 0x165330"
!OSCoord methodsFor: 'recovered'!
X: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011d44; bytecode file offset 0x1657d4"
!OSCoord methodsFor: 'recovered'!
Y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (2) put: (recoveredValue0).
    ^self
! !

