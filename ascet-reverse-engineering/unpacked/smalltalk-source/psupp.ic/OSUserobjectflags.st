"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004030; bytecode file offset 0x157f64"
!OSUserobjectflags methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d36c; bytecode file offset 0x160c04"
!OSUserobjectflags methodsFor: 'recovered'!
fInherit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (0).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d734; bytecode file offset 0x161038"
!OSUserobjectflags methodsFor: 'recovered'!
fReserved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (4).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010640; bytecode file offset 0x165330"
!OSUserobjectflags methodsFor: 'recovered'!
fInherit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200126bc; bytecode file offset 0x166e00"
!OSUserobjectflags methodsFor: 'recovered'!
fReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001478c; bytecode file offset 0x1683c0"
!OSUserobjectflags methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

