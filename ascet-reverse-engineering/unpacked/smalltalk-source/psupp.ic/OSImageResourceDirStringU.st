"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200018cc; bytecode file offset 0x155d58"
!OSImageResourceDirStringU methodsFor: 'recovered'!
Length
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d3c8; bytecode file offset 0x160c84"
!OSImageResourceDirStringU methodsFor: 'recovered'!
NameString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) arrayAt: (2) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011390; bytecode file offset 0x165330"
!OSImageResourceDirStringU methodsFor: 'recovered'!
Length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

