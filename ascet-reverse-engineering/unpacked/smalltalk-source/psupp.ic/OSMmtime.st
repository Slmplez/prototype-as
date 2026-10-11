"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002148; bytecode file offset 0x155d58"
!OSMmtime methodsFor: 'recovered'!
wType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d4d4; bytecode file offset 0x160f90"
!OSMmtime methodsFor: 'recovered'!
u
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSMmtimeAnon2.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000eebc; bytecode file offset 0x163098"
!OSMmtime methodsFor: 'recovered'!
timeGetSystemTime: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := TimeGetSystemTime.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200107cc; bytecode file offset 0x165330"
!OSMmtime methodsFor: 'recovered'!
wType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012698; bytecode file offset 0x166e00"
!OSMmtime methodsFor: 'recovered'!
u: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

