"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000195c; bytecode file offset 0x155d58"
!OSTapeWriteMarks methodsFor: 'recovered'!
Type
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002eac; bytecode file offset 0x157170"
!OSTapeWriteMarks methodsFor: 'recovered'!
Count
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dd18; bytecode file offset 0x1615c8"
!OSTapeWriteMarks methodsFor: 'recovered'!
Immediate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (8).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010cdc; bytecode file offset 0x165330"
!OSTapeWriteMarks methodsFor: 'recovered'!
Type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012d34; bytecode file offset 0x166e00"
!OSTapeWriteMarks methodsFor: 'recovered'!
Count: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001433c; bytecode file offset 0x1683c0"
!OSTapeWriteMarks methodsFor: 'recovered'!
Immediate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (8) put: (recoveredValue0).
    ^self
! !

