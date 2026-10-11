"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001f50; bytecode file offset 0x155d58"
!OSImageImportByName methodsFor: 'recovered'!
Hint
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d3a8; bytecode file offset 0x160c84"
!OSImageImportByName methodsFor: 'recovered'!
Name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (2) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010820; bytecode file offset 0x165330"
!OSImageImportByName methodsFor: 'recovered'!
Hint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

