"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001ca4; bytecode file offset 0x155d58"
!OSXbstr methodsFor: 'recovered'!
cbSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d624; bytecode file offset 0x160f90"
!OSXbstr methodsFor: 'recovered'!
rgBstrData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSChar16.
    recoveredValue1 := (self) arrayAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200108c8; bytecode file offset 0x165330"
!OSXbstr methodsFor: 'recovered'!
cbSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

