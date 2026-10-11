"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001bd8; bytecode file offset 0x155d58"
!OSImageResourceDirectoryString methodsFor: 'recovered'!
Length
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d3b8; bytecode file offset 0x160c84"
!OSImageResourceDirectoryString methodsFor: 'recovered'!
NameString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSChar8.
    recoveredValue1 := (self) arrayAt: (2) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010d30; bytecode file offset 0x165330"
!OSImageResourceDirectoryString methodsFor: 'recovered'!
Length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

