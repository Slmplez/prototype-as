"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200100c4; bytecode file offset 0x165330"
!OSPrintprocessorInfo1 methodsFor: 'recovered'!
pName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ab90; bytecode file offset 0x16ea70"
!OSPrintprocessorInfo1 methodsFor: 'recovered'!
pName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

